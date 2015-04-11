unit uDmDados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.DBXMySQL,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient, 
  Datasnap.Win.TConnect;

type
  TDmDados = class(TDataModule)
    SQLConnection: TSQLConnection;
    cdsCaixa: TClientDataSet;
    dspCaixa: TDataSetProvider;
    cdsContas_pagar: TClientDataSet;
    dspContas_pagar: TDataSetProvider;
    cdsContas_receber: TClientDataSet;
    dspContas_receber: TDataSetProvider;
    cdsUsuarios: TClientDataSet;
    dspUsuarios: TDataSetProvider;
    sdsCaixa: TSQLDataSet;
    sdsContas_pagar: TSQLDataSet;
    sdsContas_receber: TSQLDataSet;
    sdsUsuarios: TSQLDataSet;
    cdsCaixaid: TIntegerField;
    cdsCaixanumero_doc: TStringField;
    cdsCaixadescricao: TStringField;
    cdsCaixavalor: TFMTBCDField;
    cdsCaixatipo: TStringField;
    cdsCaixadt_cadastro: TDateField;
    cdsContas_pagarid: TIntegerField;
    cdsContas_pagarnumero_doc: TStringField;
    cdsContas_pagardescricao: TStringField;
    cdsContas_pagarparcela: TIntegerField;
    cdsContas_pagarvlr_parcela: TFMTBCDField;
    cdsContas_pagarvlr_compra: TFMTBCDField;
    cdsContas_pagarvlr_abatido: TFMTBCDField;
    cdsContas_pagardt_compra: TDateField;
    cdsContas_pagardt_cadastro: TDateField;
    cdsContas_pagardt_vencimento: TDateField;
    cdsContas_pagardt_pagamento: TDateField;
    cdsContas_pagarstatus: TStringField;
    cdsContas_receberid: TIntegerField;
    cdsContas_receberdocumento: TStringField;
    cdsContas_receberdescricao: TStringField;
    cdsContas_receberparcela: TIntegerField;
    cdsContas_recebervlr_parcela: TFMTBCDField;
    cdsContas_recebervlr_compra: TFMTBCDField;
    cdsContas_recebervlr_abatido: TFMTBCDField;
    cdsContas_receberdt_compra: TDateField;
    cdsContas_receberdt_vencimento: TDateField;
    cdsContas_receberdt_cadastro: TDateField;
    cdsContas_receberstatus: TStringField;
    cdsContas_receberdt_pagamento: TDateField;
    cdsUsuariosnome: TStringField;
    cdsUsuarioslogin: TStringField;
    cdsUsuariossenha: TStringField;
    cdsUsuariosstatus: TStringField;
    cdsUsuariosdt_cadastro: TDateField;
    cdsUsuariosid: TIntegerField;
    sqlConsultas: TSQLQuery;
    dspConsultas: TDataSetProvider;
    LocalConnection: TLocalConnection;
    cdsReceber_detalhes: TClientDataSet;
    dspReceber_detalhes: TDataSetProvider;
    sdsReceber_detalhes: TSQLDataSet;
    cdsPagar_detalhes: TClientDataSet;
    dspPagar_detalhes: TDataSetProvider;
    sdsPagar_detalhes: TSQLDataSet;
    cdsReceber_detalhesid: TIntegerField;
    cdsReceber_detalhesid_receber: TIntegerField;
    cdsReceber_detalhesdetalhes: TStringField;
    cdsReceber_detalhesvalor: TFMTBCDField;
    cdsReceber_detalhesdata: TDateField;
    cdsReceber_detalhesusuario: TStringField;
    cdsPagar_detalhesid: TIntegerField;
    cdsPagar_detalhesid_pagar: TIntegerField;
    cdsPagar_detalhesdetalhes: TStringField;
    cdsPagar_detalhesvalor: TFMTBCDField;
    cdsPagar_detalhesdata: TDateField;
    cdsPagar_detalhesusuario: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDados: TDmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
