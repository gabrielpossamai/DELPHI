unit ufrmRelatMensal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModeloMDIChild, ComCtrls, StdCtrls, Buttons, DB,
  DataSourceUrb, DBClient, ClientDataSetUrb, Grids, DBGrids, DBGridUrb,
  RpDefine, RpCon, RpConDS;

type
  TfrmRelatMensal = class(TfrmModeloMDIChild)
    btnVisualizarAtual: TBitBtn;
    rdtsGerador_New: TRvDataSetConnection;
    pgcRelatMensal: TPageControl;
    tshGerador: TTabSheet;
    tshResumoGeral: TTabSheet;
    dbgResumoGeral: TDBGridUrb;
    dbgGerador: TDBGridUrb;
    cdsGerador: TClientDataSetUrb;
    dtsGerador: TDataSourceUrb;
    cdsGeradorGerID_Empresa: TIntegerField;
    cdsGeradorRazaoSocial: TStringField;
    cdsGeradorEndereco: TStringField;
    cdsGeradorMunicipio: TStringField;
    cdsGeradorUF: TStringField;
    cdsResumoGeral: TClientDataSetUrb;
    cdsResumoGeralGerID_Empresa: TIntegerField;
    cdsResumoGeralID_Residuo: TIntegerField;
    cdsResumoGeralDescricao: TStringField;
    cdsResumoGeralTOTAL: TFloatField;
    dtsResumoGeral: TDataSourceUrb;
    rdtsResumoGeral_New: TRvDataSetConnection;
    btnImprimirTodos: TBitBtn;
    gbxPeriodo: TGroupBox;
    Label1: TLabel;
    dtpInicial: TDateTimePicker;
    Label2: TLabel;
    dtpFinal: TDateTimePicker;
    btnBuscar: TBitBtn;
    cdsListaGerador: TClientDataSetUrb;
    dtsListaGerador: TDataSourceUrb;
    cdsListaGeradorGerID_Empresa: TIntegerField;
    cdsListaGeradorRazaoSocial: TStringField;
    cdsListaGeradorEndereco: TStringField;
    cdsListaGeradorMunicipio: TStringField;
    cdsListaGeradorUF: TStringField;
    cdsTotLixoCont: TClientDataSetUrb;
    dtsTotLixoCont: TDataSourceUrb;
    rdtsTotLixoCont_New: TRvDataSetConnection;
    procedure btnVisualizarAtualClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure tshResumoGeralShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatMensal: TfrmRelatMensal;

implementation

uses ufrmPrincipal;

{$R *.dfm}

procedure TfrmRelatMensal.btnVisualizarAtualClick(Sender: TObject);
begin
  inherited;
  cdsGerador.Active := False;
  cdsGerador.Params.ParamByName('sDataIni').AsString     := FormatDateTime('yyyymmdd', dtpInicial.Date);
  cdsGerador.Params.ParamByName('sDataFim').AsString     := FormatDateTime('yyyymmdd', dtpFinal.Date);
  cdsGerador.Params.ParamByName('iID_Empresa').AsInteger := cdsListaGeradorGerID_Empresa.AsInteger;
  cdsGerador.Active := True;

  cdsResumoGeral.Active := False;
  cdsResumoGeral.Params.ParamByName('sDataIni').AsString     := FormatDateTime('yyyymmdd', dtpInicial.Date);
  cdsResumoGeral.Params.ParamByName('sDataFim').AsString     := FormatDateTime('yyyymmdd', dtpFinal.Date);
  cdsResumoGeral.Params.ParamByName('iID_Empresa').AsInteger := cdsListaGeradorGerID_Empresa.AsInteger;
  cdsResumoGeral.Active := True;

  frmPrincipal.rvpGestao_Empresarial.ExecuteReport('rptMensal');
end;

procedure TfrmRelatMensal.FormCreate(Sender: TObject);
begin
  inherited;
  pgcRelatMensal.ActivePage := tshGerador;
end;

procedure TfrmRelatMensal.btnBuscarClick(Sender: TObject);
begin
  inherited;
  cdsListaGerador.Active := False;
  cdsListaGerador.Params.ParamByName('sDataIni').AsString := FormatDateTime('yyyymmdd', dtpInicial.Date);
  cdsListaGerador.Params.ParamByName('sDataFim').AsString := FormatDateTime('yyyymmdd', dtpFinal.Date);
  cdsListaGerador.Active := True;
end;

procedure TfrmRelatMensal.tshResumoGeralShow(Sender: TObject);
begin
  inherited;
  cdsResumoGeral.Active := False;
  cdsResumoGeral.Params.ParamByName('sDataIni').AsString     := FormatDateTime('yyyymmdd', dtpInicial.Date);
  cdsResumoGeral.Params.ParamByName('sDataFim').AsString     := FormatDateTime('yyyymmdd', dtpFinal.Date);
  cdsResumoGeral.Params.ParamByName('iID_Empresa').AsInteger := cdsListaGeradorGerID_Empresa.AsInteger;
  cdsResumoGeral.Active := True;
end;

end.

