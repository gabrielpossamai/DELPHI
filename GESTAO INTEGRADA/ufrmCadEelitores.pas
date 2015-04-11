unit ufrmCadEelitores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, DB, DataSourceUrb, DBClient, ClientDataSetUrb,
  Provider, DataSetProviderUrb, DBTables, QueryUrb, ImgList, DBActns,
  ActnList, Grids, DBGrids, DBGridUrb, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls, Buttons, FMTBcd, SqlExpr, ExtCtrls, DBClientActns, Menus,
  MConnect;

type
  TfrmCadEelitores = class(TfrmManutencaoBD)
    cdsSexo: TClientDataSetUrb;
    dtsSexo: TDataSourceUrb;
    cdsManuBDNomePrimeiro: TStringField;
    cdsManuBDNomeRestante: TStringField;
    cdsManuBDApelido: TStringField;
    cdsManuBDLograDescricao: TStringField;
    cdsManuBDLograNumero: TBCDField;
    cdsManuBDLograComplemento: TStringField;
    cdsManuBDLograCEP: TStringField;
    cdsManuBDLograCidade: TStringField;
    cdsManuBDLograUF: TStringField;
    cdsManuBDEmail: TStringField;
    cdsManuBDDataNasc: TSQLTimeStampField;
    cdsManuBDTitNumero: TStringField;
    cdsManuBDTitZona: TStringField;
    cdsManuBDTitSecao: TStringField;
    cdsManuBDCPF: TStringField;
    cdsManuBDID_Eleitor: TIntegerField;
    cdsManuBDLograID_Tipo: TIntegerField;
    cdsManuBDLograID_Bairro: TIntegerField;
    cdsManuBDID_Classificacao: TIntegerField;
    cdsManuBDID_Sexo: TIntegerField;
    cdsManuBDConquistadoPor: TIntegerField;
    gbxEndereco: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    gbxDadosPessoais: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    gbxDocumentacao: TGroupBox;
    gbxOutros: TGroupBox;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    cdsSexoID_Sexo: TIntegerField;
    cdsSexoDescricao: TStringField;
    cdsManuBDDescSexo: TStringField;
    Label14: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    cdsTipoLogra: TClientDataSetUrb;
    dtsTipoLogra: TDataSourceUrb;
    cdsTipoLograID_Tipo: TIntegerField;
    cdsTipoLograDescricao: TStringField;
    dtsBairro: TDataSourceUrb;
    cdsBairro: TClientDataSetUrb;
    cdsClassificacao: TClientDataSetUrb;
    dtsClassificacao: TDataSourceUrb;
    cdsIndicadoPor: TClientDataSetUrb;
    dtsIndicadoPor: TDataSourceUrb;
    cdsBairroID_Bairro: TIntegerField;
    cdsBairroDescricao: TStringField;
    cdsClassificacaoID_Classificacao: TIntegerField;
    cdsClassificacaoDescricao: TStringField;
    cdsIndicadoPorID_Eleitor: TIntegerField;
    cdsIndicadoPorNomePrimeiro: TStringField;
    cdsManuBDDescLogra: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    cdsManuBDDescBairro: TStringField;
    DBLookupComboBox3: TDBLookupComboBox;
    cdsManuBDDescClassificacao: TStringField;
    Label20: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    cdsManuBDDescConquistadoPor: TStringField;
    Label21: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    procedure cdsListagemAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEelitores: TfrmCadEelitores;

implementation

uses ufrmPrincipal;


{$R *.dfm}

procedure TfrmCadEelitores.FormCreate(Sender: TObject);
begin
  inherited;
  sCampoIDNome := 'ID_Eleitor';
  sTabelaNome  := 'eleitor';
end;

procedure TfrmCadEelitores.SalvarExecute(Sender: TObject);
begin
  inherited;
{ ver 27/08/2004
  stbManutencaoBD.Panels[0].Text := ' Total de Clientes: '      + IntToStr( cdsListagem.RecordCount);
  stbManutencaoBD.Panels[1].Text := ' Valor da Assinatura: R$ 30,00';
  stbManutencaoBD.Panels[2].Text := ' Previsão de Receita: R$ ' + FormatFloat('#,###,##0.00', cdsListagem.RecordCount * 30 );

}

{
  ShowMessage('Aviso Importante! Agora você deve cadastra o(s) endereço(s) do cliente ' + cdsManuBDCLINOME.Value);


  Application.CreateForm(TfrmCadEndereco, frmCadEndereco);
  frmCadEndereco.Caption := frmCadEndereco.Caption +
                            ' - ' +
                            cdsManuBDCLINOME.Value +
                            ' - ' +
                            'Código ' + FormatFloat('000000', cdsManuBDCLICODIGO.Value);

}
end;

procedure TfrmCadEelitores.cdsListagemAfterScroll(DataSet: TDataSet);
begin
  inherited;
  stbManutencaoBD.Panels[0].Text := ' Total de Eleitores: '      + IntToStr( cdsManuBD.RecordCount);
///  stbManutencaoBD.Panels[1].Text := ' Valor da Assinatura: R$ 30,00';
///  stbManutencaoBD.Panels[2].Text := ' Previsão de Receita: R$ ' + FormatFloat('#,###,##0.00', cdsListagem.RecordCount * 30 );
end;

end.
