unit UDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    Conexao: TADOConnection;
    Tab_Clientes: TADOTable;
    Tab_Fornecedores: TADOTable;
    Tab_Categorias: TADOTable;
    Tab_Produtos: TADOTable;
    Tab_Funcionarios: TADOTable;
    Tab_Venda: TADOTable;
    Tab_ItemVenda: TADOTable;
    Tab_Usuarios: TADOTable;
    Ds_Tab_Clientes: TDataSource;
    Ds_Tab_Fornecedores: TDataSource;
    Ds_Tab_Categorias: TDataSource;
    Ds_Tab_Produtos: TDataSource;
    Ds_Tab_Funcionarios: TDataSource;
    Ds_Tab_Venda: TDataSource;
    Ds_Tab_ItemVenda: TDataSource;
    Ds_Tab_Usuario: TDataSource;
    Tab_ClientesCliCodigo: TAutoIncField;
    Tab_ClientesCliNome: TWideStringField;
    Tab_ClientesCliEnd: TWideStringField;
    Tab_ClientesCliCep: TWideStringField;
    Tab_ClientesCliCid: TWideStringField;
    Tab_ClientesCliEst: TWideStringField;
    Tab_ClientesCliNumFone: TWideStringField;
    Tab_ClientesCliEmail: TWideStringField;
    Tab_ClientesCliDoc1: TWideStringField;
    Tab_ClientesCliDoc2: TWideStringField;
    Tab_ClientesCliContato: TWideStringField;
    Tab_FornecedoresForCodigo: TAutoIncField;
    Tab_FornecedoresForRazao: TWideStringField;
    Tab_FornecedoresForEnd: TWideStringField;
    Tab_FornecedoresForCid: TWideStringField;
    Tab_FornecedoresForEst: TWideStringField;
    Tab_FornecedoresForCep: TWideStringField;
    Tab_FornecedoresForCont: TWideStringField;
    Tab_FornecedoresForNumFone: TWideStringField;
    Tab_FornecedoresForHomPag: TWideStringField;
    Tab_CategoriasCatCodigo: TAutoIncField;
    Tab_CategoriasCatDesc: TWideStringField;
    Tab_ProdutosProdID: TAutoIncField;
    Tab_ProdutosProdCategoria: TIntegerField;
    Tab_ProdutosProdCodigo: TWideStringField;
    Tab_ProdutosProdNome: TWideStringField;
    Tab_ProdutosProdPrecoVenda: TBCDField;
    Tab_ProdutosProdQtdeEst: TIntegerField;
    Tab_ProdutosProdUnidade: TWideStringField;
    Tab_ProdutosProdFornecedor: TIntegerField;
    Tab_FuncionariosFunCodigo: TAutoIncField;
    Tab_FuncionariosFunNome: TWideStringField;
    Tab_FuncionariosFunEnder: TWideStringField;
    Tab_FuncionariosFunCep: TWideStringField;
    Tab_FuncionariosFunCid: TWideStringField;
    Tab_FuncionariosFunEst: TWideStringField;
    Tab_FuncionariosFunNumFone: TWideStringField;
    Tab_FuncionariosFunDatAdm: TDateTimeField;
    Tab_FuncionariosFunSalario: TBCDField;
    Tab_VendaVendID: TAutoIncField;
    Tab_VendaVendCliente: TIntegerField;
    Tab_VendaVendDt_venda: TDateTimeField;
    Tab_VendaVendValorProdutos: TBCDField;
    Tab_VendaVendDesconto: TBCDField;
    Tab_VendaVendAcrescimo: TBCDField;
    Tab_VendaVendFrete: TBCDField;
    Tab_VendaVendQtde: TIntegerField;
    Tab_ItemVendaItVeID: TAutoIncField;
    Tab_ItemVendaItVeVenda: TIntegerField;
    Tab_ItemVendaItVeValorUnitario: TBCDField;
    Tab_ItemVendaItVeDescontoItem: TBCDField;
    Tab_ItemVendaItVeQtde: TIntegerField;
    Tab_UsuariosUsuCodigo: TAutoIncField;
    Tab_UsuariosUsuNome: TWideStringField;
    Tab_UsuariosUsuApelido: TWideStringField;
    Tab_UsuariosUsuSenha: TWideStringField;
    Tab_UsuariosUsuDepto: TWideStringField;
    Tab_UsuariosUsuNivel: TIntegerField;
    Tab_ItemVendaTotal: TCurrencyField;
    Tab_ProdutosCategoria: TStringField;
    Tab_ItemVendaProduto: TStringField;
    Tab_VendaCliente: TStringField;
    Tab_ItemVendaItVeProduto: TIntegerField;
    procedure Tab_ItemVendaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.Tab_ItemVendaCalcFields(DataSet: TDataSet);
begin

  dm.tab_ItemVendaTotal.Value := dm.tab_ItemVendaItVeQtde.Value *  (dm.tab_ItemVendaItVeValorUnitario.Value - dm.tab_ItemVendaItVeDescontoItem.Value);

end;

end.
