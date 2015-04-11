{*************************************************************************
Empresa..: Tec-Soft Informática ltda.
Autor....: Eduardo Medeiros Dantas.
Data.....: Indefinida
Aviso....: Copyright (c) 1996, Tec-Soft Informática , All Rights Reserved
Módulo...: Unidade de Manutenção de Bancos de Dados
*************************************************************************}
unit uSQL;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     DBTables, ImgList, Menus, Db, ComCtrls, StdCtrls, ExtCtrls, Grids,
     DBGrids, Buttons, DBIProcs, Variants, ADODB;

type
  TFrmSQL = class(TForm)
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    EditVlrPesq: TEdit;
    PnlTabelas: TPanel;
    Panel4: TPanel;
    SourceQuery1: TDataSource;
    ListTabelas: TListBox;
    Memo1: TMemo;
    BtnExecutar: TSpeedButton;
    BtnApagar: TSpeedButton;
    BtnVoltar: TSpeedButton;
    Memo2: TMemo;
    GroupBox1: TGroupBox;
    EditAlter: TEdit;
    EditTamanho: TEdit;
    EditDecimal: TEdit;
    ComboTipo: TComboBox;
    BtnAdicionarCampo: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    Adicionar1: TMenuItem;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    BtnExcluirCampo: TSpeedButton;
    StatusBar1: TStatusBar;
    ListCampos: TListBox;
    Panel3: TPanel;
    ImageList1: TImageList;
    BtnAtualizaCampo: TSpeedButton;
    ListHint: TListBox;
    Panel2: TPanel;
    CheckBox1: TCheckBox;
    EngReversa1: TMenuItem;
    CriarCopia1: TMenuItem;
    ProgressBar1: TProgressBar;
    Renomear1: TMenuItem;
    PnlPosicao: TPanel;
    TransferirDados1: TMenuItem;
    Inserir1: TMenuItem;
    CorpodeSentenas1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Atualizar1: TMenuItem;
    Limpar1: TMenuItem;
    Alterar1: TMenuItem;
    Criar1: TMenuItem;
    N3: TMenuItem;
    Excluir2: TMenuItem;
    Indexar1: TMenuItem;
    Incluir1: TMenuItem;
    Excluir3: TMenuItem;
    EstruturadeTabelas1: TMenuItem;
    AlterarDados1: TMenuItem;
    SourceTabAltera: TDataSource;
    LocalizarCampo1: TMenuItem;
    ListCamposPesq: TListBox;
    LimparTodosDados1: TMenuItem;
    Ordenao1: TMenuItem;
    LocalizarValor1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Adicionar2: TMenuItem;
    Excluir4: TMenuItem;
    N4: TMenuItem;
    Propriedades1: TMenuItem;
    Atualizar2: TMenuItem;
    PnlAtualizarCampo: TPanel;
    GroupBox2: TGroupBox;
    Bevel2: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EditAtualizaNomeAtu: TEdit;
    EditAtualizaTamanhoAtu: TEdit;
    EditAtualizaDecimalAtu: TEdit;
    ComboAtualizaTipoAtu: TComboBox;
    CheckAtualizaNuloAtu: TCheckBox;
    GroupBox3: TGroupBox;
    Bevel3: TBevel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EditAtualizaNomeNov: TEdit;
    EditAtualizaTamanhoNov: TEdit;
    EditAtualizaDecimalNov: TEdit;
    ComboAtualizaTipoNov: TComboBox;
    CheckAtualizaNuloNov: TCheckBox;
    Panel5: TPanel;
    ProgressAtualiza: TProgressBar;
    StatusAltera: TStatusBar;
    Panel6: TPanel;
    TreeIndex: TTreeView;
    BtnSubstituir: TSpeedButton;
    BtnLocalizar: TSpeedButton;
    ReplaceDialog1: TReplaceDialog;
    TreeView1: TTreeView;
    Panel7: TPanel;
    btnConectar: TBitBtn;
    btnDesconectar: TBitBtn;
    BtnConfirmaAtualizar: TBitBtn;
    BtnCancelaAtualizar: TBitBtn;
    Abrir1: TMenuItem;
    ADOManutencao: TADOConnection;
    ADOTemporario: TADOConnection;
    Query1: TADOQuery;
    QueryTemp: TADOQuery;
    TbEngReversa: TADOTable;
    TabAltera: TADOTable;
    edtPath: TEdit;
    btnPath: TBitBtn;
    OpenDialog1: TOpenDialog;
    procedure EditVlrPesqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnExecutarClick(Sender: TObject);
    procedure ListTabelasDblClick(Sender: TObject);
    procedure BtnVoltarClick(Sender: TObject);
    procedure BtnAdicionarCampoClick(Sender: TObject);
    procedure ComboTipoExit(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure Adicionar1Click(Sender: TObject);
    procedure EditDecimalExit(Sender: TObject);
    procedure EditTamanhoExit(Sender: TObject);
    procedure BtnExcluirCampoClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure ListCamposDblClick(Sender: TObject);
    procedure ListCamposKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListTabelasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnAtualizaCampoClick(Sender: TObject);
    procedure EngReversa1Click(Sender: TObject);
    procedure CriarCopia1Click(Sender: TObject);

    Procedure ListRefresh;
    Procedure EngReversa(Var vTabela: String);
    procedure Renomear1Click(Sender: TObject);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TransferirDados1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Inserir1Click(Sender: TObject);
    procedure Atualizar1Click(Sender: TObject);
    procedure Limpar1Click(Sender: TObject);
    procedure Criar1Click(Sender: TObject);
    procedure Excluir2Click(Sender: TObject);
    procedure Indexar1Click(Sender: TObject);
    procedure Incluir1Click(Sender: TObject);
    procedure Excluir3Click(Sender: TObject);
    procedure AlterarDados1Click(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure LocalizarCampo1Click(Sender: TObject);
    procedure ListCamposPesqExit(Sender: TObject);
    procedure LimparTodosDados1Click(Sender: TObject);
    procedure Ordenao1Click(Sender: TObject);
    procedure LocalizarValor1Click(Sender: TObject);
    procedure ListCamposPesqClick(Sender: TObject);
    procedure Adicionar2Click(Sender: TObject);
    procedure Excluir4Click(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure Propriedades1Click(Sender: TObject);
    procedure Atualizar2Click(Sender: TObject);
    procedure PnlAtualizarCampoExit(Sender: TObject);
    procedure ComboAtualizaTipoNovExit(Sender: TObject);
    procedure Memo1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure StatusBar1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StatusAlteraMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BtnLocalizarClick(Sender: TObject);
    procedure BtnSubstituirClick(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
    procedure BtnConfirmaAtualizarClick(Sender: TObject);
    procedure BtnCancelaAtualizarClick(Sender: TObject);
    procedure btnPathClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
    procedure btnDesconectarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSQL: TFrmSQL;

implementation


{$R *.DFM}

/// -> Procedimentos e Funções Personalizados
Procedure TFrmSQL.ListRefresh;
Begin
   ListTabelas.Clear;
   ListCampos.Clear;
   TreeIndex.Items.Clear;
   ADOManutencao.GetTableNames( ListTabelas.Items, False );

   If ListTabelas.Items.Count > 0 Then
      ListTabelas.ItemIndex := 0;
End;

Procedure TFrmSQL.EngReversa(Var vTabela: String);
Var I: Integer;
    Tipo: String;
    NomeCampo: String;
begin
Try
  Memo1.Clear;
  TbEngReversa.Close;
  TbEngReversa.Connection := ADOManutencao;
  TbEngReversa.TableName  := vTabela;
  TbEngReversa.Open;
  Tipo:='';
  If TbEngReversa.Fields[0].DataType = ftString Then
    Tipo:='VARCHAR';
  If TbEngReversa.Fields[0].DataType = ftSmallint Then
    Tipo:='SMALLINT';
  If TbEngReversa.Fields[0].DataType = ftInteger Then
    Tipo:='INTEGER';
  If TbEngReversa.Fields[0].DataType = ftWord Then
    Tipo:='CHAR';
  If TbEngReversa.Fields[0].DataType = ftBoolean Then
    Tipo:='VARCHAR';
  If TbEngReversa.Fields[0].DataType = ftFloat Then
    Tipo:='FLOAT';
  If TbEngReversa.Fields[0].DataType = ftCurrency Then
    Tipo:='FLOAT';
  If TbEngReversa.Fields[0].DataType = ftBCD Then
    Tipo:='FLOAT';
  If TbEngReversa.Fields[0].DataType = ftDate Then
    Tipo:='DATE';
  If TbEngReversa.Fields[0].DataType = ftTime Then
    Tipo:='DATE';
  If TbEngReversa.Fields[0].DataType = ftDateTime Then
    Tipo:='DATE';
  If TbEngReversa.Fields[0].DataType = ftBytes Then
    Tipo:='CHAR';
  If TbEngReversa.Fields[0].DataType = ftVarBytes Then
    Tipo:='VARCHAR';
  If TbEngReversa.Fields[0].DataType = ftBlob Then
    Tipo:='BLOB';
  If TbEngReversa.Fields[0].DataType = ftGraphic Then
    Tipo:='BLOB';
  If TbEngReversa.Fields[0].DataType = ftMemo Then
    Tipo:='BLOB';
  If TbEngReversa.Fields[0].DataType = ftFmtMemo Then
    Tipo:='BLOB';
  If TbEngReversa.Fields[0].DataType = ftParadoxOle Then
    Tipo:='BLOB';
  If TbEngReversa.Fields[0].DataType = ftDBaseOle Then
    Tipo:='BLOB';
  If TbEngReversa.Fields[0].DataType = ftTypedBinary Then
    Tipo:='BLOB';
  NomeCampo:='';
  NomeCampo:=TbEngReversa.Fields[0].FieldName;
  If TbEngReversa.Fields[0].FieldName='DESC' Then
  Begin
    If Tipo='FLOAT' Then
      NomeCampo:='DESCONTO'
    Else
      NomeCampo:='DESCRICAO';
  End;
  If TbEngReversa.Fields[0].FieldName='END' Then
    NomeCampo:='ENDERECO';
  If (UpperCase(Tipo)='VARCHAR') Then
    Memo1.Text:='Create Table '+vTabela+' ('+NomeCampo+' '+Tipo+' ('+
                IntToStr(TbEngReversa.Fields[0].Size)+')';
  If (UpperCase(Tipo)='INTEGER') Then
    Memo1.Text:='Create Table '+vTabela+' ('+NomeCampo+' INTEGER';
  If (UpperCase(Tipo)='FLOAT') Then
    Memo1.Text:='Create Table '+vTabela+' ('+NomeCampo+' FLOAT';
  If (UpperCase(Tipo)='SMALLINT') Then
    Memo1.Text:='Create Table '+vTabela+' ('+NomeCampo+' SMALLINT';
  If (UpperCase(Tipo)='DATE') Then
    Memo1.Text:='Create Table '+vTabela+' ('+NomeCampo+' DATE';
  If (UpperCase(Tipo)='BLOB') Then
  Begin
    Memo1.Text:='Create Table '+vTabela+' ('+NomeCampo+
                ' BLOB SUB_TYPE 0 SEGMENT SIZE '+IntToStr(TbEngReversa.Fields[0].Size);
  End;
  If (UpperCase(Tipo)='CHAR') Then
    Memo1.Text:='Create Table '+vTabela+' ('+NomeCampo+' CHAR '+
                IntToStr(TbEngReversa.Fields[0].Size);
  If (UpperCase(Tipo)='DOUBLE PRECISION') Then
    Memo1.Text:='Create Table '+vTabela+' Add '+NomeCampo+
                     ' DOUBLE PRECISION';

  ProgressBar1.Visible := True;
  ProgressBar1.Max := TbEngReversa.FieldCount;
  ProgressBar1.Position := 1;
  For I := 2 To TbEngReversa.FieldCount Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    Tipo:='';
    If TbEngReversa.Fields[I-1].DataType = ftString Then
      Tipo:='VARCHAR';
    If TbEngReversa.Fields[I-1].DataType = ftSmallint Then
      Tipo:='SMALLINT';
    If TbEngReversa.Fields[I-1].DataType = ftInteger Then
      Tipo:='INTEGER';
    If TbEngReversa.Fields[I-1].DataType = ftWord Then
      Tipo:='CHAR';
    If TbEngReversa.Fields[I-1].DataType = ftBoolean Then
      Tipo:='VARCHAR';
    If TbEngReversa.Fields[I-1].DataType = ftFloat Then
      Tipo:='FLOAT';
    If TbEngReversa.Fields[I-1].DataType = ftCurrency Then
      Tipo:='FLOAT';
    If TbEngReversa.Fields[I-1].DataType = ftBCD Then
      Tipo:='FLOAT';
    If TbEngReversa.Fields[I-1].DataType = ftDate Then
      Tipo:='DATE';
    If TbEngReversa.Fields[I-1].DataType = ftTime Then
      Tipo:='DATE';
    If TbEngReversa.Fields[I-1].DataType = ftDateTime Then
      Tipo:='DATE';
    If TbEngReversa.Fields[I-1].DataType = ftBytes Then
      Tipo:='CHAR';
    If TbEngReversa.Fields[I-1].DataType = ftVarBytes Then
      Tipo:='VARCHAR';
    If TbEngReversa.Fields[I-1].DataType = ftBlob Then
      Tipo:='BLOB';
    If TbEngReversa.Fields[I-1].DataType = ftGraphic Then
      Tipo:='BLOB';
    If TbEngReversa.Fields[I-1].DataType = ftMemo Then
      Tipo:='BLOB';
    If TbEngReversa.Fields[I-1].DataType = ftFmtMemo Then
      Tipo:='BLOB';
    If TbEngReversa.Fields[I-1].DataType = ftParadoxOle Then
      Tipo:='BLOB';
    If TbEngReversa.Fields[I-1].DataType = ftDBaseOle Then
      Tipo:='BLOB';
    If TbEngReversa.Fields[I-1].DataType = ftTypedBinary Then
      Tipo:='BLOB';

    NomeCampo := '';
    NomeCampo := TbEngReversa.Fields[I-1].FieldName;
    If TbEngReversa.Fields[I-1].FieldName='DESC' Then
    Begin
      If Tipo='FLOAT' Then
        NomeCampo:='DESCONTO'
      Else
        NomeCampo:='DESCRICAO';
    End;
    If TbEngReversa.Fields[I-1].FieldName='END' Then
      NomeCampo:='ENDERECO';

    If (UpperCase(Tipo)='VARCHAR') Then
    Begin
      If TbEngReversa.Fields[I-1].Size>0 Then
        Memo1.Text:=Memo1.Text+', '+NomeCampo+' VARCHAR ('+IntToStr(TbEngReversa.Fields[I-1].Size)+')'
      Else
        Memo1.Text:=Memo1.Text+', '+NomeCampo+' VARCHAR (1)';
    End;
    If (UpperCase(Tipo)='FLOAT') Then
      Memo1.Text:=Memo1.Text+', '+NomeCampo+' FLOAT';
    If (UpperCase(Tipo)='INTEGER') Then
      Memo1.Text:=Memo1.Text+', '+NomeCampo+' INTEGER';
    If (UpperCase(Tipo)='SMALLINT') Then
      Memo1.Text:=Memo1.Text+', '+NomeCampo+' SMALLINT';
    If (UpperCase(Tipo)='DATE') Then
      Memo1.Text:=Memo1.Text+', '+NomeCampo+' DATE';
    If (UpperCase(Tipo)='BLOB') Then
    Begin
      Memo1.Text:=Memo1.Text+', '+NomeCampo+' BLOB SUB_TYPE 0 SEGMENT SIZE '+
                        IntToStr(TbEngReversa.Fields[I-1].Size);
    End;
    If (UpperCase(Tipo)='CHAR') Then
      Memo1.Text:=Memo1.Text+', '+NomeCampo+' CHAR ('+IntToStr(TbEngReversa.Fields[I-1].Size)+')';
    If (UpperCase(Tipo)='DOUBLE PRECISION') Then
      Memo1.Text:=Memo1.Text+', '+NomeCampo+' DOUBLE PRECISION';
    StatusBar1.Panels[1].Text:='Lendo Campo: '+NomeCampo+' , '+Tipo+' - '+
                               IntToStr(TbEngReversa.Fields[I-1].Size)+
                               ' na Tabela '+vTabela;
  End;
  TbEngReversa.Close;
  StatusBar1.Panels[1].Text := 'Engenharia Reversa da Tabela '+vTabela+
                               ' completada com sucesso!';
  Memo1.Text := Memo1.Text + ')';
  ProgressBar1.Visible := False;
Except
  On E: Exception Do
  Begin
    ShowMessage('Não foi possível realizar a engenharia reversa ('+E.Message+')');
    Exit;
  End;
End;
End;
/// <- Procedimentos e Funções Personalizados

procedure TFrmSQL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmSQL:=Nil;
Action:=caFree;
end;

procedure TFrmSQL.EditVlrPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If Key = 13 Then
Begin
  If (ListTabelas.ItemIndex<>-1) And (ListCampos.ItemIndex<>-1) Then
  Begin
    SourceQuery1.Enabled:=False;
    Query1.Close;
    Query1.SQL.Text:='Select * FROM '+ListTabelas.Items[ListTabelas.ItemIndex]+
                   ' WHERE '+ListCampos.Items[ListCampos.ItemIndex]+'=:Par ';
    Query1.Parameters.ParamValues[ 'Par' ].AsString := EditVlrPesq.Text;
    Query1.Open;
    SourceQuery1.Enabled:=True;
  End;
end;
end;

procedure TFrmSQL.BtnExecutarClick(Sender: TObject);
begin
SourceQuery1.Enabled:=False;
Query1.SQL.Text := Trim(Memo1.Text);
Try
  If Pos('SELECT', UpperCase(Memo1.Text))>0 Then
    Query1.Open
  Else
  Begin
    Query1.ExecSQL;
    MessageDlg( IntToStr( Query1.RowsAffected ) + ' registro(s) afetado(s)', mtInformation, [ mbOk ], 0 );
    ListRefresh; // Procedimento Personalizado
  End;
Except
  On E: Exception Do
  Begin
    MessageDlg('Não foi possível executar a SQL: '+Query1.SQL.Text+' ("'+
                E.Message+'")', mtError, [mbOk], 0);
    Exit;
  End;
End;
StatusBar1.Panels[1].Text:='SQL Executada: '+Memo1.Text;
Memo2.Text:=Memo1.Text;
SourceQuery1.Enabled:=True;
end;

procedure TFrmSQL.ListTabelasDblClick(Sender: TObject);
Var I, Z           : Integer;
    Tipo           : String;
    TabVariavel    : TADOTable;
    vIndex         : Integer;
begin
SourceQuery1.Enabled:=False;
ListCampos.Items.Clear;
ListHint.Clear;
If ListTabelas.ItemIndex<>-1 Then
Begin
  Query1.SQL.Text:='Select * From '+ListTabelas.Items[ListTabelas.ItemIndex];
  Query1.Open;
  For I := 1 To Query1.FieldCount Do
  Begin
    Tipo:='';
    If Query1.Fields[I-1].DataType = ftString Then
      Tipo:='VARCHAR';
    If Query1.Fields[I-1].DataType = ftSmallint Then
      Tipo:='SMALLINT';
    If Query1.Fields[I-1].DataType = ftInteger Then
      Tipo:='INTEGER';
    If Query1.Fields[I-1].DataType = ftWord Then
      Tipo:='CHAR';
    If Query1.Fields[I-1].DataType = ftBoolean Then
      Tipo:='VARCHAR';
    If Query1.Fields[I-1].DataType = ftFloat Then
      Tipo:='FLOAT';
    If Query1.Fields[I-1].DataType = ftCurrency Then
      Tipo:='FLOAT';
    If Query1.Fields[I-1].DataType = ftBCD Then
      Tipo:='FLOAT';
    If Query1.Fields[I-1].DataType = ftDate Then
      Tipo:='DATE';
    If Query1.Fields[I-1].DataType = ftTime Then
      Tipo:='DATE';
    If Query1.Fields[I-1].DataType = ftDateTime Then
      Tipo:='DATE';
    If Query1.Fields[I-1].DataType = ftBytes Then
      Tipo:='CHAR';
    If Query1.Fields[I-1].DataType = ftVarBytes Then
      Tipo:='VARCHAR';
    If Query1.Fields[I-1].DataType = ftBlob Then
      Tipo:='BLOB';
    If Query1.Fields[I-1].DataType = ftGraphic Then
      Tipo:='BLOB';
    If Query1.Fields[I-1].DataType = ftMemo Then
      Tipo:='BLOB';
    If Query1.Fields[I-1].DataType = ftFmtMemo Then
      Tipo:='BLOB';
    If Query1.Fields[I-1].DataType = ftParadoxOle Then
      Tipo:='BLOB';
    If Query1.Fields[I-1].DataType = ftDBaseOle Then
      Tipo:='BLOB';
    If Query1.Fields[I-1].DataType = ftTypedBinary Then
      Tipo:='BLOB';

    ListCampos.Items.Add(Query1.Fields[I-1].FieldName);
    If Query1.Fields[I-1].Size>0 Then
      ListHint.Items.Add(Tipo+'  -  '+IntToStr(Query1.Fields[I-1].Size))
    Else
      ListHint.Items.Add(Tipo);
  End;

  TabVariavel := TADOTable.Create(Self);
  TabVariavel.Connection := Query1.Connection;
  TabVariavel.TableName    := ListTabelas.Items[ListTabelas.ItemIndex];
  TabVariavel.Open;
  TabVariavel.Close;
  TabVariavel.IndexDefs.Update;

  TreeIndex.Visible :=False;
  TreeIndex.Items.Clear;

  vIndex := -1;
  If TabVariavel.IndexDefs.Count > 0 then
  Begin
    With TreeIndex.Items.Add(Nil,  'Índice Primário') do
      Selected := True;
    TreeIndex.Items.Add(Nil,  'Índices Secundários');

    For I := 1 to TabVariavel.IndexDefs.Count do
    Begin
      If Length(TabVariavel.IndexDefs.Items[I-1].Name) = 0 Then
      Begin
        For Z := 1 To TreeIndex.Items.Count Do
        Begin
          If TreeIndex.Items.Item[Z-1].Text='Índice Primário' Then
            vIndex:=Z-1;
        End;
        With TreeIndex.Items.AddChild(TreeIndex.Items[vIndex], TabVariavel.IndexDefs.Items[I-1].Fields) do
          MakeVisible;
      End
      Else
      Begin
        For Z := 1 To TreeIndex.Items.Count Do
        Begin
          If TreeIndex.Items.Item[Z-1].Text='Índices Secundários' Then
            vIndex:=Z-1;
        End;
        With TreeIndex.Items.AddChild(TreeIndex.Items[vIndex], TabVariavel.IndexDefs.Items[I-1].Name) do
          Selected := True;
        With TreeIndex.Items.AddChild(TreeIndex.Selected, TabVariavel.IndexDefs.Items[I-1].Fields) do
          MakeVisible;
      End;
    End;
  End;
  TabVariavel.Free;
  If TreeIndex.Items.Count=0 Then
    TreeIndex.Items.Add(Nil, 'Não há índices criados');
  TreeIndex.FullCollapse;
  TreeIndex.Visible :=True;
End;

StatusBar1.Panels[1].Text:='Registros da Tabela '+ListTabelas.Items[ListTabelas.ItemIndex]+' em exibição (Total: '+IntToStr(Query1.RecordCount)+')';
StatusBar1.Update;
SourceQuery1.Enabled:=True;
end;

procedure TFrmSQL.BtnVoltarClick(Sender: TObject);
begin
Memo1.Text:=Memo2.Text;
StatusBar1.Panels[1].Text:='SQL Restaurada: '+Memo1.Text;
end;

procedure TFrmSQL.BtnAdicionarCampoClick(Sender: TObject);
Var CampoNull: String[9];
begin
SourceQuery1.Enabled:=False;
If ListTabelas.ItemIndex<>-1 Then
Begin
  EditAlter.Text:=Trim(EditAlter.Text);
  CampoNull:='';
  If CheckBox1.Checked=True Then
    CampoNull:=' NOT NULL';
  If (UpperCase(ComboTipo.Text)='VARCHAR') And (Trim(EditTamanho.Text)<>'') Then
    Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Add '+
                      EditAlter.Text+' VARCHAR ('+EditTamanho.Text+')'+CampoNull;
  If (UpperCase(ComboTipo.Text)='INTEGER') Then
    Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Add '+
                      EditAlter.Text+' INTEGER'+CampoNull;
  If (UpperCase(ComboTipo.Text)='FLOAT') Then
    Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Add '+
                      EditAlter.Text+' FLOAT'+CampoNull;
  If (UpperCase(ComboTipo.Text)='SMALLINT') Then
    Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Add '+
                      EditAlter.Text+' SMALLINT'+CampoNull;
  If (UpperCase(ComboTipo.Text)='DATE') Then
    Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Add '+
                      EditAlter.Text+' DATE'+CampoNull;
  If (UpperCase(ComboTipo.Text)='BLOB') And (Trim(EditTamanho.Text)<>'') Then
  Begin
    Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Add '+
                      EditAlter.Text+' BLOB SUB_TYPE 0 SEGMENT SIZE '+
                      EditTamanho.Text+CampoNull;
  End;
  If (UpperCase(ComboTipo.Text)='CHAR') And (Trim(EditTamanho.Text)<>'') Then
  Begin
    Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Add '+
                      EditAlter.Text+' CHAR ('+
                      EditTamanho.Text+')'+CampoNull;
  End;
  If (UpperCase(ComboTipo.Text)='DOUBLE PRECISION') Then
    Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Add '+
                      EditAlter.Text+' DOUBLE PRECISION'+CampoNull;
  Try
    Query1.ExecSQL;
  Except
    On E: Exception Do
    Begin
        ShowMessage('Não foi possível adicionar o campo, verifique '+CHR(13)+
                    'se já existe ou se o nome contém espaçamento ('+E.Message+')');
        Exit;
    End;
  End;
  StatusBar1.Panels[1].Text:='Campo inserido: '+EditAlter.Text+' da Tabela '+
                              ListTabelas.Items[ListTabelas.ItemIndex];
  ListTabelasDblClick(Sender);
End;
EditAlter.SetFocus;
SourceQuery1.Enabled:=True;
end;

procedure TFrmSQL.ComboTipoExit(Sender: TObject);
begin
If Trim(ComboTipo.Text)<>'' Then
Begin
  ComboTipo.ItemIndex:=ComboTipo.Items.IndexOf(ComboTipo.Text);
  {
  0 BLOB S N
  1 CHAR S N
  8 VARCHAR  S N
  6 NUMERIC S S
  2 DATE N N
  3 DOUBLE PRECISION N N
  4 FLOAT N N
  5 INTEGER N N
  7 SMALLINT N N}
  EditTamanho.Enabled:=False;
  EditDecimal.Enabled:=False;
  EditTamanho.Color:=clMenu;
  EditDecimal.Color:=clMenu;
  Case ComboTipo.ItemIndex Of
  0, 1, 8:Begin
            EditTamanho.Enabled:=True;
            EditTamanho.Color:=clWindow;
          End;
  6:      Begin // FLOAT
            EditTamanho.Enabled:=True;
            EditTamanho.Color:=clWindow;
            EditDecimal.Enabled:=True;
            EditDecimal.Color:=clWindow;
           End;
  End;
  ComboTipo.Text:=UpperCase(ComboTipo.Text);
  If EditTamanho.Enabled=True Then
    EditTamanho.SetFocus;
End;
end;

procedure TFrmSQL.Excluir1Click(Sender: TObject);
begin
SourceQuery1.Enabled:=False;
If ListTabelas.ItemIndex<>-1 Then
Begin
  If MessageDlg('Excluir a tabela "'+ListTabelas.Items[ListTabelas.ItemIndex]+'"?',
      mtConfirmation, [mbYes,mbNo] , 0)=mrYes Then
  Begin
    Query1.Close;
    ListCampos.Clear;
    TreeIndex.Items.Clear;
    Try
      Query1.SQL.Text:='Drop Table '+ListTabelas.Items[ListTabelas.ItemIndex];
      Query1.ExecSQL;
      StatusBar1.Panels[1].Text:='Tabela excluída: '+ListTabelas.Items[ListTabelas.ItemIndex];
    Except
      On E: Exception Do
      Begin
        MessageDlg('Não foi possível excluir a Tabela '+
                     ListTabelas.Items[ListTabelas.ItemIndex]+' ('+E.Message+')', mtError,[mbOk], 0);
        StatusBar1.Panels[1].Text:='Exclusão não efetuada. Erro encontrado!';
        Exit;
      End;
    End;
    ListRefresh; // Procedimento Personalizado
  End;
End;
SourceQuery1.Enabled:=True;
end;

procedure TFrmSQL.Adicionar1Click(Sender: TObject);
Var Tabela: String;
    Clicado: Boolean;
begin
SourceQuery1.Enabled:=False;
Tabela := '';
Clicado := InputQuery('Criação de tabela', 'Insira o nome da tabela:', Tabela);
If (Clicado) And (Tabela<>'') Then
Begin
  StatusBar1.Panels[1].Text:='Tabela adicionada: '+Tabela;
  Query1.SQL.Text:='Create Table '+Tabela+' (Codigo VarChar (3) Not Null)';
  Query1.ExecSQL;
  ListRefresh; // Procedimento Personalizado
  ListTabelasDblClick(Sender);
End;
SourceQuery1.Enabled:=True;
end;

procedure TFrmSQL.EditDecimalExit(Sender: TObject);
begin
If Trim(EditDecimal.Text)='' Then
  EditDecimal.Text:='0';
end;

procedure TFrmSQL.EditTamanhoExit(Sender: TObject);
begin
If Trim(EditTamanho.Text)='' Then
  EditTamanho.Text:='0';
end;

procedure TFrmSQL.BtnExcluirCampoClick(Sender: TObject);
begin
SourceQuery1.Enabled:=False;
If (ListTabelas.ItemIndex<>-1) And (Trim(EditAlter.Text)<>'') Then
Begin
  If MessageDlg('Excluir o campo "'+EditAlter.Text+'"?',
      mtConfirmation, [mbYes,mbNo] , 0)=mrYes Then
  Begin
    If (Trim(EditAlter.Text)<>'') Then
    Begin
      Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Drop '+
                       EditAlter.Text;
      Query1.ExecSQL;
    End;
    StatusBar1.Panels[1].Text:='Campo excluído: '+EditAlter.Text+' da Tabela '+
                               ListTabelas.Items[ListTabelas.ItemIndex];
  End;
  ListTabelasDblClick(Sender);
End;
EditAlter.SetFocus;
SourceQuery1.Enabled:=True;
end;

procedure TFrmSQL.BtnApagarClick(Sender: TObject);
begin
Memo1.Clear;
StatusBar1.Panels[1].Text:='SQL limpa';
end;

procedure TFrmSQL.ListCamposDblClick(Sender: TObject);
begin
SourceQuery1.Enabled:=False;
If (ListTabelas.ItemIndex<>-1) And (ListCampos.ItemIndex<>-1) Then
Begin
  Query1.SQL.Text:='Select '+ListCampos.Items[ListCampos.ItemIndex]+
                   ' From '+ListTabelas.Items[ListTabelas.ItemIndex];
  Query1.Open;
  EditAlter.Text:=ListCampos.Items[ListCampos.ItemIndex];
  If ListCampos.ItemIndex<>-1 Then
  Begin
    ListHint.ItemIndex:=ListCampos.ItemIndex;
    ComboTipo.Text    :=Trim(ListHint.Items[ListHint.ItemIndex]);
    EditTamanho.Text  :='0';
    If Pos('-', ListHint.Items[ListHint.ItemIndex])>0 Then
    Begin
      ComboTipo.Text    :=Trim(Copy(ListHint.Items[ListHint.ItemIndex], 1, Pos('-', ListHint.Items[ListHint.ItemIndex])-2));
      EditTamanho.Text  :=Trim(Copy(ListHint.Items[ListHint.ItemIndex], Pos('-', ListHint.Items[ListHint.ItemIndex])+2, Length(ListHint.Items[ListHint.ItemIndex])));
    End;
    EditTamanho.Enabled:=False;
    EditTamanho.Color:=clMenu;
    If EditTamanho.Text<>'0' Then
    Begin
      EditTamanho.Enabled:=True;
      EditTamanho.Color:=clWindow;
    End;
  End;
End;
SourceQuery1.Enabled:=True;
end;

procedure TFrmSQL.ListCamposKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var Campo  : String;
    Clicado: Boolean;
    I      : Word;
begin
If Key=13 Then
  ListCamposDblClick(Sender);
If (ssCtrl In Shift) And (Key=70) Then // Tecla Shift + Letra F
Begin
  Campo := '';
  Clicado := InputQuery('Localização de campo', 'Insira o nome do campo:', Campo);
  If (Clicado) And (Trim(Campo)<>'') Then
  Begin
    Clicado:=False;
    Campo:=Trim(Campo);
    For I := 1 To ListCampos.Items.Count Do
    Begin
      If UpperCase(Copy(ListCampos.Items[I-1], 1, Length(Campo)))=UpperCase(Campo) Then
      Begin
        ListCampos.ItemIndex:=I-1;
        Clicado:=True;
        Break;
      End;
    End;
    If Clicado=False Then
      ShowMessage('Não foi localizada nenhuma campo!');
  End;
End;
end;

procedure TFrmSQL.ListTabelasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var Tabela : String;
    Clicado: Boolean;
    I      : Word;
begin
If Key=13 Then
  ListTabelasDblClick(Sender);
If (ssCtrl In Shift) And (Key=70) Then // Tecla Shift + Letra F
Begin
  Tabela := '';
  Clicado := InputQuery('Localização de tabela', 'Insira o nome da tabela:', Tabela);
  If (Clicado) And (Trim(Tabela)<>'') Then
  Begin
    Clicado:=False;
    Tabela:=Trim(Tabela);
    For I := 1 To ListTabelas.Items.Count Do
    Begin
      If UpperCase(Copy(ListTabelas.Items[I-1], 1, Length(Tabela)))=UpperCase(Tabela) Then
      Begin
        ListTabelas.ItemIndex := I-1;
        Clicado:=True;
        Break;
      End;
    End;
    If Clicado=False Then
      ShowMessage('Não foi localizada nenhuma tabela!');
  End;
End;
end;

procedure TFrmSQL.BtnAtualizaCampoClick(Sender: TObject);
{Var DriveTemp: String[2];
    Tipo: String;}
begin
{DriveTemp:=Copy(ExtractFileDir(ParamStr(0)), 1, 2);
Query1.SQL.Text:='Select '+ListCampos.Items[ListCampos.ItemIndex]+
                 ' From '+ListTabelas.Items[ListTabelas.ItemIndex];
Query1.Open;
Tipo:='';
If Query1.Fields[0].DataType = ftString Then
  Tipo:='VARCHAR';
If Query1.Fields[0].DataType = ftSmallint Then
  Tipo:='SMALLINT';
If Query1.Fields[0].DataType = ftInteger Then
  Tipo:='INTEGER';
If Query1.Fields[0].DataType = ftWord Then
  Tipo:='CHAR';
If Query1.Fields[0].DataType = ftBoolean Then
  Tipo:='VARCHAR';
If Query1.Fields[0].DataType = ftFloat Then
  Tipo:='NUMERIC';
If Query1.Fields[0].DataType = ftCurrency Then
  Tipo:='FLOAT';
If Query1.Fields[0].DataType = ftBCD Then
  Tipo:='FLOAT';
If Query1.Fields[0].DataType = ftDate Then
  Tipo:='DATE';
If Query1.Fields[0].DataType = ftTime Then
  Tipo:='DATE';
If Query1.Fields[0].DataType = ftDateTime Then
  Tipo:='DATE';
If Query1.Fields[0].DataType = ftBytes Then
  Tipo:='CHAR';
If Query1.Fields[0].DataType = ftVarBytes Then
  Tipo:='VARCHAR';
If Query1.Fields[0].DataType = ftBlob Then
  Tipo:='BLOB';
If Query1.Fields[0].DataType = ftGraphic Then
  Tipo:='BLOB';
If Query1.Fields[0].DataType = ftMemo Then
  Tipo:='BLOB';
If Query1.Fields[0].DataType = ftFmtMemo Then
  Tipo:='BLOB';
If Query1.Fields[0].DataType = ftParadoxOle Then
  Tipo:='BLOB';
If Query1.Fields[0].DataType = ftDBaseOle Then
  Tipo:='BLOB';
If Query1.Fields[0].DataType = ftTypedBinary Then
  Tipo:='BLOB';
If UpperCase(Tipo)=Trim(UpperCase(ComboTipo.Text)) Then
  If Tipo='VARCHAR' Then
  Begin
    Query1.SQL.Text:='Create Table TabelaTemp ('+ListCampos.Items[ListCampos.ItemIndex]+' '+
                      ComboTipo.Text+' ('+EditTamanho.Text+ '))'
  End;
  If Tipo='NUMERIC' Then
  Begin
    Query1.SQL.Text:='Create Table TabelaTemp ('+ListCampos.Items[ListCampos.ItemIndex]+' '+
                      ComboTipo.Text+' ['+EditTamanho.Text+', '+EditDecimal.Text+'])'
  End;
  Try
    Query1.ExecSQL;
    Query1.SQL.Text:='Select '+ListCampos.Items[ListCampos.ItemIndex]+
                     ' From '+ListTabelas.Items[ListTabelas.ItemIndex];
    Query1.Open;
    SourceQuery1.Enabled:=False;
    While Not Query1.EOF Do
    Begin
      QueryTemp.SQL.Text:='Insert Into TabelaTemp ('+
                       ListCampos.Items[ListCampos.ItemIndex]+') Values (:Par)';
      QueryTemp.Params[0].Value:=Query1.Fields[0].Value;
      QueryTemp.ExecSQL;
      Query1.Next;
    End;
    ListRefresh; // Procedimento Personalizado
    ListTabelas.ItemIndex:=ListTabelas.Items.IndexOf('TabelaTemp');
    SourceQuery1.Enabled:=True;
  Except
    On E: Exception Do
    Begin
       CaixaMensagem( 'Não foi possível criar a tabela "' + E.Message + '"', ctErro, cbOk, 0 );
    End;
  End;}
end;

procedure TFrmSQL.EngReversa1Click(Sender: TObject);
Var lsNomeTabela: String;
Begin
   If ListTabelas.ItemIndex = -1 Then
   Begin
      MessageDlg( 'Nenhuma tabela do selecionada!!!', mtInformation, [ mbOk ], 0 );
      Exit;
   End;
   lsNomeTabela := ListTabelas.Items[ ListTabelas.ItemIndex ];
   EngReversa( lsNomeTabela );
end;

procedure TFrmSQL.CriarCopia1Click(Sender: TObject);
Var vTbAntiga, vTbNova: TADOTable;
    vNomeTabela       : String;
    I                 : Integer;
begin
SourceQuery1.Enabled:=False;
If ((ListTabelas.ItemIndex)<>-1) And
   (ListTabelas.Items.IndexOf(ListTabelas.Items[ListTabelas.ItemIndex]+'NOVA')=-1) Then
Begin
  vNomeTabela:=ListTabelas.Items[ListTabelas.ItemIndex];
  Try
    EngReversa(vNomeTabela);
  Except
    On E: Exception Do
    Begin
      MessageDlg( 'Não foi possível realizar a engenharia reversa ('+E.Message+')', mtError, [ mbOk ], 0 );
      Exit;
    End;
  End;
  Memo1.Text:=Copy(Memo1.Text, 1, Pos(vNomeTabela, Memo1.Text)-1)+vNomeTabela+
              'NOVA '+Copy(Memo1.Text, Pos(vNomeTabela, Memo1.Text)+
              Length(vNomeTabela)+1, Length(Memo1.Text)+Pos(vNomeTabela,
              Memo1.Text)+1);
  Try
    Query1.SQL.Text:=Trim(Memo1.Text);
    Query1.ExecSQL;
    ListRefresh; // Procedimento Personalizado
  Except
    On E: Exception Do
    Begin
      MessageDlg('Não foi possível criar a nova tabela (' + E.Message + ')', mtError, [ mbOk ], 0 );
      Exit;
    End;
  End;
  StatusBar1.Panels[1].Text:='SQL Executada: '+Memo1.Text;

  Try
    vTbAntiga            := TADOTable.Create(Self);
    vTbAntiga.Connection := ADOManutencao;
    vTbAntiga.TableName  := vNomeTabela;
    vTbAntiga.Open;

    vTbNova:=TADOTable.Create(Self);
    vTbNova.Connection := ADOManutencao;
    vTbNova.TableName:=vNomeTabela+'NOVA';
    vTbNova.Open;
    While Not vTbAntiga.EOF Do
    Begin
      vTbNova.Append;
      For I := 1 To vTbAntiga.FieldCount Do
      Begin
        If vTbAntiga.Fields[I-1].Value<>Null Then
          vTbNova.Fields[I-1].Value:=vTbAntiga.Fields[I-1].Value;
      End;
      vTbNova.Post;
      vTbAntiga.Next;
    End;
    vTbNova.Free;
    vTbAntiga.Free;
  Except
    On E: Exception Do
    Begin
      ShowMessage('Não foi possível realizar a exportação ('+E.Message+')');
      Exit;
    End;
  End;
End;
SourceQuery1.Enabled:=True;
end;

procedure TFrmSQL.Renomear1Click(Sender: TObject);
Var vTbAntiga, vTbNova    : TADOTable;
    vNomeNova, vNomeAntiga: String;
    I                     : Integer;
    Clicado               : Boolean;
begin
SourceQuery1.Enabled:=False;
If ((ListTabelas.ItemIndex)<>-1) Then
Begin
  vNomeNova := '';
  vNomeAntiga := ListTabelas.Items[ListTabelas.ItemIndex];
  Clicado := InputQuery('Renomeando Tabela', 'Insira o nome para à ser usado: ', vNomeNova);
  If (Clicado) And (Trim(vNomeNova)<>'') And (Trim(vNomeNova)<>Trim(vNomeAntiga)) Then
  Begin
    Try
      EngReversa(vNomeAntiga);
    Except
      On E: Exception Do
      Begin
        ShowMessage('Não foi possível realizar a engenharia reversa ('+E.Message+')');
        Exit;
      End;
    End;
    Memo1.Text := Copy(Memo1.Text, 1, Pos(vNomeAntiga, Memo1.Text)-1)+
                  vNomeNova+' '+Copy(Memo1.Text, Pos(vNomeAntiga, Memo1.Text)+
                  Length(vNomeAntiga)+1, Length(Memo1.Text)+
                  Pos(vNomeAntiga, Memo1.Text)+1);
    Try
      Query1.SQL.Text:=Trim(Memo1.Text);
      Query1.ExecSQL;
      ListRefresh; // Procedimento Personalizado
    Except
      On E: Exception Do
      Begin
        ShowMessage('Não foi possível renomear a tabela ('+E.Message+')');
        Exit;
      End;
    End;
    StatusBar1.Panels[1].Text:='SQL Executada: '+Memo1.Text;

    Try
      vTbAntiga:=TADOTable.Create(Self);
      vTbAntiga.Connection:=ADOManutencao;
      vTbAntiga.TableName:=vNomeAntiga;
      vTbAntiga.Open;

      vTbNova:=TADOTable.Create(Self);
      vTbNova.Connection:=ADOManutencao;
      vTbNova.TableName:=vNomeNova;
      vTbNova.Open;

      ProgressBar1.Visible:=True;
      ProgressBar1.Max:=vTbAntiga.RecordCount*vTbAntiga.FieldCount;
      ProgressBar1.Position:=0;
      While Not vTbAntiga.EOF Do
      Begin
        ProgressBar1.Position:=ProgressBar1.Position+1;
        vTbNova.Append;
        For I := 1 To vTbAntiga.FieldCount Do
        Begin
          ProgressBar1.Position     := I;
          vTbNova.Fields[I-1].Value := vTbAntiga.Fields[I-1].Value;
        End;
        vTbNova.Post;
        vTbAntiga.Next;
      End;
      ProgressBar1.Position:=0;
      ProgressBar1.Visible:=False;
      vTbNova.Free;
      vTbAntiga.Free;
    Except
      On E: Exception Do
      Begin
        ShowMessage('Não foi possível realizar a exportação dos dados ('+E.Message+')');
        Exit;
      End;
    End;
    Try
      Query1.SQL.Text:='Drop Table '+vNomeAntiga;
      Query1.ExecSQL;
      ListRefresh; // Procedimento Personalizado
    Except
      On E: Exception Do
      Begin
        ShowMessage('A exclusão da tabela antiga não pôde ser efetuada! ('+E.Message+')');
        Exit;
      End;
    End;
  End;
End;
SourceQuery1.Enabled:=True;
end;

procedure TFrmSQL.TransferirDados1Click(Sender: TObject);
Var I, Z                       : Word;
    vTabela                    : String;
    Clicado, vAchou, vPular    : Boolean;
    vQueryOrigem, vQueryDestino: TADOQuery;
    vTableDestino              :TADOTable;
begin
vTabela := '';
Clicado := InputQuery('Transfência dos dados de  "'+
                       ListTabelas.Items[ListTabelas.ItemIndex]+'"',
                      'Insira o nome da tabela de Destino:', vTabela);
If (Clicado) And (Trim(vTabela)<>'')
    And (UpperCase(Trim(ListTabelas.Items[ListTabelas.ItemIndex]))<>UpperCase(Trim(vTabela))) Then
Begin
  vQueryOrigem:=TADOQuery.Create(Self);
  vQueryOrigem.Connection:=ADOManutencao;
  vQueryOrigem.SQL.Text:='Select * From '+ListTabelas.Items[ListTabelas.ItemIndex];
  Try
    vQueryOrigem.Open;
  Except
    On E: Exception Do
    Begin
      ShowMessage('Não foi possível abrir a Tabela "'+ListTabelas.Items[ListTabelas.ItemIndex]+'" ('+E.Message+')');
      Exit;
    End;
  End;
  vQueryDestino:=TADOQuery.Create(Self);
  vQueryDestino.Connection:=ADOManutencao;
  vQueryDestino.SQL.Text:='Select * From '+vTabela;
  Try
    vQueryDestino.Open;
  Except
    On E: Exception Do
    Begin
      ShowMessage('Não foi possível abrir a Tabela "'+vTabela+'" ('+E.Message+')');
      Exit;
    End;
  End;
  vPular:=False;
  If vQueryOrigem.FieldCount<>vQueryDestino.FieldCount Then
  Begin
    If MessageDlg('Quantidade de campos diferente entre as tabelas. '+
                  'Continuar mesmo assim?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      vPular:=True
    Else
      Exit;
  End;
  ProgressBar1.Position:=0;
  ProgressBar1.Visible :=True;
  ProgressBar1.Max     :=vQueryOrigem.RecordCount;
  If Not (vPular) Then
  Begin
    For I := 1 To vQueryOrigem.FieldCount Do
    Begin
      StatusBar1.Panels[1].Text:='Verificando a correspondência do campo "'+
                                  vQueryOrigem.Fields[I-1].FieldName+
                                 '" da Tabela "'+ListTabelas.Items[ListTabelas.ItemIndex]+
                                 '" com a Tabela "'+vTabela+'"';
      StatusBar1.Update;
      vAchou:=False;
      For Z := 1 To vQueryDestino.FieldCount Do
      Begin
        If (vQueryOrigem.Fields[I-1].FieldName=vQueryDestino.Fields[Z-1].FieldName) Then
        Begin
          vAchou:=True;
          Break;
        End;
      End;
      If Not (vAchou) Then
      Begin
        If MessageDlg('Tabela com campo não localizado!('+vQueryOrigem.Fields[I].FieldName+')'+
                      'Continuar mesmo assim?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
          Exit;
      End;
    End;
  End;
  ProgressBar1.Position:=0;
  ProgressBar1.Visible :=True;

  vTableDestino:=TADOTable.Create(Self);
  vTableDestino.Connection:=ADOManutencao;
  vTableDestino.TableName:=vTabela;
  vTableDestino.Open;
  While Not vQueryOrigem.EOF Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    vTableDestino.Append;
    For I := 1 To vQueryDestino.FieldCount Do
    Begin
      ProgressBar1.Position:=ProgressBar1.Position+1;
      For Z := 1 To vQueryDestino.FieldCount Do
      Begin
        If (vQueryOrigem.Fields[I-1].FieldName=vQueryDestino.Fields[Z-1].FieldName) Then
        Begin
          vTableDestino.FieldByName(vQueryOrigem.Fields[I-1].FieldName).Value:=vQueryOrigem.FieldByName(vQueryOrigem.Fields[I-1].FieldName).Value;
          Break;
        End;
      End;
    End;
    vTableDestino.Post;
    vQueryOrigem.Next;
  End;
  StatusBar1.Panels[1].Text:='Dados transferidos da Tabela "'+
                              ListTabelas.Items[ListTabelas.ItemIndex]+
                             '" para a Tabela "'+vTabela+'"';
  StatusBar1.Update;
  ProgressBar1.Position:=0;
  ProgressBar1.Visible:=False;
  vQueryOrigem.Free;
  vQueryDestino.Free;
End;
end;

procedure TFrmSQL.PopupMenu1Popup(Sender: TObject);
begin
EngReversa1.Enabled     :=ListTabelas.ItemIndex<>-1;
Excluir1.Enabled        :=ListTabelas.ItemIndex<>-1;
CriarCopia1.Enabled     :=ListTabelas.ItemIndex<>-1;
Renomear1.Enabled       :=ListTabelas.ItemIndex<>-1;
TransferirDados1.Enabled:=ListTabelas.ItemIndex<>-1;
CorpodeSentenas1.Enabled:=ListTabelas.ItemIndex<>-1;
end;

procedure TFrmSQL.Inserir1Click(Sender: TObject);
begin
Memo1.Text:='Insert Into '+ListTabelas.Items[ListTabelas.ItemIndex]+' (<Campo(s)>) Values (<Valor(es)>)';
Memo1.SetFocus;
Memo1.SelStart:=28;
end;

procedure TFrmSQL.Atualizar1Click(Sender: TObject);
begin
Memo1.Text:='Update '+ListTabelas.Items[ListTabelas.ItemIndex]+' Set <Campo>=<Valor>';
Memo1.SetFocus;
Memo1.SelStart:=26;
end;

procedure TFrmSQL.Limpar1Click(Sender: TObject);
begin
Memo1.Text := 'Delete From ' + ListTabelas.Items[ListTabelas.ItemIndex];
Memo1.SetFocus;
Memo1.SelStart := Length(Memo1.Text);
end;

procedure TFrmSQL.Criar1Click(Sender: TObject);
begin
Memo1.Text:='Create Table <Tabela> (<Campo> <Tipo> (<Tamanho>))';
Memo1.SetFocus;
Memo1.SelStart:=13;
end;

procedure TFrmSQL.Incluir1Click(Sender: TObject);
begin
Memo1.Text:='Alter Table <Tabela> Add (<Campo> <Tipo> (<Tamanho>))';
Memo1.SetFocus;
Memo1.SelStart:=12;
end;

procedure TFrmSQL.Excluir3Click(Sender: TObject);
begin
Memo1.Text:='Alter Table <Tabela> Drop (<Campo> <Tipo> (<Tamanho>))';
Memo1.SetFocus;
Memo1.SelStart:=12;
end;

procedure TFrmSQL.Excluir2Click(Sender: TObject);
begin
Memo1.Text:='Drop Table <Tabela>';
Memo1.SetFocus;
Memo1.SelStart:=11;
end;

procedure TFrmSQL.Indexar1Click(Sender: TObject);
begin
Memo1.Text:='Create Index <Nome do Indice> ON "<Tabela>" (<Campo(s)>)';
Memo1.SetFocus;
Memo1.SelStart:=13;
end;

procedure TFrmSQL.AlterarDados1Click(Sender: TObject);
begin
Query1.SQL.Text:='Select * From '+ListTabelas.Items[ListTabelas.ItemIndex];
Query1.Close;
TabAltera.Connection:=ADOManutencao;
TabAltera.TableName   :=ListTabelas.Items[ListTabelas.ItemIndex];
Try
  TabAltera.Open;
  TabAltera.Edit;
  DbGrid1.DataSource  :=SourceTabAltera;
  StatusBar1.Panels[1].Text:='Tabela em modo de edição';
  StatusBar1.Update;
  DBGrid1.SetFocus;
Except
  On E: Exception Do
  Begin
    ShowMessage('Não foi possível colocar a tabela em modo de edição ('+E.Message+')');
    Exit;
  End;
End;
end;

procedure TFrmSQL.DBGrid1Exit(Sender: TObject);
begin
If DBGrid1.DataSource=SourceTabAltera Then
Begin
  If MessageDlg('Deseja abandonar o modo de edição?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes Then
  Begin
    DBGrid1.DataSource:=SourceQuery1;

    If TabAltera.State In dsEditModes then
      TabAltera.Post;

    TabAltera.Close;
    Query1.Open;
    StatusBar1.Panels[1].Text:='Tabela Atualizada';
  End
  Else
    DBGrid1.SetFocus;
End;
end;

procedure TFrmSQL.ListCamposPesqExit(Sender: TObject);
begin
If MessageDlg('Abandonar a pesquisa?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
  ListCamposPesq.Visible:=False;
end;

procedure TFrmSQL.LimparTodosDados1Click(Sender: TObject);
Var I        : Word;
    vConfirma: String;
    vCheckOk : Boolean;
begin
SourceQuery1.Enabled:=False;
vCheckOk:=InputQuery('Confirmação de Limpeza de Dados', 'Para confirmar digite "OK" (Maiúsculo): '
                      , vConfirma);
If (vCheckOk) And (Trim(vConfirma)='OK') Then
Begin
  ProgressBar1.Visible:=True;
  ProgressBar1.Max:=ListTabelas.Items.Count-1;
  ProgressBar1.Position:=0;
  For I := 1 To ListTabelas.Items.Count Do
  Begin
    Query1.SQL.Text:='Delete From '+ListTabelas.Items[I-1];
    Try
      Query1.ExecSQL;
      StatusBar1.Panels[1].Text := 'Dados da Tabela '+ListTabelas.Items[I-1]+
                                   ' excluídos ( ' + IntToStr( Query1.RowsAffected ) + ' Registro(s) )';
      StatusBar1.Update;
      ProgressBar1.Position:=ProgressBar1.Position+1;
      ProgressBar1.Update;
    Except
      On E: Exception Do
      Begin
        ProgressBar1.Visible:=False;
        StatusBar1.Panels[1].Text:='Não foi possível excluir os dados da tabela "'+ListTabelas.Items[I-1]+'"';
        StatusBar1.Update;
        ShowMessage('Não foi possível excluir os dados da tabela "'+ListTabelas.Items[I-1]+'"');
        Exit;
      End;
    End;
  End;
  ProgressBar1.Visible:=False;
  StatusBar1.Panels[1].Text:='Dados das Tabela excluídos com sucesso';
  StatusBar1.Update;
  Application.Terminate;
End;
SourceQuery1.Enabled:=True;
end;

/////////////////////////////////
////// Ordenação de Campos //////
/////////////////////////////////

procedure TFrmSQL.Ordenao1Click(Sender: TObject);
Var I        : Integer;
    Tipo     : String;
    NomeCampo: String;
    vTabela  : String;
begin
SourceQuery1.Enabled:=False;
If ListTabelas.ItemIndex<>-1 Then
Begin
  Try
    ListCampos.Visible := False;
    vTabela            := ListTabelas.Items[ListTabelas.ItemIndex];
    ListCampos.Clear;
    TreeIndex.Items.Clear;
    Memo1.Clear;
    TbEngReversa.Close;
    TbEngReversa.Connection := ADOManutencao;
    TbEngReversa.TableName    := vTabela;
    TbEngReversa.Open;
    Tipo:='';
    If TbEngReversa.Fields[0].DataType = ftString Then
      Tipo:='VARCHAR';
    If TbEngReversa.Fields[0].DataType = ftSmallint Then
      Tipo:='SMALLINT';
    If TbEngReversa.Fields[0].DataType = ftInteger Then
      Tipo:='INTEGER';
    If TbEngReversa.Fields[0].DataType = ftWord Then
      Tipo:='CHAR';
    If TbEngReversa.Fields[0].DataType = ftBoolean Then
      Tipo:='VARCHAR';
    If TbEngReversa.Fields[0].DataType = ftFloat Then
      Tipo:='FLOAT';
    If TbEngReversa.Fields[0].DataType = ftCurrency Then
      Tipo:='FLOAT';
    If TbEngReversa.Fields[0].DataType = ftBCD Then
      Tipo:='FLOAT';
    If TbEngReversa.Fields[0].DataType = ftDate Then
      Tipo:='DATE';
    If TbEngReversa.Fields[0].DataType = ftTime Then
      Tipo:='DATE';
    If TbEngReversa.Fields[0].DataType = ftDateTime Then
      Tipo:='DATE';
    If TbEngReversa.Fields[0].DataType = ftBytes Then
      Tipo:='CHAR';
    If TbEngReversa.Fields[0].DataType = ftVarBytes Then
      Tipo:='VARCHAR';
    If TbEngReversa.Fields[0].DataType = ftBlob Then
      Tipo:='BLOB';
    If TbEngReversa.Fields[0].DataType = ftGraphic Then
      Tipo:='BLOB';
    If TbEngReversa.Fields[0].DataType = ftMemo Then
      Tipo:='BLOB';
    If TbEngReversa.Fields[0].DataType = ftFmtMemo Then
      Tipo:='BLOB';
    If TbEngReversa.Fields[0].DataType = ftParadoxOle Then
      Tipo:='BLOB';
    If TbEngReversa.Fields[0].DataType = ftDBaseOle Then
      Tipo:='BLOB';
    If TbEngReversa.Fields[0].DataType = ftTypedBinary Then
      Tipo:='BLOB';
    NomeCampo:='';
    NomeCampo:=TbEngReversa.Fields[0].FieldName;
    If TbEngReversa.Fields[0].FieldName='DESC' Then
    Begin
      If Tipo='FLOAT' Then
        NomeCampo:='DESCONTO'
      Else
        NomeCampo:='DESCRICAO';
    End;
    If TbEngReversa.Fields[0].FieldName='END' Then
      NomeCampo:='ENDERECO';

    ProgressBar1.Visible:=True;
    ProgressBar1.Max:=TbEngReversa.FieldCount;
    ProgressBar1.Position:=0;
    Memo1.Text:='Create Table '+vTabela+' (';
    For I := 1 To TbEngReversa.FieldCount Do
    Begin
      ProgressBar1.Position:=ProgressBar1.Position+1;
      Tipo:='';
      If TbEngReversa.Fields[I-1].DataType = ftString Then
        Tipo:='VARCHAR';
      If TbEngReversa.Fields[I-1].DataType = ftSmallint Then
        Tipo:='SMALLINT';
      If TbEngReversa.Fields[I-1].DataType = ftInteger Then
        Tipo:='INTEGER';
      If TbEngReversa.Fields[I-1].DataType = ftWord Then
        Tipo:='CHAR';
      If TbEngReversa.Fields[I-1].DataType = ftBoolean Then
        Tipo:='VARCHAR';
      If TbEngReversa.Fields[I-1].DataType = ftFloat Then
        Tipo:='FLOAT';
      If TbEngReversa.Fields[I-1].DataType = ftCurrency Then
        Tipo:='FLOAT';
      If TbEngReversa.Fields[I-1].DataType = ftBCD Then
        Tipo:='FLOAT';
      If TbEngReversa.Fields[I-1].DataType = ftDate Then
        Tipo:='DATE';
      If TbEngReversa.Fields[I-1].DataType = ftTime Then
        Tipo:='DATE';
      If TbEngReversa.Fields[I-1].DataType = ftDateTime Then
        Tipo:='DATE';
      If TbEngReversa.Fields[I-1].DataType = ftBytes Then
        Tipo:='CHAR';
      If TbEngReversa.Fields[I-1].DataType = ftVarBytes Then
        Tipo:='VARCHAR';
      If TbEngReversa.Fields[I-1].DataType = ftBlob Then
        Tipo:='BLOB';
      If TbEngReversa.Fields[I-1].DataType = ftGraphic Then
        Tipo:='BLOB';
      If TbEngReversa.Fields[I-1].DataType = ftMemo Then
        Tipo:='BLOB';
      If TbEngReversa.Fields[I-1].DataType = ftFmtMemo Then
        Tipo:='BLOB';
      If TbEngReversa.Fields[I-1].DataType = ftParadoxOle Then
        Tipo:='BLOB';
      If TbEngReversa.Fields[I-1].DataType = ftDBaseOle Then
        Tipo:='BLOB';
      If TbEngReversa.Fields[I-1].DataType = ftTypedBinary Then
        Tipo:='BLOB';

      NomeCampo:='';
      NomeCampo:=TbEngReversa.Fields[I-1].FieldName;
      If TbEngReversa.Fields[I-1].FieldName='DESC' Then
      Begin
        If UpperCase(Tipo)='FLOAT' Then
          NomeCampo := 'DESCONTO'
        Else
          NomeCampo := 'DESCRICAO';
      End;
      If TbEngReversa.Fields[I-1].FieldName='END' Then
        NomeCampo:='ENDERECO';

      If (UpperCase(Tipo)='VARCHAR') Then
      Begin
        If TbEngReversa.Fields[I-1].Size>0 Then
          ListCampos.Items.Add(NomeCampo+' VARCHAR ('+IntToStr(TbEngReversa.Fields[I-1].Size)+')')
        Else
          ListCampos.Items.Add(NomeCampo+' VARCHAR (1)');
      End;
      If (UpperCase(Tipo)='FLOAT') Then
        ListCampos.Items.Add(NomeCampo+' FLOAT');
      If (UpperCase(Tipo)='INTEGER') Then
        ListCampos.Items.Add(NomeCampo+' INTEGER');
      If (UpperCase(Tipo)='SMALLINT') Then
        ListCampos.Items.Add(NomeCampo+' SMALLINT');
      If (UpperCase(Tipo)='DATE') Then
        ListCampos.Items.Add(NomeCampo+' DATE');
      If (UpperCase(Tipo)='BLOB') Then
      Begin
        ListCampos.Items.Add(NomeCampo+' BLOB SUB_TYPE 0 SEGMENT SIZE '+
                          IntToStr(TbEngReversa.Fields[I-1].Size));
      End;
      If (UpperCase(Tipo)='CHAR') Then
        ListCampos.Items.Add(NomeCampo+' CHAR ('+IntToStr(TbEngReversa.Fields[I-1].Size)+')');
      If (UpperCase(Tipo)='DOUBLE PRECISION') Then
        ListCampos.Items.Add(NomeCampo+' DOUBLE PRECISION');
      StatusBar1.Panels[1].Text := 'Lendo Campo: '+NomeCampo+' , '+Tipo+' - '+
                                    IntToStr(TbEngReversa.Fields[I-1].Size)+
                                   ' na Tabela '+vTabela;
    End;
    TbEngReversa.Close;
    ListCampos.Sorted  := True;
    Memo1.Text         := Memo1.Text + ListCampos.Items[0];
    For I := 2 To ListCampos.Items.Count Do
      Memo1.Text       := Memo1.Text+', '+ListCampos.Items[I-1];
    ListCampos.Sorted  := False;
    ListCampos.Clear;
    TreeIndex.Items.Clear;
    ListCampos.Visible   := True;
    Memo1.Text           := Memo1.Text+')';
    ProgressBar1.Visible := False;
    StatusBar1.Panels[1].Text := 'Engenharia Reversa da Tabela '+vTabela+
                                 ' completada com sucesso!';
    StatusBar1.Update;
  Except
    On E: Exception Do
    Begin
      ShowMessage('Não foi possível realizar a engenharia reversa ('+E.Message+')');
      Exit;
    End;
  End;
End;
StatusBar1.Panels[1].Text:='Ordenação de campos efetuada';
StatusBar1.Update;
SourceQuery1.Enabled:=True;
end;

procedure TFrmSQL.LocalizarCampo1Click(Sender: TObject);
Var I, Z       : Integer;
    Tipo, vNome: String;
    vProcura   : Boolean;
begin
SourceQuery1.Enabled:=False;
ListCamposPesq.Items.Clear;
ListCamposPesq.Visible:=False;
ListHint.Clear;
vNome:='';
If ListTabelas.ItemIndex<>-1 Then
Begin
  vProcura:=InputQuery('Localização de Campo', 'Digite o nome do campo: ', vNome);
  If (vProcura) And (Trim(vNome)<>'') Then
  Begin
    ListCamposPesq.Items.Add('Campo "'+vNome+'" localizado nas tabelas: ');
    ListCamposPesq.Items.Add('');
    ProgressBar1.Visible:=True;
    For Z := 1 To ListTabelas.Items.Count Do
    Begin
      Query1.SQL.Text:='Select * From '+ListTabelas.Items[Z-1];
      Query1.Open;
      ProgressBar1.Max:=Query1.FieldCount;
      ProgressBar1.Position:=0;
      For I := 1 To Query1.FieldCount Do
      Begin
        ProgressBar1.Position:=ProgressBar1.Position+1;
        ProgressBar1.Update;
        Tipo:='';
        If Pos(LowerCase(Trim(vNome)), LowerCase(Trim(Query1.Fields[I-1].FieldName)))>0 Then
        Begin
          If Query1.Fields[I-1].DataType = ftString Then
            Tipo:='VARCHAR';
          If Query1.Fields[I-1].DataType = ftSmallint Then
            Tipo:='SMALLINT';
          If Query1.Fields[I-1].DataType = ftInteger Then
            Tipo:='INTEGER';
          If Query1.Fields[I-1].DataType = ftWord Then
            Tipo:='CHAR';
          If Query1.Fields[I-1].DataType = ftBoolean Then
            Tipo:='VARCHAR';
          If Query1.Fields[I-1].DataType = ftFloat Then
            Tipo:='FLOAT';
          If Query1.Fields[I-1].DataType = ftCurrency Then
            Tipo:='FLOAT';
          If Query1.Fields[I-1].DataType = ftBCD Then
            Tipo:='FLOAT';
          If Query1.Fields[I-1].DataType = ftDate Then
            Tipo:='DATE';
          If Query1.Fields[I-1].DataType = ftTime Then
            Tipo:='DATE';
          If Query1.Fields[I-1].DataType = ftDateTime Then
            Tipo:='DATE';
          If Query1.Fields[I-1].DataType = ftBytes Then
            Tipo:='CHAR';
          If Query1.Fields[I-1].DataType = ftVarBytes Then
            Tipo:='VARCHAR';
          If Query1.Fields[I-1].DataType = ftBlob Then
            Tipo:='BLOB';
          If Query1.Fields[I-1].DataType = ftGraphic Then
            Tipo:='BLOB';
          If Query1.Fields[I-1].DataType = ftMemo Then
            Tipo:='BLOB';
          If Query1.Fields[I-1].DataType = ftFmtMemo Then
            Tipo:='BLOB';
          If Query1.Fields[I-1].DataType = ftParadoxOle Then
            Tipo:='BLOB';
          If Query1.Fields[I-1].DataType = ftDBaseOle Then
            Tipo:='BLOB';
          If Query1.Fields[I-1].DataType = ftTypedBinary Then
            Tipo:='BLOB';

          If Query1.Fields[I-1].Size>0 Then
            ListCamposPesq.Items.Add(ListTabelas.Items[Z-1]+' => '+Query1.Fields[I-1].FieldName+' - '+Tipo+' - '+IntToStr(Query1.Fields[I-1].Size))
          Else
            ListCamposPesq.Items.Add(ListTabelas.Items[Z-1]+' => '+Query1.Fields[I-1].FieldName+' - '+Tipo);
        End;
      End;
      Query1.Close;
    End;
    ProgressBar1.Visible:=False;
    If ListCamposPesq.Items.Count=2 Then
      ShowMessage('Campo não localizado!')
    Else
    Begin
      ListCamposPesq.Items[0]:='Qtde de Itens Localizados: '+IntToStr(ListCamposPesq.Items.Count-2)+'';
      ListCamposPesq.Visible:=True;
      ListCamposPesq.SetFocus;
    End;
  End;
End;
StatusBar1.Panels[1].Text:='Pesquisa de campo efetuada';
StatusBar1.Update;
SourceQuery1.Enabled:=True;
end;

procedure TFrmSQL.LocalizarValor1Click(Sender: TObject);
Var I, Z, Cont: Integer;
    vNome     : String;
    vProcura  : Boolean;
begin
SourceQuery1.Enabled:=False;
ListCamposPesq.Items.Clear;
ListCamposPesq.Visible:=False;
ListHint.Clear;
vNome:='';
If ListTabelas.ItemIndex<>-1 Then
Begin
  vProcura:=InputQuery('Localização de valor', 'Digite o valor a ser pesquisado: ', vNome);
  If (vProcura) And (Trim(vNome)<>'') Then
  Begin
    ListCamposPesq.Items.Add('Valor "'+vNome+'" localizado nas tabelas: ');
    ListCamposPesq.Items.Add('');
    ProgressBar1.Visible:=True;
    For Z := 1 To ListTabelas.Items.Count Do
    Begin
      Query1.SQL.Text:='Select * From '+ListTabelas.Items[Z-1];
      Query1.Open;
      ProgressBar1.Max:=Query1.RecordCount*Query1.FieldCount;
      ProgressBar1.Position:=0;
      Cont:=0;
      While Not Query1.EOF Do
      Begin
        Cont:=Cont+1;
        For I := 1 To Query1.FieldCount Do
        Begin
          ProgressBar1.Position:=ProgressBar1.Position+1;
          ProgressBar1.Update;
          If Pos(LowerCase(Trim(vNome)), LowerCase(Trim(Query1.Fields[I-1].AsString)))>0 Then
            ListCamposPesq.Items.Add(ListTabelas.Items[Z-1]+' => '+Query1.Fields[I-1].FieldName+' - '+IntToStr(Cont)+'. '+Query1.Fields[I-1].AsString)
        End;
        Query1.Next;
      End;
      Query1.Close;
    End;
    If ListCamposPesq.Items.Count=2 Then
      ShowMessage('Valor não localizado!')
    Else
    Begin
      ListCamposPesq.Items[0]:='Qtde de Itens Localizados: '+IntToStr(ListCamposPesq.Items.Count-2)+'';
      ListCamposPesq.Visible:=True;
      ListCamposPesq.SetFocus;
    End;
    ProgressBar1.Visible:=False;
  End;
End;
StatusBar1.Panels[1].Text:='Pesquisa de valor efetuada';
StatusBar1.Update;
SourceQuery1.Enabled:=True;
end;

procedure TFrmSQL.ListCamposPesqClick(Sender: TObject);
begin
If ListCamposPesq.ItemIndex<>-1 Then
Begin
  ListCamposPesq.Hint:=ListCamposPesq.Items[ListCamposPesq.ItemIndex];
  ListCamposPesq.ShowHint:=True;
End;
end;

procedure TFrmSQL.Adicionar2Click(Sender: TObject);
begin
ComboTipo.Text  :='';
EditTamanho.Text:='0';
EditDecimal.Text:='0';
EditAlter.SetFocus;
end;

procedure TFrmSQL.Excluir4Click(Sender: TObject);
begin
SourceQuery1.Enabled:=False;
If (ListTabelas.ItemIndex<>-1) And (Trim(ListCampos.Items[ListCampos.ItemIndex])<>'') Then
Begin
  If MessageDlg('Excluir o campo "'+ListCampos.Items[ListCampos.ItemIndex]+'"?',
      mtConfirmation, [mbYes,mbNo] , 0)=mrYes Then
  Begin
    If (Trim(ListCampos.Items[ListCampos.ItemIndex])<>'') Then
    Begin
      Try
        Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Drop '+
                         ListCampos.Items[ListCampos.ItemIndex];
        Query1.ExecSQL;
      Except
        On E: Exception Do
        Begin
          MessageDlg('Não foi possível excluir o campo "'+
                      ListCampos.Items[ListCampos.ItemIndex]+' ('+E.Message+')',
                      mtError, [mbOk] , 0);
          Exit;
        End;
      End;
    End;
    StatusBar1.Panels[1].Text:='Campo excluído: '+ListCampos.Items[ListCampos.ItemIndex]+' da Tabela '+
                               ListTabelas.Items[ListTabelas.ItemIndex];
  End;
  ListTabelasDblClick(Sender);
End;
ListCampos.SetFocus;
SourceQuery1.Enabled:=True;
end;

procedure TFrmSQL.PopupMenu2Popup(Sender: TObject);
begin
Adicionar2.Enabled   :=ListCampos.ItemIndex<>-1;
Excluir4.Enabled     :=ListCampos.ItemIndex<>-1;
Propriedades1.Enabled:=ListCampos.ItemIndex<>-1;
end;

procedure TFrmSQL.Propriedades1Click(Sender: TObject);
begin
If Pos('-', ListHint.Items[ListCampos.ItemIndex])>0 Then
  ShowMessage('Campo: '+ListCampos.Items[ListCampos.ItemIndex]+Chr(13)+
                'Tipo: '+Copy(ListHint.Items[ListCampos.ItemIndex], 1,
                 Pos('-', ListHint.Items[ListCampos.ItemIndex])-2)+Chr(13)+
                'Tamanho:  '+Copy(ListHint.Items[ListCampos.ItemIndex],
                 Pos('-', ListHint.Items[ListCampos.ItemIndex])+2, 500))
Else
  ShowMessage('Campo: '+ListCampos.Items[ListCampos.ItemIndex]+Chr(13)+
                'Tipo: '+ListHint.Items[ListCampos.ItemIndex]);
end;

procedure TFrmSQL.Atualizar2Click(Sender: TObject);
begin
If Pos('-', ListHint.Items[ListCampos.ItemIndex])>0 Then
Begin
  EditAtualizaNomeAtu.Text   :=ListCampos.Items[ListCampos.ItemIndex];
  ComboAtualizaTipoAtu.Text  :=Copy(ListHint.Items[ListCampos.ItemIndex], 1,
                               Pos('-', ListHint.Items[ListCampos.ItemIndex])-2);
  EditAtualizaTamanhoAtu.Text:=Trim(Copy(ListHint.Items[ListCampos.ItemIndex],
                               Pos('-', ListHint.Items[ListCampos.ItemIndex])+2, 500));
End
Else
Begin
  EditAtualizaNomeAtu.Text   :=ListCampos.Items[ListCampos.ItemIndex];
  ComboAtualizaTipoAtu.Text  :=ListHint.Items[ListCampos.ItemIndex];
End;
EditAtualizaNomeNov.Text   :=EditAtualizaNomeAtu.Text;
ComboAtualizaTipoNov.Text  :=ComboAtualizaTipoAtu.Text;
EditAtualizaTamanhoNov.Text:=EditAtualizaTamanhoAtu.Text;
EditAtualizaDecimalNov.Text:=EditAtualizaDecimalAtu.Text;
PnlAtualizarCampo.Visible:=True;
EditAtualizaNomeNov.SetFocus;
end;

procedure TFrmSQL.PnlAtualizarCampoExit(Sender: TObject);
begin
PnlAtualizarCampo.Visible := False;
end;

procedure TFrmSQL.ComboAtualizaTipoNovExit(Sender: TObject);
begin
If Trim(ComboAtualizaTipoNov.Text)<>'' Then
Begin
  ComboAtualizaTipoNov.ItemIndex:=ComboAtualizaTipoNov.Items.IndexOf(ComboAtualizaTipoNov.Text);
  {
  0 BLOB S N
  1 CHAR S N
  8 VARCHAR  S N
  6 NUMERIC S S
  2 DATE N N
  3 DOUBLE PRECISION N N
  4 FLOAT N N
  5 INTEGER N N
  7 SMALLINT N N}
  EditAtualizaTamanhoNov.Enabled:=False;
  EditAtualizaDecimalNov.Enabled:=False;
  EditAtualizaTamanhoNov.Color:=clMenu;
  EditAtualizaDecimalNov.Color:=clMenu;
  Case ComboAtualizaTipoNov.ItemIndex Of
  0, 1, 8:Begin
            EditAtualizaTamanhoNov.Enabled:=True;
            EditAtualizaTamanhoNov.Color:=clWindow;
          End;
  6:      Begin // FLOAT
            EditAtualizaTamanhoNov.Enabled:=True;
            EditAtualizaTamanhoNov.Color:=clWindow;
            EditAtualizaDecimalNov.Enabled:=True;
            EditAtualizaDecimalNov.Color:=clWindow;
           End;
  End;
  ComboAtualizaTipoNov.Text:=UpperCase(ComboAtualizaTipoNov.Text);
  If EditAtualizaTamanhoNov.Enabled Then
    EditAtualizaTamanhoNov.SetFocus;
End;
end;

procedure TFrmSQL.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
With Memo1 do
Begin
  PnlPosicao.Caption:=IntToStr(SelStart - Perform(EM_LINEINDEX,
                      Perform(EM_LINEFROMCHAR,SelStart, 0), 0))+'/'+
                      IntToStr(Perform(EM_LINEFROMCHAR,SelStart, 0));
End;
end;

procedure TFrmSQL.Memo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If (Trim(Memo1.Text)<>'') And ((ssCtrl In Shift) And (Key=69)) Then // Tecla Control + Letra E
Begin
  If MessageDlg('Executar SQL?',mtConfirmation, [mbYes,mbNo] , 0)=mrYes Then
  Begin
    BtnExecutarClick(Sender);
    StatusBar1.Panels[1].Text:='SQL Executado sob ação das teclas Ctrl+E';
  End;
End;
If (Trim(Memo1.Text)<>'') And ((ssCtrl In Shift) And (Key=76)) Then // Tecla Control + Letra L
Begin
  Memo1.Clear;
  StatusBar1.Panels[1].Text:='SQL Limpa sob ação das teclas Ctrl+L';
End;
end;

procedure TFrmSQL.Query1AfterScroll(DataSet: TDataSet);
begin
StatusBar1.Panels[1].Text:='Registro '+IntToStr(Query1.RecNo)+' da Tabela '+ListTabelas.Items[ListTabelas.ItemIndex]+' em exibição (Total: '+IntToStr(Query1.RecordCount)+')';
StatusBar1.Update;
end;

procedure TFrmSQL.StatusBar1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
StatusBar1.Hint:=Trim(StatusBar1.Panels[1].Text);
end;

procedure TFrmSQL.StatusAlteraMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
StatusBar1.Hint:=Trim(StatusBar1.Panels[1].Text);
end;

procedure TFrmSQL.BtnLocalizarClick(Sender: TObject);
Var vExp: String;
begin
If InputQuery('Busca', 'Insira a expressão para busca', vExp) Then
If Pos('', Memo1.Text)>0 Then
end;

procedure TFrmSQL.BtnSubstituirClick(Sender: TObject);
begin
ReplaceDialog1.Execute;
end;

procedure TFrmSQL.ReplaceDialog1Replace(Sender: TObject);
Var vSelPos  : Integer;
    vTamMemo : Integer;
    I        : Word;
begin
With TReplaceDialog(Sender) Do
Begin
  If (frWholeWord In Options) Then
  Begin
    vSelPos := 0;
    If (Pos(Trim(FindText)+' ', Memo1.Text) = 1) Then
      vSelPos := Pos(Trim(FindText)+' ', Memo1.Text)
    Else
      If vSelPos = 0 Then
        vSelPos := Pos(' '+Trim(FindText)+' ', Memo1.Text);
      If vSelPos = 0 Then
      Begin
        If Pos(' '+Trim(FindText), Memo1.Text) = Length(Memo1.Text)-Length(FindText) Then
          vSelPos := Pos(' '+Trim(FindText), Memo1.Text);
      End;
  End
  Else
    vSelPos := Pos(FindText, Memo1.Text);
  If vSelPos > 0 Then
  Begin
    If frReplace In Options Then
    Begin
      Memo1.SelStart := vSelPos - 1;
      Memo1.SelLength := Length(FindText);
      If MessageDlg('Substituir esta ocorrência de "'+FindText+'"?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
        Memo1.SelText := ReplaceText;
    End
    Else
    Begin
      If frReplaceAll In Options Then
      Begin
        vTamMemo := Length(Memo1.Text);
        For I := 1 To vTamMemo-Length(FindText)+1 Do
        Begin
          //ShowMessage(IntToStr(I)+' / '+IntToStr(Length(Memo1.Text)-Length(FindText)+1) + ' - '+Copy(Memo1.Text, I, Length(FindText)));
          If Copy(Memo1.Text, I, Length(FindText))=FindText Then
          Begin
            If (frWholeWord In Options) Then
            Begin
              // DUDA DUDA DJMHJHB DUDA 123456DUDA DUDA12456 DUDA
              // 123456789.123456789.123456789.123456789.123456789.
              If ((Memo1.Text[I-1]=' ') And (Memo1.Text[I+Length(FindText)]=' '))
                Or ((Memo1.Text[I-1]=' ') And (I+Length(FindText)-1=Length(Memo1.Text)))
                Or ((Memo1.Text[I+Length(FindText)]=' ') And (I=1)) Then
              Begin
                If MessageDlg('Substituir esta ocorrência de "'+FindText+'"?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
                Begin
                  Memo1.SelStart  := I-1;
                  Memo1.SelLength := Length(FindText);
                  Memo1.SelText   := ReplaceText;
                End;
              End;
            End
            Else
            Begin
              If MessageDlg('Substituir esta ocorrência de "'+FindText+'"?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
              Begin
                Memo1.SelStart  := I-1;
                Memo1.SelLength := Length(FindText);
                Memo1.SelText   := ReplaceText;
              End;
            End;
          End;
        End;
      End;
    End;
  End
  Else
    MessageDlg('Não foi possível encontrar "'+FindText+'" na Memo', mtError, [mbOk], 0);
End;
end;

procedure TFrmSQL.BtnConfirmaAtualizarClick(Sender: TObject);
Var CampoNull: String[9];
begin
If MessageDlg('Deseja realmente atualizar as propriedades do campo "'+EditAtualizaNomeAtu.Text+'"?',
   mtConfirmation, [mbYes,mbNo] , 0)=mrYes Then
Begin
  SourceQuery1.Enabled:=False;
  If (ListTabelas.ItemIndex<>-1) And (Trim(EditAtualizaNomeNov.Text)<>'') Then
  Begin
    StatusAltera.Panels[0].Text:='Inserindo o novo campo';
    StatusAltera.Update;

    // -> Inserindo o novo campo
    CampoNull:='';
    ComboAtualizaTipoNov.Text:=Trim(UpperCase(ComboAtualizaTipoNov.Text));
    If CheckAtualizaNuloNov.Checked=True Then
      CampoNull:=' NOT NULL';
    If (UpperCase(ComboAtualizaTipoNov.Text)='VARCHAR') And (Trim(EditAtualizaTamanhoNov.Text)<>'') Then
      Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Add '+
                        EditAtualizaNomeNov.Text+' VARCHAR ('+EditAtualizaTamanhoNov.Text+')'+CampoNull;
    If (UpperCase(ComboAtualizaTipoNov.Text)='INTEGER') Then
      Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Add '+
                        EditAtualizaNomeNov.Text+' INTEGER'+CampoNull;
    If (UpperCase(ComboAtualizaTipoNov.Text)='FLOAT') Then
      Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Add '+
                        EditAtualizaNomeNov.Text+' FLOAT'+CampoNull;
    If (UpperCase(ComboAtualizaTipoNov.Text)='SMALLINT') Then
      Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Add '+
                        EditAtualizaNomeNov.Text+' SMALLINT'+CampoNull;
    If (UpperCase(ComboAtualizaTipoNov.Text)='DATE') Then
      Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Add '+
                        EditAtualizaNomeNov.Text+' DATE'+CampoNull;
    If (UpperCase(ComboAtualizaTipoNov.Text)='BLOB') And (Trim(EditAtualizaTamanhoNov.Text)<>'') Then
    Begin
      Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Add '+
                        EditAtualizaNomeNov.Text+' BLOB SUB_TYPE 0 SEGMENT SIZE '+
                        EditAtualizaTamanhoNov.Text+CampoNull;
    End;
    If (UpperCase(ComboAtualizaTipoNov.Text)='CHAR') And (Trim(EditAtualizaTamanhoNov.Text)<>'') Then
    Begin
      Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Add '+
                        EditAtualizaNomeNov.Text+' CHAR ('+
                        EditAtualizaTamanhoNov.Text+')'+CampoNull;
    End;
    If (UpperCase(ComboAtualizaTipoNov.Text)='DOUBLE PRECISION') Then
      Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Add '+
                        EditAtualizaNomeNov.Text+' DOUBLE PRECISION'+CampoNull;
    Try
      Query1.ExecSQL;
    Except
      On E: Exception Do
      Begin
          MessageDlg('Não foi possível adicionar o campo, verifique '+CHR(13)+
                      'se já existe ou se o nome contém espaçamento ('+E.Message+')', mtError, [mbOk], 0);
          PnlAtualizarCampo.Visible:=False;
          Exit;
      End;
    End;
    // <- Inserindo novo campo
    TabAltera.Close;
    TabAltera.TableName := ListTabelas.Items[ListTabelas.ItemIndex];
    TabAltera.Open;
    ProgressAtualiza.Max        := TabAltera.RecordCount;
    ProgressAtualiza.Position   := 0;
    StatusAltera.Panels[0].Text :='Iniciando importação de registros';
    StatusAltera.Update;
    While Not TabAltera.EOF Do
    Begin
      ProgressAtualiza.Position:=ProgressAtualiza.Position+1;
      ProgressAtualiza.Update;

      StatusAltera.Panels[0].Text:='Importando registro '+IntToStr(ProgressAtualiza.Position)+'/'+IntToStr(ProgressAtualiza.Max);
      StatusAltera.Update;
      Try
        TabAltera.Edit;
        TabAltera.FieldByName(EditAtualizaNomeNov.Text).Value:=TabAltera.FieldByName(EditAtualizaNomeAtu.Text).Value;
        TabAltera.Post;
        TabAltera.Next;
      Except
        On E: Exception Do
        Begin
          MessageDlg('Não foi possível incluir os dados no novo campo ('+
                      E.Message+')', mtError, [mbOk], 0);
          PnlAtualizarCampo.Visible:=False;
          Exit;
        End;
      End;
    End;
    // -> Excluindo o campo antigo
    StatusAltera.Panels[0].Text:='Excluindo o campo antigo';
    StatusAltera.Update;

    Try
      Query1.SQL.Text:='Alter Table '+ListTabelas.Items[ListTabelas.ItemIndex]+' Drop '+
                       EditAtualizaNomeAtu.Text;
      Query1.ExecSQL;
      StatusAltera.Panels[0].Text:='Campo excluído: '+EditAtualizaNomeAtu.Text+' da Tabela '+
                                  ListTabelas.Items[ListTabelas.ItemIndex];
    Except
      On E: Exception Do
      Begin
        MessageDlg('Não foi possível excluir o campo ('+E.Message+')', mtError, [mbOk], 0);
        PnlAtualizarCampo.Visible:=False;
        Exit;
      End;
    End;
    // <- Excluindo o campo antigo

    If UpperCase(Trim(EditAtualizaNomeAtu.Text))<>UpperCase(Trim(EditAtualizaNomeNov.Text)) Then
    Begin
      StatusAltera.Panels[0].Text:='Atualização Completada: Campo "'+
                                  EditAtualizaNomeAtu.Text+'" atualizado para "'+
                                  EditAtualizaNomeNov.Text+'" '+
                                 'na Tabela '+ListTabelas.Items[ListTabelas.ItemIndex];
    End
    Else
      StatusAltera.Panels[0].Text:='Atualização efetuada: Campo "'+
                                  EditAtualizaNomeAtu.Text+'" da Tabela '+
                                  ListTabelas.Items[ListTabelas.ItemIndex];
    ListTabelasDblClick(Sender); // Atualizando a lista de campos
  End;
  SourceQuery1.Enabled      := True;
  PnlAtualizarCampo.Visible := False;
End;
end;

procedure TFrmSQL.BtnCancelaAtualizarClick(Sender: TObject);
begin
   PnlAtualizarCampo.Visible := False;
end;

procedure TFrmSQL.btnPathClick(Sender: TObject);
Var ldlgTemp : TOpenDialog;
begin
   ldlgTemp            := TOpenDialog.Create( Self );
   ldlgTemp.Filter     := 'Banco de Dados Access|*.MDB';
   ldlgTemp.InitialDir := ExtractFilePath( edtPath.Text );
   If Not ldlgTemp.Execute Then
   Begin
      FreeAndNil( ldlgTemp );
      Exit;
   End;
   edtPath.Text := ldlgTemp.FileName;
end;

procedure TFrmSQL.FormShow(Sender: TObject);
begin
   ADOManutencao.Close;
   ADOTemporario.Close;
   edtPath.Text :='Cadmusic.MDB';
end;

procedure TFrmSQL.btnConectarClick(Sender: TObject);
begin
   Try
      ADOManutencao.Close;
      ADOManutencao.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;' +
                                        'Data Source=' + edtPath.Text + ';' +
                                        'Persist Security Info=False';
      ADOManutencao.LoginPrompt := False;
      ADOManutencao.Open;
   Except
      On E: Exception Do
      Begin
         MessageDlg( 'Não foi possível abrir o Banco de Dados ADO!!!' + E.Message, mtError, [ mbOk ], 0 );
         Exit;
      End;
   End;
   ListRefresh;

   btnConectar.Enabled    := False;
   edtPath.Enabled        := False;
   btnPath.Enabled        := False;
   btnDesconectar.Enabled := True;
end;

procedure TFrmSQL.btnDesconectarClick(Sender: TObject);
begin
   Try
      ADOManutencao.Close;
   Except
      On E: Exception Do
      Begin
         MessageDlg( 'Não foi possível fechar o Banco de Dados ADO!!!' + E.Message, mtError, [ mbOk ], 0 );
         Exit;
      End;
   End;
   btnConectar.Enabled    := True;
   edtPath.Enabled        := True;
   btnPath.Enabled        := True;
   btnDesconectar.Enabled := False;
end;

end.
