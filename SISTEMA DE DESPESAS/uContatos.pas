unit uContatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ImgList, ComCtrls, ToolWin, StdCtrls, Buttons,
  DBXpress, FMTBcd, DB, Provider, DBClient, SqlExpr, Mask, DBCtrls, Menus,
  BusinessSkinForm, ExtCtrls, bsSkinData, bsSkinTabs, bsSkinCtrls,
  bsSkinGrids, bsDBGrids,Inifiles, DBTables, IBDatabase, ExtDlgs,Jpeg,clipbrd,
  ADODB, bsdbctrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxLookAndFeels, cxLookAndFeelPainters;

type
  TfrmContatos = class(TForm)
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    Localizar1: TMenuItem;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinData1: TbsSkinData;
    bsCompressedStoredSkin1: TbsCompressedStoredSkin;
    PageControl1: TbsSkinPageControl;
    TabSheet1: TbsSkinTabSheet;
    TabSheet2: TbsSkinTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label1: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label18: TLabel;
    memo1: TMemo;
    srcContatos: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    edtNome: TEdit;
    edtEmpresa: TEdit;
    edtCargo: TEdit;
    edtEmail: TEdit;
    edtRua: TEdit;
    edtCidade: TEdit;
    edtPaisRegiao: TEdit;
    qryContatos: TADOQuery;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    edtTelComercial: TMaskEdit;
    edtTelCelular: TMaskEdit;
    edtTelResidencial: TMaskEdit;
    edtFax: TMaskEdit;
    edtCep: TMaskEdit;
    edtEstado: TComboBox;
    Label19: TLabel;
    dspContatos: TDataSetProvider;
    cdsContatos: TClientDataSet;
    qryGrupoContato: TADOQuery;
    srcGrupoContato: TDataSource;
    cmbGrupoContato: TbsSkinDBLookupComboBox;
    cxGrid2: TcxGrid;
    GridContatos: TcxGridDBTableView;
    Column1_Codigo: TcxGridDBColumn;
    Column2_Nome: TcxGridDBColumn;
    Column3_Empresa: TcxGridDBColumn;
    Column4_Cargo: TcxGridDBColumn;
    Column5_CodGrupoContato: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Column6_TelComercial: TcxGridDBColumn;
    Column7_TelResidencial: TcxGridDBColumn;
    Column8_Celular: TcxGridDBColumn;
    Column9_Fax: TcxGridDBColumn;
    Column10_Rua: TcxGridDBColumn;
    Column11_Cidade: TcxGridDBColumn;
    Column12_Estado: TcxGridDBColumn;
    Column13_Cep: TcxGridDBColumn;
    Column14_PaisRegiao: TcxGridDBColumn;
    Column15_Email: TcxGridDBColumn;
    PanelConsulta: TbsSkinPanel;
    bsSkinSpeedButton3: TbsSkinSpeedButton;
    BtnLocalizar: TbsSkinSpeedButton;
    bsSkinSpeedButton4: TbsSkinSpeedButton;
    bsSkinStdLabel2: TbsSkinStdLabel;
    edtlocalizar: TEdit;
    bsSkinCoolBar3: TbsSkinCoolBar;
    bsSkinToolBar3: TbsSkinToolBar;
    btnincluir: TbsSkinSpeedButton;
    btnalterar: TbsSkinSpeedButton;
    btnexcluir: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    btnFechar: TbsSkinSpeedButton;
    btnCancela: TbsSkinSpeedButton;
    btnGrupoContato: TbsSkinSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure bsSkinTabControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBImage1DblClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnGrupoContatoClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure cmbGrupoContatoClick(Sender: TObject);
    procedure BtnLocalizarClick(Sender: TObject);
  private
     pvQualBotao : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContatos: TfrmContatos;

implementation

uses Uprincipal, uGrupoContatos;

{$R *.dfm}

procedure TfrmContatos.FormShow(Sender: TObject);
begin
   qryContatos.Sql.Text:='Select T_Contatos.Codigo, ' +
                         '       T_Contatos.Nome, ' +
                         '       T_Contatos.Empresa, ' +
                         '       T_Contatos.Cargo, ' +
                         '       T_Contatos.TelComercial, ' +
                         '       T_Contatos.TelResidencial, ' +
                         '       T_Contatos.Celular, ' +
                         '       T_Contatos.Fax, ' +
                         '       T_Contatos.Rua, ' +
                         '       T_Contatos.Cidade, ' +
                         '       T_Contatos.Estado, ' +
                         '       T_Contatos.Cep, ' +
                         '       T_Contatos.PaisRegiao, ' +
                         '       T_Contatos.Email, ' +
                         '       T_Contatos.Anotacoes, ' +
                         '       T_Contatos.CodGruContato, ' + 
                         '       T_GruposContato.Descricao ' +
                         'From T_Contatos, T_GruposContato ' +
                         'Where T_GruposContato.Codigo=T_Contatos.CodGruContato';

   cdsContatos.Open;

   qryGrupoContato.Close;
   qryGrupoContato.Sql.Text:='Select * from T_GruposContato';
   qryGrupoContato.Open;

   PageControl1.ActivePage       := TabSheet1;
