object DM: TDM
  OldCreateOrder = False
  Left = 323
  Top = 233
  Height = 260
  Width = 736
  object Conexao: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 26
    Top = 23
  end
  object Tab_Clientes: TADOTable
    Connection = Conexao
    TableName = 'Clientes'
    Left = 26
    Top = 95
    object Tab_ClientesCliCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CliCodigo'
      ReadOnly = True
    end
    object Tab_ClientesCliNome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'CliNome'
      Size = 50
    end
    object Tab_ClientesCliEnd: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CliEnd'
      Size = 40
    end
    object Tab_ClientesCliCep: TWideStringField
      DisplayLabel = 'Cep'
      FieldName = 'CliCep'
      EditMask = '99.999-999'
      Size = 9
    end
    object Tab_ClientesCliCid: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CliCid'
      Size = 35
    end
    object Tab_ClientesCliEst: TWideStringField
      DisplayLabel = 'UF'
      FieldName = 'CliEst'
      Size = 2
    end
    object Tab_ClientesCliNumFone: TWideStringField
      DisplayLabel = 'Fone'
      FieldName = 'CliNumFone'
      Size = 15
    end
    object Tab_ClientesCliEmail: TWideStringField
      DisplayLabel = 'E-mail'
      FieldName = 'CliEmail'
      Size = 50
    end
    object Tab_ClientesCliDoc1: TWideStringField
      DisplayLabel = 'CPF'
      FieldName = 'CliDoc1'
      Size = 15
    end
    object Tab_ClientesCliDoc2: TWideStringField
      DisplayLabel = 'RG'
      FieldName = 'CliDoc2'
      Size = 15
    end
    object Tab_ClientesCliContato: TWideStringField
      DisplayLabel = 'Contato'
      FieldName = 'CliContato'
      Size = 50
    end
  end
  object Tab_Fornecedores: TADOTable
    Connection = Conexao
    TableName = 'Fornecedores'
    Left = 115
    Top = 95
    object Tab_FornecedoresForCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ForCodigo'
      ReadOnly = True
    end
    object Tab_FornecedoresForRazao: TWideStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'ForRazao'
      Size = 40
    end
    object Tab_FornecedoresForEnd: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ForEnd'
      Size = 40
    end
    object Tab_FornecedoresForCid: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'ForCid'
      Size = 35
    end
    object Tab_FornecedoresForEst: TWideStringField
      DefaultExpression = ' Codigo do Fornecedor'
      DisplayLabel = 'UF'
      FieldName = 'ForEst'
      Size = 2
    end
    object Tab_FornecedoresForCep: TWideStringField
      DisplayLabel = 'Cep'
      FieldName = 'ForCep'
      EditMask = '99.999-999'
      Size = 8
    end
    object Tab_FornecedoresForCont: TWideStringField
      DisplayLabel = 'Contato'
      FieldName = 'ForCont'
      Size = 35
    end
    object Tab_FornecedoresForNumFone: TWideStringField
      DisplayLabel = 'Fone'
      FieldName = 'ForNumFone'
      Size = 15
    end
    object Tab_FornecedoresForHomPag: TWideStringField
      DisplayLabel = 'Site'
      FieldName = 'ForHomPag'
      Size = 50
    end
  end
  object Tab_Categorias: TADOTable
    Connection = Conexao
    TableName = 'Categorias'
    Left = 205
    Top = 95
    object Tab_CategoriasCatCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CatCodigo'
      ReadOnly = True
    end
    object Tab_CategoriasCatDesc: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CatDesc'
      Size = 15
    end
  end
  object Tab_Produtos: TADOTable
    Connection = Conexao
    TableName = 'Produtos'
    Left = 295
    Top = 95
    object Tab_ProdutosProdID: TAutoIncField
      DisplayLabel = 'Indentifica'#231#227'o'
      FieldName = 'ProdID'
      ReadOnly = True
    end
    object Tab_ProdutosProdCategoria: TIntegerField
      DisplayLabel = 'Categoria'
      FieldName = 'ProdCategoria'
    end
    object Tab_ProdutosProdCodigo: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ProdCodigo'
      Size = 7
    end
    object Tab_ProdutosProdNome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'ProdNome'
      Size = 50
    end
    object Tab_ProdutosProdPrecoVenda: TBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'ProdPrecoVenda'
      Precision = 19
    end
    object Tab_ProdutosProdQtdeEst: TIntegerField
      DisplayLabel = 'Quantidade em Estoque '
      FieldName = 'ProdQtdeEst'
    end
    object Tab_ProdutosProdUnidade: TWideStringField
      DisplayLabel = 'Unidade'
      FieldName = 'ProdUnidade'
      Size = 5
    end
    object Tab_ProdutosProdFornecedor: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'ProdFornecedor'
    end
    object Tab_ProdutosCategoria: TStringField
      FieldKind = fkLookup
      FieldName = 'Categoria'
      LookupDataSet = Tab_Categorias
      LookupKeyFields = 'CatCodigo'
      LookupResultField = 'CatDesc'
      KeyFields = 'ProdCategoria'
      Size = 35
      Lookup = True
    end
  end
  object Tab_Funcionarios: TADOTable
    Connection = Conexao
    TableName = 'Funcionarios'
    Left = 385
    Top = 95
    object Tab_FuncionariosFunCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FunCodigo'
      ReadOnly = True
    end
    object Tab_FuncionariosFunNome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'FunNome'
      Size = 50
    end
    object Tab_FuncionariosFunEnder: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'FunEnder'
      Size = 40
    end
    object Tab_FuncionariosFunCep: TWideStringField
      DisplayLabel = 'Cep'
      FieldName = 'FunCep'
      EditMask = '99.999-999'
      Size = 8
    end
    object Tab_FuncionariosFunCid: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'FunCid'
      Size = 30
    end
    object Tab_FuncionariosFunEst: TWideStringField
      DisplayLabel = 'Estado'
      FieldName = 'FunEst'
      Size = 2
    end
    object Tab_FuncionariosFunNumFone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'FunNumFone'
      Size = 15
    end
    object Tab_FuncionariosFunDatAdm: TDateTimeField
      DisplayLabel = 'Data de Admiss'#227'o'
      FieldName = 'FunDatAdm'
    end
    object Tab_FuncionariosFunSalario: TBCDField
      DisplayLabel = 'Sal'#225'rio'
      FieldName = 'FunSalario'
      Precision = 19
    end
  end
  object Tab_Venda: TADOTable
    Connection = Conexao
    TableName = 'Venda'
    Left = 475
    Top = 95
    object Tab_VendaVendID: TAutoIncField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'VendID'
      ReadOnly = True
    end
    object Tab_VendaVendCliente: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'VendCliente'
    end
    object Tab_VendaVendDt_venda: TDateTimeField
      DisplayLabel = 'Data da Venda'
      FieldName = 'VendDt_venda'
    end
    object Tab_VendaVendValorProdutos: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VendValorProdutos'
      currency = True
      Precision = 19
    end
    object Tab_VendaVendDesconto: TBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'VendDesconto'
      currency = True
      Precision = 19
    end
    object Tab_VendaVendAcrescimo: TBCDField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'VendAcrescimo'
      currency = True
      Precision = 19
    end
    object Tab_VendaVendFrete: TBCDField
      DisplayLabel = 'Frete'
      FieldName = 'VendFrete'
      currency = True
      Precision = 19
    end
    object Tab_VendaVendQtde: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'VendQtde'
    end
    object Tab_VendaCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = Tab_Clientes
      LookupKeyFields = 'CliCodigo'
      LookupResultField = 'CliNome'
      KeyFields = 'VendCliente'
      Size = 50
      Lookup = True
    end
  end
  object Tab_ItemVenda: TADOTable
    Connection = Conexao
    OnCalcFields = Tab_ItemVendaCalcFields
    IndexFieldNames = 'ItVeVenda'
    MasterFields = 'VendID'
    MasterSource = Ds_Tab_Venda
    TableName = 'ItemVenda'
    Left = 565
    Top = 96
    object Tab_ItemVendaItVeID: TAutoIncField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ItVeID'
      ReadOnly = True
    end
    object Tab_ItemVendaItVeProduto: TIntegerField
      FieldName = 'ItVeProduto'
    end
    object Tab_ItemVendaItVeVenda: TIntegerField
      DisplayLabel = 'Itens'
      FieldName = 'ItVeVenda'
    end
    object Tab_ItemVendaItVeValorUnitario: TBCDField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'ItVeValorUnitario'
      currency = True
      Precision = 19
    end
    object Tab_ItemVendaItVeDescontoItem: TBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'ItVeDescontoItem'
      currency = True
      Precision = 19
    end
    object Tab_ItemVendaItVeQtde: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'ItVeQtde'
    end
    object Tab_ItemVendaTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object Tab_ItemVendaProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = Tab_Produtos
      LookupKeyFields = 'ProdID'
      LookupResultField = 'ProdNome'
      KeyFields = 'ItVeProduto'
      Size = 50
      Lookup = True
    end
  end
  object Tab_Usuarios: TADOTable
    Connection = Conexao
    TableName = 'Usuarios'
    Left = 655
    Top = 95
    object Tab_UsuariosUsuCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo do Usu'#225'rio'
      FieldName = 'UsuCodigo'
      ReadOnly = True
    end
    object Tab_UsuariosUsuNome: TWideStringField
      DisplayLabel = 'Nome do Usu'#225'rio'
      FieldName = 'UsuNome'
      Size = 50
    end
    object Tab_UsuariosUsuApelido: TWideStringField
      DisplayLabel = 'Apelido do Usu'#225'rio'
      FieldName = 'UsuApelido'
      Size = 15
    end
    object Tab_UsuariosUsuSenha: TWideStringField
      DisplayLabel = 'Senha do Usu'#225'rio'
      FieldName = 'UsuSenha'
      Size = 7
    end
    object Tab_UsuariosUsuDepto: TWideStringField
      DisplayLabel = 'Departamento do Usu'#225'rio'
      FieldName = 'UsuDepto'
      Size = 15
    end
    object Tab_UsuariosUsuNivel: TIntegerField
      DisplayLabel = 'Nivel do Usu'#225'rio'
      FieldName = 'UsuNivel'
    end
  end
  object Ds_Tab_Clientes: TDataSource
    AutoEdit = False
    DataSet = Tab_Clientes
    Left = 26
    Top = 167
  end
  object Ds_Tab_Fornecedores: TDataSource
    AutoEdit = False
    DataSet = Tab_Fornecedores
    Left = 115
    Top = 167
  end
  object Ds_Tab_Categorias: TDataSource
    AutoEdit = False
    DataSet = Tab_Categorias
    Left = 205
    Top = 167
  end
  object Ds_Tab_Produtos: TDataSource
    AutoEdit = False
    DataSet = Tab_Produtos
    Left = 295
    Top = 167
  end
  object Ds_Tab_Funcionarios: TDataSource
    AutoEdit = False
    DataSet = Tab_Funcionarios
    Left = 385
    Top = 167
  end
  object Ds_Tab_Venda: TDataSource
    AutoEdit = False
    DataSet = Tab_Venda
    Left = 475
    Top = 167
  end
  object Ds_Tab_ItemVenda: TDataSource
    AutoEdit = False
    DataSet = Tab_ItemVenda
    Left = 565
    Top = 167
  end
  object Ds_Tab_Usuario: TDataSource
    AutoEdit = False
    DataSet = Tab_Usuarios
    Left = 655
    Top = 167
  end
end
