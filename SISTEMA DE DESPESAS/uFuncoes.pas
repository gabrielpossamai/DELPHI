unit uFuncoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, DB,DbClient,DBTables,ADODB,bsSkinBoxCtrls;

Type
  TCxDlgTipo   = ( ctAviso, ctErro, ctInforma, ctConfirma, ctTimer, ctPessoal );
  TCxDlgBtn    = ( cbSim, cbNao, cbOK, cbCancela, cbSimNao, cbOkCancela );
  TCxDlgBotoes = Set Of TCxDlgBtn;


Function IncZero(VlrString:  String; Tamanho: Word): String;
Function CaixaMensagem( vMensagem: AnsiString; vFigura: TCxDlgTipo; vBotoes: TCxDlgBotoes; vFoco: Integer): Boolean;
Function Centraliza( fTamFundo, fTamObjeto : Integer ) : Integer;
Function IncDigito(VlrString:  String; Digito: String; Tamanho: Word; Lado: Word ): String;
Function SoData( fData: TDateTime ) : TDate;
Function BuscaTabelas( fdbDatabase : TADOConnection; SoTabelas : Boolean = True ): TStringList;
Function ProcuraTipo( _TipoCampo: TFieldType ): String;
procedure EngReversa( fTabela : String; fDBDatabase: TADOConnection; fsNovoNome : String = '' );
//Procedure ConfiguraRel( fNomeForm : String;  fCriarCabecalho : Boolean = True; fRDPrint : TRdPrint = Nil; fPagina : Integer = 1 );
Procedure CriarCampo( fFieldKind : TFieldKind; fDataSet : TDataSet; fFieldName: String; fDataType : TFieldType; fSize : Integer; fDisplayLabel: String = '' );
Function ConfereEstrutura( _lstEstruturaLOCAL, _lstEstruturaTEC: TStrings; _Progresso: TProgressBar = Nil ): Boolean;
Procedure CriarCalculado( fDataSet : TDataSet; fFieldName: String; fDataType : TFieldType; fSize : Integer );
Function VerificaEstrutura( flstEstruturaLOCAL, flstEstruturaTEC, flstTabelas: TStrings; fDBDatabase: TDatabase; fProgresso: TProgressBar = Nil ) : Boolean;
Procedure ListaPeriodo( fComponente1: TbsSkinDateEdit; fComponente2: TbsSkinDateEdit; fItem: Integer; fData : TDateTime );
Function ExisteCampo( prsNomeTabela, prsNomeCampo: string; prSQLConnection: TADOConnection ): Boolean;


Var pRespMsg : String;

implementation

uses Umensagens,uprincipal;


Function IncZero(VlrString:  String; Tamanho: Word): String;
Begin
   VlrString := Trim(VlrString);
   While (Length(VlrString))<Tamanho Do
      VlrString := '0' + VlrString;
   Result := VlrString;
End;
Function CaixaMensagem( vMensagem: AnsiString; vFigura: TCxDlgTipo; vBotoes: TCxDlgBotoes; vFoco: Integer ): Boolean;
var I          : Word;
    vStringTemp: string;
Begin
   Result := False;
   FrmMensagens := TFrmMensagens.Create(Nil);
   FrmMensagens.Refresh;
   With FrmMensagens Do
   Begin
     // Mensagens
     If Pos(Chr(13), vMensagem)>0 Then // Se tiver ENTER
     Begin
       While Pos(Chr(13), vMensagem)>0 Do
       Begin
         Memo1.Lines.Add(Copy(vMensagem, 1, Pos(Chr(13), vMensagem)));
         vStringTemp := vMensagem;
         Delete(vStringTemp, 1, Pos(Chr(13), vMensagem));
         vMensagem   := vStringTemp;
       End;
       Memo1.Lines.Add(vMensagem);
       If (Memo1.Lines.Count = 1) Or (Memo1.Lines.Count = 2) Then
       Begin
         For I := Memo1.Lines.Count DownTo 0 Do
           Memo1.Lines[I] := Memo1.Lines[I-1];
         Memo1.Lines[0]   := '';
       End;
     End
     Else // Se não tiver ENTER
     Begin
       Memo1.Lines.Add(vMensagem);
       If (Memo1.Lines.Count=1) Or (Memo1.Lines.Count=2) Then
       Begin
         Memo1.Clear;
         Memo1.Lines.Add('');
         Memo1.Lines.Add(vMensagem);
       End;
     End;

     // Tipos de Avisos
     ImgAviso.Visible    := False;
     AnimateErro.Visible := False;
     ImgInforma.Visible  := False;
     ImgConfirma.Visible := False;
     ImgPessoal.Visible  := False;
     ImgTimer.Visible    := False;
     If vFigura = ctAVISO Then
     Begin
        FrmMensagens.Caption:='Caixa de Aviso';
        ImgAviso.Visible:=True;
     End
     Else If vFigura = ctERRO Then
     Begin

     End
     Else If vFigura = ctINFORMA Then
     Begin
        FrmMensagens.Caption := 'Caixa Informativa';
        ImgInforma.Visible   := True;
     End
     Else If vFigura = ctCONFIRMA Then
     Begin
        FrmMensagens.Caption := 'Caixa de pedido de confirmação';
        ImgConfirma.Visible  := True;
     End
     Else If vFigura = ctPESSOAL Then
     Begin
        {FrmMensagens.Caption := 'Caixa de Mensagem';
        ImgPessoal.Visible   := True;
        BtnOk.Caption := '&' + Copy( vBotoes, 1, Pos( ',', vBotoes ) - 1 );
        BtnOk.Glyph.Assign(Nil);
        BtnCancela.Glyph.Assign(Nil);
        If Pos( ', ', vBotoes ) = 0 Then
          BtnCancela.Caption := '&' + Copy(vBotoes, Pos(',', vBotoes) + 1, Length(vBotoes)-Pos(',', vBotoes) + 1)
        Else
          BtnCancela.Caption := '&' + Copy(vBotoes, Pos(',', vBotoes)+2, Length(vBotoes)-Pos(',', vBotoes)+3);}
     End
     Else If vFigura = ctTIMER Then
     Begin
        FrmMensagens.Caption              := 'Caixa com timer';
        FrmMensagens.Timer1.Enabled       := True;
        FrmMensagens.ProgressBar1.Visible := True;
        FrmMensagens.Timer2.Enabled       := True;
        ImgTimer.Visible:=True;
     End
     Else
        MessageDlg('Falha interna! Caracterizada como CP', mtError, [mbOk], 0);

     // Tipos de Botões
     If vBotoes = [ cbOK ] Then
     Begin
        BtnCancela.Visible := False;
        BtnOk.Left         := Centraliza( FrmMensagens.Width, BtnOk.Width );
     End
     Else If vBotoes = [ cbOkCancela ] Then
     Begin
        LblFoco.Caption := IntToStr( vFoco );
        BtnOk.Left      := Round( FrmMensagens.Width / 2 ) - BtnOk.Width - 5;
        BtnCancela.Left := Round( FrmMensagens.Width / 2 ) + 5;
     End
     Else If vBotoes = [ cbSimNao ] Then
     Begin
        LblFoco.Caption    := IntToStr( vFoco );
        BtnOk.Caption      := '&Sim';
        BtnCancela.Caption := '&Não';
        BtnOk.Left         := Round( FrmMensagens.Width / 2 ) - BtnOk.Width - 5;
        BtnCancela.Left    := Round( FrmMensagens.Width / 2 ) + 5;
     End
     Else
        MessageDlg('Falha interna no formulário de mensagens personalizadas! '+
                   'Caracterizada como CP', mtError, [mbOk], 0);
     Update;
     Refresh;
     ShowModal;
   End;
   If ( pRespMsg = '&OK' ) Or ( pRespMsg = '&SIM' ) Then
     Result := True;
   FrmMensagens.Free;
