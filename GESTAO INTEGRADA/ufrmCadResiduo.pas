unit ufrmCadResiduo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls,
  FMTBcd, SqlExpr, Provider, DataSetProviderUrb;

type
  TfrmCadResiduo = class(TfrmManutencaoBD)
    cdsManuBDID_Residuo: TIntegerField;
    cdsManuBDDescricao: TStringField;
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    cdsManuBDFlagContaminado: TStringField;
    chkContaminado: TDBCheckBox;
    lblValorMercado: TLabel;
    txtValorMercado: TDBEdit;
    cdsManuBDValorMercado: TFMTBCDField;
    cdsManuBDCodigo: TStringField;
    sqlResiduo_solid_ind: TSQLDataSet;
    dspResiduo_solid_ind: TDataSetProviderUrb;
    cdsResiduo_solid_ind: TClientDataSetUrb;
    dtsResiduo_solid_ind: TDataSourceUrb;
    cdsManuBDDescCodigo: TStringField;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    cdsResiduo_solid_indCodigo: TStringField;
    cdsResiduo_solid_indDescricao: TStringField;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadResiduo: TfrmCadResiduo;

implementation

{$R *.dfm}

procedure TfrmCadResiduo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  //
  cdsResiduo_solid_ind.Active := False;
end;

procedure TfrmCadResiduo.FormCreate(Sender: TObject);
begin
  //
  cdsResiduo_solid_ind.Active := True;

  //
  sTabelaNome  := 'residuo';
  sCampoIDNome := 'ID_Residuo';
  //
  sqlManuBD.CommandText := ' select ID_Residuo, Descricao, FlagContaminado, ValorMercado, Codigo from residuo order by Descricao ';
  //
  inherited;
end;

end.