end;

procedure TfrmContatos.btnalterarClick(Sender: TObject);
begin
   pvQualBotao :='Alterar';

   edtNome.Text           := cdsContatos.FieldByName('Nome').AsString;
   edtEmpresa.Text        := cdsContatos.FieldByName('Empresa').AsString;
   edtCargo.Text          := cdsContatos.FieldByName('Cargo').AsString;
   edtTelComercial.Text   := cdsContatos.FieldByName('TelComercial').AsString;
   edtTelComercial.EditMask :='!\(999\)0000-0000;1;_';
   edtTelCelular.Text     := cdsContatos.FieldByName('Celular').AsString;
   edtTelCelular.EditMask :='!\(999\)0000-0000;1;_';
   edtTelResidencial.Text := cdsContatos.FieldByName('TelResidencial').AsString;
   edtTelResidencial.EditMask :='!\(999\)0000-0000;1;_';
   edtFax.Text            := cdsContatos.FieldByName('Fax').AsString;
   edtFax.EditMask :='!\(999\)0000-0000;1;_';
   edtEmail.Text          := cdsContatos.FieldByName('Email').AsString;
   edtRua.Text            := cdsContatos.FieldByName('Rua').AsString;
   edtCidade.Text         := cdsContatos.FieldByName('Cidade').AsString;
   edtEstado.Text         := cdsContatos.FieldByName('Estado').AsString;
   edtPaisRegiao.Text     := cdsContatos.FieldByName('PaisRegiao').AsString;
   edtCep.Text            := cdsContatos.FieldByName('Cep').AsString;
   edtCep.EditMask :='!0000\-9999;1;_';
   memo1.Text              := cdsContatos.FieldByName('Anotacoes').AsString;
   cmbGrupoContato.KeyValue:= cdsContatos.FieldByName('CodGruContato').AsInteger;
   btnIncluir.Enabled      := False;
   btnAlterar.Enabled      := False;
   btnExcluir.Enabled      := False;

   PageControl1.ActivePage := TabSheet2;
end;

procedure TfrmContatos.BtnCancelaClick(Sender: TObject);
begin
   PageControl1.ActivePage:= TabSheet1;

   btnIncluir.Enabled      := True;
   btnAlterar.Enabled      := True;
   btnGrupoContato.Enabled := True;
   btnExcluir.Enabled      := True;

   cdsContatos.Close;
   cdsContatos.Open;
end;

procedure TfrmContatos.btnexcluirClick(Sender: TObject);
begin
   Try
      If MessageDlg( 'Deseja excluir o registro selecionado? ',
        mtConfirmation,[mbYes,mbNo],0)=mryes Then
      Begin
         cdsContatos.Delete;
      End;
   Finally
      cdsContatos.Close;
      cdsContatos.Open;
   End;
end;

procedure TfrmContatos.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmContatos.btnGrupoContatoClick(Sender: TObject);
begin
   frmGrupoContato := TfrmGrupoContato.Create(Self);
   frmGrupoContato.Showmodal;
end;

procedure TfrmContatos.btnIncluirClick(Sender: TObject);
begin
   pvQualBotao :='Incluir';
   memo1.Text              := '';
   PageControl1.ActivePage := TabSheet2;
   btnIncluir.Enabled      := False;
   btnAlterar.Enabled      := False;
   btnExcluir.Enabled      := False;

end;