End;
Function Centraliza( fTamFundo, fTamObjeto : Integer ) : Integer;
Begin
   //Result := StrToInt(FloatToStr( Int(fTamFundo/2) - Int(fTamObjeto/2) ));
   Result := Round(fTamFundo/2) - Round(fTamObjeto/2);

End;
{
Procedure ConfiguraRel( fNomeForm : String;  fCriarCabecalho : Boolean = True; fRDPrint : TRdPrint = Nil; fPagina : Integer = 1 );
//Procedure ConfiguraRel( fForm : TForm; fQuickRep : TCustomQuickRep; fCriarCabecalho : Boolean = True );
Var I: Word;
    lfrmForm : TForm;
    liCont   : Integer;
Begin
   lfrmForm := Nil;
   For liCont := 1 To Screen.FormCount Do
   Begin
      If UpperCase( Trim( Screen.Forms[ liCont - 1 ].Name ) ) = UpperCase( Trim( fNomeForm ) ) Then
         lfrmForm := Screen.Forms[ liCont - 1 ];
   End;

   If ( lfrmForm = Nil ) Or ( lfrmForm Is TForm = False ) Then
   Begin
      CaixaMensagem( 'Formulário não localizado para impressão de cabeçalho.', ctErro, [ cbOk ], 0 );
      Exit;
   End;
   If fRDPrint<>Nil Then
   Begin
      fRDPrint.imp ( 01, 01, FormatDateTime('dd/mm/yyyy', now) +' as '+FormatDateTime('hh:mm:ss', now ));
      fRDPrint.impc( 01, Round(fRDPrint.TamanhoQteColunas/2), ' Sistema de Controle Financeiro '+gsVerSis, [comp17]);
      fRDPrint.impd( 01, fRDPrint.TamanhoQteColunas, 'Pagina '+ IntToStr( fPagina ) , [comp17]);
      fRDPrint.Imp ( 02, 01, IncDigito( '=', '=', fRDPrint.TamanhoQteColunas, 0 ) );
      fRDPrint.ImpC( 03, Round( fRDPrint.TamanhoQteColunas/2 ), GsNomeEmp , [ normal ] );
      fRDPrint.ImpC( 03, Round( fRDPrint.TamanhoQteColunas/2 ), GsNomeEmp , [ normal ] );
      fRDPrint.ImpC( 03, Round( fRDPrint.TamanhoQteColunas/2 ), GsNomeEmp , [ normal ] );
      fRDPrint.ImpC( 04, Round( fRDPrint.TamanhoQteColunas/2 ), gsTituloRel , [ Normal ] );
      fRDPrint.ImpC( 04, Round( fRDPrint.TamanhoQteColunas/2 ), gsTituloRel , [ Normal ] );
      fRDPrint.ImpC( 04, Round( fRDPrint.TamanhoQteColunas/2 ), gsTituloRel , [ Normal ] );
      If gsPeriodoRel = '' Then
      Begin
         fRDPrint.Imp ( 05, 01, IncDigito( '=', '=', fRDPrint.TamanhoQteColunas, 0 ) );
      End
      Else
      Begin
         fRDPrint.ImpC( 05, Round( fRDPrint.TamanhoQteColunas/2 ), gsPeriodoRel , [ NEGRITO ] );
         fRDPrint.Imp ( 06, 01, IncDigito( '=', '=', fRDPrint.TamanhoQteColunas, 0 ) );
      End;
   End;
End;
}
Function IncDigito(VlrString:  String; Digito: String; Tamanho: Word; Lado: Word): String;
Var I : Word;
Begin
   If Digito = '' Then
       Digito := ' ';
   VlrString := Trim( VlrString );
   If Length( VlrString ) > Tamanho Then
      VlrString := Copy( VlrString, 1, Tamanho );
   I := 1;
   While Length( VlrString ) < Tamanho Do
   Begin
      If Lado = 0 Then // Lado Direito
         VlrString:=Digito + VlrString;
      If Lado = 1 Then // Lado Esquerdo
         VlrString:=VlrString + Digito;
      If Lado = 2 Then // Lado Centralizado
      Begin
         If ( I Mod 2 ) = 0 Then
            VlrString := Digito + VlrString
         Else
            VlrString := VlrString + Digito;
         I := I + 1;
      End;
   End;
   Result:=VlrString;
End;
Function SoData( fData: TDateTime ) : TDate;
Begin
   Result := StrToDate( FormatDateTime( 'dd/mm/yyyy', fData ) );
End;
Procedure CriarCampo( fFieldKind : TFieldKind; fDataSet : TDataSet; fFieldName: String; fDataType : TFieldType; fSize : Integer; fDisplayLabel: String = '' );
Var lfldTemp   : TField;
    lFieldDefs : TFieldDefs;
    liCont     : Word;
