unit ufrmCadPeriodoNumero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls,
  FMTBcd, SqlExpr, Provider, DataSetProviderUrb;

type
  TfrmCadPeriodoNumero = class(TfrmManutencaoBD)
    cdsManuBDID_PeriodoNumero: TIntegerField;
    cdsManuBDID_Empresa: TIntegerField;
    cdsManuBDInicio: TIntegerField;
    cdsManuBDFim: TIntegerField;
    cdsManuBDCompleto: TStringField;
    cdsEmpresa: TClientDataSetUrb;
    cdsManuBDDescEmpresa: TStringField;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    sqlEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProviderUrb;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPeriodoNumero: TfrmCadPeriodoNumero;

implementation

{$R *.dfm}

procedure TfrmCadPeriodoNumero.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'periodonumero';
  sCampoIDNome := 'ID_PeriodoNumero';
  //
  cdsEmpresa.Active := False;
  sqlEmpresa.CommandText := ' select ID_Empresa, RazaoSocial, ID_Classificacao, Endereco, Municipio, UF, Telefone, ' +
                                   ' NumLicencaFEEMA, ValorContrato, ValorTonelada, FlagRelContaminado, FlagRelReciclavel, ' +
                                   ' FlagRelSucata, TipoResumoGeral, Responsavel, ID_Fantasia, CEP, CNPJ, InscEstado, Obs ' +
                            ' from empresa order by RazaoSocial ';
  cdsEmpresa.Active := True;
  //
  sqlManuBD.CommandText := ' select ID_PeriodoNumero, ID_Empresa, Inicio, Fim, Completo from periodonumero ';
  //
  inherited;
end;

end.