procedure TfrmContatos.BtnLocalizarClick(Sender: TObject);
begin
   qryContatos.Sql.Text:='Select T_Contatos.Codigo, ' +
                         '       T_Contatos.Nome, ' +
                         '       T_Contatos.Empresa, ' +
                         '       T_Contatos.Cargo, ' +
                         '       T_Contatos.TelComercial, ' +
                         '       T_Contatos.TelResidencial, ' +
                         '       T_Contatos.Celular, ' +
                         '       T_Contatos.Fax, ' +
                         '       T_Contatos.Rua, ' +
                         '       T_Contatos.Cidade, ' +
                         '       T_Contatos.Estado, ' +
                         '       T_Contatos.Cep, ' +
                         '       T_Contatos.PaisRegiao, ' +
                         '       T_Contatos.Email, ' +
                         '       T_Contatos.Anotacoes, ' +
                         '       T_Contatos.CodGruContato, ' + 
                         '       T_GruposContato.Descricao ' +
                         'From T_Contatos, T_GruposContato ' +
                         'Where T_GruposContato.Codigo=T_Contatos.CodGruContato';
   If Trim( edtLocalizar.Text ) <> '' Then
   Begin
      qryContatos.Sql.Add('And T_Contatos.Nome Like :parNome');
      qryContatos.Parameters.ParamValues['parNome'] := Trim( '%'+edtLocalizar.Text+'%' );
   End;
   cdsContatos.Close;
   cdsContatos.Open;
end;

procedure TfrmContatos.btnokClick(Sender: TObject);
var licodigo : integer;
begin
   PageControl1.ActivePage := TabSheet1;
   btnIncluir.Enabled      := True;
   btnAlterar.Enabled      := True;
   btnGrupoContato.Enabled := True;
   btnExcluir.Enabled      := True;
   licodigo := cdsContatos.FieldByName('codigo').Asinteger;

   If pvQualBotao='Incluir' Then
      cdsContatos.Append
   Else
   Begin
      qryContatos.Sql.Text:='Select * From T_Contatos ';
      cdsContatos.Close;
      cdsContatos.Open;
      cdsContatos.locate('codigo',licodigo,[]);
      cdsContatos.Edit;
   End;

   cdsContatos.FieldByName('Nome').AsString           := Trim( edtNome.Text );
   cdsContatos.FieldByName('Empresa').AsString        := Trim( edtEmpresa.Text );
   cdsContatos.FieldByName('Cargo').AsString          := Trim( edtCargo.Text );
   cdsContatos.FieldByName('TelComercial').AsString   := Trim( edtTelComercial.Text );
   cdsContatos.FieldByName('Celular').AsString        := Trim( edtTelCelular.Text );
   cdsContatos.FieldByName('TelResidencial').AsString := Trim( edtTelResidencial.Text );
   cdsContatos.FieldByName('Fax').AsString            := Trim( edtFax.Text );
   cdsContatos.FieldByName('Email').AsString          := Trim( edtEmail.Text );
   cdsContatos.FieldByName('Rua').AsString            := Trim( edtRua.Text );
   cdsContatos.FieldByName('Cidade').AsString         := Trim( edtCidade.Text );
   cdsContatos.FieldByName('Estado').AsString         := Trim( edtEstado.Text );
   cdsContatos.FieldByName('PaisRegiao').AsString     := Trim( edtPaisRegiao.Text );
   cdsContatos.FieldByName('Cep').AsString            := Trim( edtCep.Text );
   cdsContatos.FieldByName('Anotacoes').AsString      := Trim( memo1.Text );
   cdsContatos.FieldByName('CodGruContato').AsInteger := cmbGrupoContato.KeyValue;

   cdsContatos.Post;
   cdsContatos.ApplyUpdates(0);

   cdsContatos.Close;
   cdsContatos.Open;

end;

procedure TfrmContatos.cmbGrupoContatoClick(Sender: TObject);
begin
   qryGrupoContato.Close;
   qryGrupoContato.Open;
end;

procedure TfrmContatos.PageControl1Change(Sender: TObject);
begin
   //cdsContatos.Close;
   memo1.Text :='';
end;

procedure TfrmContatos.bsSkinTabControl1Change(Sender: TObject);
begin
   {cdsContatos.Filtered := False;

   cdsContatos.Filter := 'NOME = ' +
   QuotedStr( bsSkinTabControl1.Tabs[bsSkinTabControl1.TabIndex] + '*');
   cdsContatos.Filtered := True;}
end;

procedure TfrmContatos.FormCreate(Sender: TObject);
begin
   bsSkinTabControl1Change( Nil );
end;

procedure TfrmContatos.DBImage1DblClick(Sender: TObject);
begin
//jpg: TJPEGImage;

   {If OpenPictureDialog1.Execute Then
   Begin
      jpg := TJpegImage.Create;
      jpg.LoadFromFile(OpenPictureDialog1.FileName);
      clipboard.Assign(jpg);
      DBImage1.PasteFromClipboard;
      jpg.Free;
   End;}

end;

end.