begin
   If fDataSet.FindField( fFieldName ) = Nil Then
   Begin
      If ( fDataSet.Fields.Count = 0 ) And
         ( ( fDataSet.ClassType <> TClientDataSet ) Or
           ( ( fDataSet.ClassType = TClientDataSet ) And ( TClientDataSet( fDataSet ).ProviderName <> '' ) ) ) Then
      Begin
         fDataSet.Close;
         If fDataSet.ClassType = TClientDataSet Then
            TClientDataSet( fDataSet ).StoreDefs := True;
         fDataSet.FieldDefs.Clear;
         fDataSet.FieldDefs.Update;
         lFieldDefs := fDataSet.FieldDefs;

         For liCont := 1 To fDataSet.FieldDefs.Count Do
         Begin
            lfldTemp := lFieldDefs[ liCont - 1 ].FieldClass.Create( Nil );
            If lFieldDefs[ liCont - 1 ].DataType = ftString Then
               lfldTemp.Size := lFieldDefs[ liCont - 1 ].Size;
            lfldTemp.FieldName  := lFieldDefs[ liCont - 1 ].Name;
            lfldTemp.FieldKind  := fkData;
            lfldTemp.DataSet    := fDataSet;
            lfldTemp.Index      := fDataSet.FieldCount;
            lfldTemp.Name       := fDataSet.Name + lfldTemp.FieldName;
            lfldTemp.Visible    := True;
         End;
      End;

      If fDataType = ftString Then
      Begin
         lfldTemp := TStringField.Create( Nil );
         lfldTemp.Size := fSize;
      End
      Else If fDataType = ftDateTime Then
         lfldTemp := TDateTimeField.Create( Nil )

      Else If fDataType = ftInteger Then
         lfldTemp := TIntegerField.Create( Nil )

      Else If fDataType = ftFloat Then
         lfldTemp := TFloatField.Create( Nil )

      Else If fDataType = ftSmallint  Then
         lfldTemp := TSmallintField.Create( Nil )

      Else If fDataType = ftWord  Then
         lfldTemp := TWordField.Create( Nil )

      Else If fDataType = ftBoolean  Then
         lfldTemp := TBooleanField.Create( Nil )

      Else If fDataType = ftCurrency  Then
         lfldTemp := TCurrencyField.Create( Nil )

      Else If fDataType = ftBCD  Then
         lfldTemp := TBCDField.Create( Nil )

      Else If fDataType = ftDate  Then
         lfldTemp := TDateField.Create( Nil )

      Else If fDataType = ftTime  Then
         lfldTemp := TTimeField.Create( Nil )

      Else If fDataType = ftBytes  Then
         lfldTemp := TBytesField.Create( Nil )

      Else If fDataType = ftVarBytes  Then
         lfldTemp := TVarBytesField.Create( Nil )

      Else If fDataType = ftAutoInc  Then
         lfldTemp := TAutoIncField.Create( Nil )

      Else If fDataType = ftBlob  Then
         lfldTemp := TBlobField.Create( Nil )

      Else If fDataType = ftMemo  Then
         lfldTemp := TMemoField.Create( Nil )

      Else If fDataType = ftGraphic  Then
         lfldTemp := TGraphicField.Create( Nil )

      Else If fDataType = ftWideString  Then
         lfldTemp := TWideStringField.Create( Nil )

      Else If fDataType = ftLargeInt  Then
         lfldTemp := TLargeIntField.Create( Nil )

      Else If fDataType = ftADT  Then
         lfldTemp := TADTField.Create( Nil )

      Else If fDataType = ftArray  Then
         lfldTemp := TArrayField.Create( Nil )

      Else If fDataType = ftReference Then
         lfldTemp := TReferenceField.Create( Nil )

      Else If fDataType = ftTimeStamp Then
         lfldTemp := TSQLTimeStampField.Create( Nil )

      Else If fDataType = ftFMTBcd Then
         lfldTemp := TFMTBcdField.Create( Nil )

      Else
         lfldTemp := TField.Create( Nil );

      lfldTemp.FieldName       := fFieldName;
      lfldTemp.FieldKind       := fFieldKind;
      lfldTemp.DataSet         := fDataSet;
      lfldTemp.Index           := fDataSet.FieldCount;
      lfldTemp.Name            := fDataSet.Name + lfldTemp.FieldName;
      if fDisplayLabel <> '' then
         lfldTemp.DisplayLabel := fDisplayLabel;
      lfldTemp.Visible         := True;
   End;
End;
Function BuscaTabelas( fdbDatabase : TADOConnection; SoTabelas : Boolean = True ): TStringList;

Var llstTemp : TStringList;
    llstTabelas, llstExtras : TStringList;
Begin
   llstTemp    := TStringList.Create;
   llstTabelas := TStringList.Create;
   llstExtras  := TStringList.Create;

   fdbDatabase.GetTableNames( llstTemp, False );

   fdbDatabase.GetTableNames( llstExtras, True );

   If SoTabelas Then
   Begin
      While llstTemp.Count > 0 Do
      Begin
         If llstExtras.IndexOf( llstTemp[ 0 ] ) > -1 Then
         Begin
            llstTabelas.Add( llstTemp[ 0 ] );
            llstExtras.Delete( llstExtras.IndexOf( llstTemp[ 0 ] ) );
         End;
         llstTemp.Delete( 0 );
      End;
   End
   Else
      llstTabelas := llstTemp;
   Result := llstTabelas;
End;
procedure EngReversa( fTabela : String; fDBDatabase: TADOConnection; fsNovoNome : String = '' );
Var ltblTemp : TadoTable;
    llstCampos: TStringList;
    liZ, liTamanho: Integer;
    lsTipo, lsLinha, lsNomeCampo, lsVariaveis, lsIndexPrimario : String;
begin
  {
   Try
      fTabela     := UpperCase( fTabela );
      If Trim( fsNovoNome ) = '' Then
         fsNovoNome := fTabela;

      llstCampos  := TStringList.Create;
      llstCampos.Clear;
      lsIndexPrimario       := '';
      lsVariaveis           := 'VARCHAR, CHAR, BLOB';

      ltblTemp              := TadoTable.Create( Application );
      ltblTemp.Connection   := fDBDatabase;
      ltblTemp.TableName    := fTabela;
      ltblTemp.DisableControls;
      ltblTemp.FieldDefs.Update;
      ltblTemp.IndexDefs.Update;

      If ltblTemp.IndexDefs.Count > 0 Then
      Begin
         For liZ:=0 To  ltblTemp.IndexDefs.Count-1 do
         Begin
            If (ixPrimary in ltblTemp.IndexDefs.Items[liZ].Options) or (ixUnique in ltblTemp.IndexDefs.Items[liZ].Options) Then
            Begin
               If (UpperCase(ltblTemp.IndexDefs.Items[liZ].Name)=UpperCase('lPrimaryKey')) or (UpperCase(ltblTemp.IndexDefs.Items[liZ].Name)=UpperCase('PrimaryKey')) Then
                  //frmPrinc.lstIndices.Items.Add( 'Create Unique Index ['+UpperCase( ltblTemp.TableName+ltblTemp.IndexDefs.Items[liZ].Name)+'] On ['+UpperCase( fsNovoNome )+'] ('+UpperCase( ltblTemp.IndexDefs.Items[liZ].Fields)+')' )
               Else
                  //frmPrinc.lstIndices.Items.Add( 'Create Unique Index ['+UpperCase( ltblTemp.IndexDefs.Items[liZ].Name)+'] On ['+UpperCase( fsNovoNome )+'] ('+UpperCase( ltblTemp.IndexDefs.Items[liZ].Fields)+')' );
            End
            Else
               //frmPrinc.lstIndices.Items.Add('Create Index ['+UpperCase( ltblTemp.IndexDefs.Items[liZ].Name)+'] On ['+UpperCase( fsNovoNome )+'] ('+UpperCase( ltblTemp.IndexDefs.Items[liZ].Fields)+')');
         End;
      End;
      For liZ := 0 To  ltblTemp.FieldDefs.Count - 1 Do
      Begin
         lsTipo := ProcuraTipo( ltblTemp.FieldDefs.Items[liZ].DataType );

         lsNomeCampo := UpperCase(  ltblTemp.FieldDefs.Items[liZ].Name );

         liTamanho := -1;
         If Pos(UpperCase(lsTipo)+',', UpperCase(lsVariaveis))>0 Then
            liTamanho := ltblTemp.FieldDefs.Items[liZ].Size;
         If liTamanho>-1 Then
            llstCampos.Add(lsNomeCampo+' '+lsTipo+' ('+IntToStr(liTamanho)+')')
         Else
            llstCampos.Add(lsNomeCampo+' '+lsTipo);
      End;

      llstCampos.Sorted := True;
      For liZ := 1 To  llstCampos.Count Do
      Begin
         If liZ = 1 Then
            lsLinha := 'Create Table ['+UpperCase( fsNovoNome )+'] ('+UpperCase( llstCampos[liZ-1])
         Else
            lsLinha := lsLinha + ', '+UpperCase( llstCampos[liZ-1]);
      End;
      ltblTemp.Free;
      llstCampos.Free;
      lsLinha := lsLinha +')';
      FrmPrincipal.lstEstrutura.Items.Add( lsLinha );
   Except
      On E: Exception Do
      Begin
         CaixaMensagem( 'Não foi possível realizar a engenharia reversa ('+E.Message+')', ctErro, [ cbOk ], 0 );
         Exit;
      End;
   End;
   }
