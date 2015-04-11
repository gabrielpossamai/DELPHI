unit ufrmLocalizaManifesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModeloMDIChild, StdCtrls, Grids, DBGrids, DBGridUrb, DB,
  DataSourceUrb, DBClient, ClientDataSetUrb, Provider, FMTBcd, SqlExpr;

type
  TfrmLocalizaManifesto = class(TfrmModeloMDIChild)
    lblSample: TLabel;
    txtNumManifesto: TEdit;
    btnFind: TButton;
    cdsManifesto: TClientDataSetUrb;
    dtsManifesto: TDataSourceUrb;
    dbgManutencaoBD: TDBGridUrb;
    dspManifesto: TDataSetProvider;
    sqlManifesto: TSQLDataSet;
    procedure btnFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalizaManifesto: TfrmLocalizaManifesto;

implementation

uses ufrmPrincipal;

{$R *.dfm}

procedure TfrmLocalizaManifesto.btnFindClick(Sender: TObject);
var
 sNumManifesto: string;
begin
  inherited;
  sNumManifesto := '''' + txtNumManifesto.Text + '''';
  cdsManifesto.Active := False;
  sqlManifesto.CommandText := ' SELECT '                        +
                                          '        m.Numero, '              +
                                          '        m.NumCertificado,'       +
                                          '        m.Quantidade, '          +
                                          '        m.ID_Unidade, '          +
                                          '        m.ID_Residuo, '          +
                                          '        m.ID_EstadoFisico, '     +
                                          '        m.ID_Acond, '            +
                                          '        m.ID_Origem, '           +
                                          '        m.ID_Procedencia, '      +
                                          '        m.ID_TratDisp, '         +
                                          '        m.ID_Status, '           +
                                          '        m.GerDtEntrega, '        +
                                          '        m.GerID_Empresa, '       +
                                          '        m.GerNumInventario, '    +
                                          '        m.GerID_Responsavel, '   +
                                          '        m.GerResponsavel, '      +
                                          '        m.TransDtReceb, '        +
                                          '        m.TransID_Empresa, '     +
                                          '        m.TransID_Responsavel, ' +
                                          '        m.TransResponsavel, '    +
                                          '        m.TransNomeMotorista, '  +
                                          '        m.TransPlacaVeiculo, '   +
                                          '        m.TransCertificado, '    +
                                          '        m.RecepDtReceb, '        +
                                          '        m.RecepID_Empresa, '     +
                                          '        m.RecepNumInventario, '  +
                                          '        m.RecepID_Responsavel, ' +
                                          '        m.RecepResponsavel, '    +
                                          '        m.Obs, '                 +
                                          '        m.DtChegou, '            +
                                          '        m.DtEnvio, '             +
                                          '        m.ID_Situacao, '         +
                                          '        m.ID_LoteEnvio, '        +
                                          '        m.CDF, '                 +
                                          '        m.FlagEmTransito '       +
                                          ' FROM '                          +
                                          '        manifesto m '            +
                                          ' WHERE '                         +
                                          '        m.Numero LIKE ' + sNumManifesto;
  cdsManifesto.Active := True;

{
SELECT
       m.Numero,
       m.NumCertificado,
       m.Quantidade,
       m.ID_Unidade,
       m.ID_Residuo,
       m.ID_EstadoFisico,
       m.ID_Acond,
       m.ID_Origem,
       m.ID_Procedencia,
       m.ID_TratDisp,
       m.ID_Status,
       m.GerDtEntrega,
       m.GerID_Empresa,
       m.GerNumInventario,
       m.GerID_Responsavel,
       m.GerResponsavel,
       m.TransDtReceb,
       m.TransID_Empresa,
       m.TransID_Responsavel,
       m.TransResponsavel,
       m.TransNomeMotorista,
       m.TransPlacaVeiculo,
       m.TransCertificado,
       m.RecepDtReceb,
       m.RecepID_Empresa,
       m.RecepNumInventario,
       m.RecepID_Responsavel,
       m.RecepResponsavel,
       m.Obs,
       m.DtChegou,
       m.DtEnvio,
       m.ID_Situacao,
       m.ID_LoteEnvio,
       m.CDF,
       m.FlagEmTransito
FROM
       manifesto m
WHERE
       m.Numero LIKE 'AC%';
}

end;

end.