end;
Function ProcuraTipo( _TipoCampo: TFieldType ): String;
Begin
   Result := '';

   Case _TipoCampo Of
      ftString     : Result := 'VARCHAR';
      ftWideString : Result := 'VARCHAR';
      ftSmallint   : Result := 'SMALLINT';
      ftInteger    : Result := 'Integer';
      ftWord       : Result := 'CHAR';
      ftBoolean    : Result := 'LOGICAL';
      ftFloat      : Result := 'FLOAT';
      ftCurrency   : Result := 'FLOAT';
      ftBCD        : Result := 'FLOAT';
      ftDate       : Result := 'DATE';
      ftTime       : Result := 'DATE';
      ftDateTime   : Result := 'DATE';
      ftBytes      : Result := 'CHAR';
      ftVarBytes   : Result := 'VARCHAR';
      ftBlob       : Result := 'LONGBINARY';
      ftMemo       : Result := 'MEMO';
      ftAutoInc    : Result := 'autoIncrement';
      else
         CaixaMensagem( 'Tipo de dados inválido!!!', ctErro, [ cbOk ], 0 );
   End;
End;
Function ConfereEstrutura( _lstEstruturaLOCAL, _lstEstruturaTEC: TStrings; _Progresso: TProgressBar = Nil ): Boolean;
var _iI      : Integer;
    llstTemp : TStrings;
begin
   llstTemp := _lstEstruturaLOCAL;
   Result   := False;
   If _Progresso <> Nil Then
   Begin
      _Progresso.Position := 0;
      _Progresso.Max      := _lstEstruturaTEC.Count;
   End;
   For _iI := 1 To  _lstEstruturaTEC.Count Do
   Begin
      If _Progresso <> Nil Then
      Begin
         _Progresso.Position := _Progresso.Position + 1;
         _Progresso.Update;
      End;
      If llstTemp.IndexOf( _lstEstruturaTEC[ _iI - 1 ] ) = -1 Then
      Begin
         Result := False;
         Break;
      End
      Else
      Begin
         Result := True;
         llstTemp.Delete( llstTemp.IndexOF ( _lstEstruturaTEC[ _iI - 1 ] ) );
      End;
   End;
   If ( Result = True ) And ( llstTemp.Count > 0 ) Then
      Result := False;
end;

Function VerificaEstrutura( flstEstruturaLOCAL, flstEstruturaTEC, flstTabelas: TStrings; fDBDatabase: TDatabase; fProgresso: TProgressBar = Nil ) : Boolean;
var lsLinha, lsTabela, lsErroGeral, lsVariaveis, lsTipo : String;
    liI, liZ, liPosNomeTab, liTamanho : Integer;
    llstTemp, llstCampos1, llstCampos2 : TStringList;
    lQryAtual, lQryTemp : TADOQuery;
    lQryNova : TAdoQuery;
    lADOConnectionTemp : TADOConnection;
    ltblTemp : TADOTable;
    ltxtTemp : TextFile;
begin
   Result := False;

   fDBDatabase.Close;

   ////// *** Tabela de Erros *** //////
   // 0 - Tabela não existe
   // 1 - Novo Campo
   // 2 - Campo excluído
   ////// *** Tabela de Erros *** //////
   AssignFile( ltxtTemp, gsPath + 'Logs\' + Copy( fDBDatabase.DatabaseName, Length( fDBDatabase.DatabaseName ) - 2, 3 ) + '_' + FormatDateTime( 'ddhhmmss', Now ) + '.EST' );
   ReWrite( ltxtTemp );

   lADOConnectionTemp := TADOConnection.Create( Application );
   lADOConnectionTemp.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;' +
                                          'Data Source=' + gsPath + 'dados\despesas.MDB;' +
                                          'Persist Security Info=False';
   lADOConnectionTemp.LoginPrompt := False;
   lADOConnectionTemp.Open;

   //fDBDatabase.Open;
   //fDBDatabase.StartTransaction;

   Try
      llstCampos1 := TStringList.Create;
      llstCampos2 := TStringList.Create;

      lsVariaveis := 'VARCHAR, CHAR, BLOB';
      lsErroGeral := '';
      If Not DirectoryExists( gsPath + 'Temp\' ) Then
         CreateDir( gsPath + 'Temp\');

      If fProgresso <> Nil Then
      Begin
         fProgresso.Position := 0;
         fProgresso.Max      := flstEstruturaTEC.Count;
      End;

      For liI:=1 To  flstEstruturaTEC.Count do
      Begin
         If fProgresso <> Nil Then
         Begin
            fProgresso.Position := fProgresso.Position + 1;
            fProgresso.Update;
         End;

         lsTabela     := Copy( flstEstruturaTEC[ 0 ], Pos('[', flstEstruturaTEC[ 0 ] ) + 1, Pos(']', flstEstruturaTEC[ 0 ] ) - 1 - Pos('[', flstEstruturaTEC[ 0 ] ) );
         lsLinha      := flstEstruturaTEC[ 0 ];
         liPosNomeTab := Pos('[', lsLinha);
         Delete( lsLinha, liPosNomeTab, Pos( ']', lsLinha ) - liPosNomeTab + 1 );
         Insert( lsTabela, lsLinha, liPosNomeTab );
         If flstTabelas.IndexOf( lsTabela ) = -1 Then // Se a tabela não existir ...
         Begin
            Try
              lQryAtual            := TADOQuery.Create( Nil );
              lQryAtual.Connection := lADOConnectionTemp;
              lQryAtual.SQL.Text   := lsLinha;
              lQryAtual.ExecSQL;
              lQryAtual.Free;

              WriteLn( ltxtTemp, 'Tabela criada "' + lsTabela + '"' );

              flstEstruturaTEC.Delete( 0 );
            Except
              On E: Exception Do
              Begin
                CaixaMensagem( 'Não foi possível criar a tabela "'+lsTabela +'" ("'+E.Message+'")', ctErro, [ cbOk ], 0 );
                Exit;
              End;
            End;
         End
         Else // -> Se a tabela existir ...
         Begin
            If flstEstruturaLOCAL.IndexOf(flstEstruturaTEC[0]) = -1 Then
            Begin
               Try
                  lQryNova              := TAdoQuery.Create( Nil );
                  lQryNova.Connection   := frmprincipal.AdoPrincipal;
                  lQryNova.SQL.Text     := lsLinha;
                  lQryNova.ExecSQL;
                  lQryNova.Free;
               Except
                  On E: Exception do
                  Begin
                     If CaixaMensagem( 'Não foi possível criar a tabela de conferência ("'+E.Message+'"), Tentar continuar mesmo assim?', ctErro, [ cbSimNao ], 0 ) = False Then
                        Exit;
                  End;
               End;

               ltblTemp              := TADOTable.Create(Application);
               ltblTemp.Connection   := lADOConnectionTemp;
               ltblTemp.TableName    := UpperCase( lsTabela );

               ltblTemp.DisableControls;
               ltblTemp.IndexDefs.Update;
               llstTemp := TStringList.Create;
               ltblTemp.GetIndexNames( llstTemp );

               lqryTemp := TADOQuery.Create(Application);
               lqryTemp.Connection  := lADOConnectionTemp;
               For liZ := 1 To  llstTemp.Count Do
               Begin
                  Try
                     lqryTemp.SQL.Text := 'DROP INDEX ['+llstTemp[liZ-1]+'] On ['+UpperCase( lsTabela)+']';
                     lqryTemp.ExecSQL;
                     lqryTemp.SQL.Text := '';
                  Except
                     On E: Exception Do
                     Begin
                        CaixaMensagem('Não foi possível excluir o índice "'+llstTemp.Strings[liZ-1]+'" da tabela "'+ltblTemp.TableName+'" ('+E.Message+')', ctErro, [ cbOK ], 0);
                        Exit;
                     End;
                  End;
               End;
               llstTemp.Free;

               lQryAtual              := TADOQuery.Create( Nil );
               lQryAtual.Connection   := lADOConnectionTemp;
               lQryAtual.SQL.Text     := 'SELECT * FROM '+lsTabela;
               lQryAtual.FieldDefs.Update;

               llstCampos1.Clear;
               llstCampos2.Clear;
               For liZ := 1 To  lQryAtual.FieldDefs.Count Do
               Begin
                  lsTipo:= ProcuraTipo( lqryAtual.FieldDefs.Items[liZ-1].DataType );

                  liTamanho := -1;
                  If Pos(UpperCase(lsTipo)+',', UpperCase(lsVariaveis)) > 0 Then
                     liTamanho := lQryAtual.FieldDefs.Items[liZ-1].Size;

                  If liTamanho=-1 Then
                  Begin
                     llstCampos1.Add(UpperCase(lQryAtual.FieldDefs.Items[liZ-1].Name));
                     llstCampos2.Add(UpperCase(lQryAtual.FieldDefs.Items[liZ-1].Name)+' '+lsTipo);
                  End
                  Else
                  Begin
                     llstCampos1.Add(UpperCase(lQryAtual.FieldDefs.Items[liZ-1].Name));
                     llstCampos2.Add(UpperCase(lQryAtual.FieldDefs.Items[liZ-1].Name)+' '+lsTipo+' ('+IntToStr(liTamanho)+')');
                  End;
               End;
               llstCampos1.Sorted := True;
               llstCampos2.Sorted := True;

               lQryNova              := TAdoQuery.Create( Nil );
               lQryNova.Connection   := frmprincipal.AdoPrincipal;
               lQryNova.SQL.Text     := 'SELECT * FROM '+lsTabela;
               lQryNova.FieldDefs.Update;

               For liZ := 1 To  lQryNova.FieldDefs.Count Do
               Begin
                  lsTipo := ProcuraTipo( lqryNova.FieldDefs.Items[liZ-1].DataType );

                  liTamanho := -1;
                  If Pos(UpperCase(lsTipo)+',', UpperCase(lsVariaveis)) > 0 Then
                     liTamanho := lQryNova.FieldDefs.Items[liZ-1].Size;

                  If lQryAtual.FieldDefs.IndexOf( lQryNova.FieldDefs.Items[liZ-1].Name ) > -1 Then
                  Begin
                     If ( ( liTamanho = -1 ) And ( llstCampos2.IndexOf( lQryNova.FieldDefs.Items[liZ-1].Name + ' ' + lsTipo ) > -1 ) Or
                        ( ( liTamanho > -1 ) And ( llstCampos2.IndexOf( lQryNova.FieldDefs.Items[liZ-1].Name + ' ' + lsTipo + ' (' + IntToStr( liTamanho ) + ')' ) > - 1 ) ) ) Then
                     Begin
                        If llstCampos1.IndexOf( lQryNova.FieldDefs.Items[liZ-1].Name ) > -1 Then
                        Begin
                           llstCampos2.Delete( llstCampos1.IndexOf(lQryNova.FieldDefs.Items[liZ-1].Name));
                           llstCampos1.Delete( llstCampos1.IndexOf(lQryNova.FieldDefs.Items[liZ-1].Name));
                        End;
                     End
                     Else // O nome confere mas o tipo e/ou tamanho não
                     Begin
                        Try
                           lQryTemp            := TADOQuery.Create( Nil );
                           lQryTemp.Connection := lADOConnectionTemp;
                           lQryTemp.SQL.Text   := 'ALTER TABLE ' + lsTabela + ' DROP ' + lQryNova.FieldDefs.Items[liZ-1].Name;
                           lQryTemp.ExecSQL;
                           lQryTemp.Free;
                        Except
                           On E: Exception Do
                           Begin
                              CaixaMensagem( 'Não foi possível excluir o campo "'+lQryNova.FieldDefs.Items[liZ-1].Name+'" na tabela "'+lsTabela+'" ('+E.Message+')', ctErro, [ cbOk ], 0 );
                           End;
                        End;

                        Try
                           lQryTemp            := TADOQuery.Create( Nil );
                           lQryTemp.Connection := lADOConnectionTemp;
                           lQryTemp.SQL.Text   := 'ALTER TABLE '+lsTabela+' ADD '+lQryNova.FieldDefs.Items[liZ-1].Name+' '+lsTipo;
                           If liTamanho>-1 Then
                              lQryTemp.SQL.Text := 'ALTER TABLE '+lsTabela+' ADD '+lQryNova.FieldDefs.Items[liZ-1].Name+' '+lsTipo+' ('+IntToStr(liTamanho)+')';
                           lQryTemp.ExecSQL;
                           lQryTemp.Free;
                        Except
                           On E: Exception Do
                           Begin
                              CaixaMensagem( 'Não foi possível incluir o campo "'+lQryAtual.FieldDefs.Items[liZ-1].Name+'" na tabela "'+lsTabela+'" ('+E.Message+')', ctErro, [ cbOk ], 0 );
                           End;
                        End;

                        WriteLn( ltxtTemp, 'Campo "' + lQryAtual.FieldDefs.Items[liZ-1].Name + '" atualizado na Tabela "' + lsTabela + '"' );

                        If llstCampos1.IndexOf(lQryNova.FieldDefs.Items[liZ-1].Name)>-1 Then
                        Begin
                           llstCampos2.Delete(llstCampos1.IndexOf(lQryNova.FieldDefs.Items[liZ-1].Name));
                           llstCampos1.Delete(llstCampos1.IndexOf(lQryNova.FieldDefs.Items[liZ-1].Name));
                        End;
                     End;
                  End
                  Else
                  Begin
                     Try
                        lQryAtual.SQL.Text    := 'ALTER TABLE '+lsTabela+' ADD '+lQryNova.FieldDefs.Items[liZ-1].Name+' '+lsTipo;
                        If liTamanho>-1 Then
                           lQryAtual.SQL.Text := 'ALTER TABLE '+lsTabela+' ADD '+lQryNova.FieldDefs.Items[liZ-1].Name+' '+lsTipo+' ('+IntToStr(liTamanho)+')';
                        lQryAtual.ExecSQL;
                        WriteLn( ltxtTemp, 'Campo "' + lQryNova.FieldDefs.Items[liZ-1].Name + '" criado na Tabela "' + lsTabela + '"' );
                     Except
                        On E: Exception Do
                        Begin
                           CaixaMensagem( 'Não foi possível incluir o campo "'+lQryNova.FieldDefs.Items[liZ-1].Name+'" na tabela "'+lsTabela+'" ('+E.Message+')', ctErro, [ cbOk ], 0 );
                        End;
                     End;
                  End;
               End;
               lQryNova.Free;
               lQryAtual.Free;

               lQryNova              := TAdoQuery.Create( Nil );
               lQryNova.Connection   := frmprincipal.AdoPrincipal;
               lQryNova.SQL.Text   := 'DROP TABLE ' + lsTabela;
               Try
                  lQryNova.ExecSQL;
               Except
                  On E: Exception Do
                  Begin
                      CaixaMensagem( 'Não foi possível excluir a tabela de conferência ("'+E.MEssage+'")', ctErro, [ cbOk ], 0 );
                      Exit;
                  End;
               End;
               For liZ := 1 To  llstCampos1.Count Do
               Begin
                  lQryAtual             := TADOQuery.Create( Nil );
                  lQryAtual.Connection  := lADOConnectionTemp;
                  lQryAtual.SQL.Text := 'ALTER TABLE '+lsTabela+' DROP '+llstCampos1[liZ-1];
                  Try
                     lQryAtual.ExecSQL;
                  Except
                     On E: Exception Do
                     Begin
                        CaixaMensagem( 'Não foi possível alterar a tabela de conferência ("'+E.MEssage+'")', ctErro, [ cbOk ], 0 );
                        Exit;
                     End;
                  End;

                  WriteLn( ltxtTemp, 'Campo "' + llstCampos1[ liZ - 1 ] + '" excluído na Tabela "' + lsTabela + '"' );

                  lQryAtual.Free;
               End;
               llstCampos1.Clear;
               llstCampos2.Clear;
               lQryNova.Free;
            End;

            If flstTabelas.IndexOf( lsTabela ) >- 1 Then
               flstTabelas.Delete( flstTabelas.IndexOf( lsTabela ) )
            Else
               Begin
                  Try
                     lQryNova              := TAdoQuery.Create( Nil );
                     lQryNova.Connection   := frmprincipal.AdoPrincipal;
                     lqryNova.SQL.Text     := lsLinha;
                     lqryNova.ExecSQL;
                     lqryNova.Free;
                  Except
                     On E: Exception Do
                     Begin
                        CaixaMensagem( 'Não foi possível criar a tabela ('+E.Message+')', ctErro, [ cbOk ], 0 );
                        Exit;
                     End;
                  End;

                  WriteLn( ltxtTemp, 'Tabela "' + lsTabela + '" criada' );
               End;
            flstEstruturaTEC.Delete(0);
         End; // <- Se a tabela existir ...
      End;
      If fProgresso <> Nil Then
      Begin
         fProgresso.Position := 0;
         fProgresso.Max      := flstTabelas.Count;
      End;
      While flstTabelas.Count > 0 Do
      Begin
         If fProgresso <> Nil Then
         Begin
            fProgresso.Position := fProgresso.Position + 1;
            fProgresso.Update;
         End;
         If UpperCase( Copy( flstTabelas[ 0 ], 1, 4 ) ) <> 'TMP_' Then
         Begin
            If CaixaMensagem( 'A tabela "' + flstTabelas[ 0 ] + '" não faz parte da '+
                              'estrutura do sistema ou não é mais necessária, deseja excluí-la?', ctAviso, [ cbSimNao ], 0 ) Then
            Begin
               Try
                  lqryTemp            := TADOQuery.Create(Application);
                  lqryTemp.Connection := lADOConnectionTemp;
                  lqryTemp.SQL.Text   := 'DROP TABLE [' + flstTabelas[ 0 ] + ']';
                  lqryTemp.ExecSQL;
                  lqryTemp.Free;
               Except
                  On E: Exception Do
                  Begin
                     CaixaMensagem( 'Não foi possível excluir a tabela ('+E.Message+')', ctErro, [ cbOk ], 0 );
                     Exit;
                  End;
               End;
               WriteLn( ltxtTemp, 'Tabela "' + flstTabelas[ 0 ] + '" excluída' );
               //LogBookTXT( Operador, DtMov, FormatDateTime( 'hh:mm', Now ), 'Exclusão da tabela "' + flstTabelas[ 0 ] + '"' );

               flstTabelas.Delete( 0 );
            End
            Else
               flstTabelas.Delete( 0 );
         End
         Else
         Begin
            Try
               lqryTemp            := TADOQuery.Create(Application);
               lqryTemp.Connection := lADOConnectionTemp;
               lqryTemp.SQL.Text   := 'DROP TABLE [' + flstTabelas[ 0 ]+']';
               lqryTemp.ExecSQL;
               lqryTemp.Free;
            Except
               On E: Exception Do
               Begin
                  CaixaMensagem( 'Não foi possível criar a tabela ('+E.Message+')', ctErro, [ cbOk ], 0 );
                  Exit;
               End;
            End;
            WriteLn( ltxtTemp, 'Tabela "' + flstTabelas[ 0 ] + '" excluída' );

            flstTabelas.Delete( 0 );
         End;
      End;
      Result := True;
   Except
      On E: Exception Do
      Begin
          //
      End;
   End;
   lADOConnectionTemp.Close;
   lADOConnectionTemp.Free;
   System.CloseFile( ltxtTemp );
end;
Procedure CriarCalculado( fDataSet : TDataSet; fFieldName: String; fDataType : TFieldType; fSize : Integer );
Var lfldTemp : TField;
    liCont : Word;
begin
   If fDataSet.FindField( fFieldName ) = Nil Then
   Begin
   {$REGION 'Fechando DataSet'}
      fDataSet.Close;
    {$ENDREGION}
      If fDataSet.Fields.Count = 0 Then
      Begin
         fDataSet.FieldDefs.Clear;
         fDataSet.FieldDefs.Update;

         For liCont := 1 To fDataSet.FieldDefs.Count Do
         Begin
            If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftString Then
            Begin
               lfldTemp := TStringField.Create( Nil );
               lfldTemp.Size := fDataSet.FieldDefs[ liCont - 1 ].Size;
            End
            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftDateTime Then
               lfldTemp := TDateTimeField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftTimeStamp Then
               lfldTemp := TSQLTimeStampField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftInteger Then
               lfldTemp := TIntegerField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftFloat Then
               lfldTemp := TFloatField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftSmallint  Then
               lfldTemp := TSmallintField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftWord  Then
               lfldTemp := TWordField.Create( Nil )
            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftBoolean  Then
               lfldTemp := TBooleanField.Create( Nil )
            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftCurrency  Then
               lfldTemp := TCurrencyField.Create( Nil )
            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftBCD  Then
               lfldTemp := TBCDField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftDate  Then
               lfldTemp := TDateField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftTime  Then
               lfldTemp := TTimeField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftBytes  Then
               lfldTemp := TBytesField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftVarBytes  Then
               lfldTemp := TVarBytesField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftAutoInc  Then
               lfldTemp := TAutoIncField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftBlob  Then
               lfldTemp := TBlobField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftMemo  Then
               lfldTemp := TMemoField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftGraphic  Then
               lfldTemp := TGraphicField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftWideString  Then
               lfldTemp := TWideStringField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftLargeInt  Then
               lfldTemp := TLargeIntField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftADT  Then
               lfldTemp := TADTField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftArray  Then
               lfldTemp := TArrayField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftReference  Then
               lfldTemp := TReferenceField.Create( Nil )

            Else
               lfldTemp := TField.Create( Nil );
            lfldTemp.FieldName  := fDataSet.FieldDefs[ liCont - 1 ].Name;
            lfldTemp.FieldKind  := fkData;
            lfldTemp.DataSet    := fDataSet;
            lfldTemp.Index      := fDataSet.FieldCount;
            lfldTemp.Name       := fDataSet.Name + lfldTemp.FieldName;
            lfldTemp.Visible    := True;
         End;
      End;

      If fDataType = ftString Then
      Begin
         lfldTemp := TStringField.Create( Nil );
         lfldTemp.Size := fSize;
      End
      Else If fDataType = ftDateTime Then
         lfldTemp := TDateTimeField.Create( Nil )

      Else If fDataType = ftTimeStamp Then
         lfldTemp := TSQLTimeStampField.Create( Nil )

      Else If fDataType = ftInteger Then
         lfldTemp := TIntegerField.Create( Nil )

      Else If fDataType = ftFloat Then
         lfldTemp := TFloatField.Create( Nil )

      Else If fDataType = ftSmallint  Then
         lfldTemp := TSmallintField.Create( Nil )

      Else If fDataType = ftWord  Then
         lfldTemp := TWordField.Create( Nil )

      Else If fDataType = ftBoolean  Then
         lfldTemp := TBooleanField.Create( Nil )

      Else If fDataType = ftCurrency  Then
         lfldTemp := TCurrencyField.Create( Nil )

      Else If fDataType = ftBCD  Then
         lfldTemp := TBCDField.Create( Nil )

      Else If fDataType = ftDate  Then
         lfldTemp := TDateField.Create( Nil )

      Else If fDataType = ftTime  Then
         lfldTemp := TTimeField.Create( Nil )

      Else If fDataType = ftBytes  Then
         lfldTemp := TBytesField.Create( Nil )

      Else If fDataType = ftVarBytes  Then
         lfldTemp := TVarBytesField.Create( Nil )

      Else If fDataType = ftAutoInc  Then
         lfldTemp := TAutoIncField.Create( Nil )

      Else If fDataType = ftBlob  Then
         lfldTemp := TBlobField.Create( Nil )

      Else If fDataType = ftMemo  Then
         lfldTemp := TMemoField.Create( Nil )

      Else If fDataType = ftGraphic  Then
         lfldTemp := TGraphicField.Create( Nil )

      Else If fDataType = ftWideString  Then
         lfldTemp := TWideStringField.Create( Nil )

      Else If fDataType = ftLargeInt  Then
         lfldTemp := TLargeIntField.Create( Nil )

      Else If fDataType = ftADT  Then
         lfldTemp := TADTField.Create( Nil )

      Else If fDataType = ftArray  Then
         lfldTemp := TArrayField.Create( Nil )

      Else If fDataType = ftReference  Then
         lfldTemp := TReferenceField.Create( Nil )

      Else
         lfldTemp := TField.Create( Nil );
      lfldTemp.FieldName  := fFieldName;
      lfldTemp.FieldKind  := fkCalculated;

      If AnsiUpperCase( Trim( fDataSet.ClassName ) ) = AnsiUpperCase( Trim( 'TCLIENTDATASET' ) ) Then
         lfldTemp.FieldKind := fkInternalCalc;

      lfldTemp.DataSet    := fDataSet;
      lfldTemp.Index      := fDataSet.FieldCount;
      lfldTemp.Name       := fDataSet.Name + lfldTemp.FieldName;
      lfldTemp.Visible    := True;
   End;
End;

Procedure ListaPeriodo( fComponente1: TbsSkinDateEdit; fComponente2: TbsSkinDateEdit; fItem: Integer; fData : TDateTime );
Var xMeses : Array[ 1..12 ] Of  Integer;
    DiaIni, DiaFim : TDateTime;
    nVar, nVar1    : Integer;
begin
   If fItem < 0 Then
   Begin
      CaixaMensagem( 'Nenhum item foi selecionado!!!', ctInforma, [ cbOk ], 0 );
      Exit;
   End;
   xMeses[ 1] := 31;
   xMeses[ 2] := 28;
   If StrToInt( FormatDateTime( 'yyyy', fData ) ) Mod 4 = 0 Then
      xMeses[2] := 29;
   xMeses[ 3] := 31;
   xMeses[ 4] := 30;
   xMeses[ 5] := 31;
   xMeses[ 6] := 30;
   xMeses[ 7] := 31;
   xMeses[ 8] := 31;
   xMeses[ 9] := 30;
   xMeses[10] := 31;
   xMeses[11] := 30;
   xMeses[12] := 31;

   DiaIni := StrToDate( '01/' + FormatDateTime( 'mm/yyyy', fData ) );
   DiaFim := StrToDate( IntToStr( xMeses[ StrToInt( FormatDateTime( 'mm', fData ) ) ] ) + FormatDateTime( '/mm/yyyy', fData ) );

   Case fItem Of 
   0:Begin // Nenhum
        fComponente1.Text := '01/01/1901';
        fComponente2.Text := '31/12/2200';
     End;
   1:Begin // Ontem
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 1 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 1 );
     End;
   2:Begin // Hoje
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
     End;
   3:Begin // Amanhã
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 1 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 1 );
     End;
   4:Begin // Semana Anterior
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData -7 );
        While DayOfWeek( StrToDate( fComponente1.Text ) ) <> 1 Do
           fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text )+6);
     End;
   5:Begin // Esta semana
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
        While DayOfWeek (StrToDate( fComponente1.Text )) <> 1 Do
           fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text )+6);
     End;
   6:Begin // Próxima Semana
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 7 );
        While DayOfWeek (StrToDate( fComponente1.Text )) <> 1 Do
           fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text )+6);
     End;
   7:Begin // Quinzena anterior
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 15 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 15 );
        If FormatDateTime( 'dd', fData ) <= '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '16' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate ( fComponente1.Text ) - 1 );
           nVar := StrToInt( Copy( fComponente2.Text, 4, 2 ) );
           While Copy( fComponente2.Text, 1 , 2 ) <> Trim( IntToStr( xMeses[ nVar] ) ) Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate ( fComponente2.Text ) + 1 );
        End;
        If FormatDateTime( 'dd', fData ) > '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '01' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate ( fComponente1.Text ) - 1 );
           While Copy( fComponente2.Text, 1, 2 ) <> '15' Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate ( fComponente2.Text ) + 1 );
        End;
     End;
   8:Begin // Esta Quinzena
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
        If FormatDateTime( 'dd', fData ) <= '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '01' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
           While Copy( fComponente2.Text, 1, 2 ) <> '15' Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente2.Text ) + 1 );
        End;
        If FormatDateTime( 'dd', fData ) > '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '16' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
           nVar := StrToInt( FormatDateTime( 'mm', fData ) );
           While Copy( fComponente2.Text, 1, 2 ) <> Trim( IntToStr (xMeses[nVar])) Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate ( fComponente2.Text ) + 1 );
        End;
     End;
   9:Begin // Próxima Quinzena
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 15);
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 15);
        If FormatDateTime( 'dd', fData ) <= '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '16' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
           nVar := StrToInt( Copy( fComponente2.Text, 4, 2 ) );
           While Copy( fComponente2.Text, 1, 2 ) <> Trim( IntToStr( xMeses[ nVar ] ) ) Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente2.Text ) + 1 );
        End;
        If FormatDateTime( 'dd', fData ) > '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '01' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
           While Copy( fComponente2.Text, 1, 2 ) <> '15' Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente2.Text ) + 1 );
        End;
     End;
   10:Begin // Nos Últimos 15 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 15);
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData );
      End;
   11:Begin // Nos Próximos 15 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 15 );
      End;
   12:Begin // Nos Últimos e Próximos 15 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 15 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 15 );
      End;
   13:Begin // Mês Anterior
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', DiaIni - 1 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', DiaIni - 1 );
         While Copy( fComponente1.Text, 1, 2 ) <> '01' Do
            fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
      End;
   14:Begin // Este Mês
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', DiaIni );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', DiaFim );
      End;
   15:Begin // Próximo Mês
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', DiaFim + 1 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', DiaFim + 28 );
         nVar := StrToInt( Copy( fComponente2.Text, 4, 2 ) );
         While Copy( fComponente2.Text, 1, 2 ) <> Trim( IntToStr( xMeses[ nVar ] ) ) Do
            fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente2.Text ) + 1 );
      End;
   16:Begin // Nos Últimos 30 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 30 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData );
      End;
   17:Begin // Nos Próximos 30 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 30 );
      End;
   18:Begin // Nos Últimos e Próximos 30 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 30 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 30 );
      End;
   19:Begin // Nos Últimos 45 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 45 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
      End;
   20:Begin // Nos Próximos 45 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 45 );
      End;
   21:Begin // Nos Últimos e Próximos 45 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 45 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 45 );
      End;
   22:Begin // Nos Últimos 60 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 60 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
      End;
   23:Begin // Nos Próximos 60 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 60 );
      End;
   24:Begin // Nos Últimos e Próximos 60 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 60 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 60 );
      End;
   25:Begin // Trimestre Anterior
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         nVar  := StrToInt( FormatDateTime( 'yyyy', fData ) ) - 1;
         Case nVar1 Of 
         1..3:Begin
                 fComponente1.Text := '01/10/' + Trim( IntToStr( nVar ) );
                 fComponente2.Text := '31/12/' + Trim( IntToStr( nVar ) );
              End;
         4..6:Begin
                 fComponente1.Text := '01/01/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '31/03/' + FormatDateTime( 'yyyy', fData );
              End;
         7..9:Begin
                 fComponente1.Text := '01/04/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/06/' + FormatDateTime( 'yyyy', fData );
              End;
         10..12:Begin
                   fComponente1.Text := '01/07/' + FormatDateTime( 'yyyy', fData );
                   fComponente2.Text := '30/09/' + FormatDateTime( 'yyyy', fData );
                End;
         End;
      End;
   26:Begin // Neste Trimestre
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         Case nVar1 Of 
         1..3:Begin
                 fComponente1.Text := '01/01/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '31/03/' + FormatDateTime( 'yyyy', fData );
              End;
         4..6:Begin
                 fComponente1.Text := '01/04/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/06/' + FormatDateTime( 'yyyy', fData );
              End;
         7..9:Begin
                 fComponente1.Text := '01/07/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/09/' + FormatDateTime( 'yyyy', fData );
              End;
         10..12:Begin
                   fComponente1.Text := '01/10/' + FormatDateTime( 'yyyy', fData );
                   fComponente2.Text := '31/12/' + FormatDateTime( 'yyyy', fData );
                End;
         End;
      End;
   27:Begin // Próximo Trimestre
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         nVar  := StrToInt( FormatDateTime( 'yyyy', fData ) ) + 1;
         Case nVar1 Of 
         1..3:Begin
                 fComponente1.Text := '01/04/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/06/' + FormatDateTime( 'yyyy', fData );
              End;
         4..6:Begin
                 fComponente1.Text := '01/07/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/09/' + FormatDateTime( 'yyyy', fData );
              End;
         7..9:Begin
                 fComponente1.Text := '01/10/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '31/12/' + FormatDateTime( 'yyyy', fData );
              End;
         10..12:Begin
                 fComponente1.Text := '01/01/' + Trim( IntToStr( nVar ) );
                 fComponente2.Text := '31/03/' + Trim( IntToStr( nVar ) );
              End;
         End;
     End;
   28:Begin // Nos Últimos 90 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 90 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
      End;
   29:Begin // Nos Próximos 90 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 90 );
      End;
   30:Begin // Nos Últimos e Próximos 90 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 90 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 90 );
      End;
   31:Begin // Semestre Passado
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         nVar  := StrToInt( FormatDateTime( 'yyyy', fData ) ) - 1;
         Case nVar1 Of
         1..6:Begin
                 fComponente1.Text := '01/07/' + Trim( IntToStr( nVar ) );
                 fComponente2.Text := '31/12/' + Trim( IntToStr( nVar ) );
              End;
         7..12:Begin
                 fComponente1.Text := '01/01/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/06/' + FormatDateTime( 'yyyy', fData );
               End;
         End;
     End;
   32:Begin // Neste Semestre
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         Case nVar1 Of 
         1..6:Begin
                 fComponente1.Text := '01/01/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/06/' + FormatDateTime( 'yyyy', fData );
              End;
         7..12:Begin
                  fComponente1.Text := '01/07/' + FormatDateTime( 'yyyy', fData );
                  fComponente2.Text := '31/12/' + FormatDateTime( 'yyyy', fData );
               End;
         End;
     End;
   33:Begin // Próximo Semestre
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         nVar  := StrToInt( FormatDateTime( 'yyyy', fData ) ) + 1;
         Case nVar1 Of
         1..6:Begin
                 fComponente1.Text := '01/07/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '31/12/' + FormatDateTime( 'yyyy', fData );
              End;
         7..12:Begin
                  fComponente1.Text := '01/01/' + Trim( IntToStr( nVar ) );
                  fComponente2.Text := '30/06/' + Trim( IntToStr( nVar ) );
               End;
         End;
     End;
   34:Begin // Nos Últimos 120 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 120 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
      End;
   35:Begin // Nos Próximos 120 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 120 );
      End;
   36:Begin // Nos Últimos e Próximos 120 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 120 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 120 );
      End;
   37:Begin // Ano Passado
         nVar := StrToInt( FormatDateTime( 'yyyy', fData ) ) - 1;
         fComponente1.Text := '01/01/' + Trim( IntToStr( nVar ) );
         fComponente2.Text := '31/12/' + Trim( IntToStr( nVar ) );
      End;
   38:Begin // Neste Ano
         fComponente1.Text := '01/01/' + FormatDateTime( 'yyyy', fData );
         fComponente2.Text := '31/12/' + FormatDateTime( 'yyyy', fData );
      End;
   39:Begin // Próximo Ano
         nVar := StrToInt( FormatDateTime( 'yyyy', fData ) ) + 1;
         fComponente1.Text := '01/01/' + Trim( IntToStr( nVar ) );
         fComponente2.Text := '31/12/' + Trim( IntToStr( nVar ) );
      End;
   End;
end;

Function ExisteCampo( prsNomeTabela, prsNomeCampo: string; prSQLConnection: TADOConnection ): Boolean;
var lsdtsTemp : TADOQuery;
begin
   lsdtsTemp                     := TADOQuery.Create( Nil );
   lsdtsTemp.Connection          := prSQLConnection;
   lsdtsTemp.Sql.Text  := 'SELECT * FROM '+ prsNomeTabela +
                          ' WHERE 1=2';
   lsdtsTemp.FieldDefs.Clear;
   lsdtsTemp.FieldDefs.Update;
   ExisteCampo    := False;
   if lsdtsTemp.FieldDefList.IndexOf( prsNomeCampo ) <> -1 then
      ExisteCampo := True;
   lsdtsTemp.Close;
   FreeAndNil( lsdtsTemp );
end;



end.
