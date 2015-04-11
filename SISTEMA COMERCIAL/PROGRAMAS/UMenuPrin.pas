unit UMenuPrin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ActnList, Menus, ComCtrls, ToolWin, ImgList, ComObj,
  DB, ADODB, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave;

type
  TFrmMenuPrin = class(TForm)
    ImgFundo: TImage;
    ActionList1: TActionList;
    ActCliente: TAction;
    ActFornecedores: TAction;
    ActFuncionarios: TAction;
    ActCategorias: TAction;
    ActItens: TAction;
    ActSair: TAction;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Movimentos1: TMenuItem;
    Relatrios1: TMenuItem;
    Clientes1: TMenuItem;
    N1: TMenuItem;
    Fornecedores1: TMenuItem;
    N2: TMenuItem;
    Produtos1: TMenuItem;
    N3: TMenuItem;
    Funcionrios1: TMenuItem;
    N4: TMenuItem;
    Sair1: TMenuItem;
    Categorias1: TMenuItem;
    N5: TMenuItem;
    Itens1: TMenuItem;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Vendas1: TMenuItem;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    actVendas: TAction;
    Panel1: TPanel;
    ActComp: TAction;
    Ferramentas1: TMenuItem;
    Compactar1: TMenuItem;
    N6: TMenuItem;
    BackupRestore1: TMenuItem;
    ActBkpRst: TAction;
    ProdutosemFalta1: TMenuItem;
    ActProdFalta: TAction;
    N7: TMenuItem;
    ActCliCid: TAction;
    ClientesporCidade1: TMenuItem;
    RvPrjProdFalta: TRvProject;
    RvSysProdFalta: TRvSystem;
    RvDtCnProdFalta: TRvDataSetConnection;
    QComprarProdutos: TADOQuery;
    QComprarProdutosCatDesc: TWideStringField;
    QComprarProdutosProdNome: TWideStringField;
    QComprarProdutosProdQtdeEst: TIntegerField;
    RvPrjCliente: TRvProject;
    RvSysCliente: TRvSystem;
    RvDtCnCliente: TRvDataSetConnection;
    QueryClientes: TADOQuery;
    QueryClientesCliCodigo: TAutoIncField;
    QueryClientesCliNome: TWideStringField;
    QueryClientesCliEnd: TWideStringField;
    QueryClientesCliCep: TWideStringField;
    QueryClientesCliCid: TWideStringField;
    QueryClientesCliEst: TWideStringField;
    QueryClientesCliNumFone: TWideStringField;
    QueryClientesCliEmail: TWideStringField;
    QueryClientesCliDoc1: TWideStringField;
    QueryClientesCliDoc2: TWideStringField;
    QueryClientesCliContato: TWideStringField;
    ActForCid: TAction;
    QueryFornecedores: TADOQuery;
    QueryFornecedoresForCodigo: TAutoIncField;
    QueryFornecedoresForRazao: TWideStringField;
    QueryFornecedoresForEnd: TWideStringField;
    QueryFornecedoresForCid: TWideStringField;
    QueryFornecedoresForEst: TWideStringField;
    QueryFornecedoresForCep: TWideStringField;
    QueryFornecedoresForCont: TWideStringField;
    QueryFornecedoresForNumFone: TWideStringField;
    QueryFornecedoresForHomPag: TWideStringField;
    RvDtCnFornecedor: TRvDataSetConnection;
    RvSysFornecedor: TRvSystem;
    RvPrjFornecedor: TRvProject;
    N8: TMenuItem;
    FornecedoresporCidade1: TMenuItem;
    RvPrjFuncionario: TRvProject;
    RvSysFuncionario: TRvSystem;
    RvDtCnFuncionario: TRvDataSetConnection;
    QueryFuncionarios: TADOQuery;
    QueryFuncionariosFunNome: TWideStringField;
    QueryFuncionariosFunNumFone: TWideStringField;
    QueryFuncionariosFunDatAdm: TDateTimeField;
    QueryFuncionariosFunSalario: TBCDField;
    ActFunSal: TAction;
    N9: TMenuItem;
    FuncionrioporSalrio1: TMenuItem;
    ActCalculadora: TAction;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    ActAjuda: TAction;
    ToolButton39: TToolButton;
    ToolButton40: TToolButton;
    ToolButton41: TToolButton;
    ToolButton42: TToolButton;
    ToolButton43: TToolButton;
    ToolButton44: TToolButton;
    ToolButton45: TToolButton;
    ToolButton46: TToolButton;
    ToolButton47: TToolButton;
    ToolButton48: TToolButton;
    ToolButton49: TToolButton;
    procedure ActSairExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActClienteExecute(Sender: TObject);
    procedure ActFornecedoresExecute(Sender: TObject);
    procedure ActCategoriasExecute(Sender: TObject);
    procedure ActItensExecute(Sender: TObject);
    procedure ActFuncionariosExecute(Sender: TObject);
    procedure actVendasExecute(Sender: TObject);
    procedure ActCompExecute(Sender: TObject);
    procedure Compactar;
    procedure ActBkpRstExecute(Sender: TObject);
    procedure ActProdFaltaExecute(Sender: TObject);
    procedure RvSysProdFaltaBeforePrint(Sender: TObject);
    procedure RvSysProdFaltaPrint(Sender: TObject);
    procedure Det_RelProdFalta;
    procedure Cab_RelProdFalta;
    procedure ActCliCidExecute(Sender: TObject);
    procedure RvSysClienteBeforePrint(Sender: TObject);
    procedure RvSysClientePrint(Sender: TObject);
    procedure Det_RelCliCidade;
    procedure Cab_RelCliCidade;
    procedure ActForCidExecute(Sender: TObject);
    procedure RvSysFornecedorBeforePrint(Sender: TObject);
    procedure RvSysFornecedorPrint(Sender: TObject);
    procedure Det_RelCadFornecedor;
    procedure Cab_RelCadFornecedor;
    procedure ActFunSalExecute(Sender: TObject);
    procedure RvSysFuncionarioBeforePrint(Sender: TObject);
    procedure RvSysFuncionarioPrint(Sender: TObject);
    procedure Det_RelCadFuncionario;
    procedure Cab_RelCadFuncionario;
    procedure ActCalculadoraExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenuPrin: TFrmMenuPrin;

implementation

uses UDM, UCadCliente, UCadFornecedor, UCadCategoria, UCadItem,
  UCadFuncionario, UMovVenda, UBkpRst, UQRRelCliCid, UPesCliCid,
  UPesCliCid1, UPesForCid, UPesForCid1;

{$R *.dfm}

procedure TFrmMenuPrin.ActSairExecute(Sender: TObject);
begin

    close;

end;

procedure TFrmMenuPrin.Timer1Timer(Sender: TObject);
begin

    StatusBar1.Panels[0].Text := ' ' + FormatDateTime('hh:nn:ss',now);
    StatusBar1.Panels[1].Text := ' ' + FormatDateTime ('dddd", "dd" de "mmmm" de "yyyy',now);
    
end;

procedure TFrmMenuPrin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

    //Sintaxe: MessageDlg('Mensagem', tipo da tela, [botões], índice ajuda);
    if MessageDlg('Deseja fechar a aplicação?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
        begin
          Dm.tab_Usuarios.Close; // remova o comentário após criar a tela DM
          Action := caFree; //ação do objeto TCloseAction para fechar a tela
          Application.Terminate;
        end
        else
  	      Action := caNone ; //ação do objeto TCloseAction para não fechar a tela
          
end;

procedure TFrmMenuPrin.ActClienteExecute(Sender: TObject);
begin

    FrmCadCliente:= TFrmCadCliente.Create(Self); //criação manual
    FrmCadCliente.ShowModal; //exibe a tela no modo modal
    FrmCadCliente.Release; //libera a tela da memória
    FrmCadCliente:= nil; //atribui o conteúdo nulo para a variável FrmCadCliente

end;

procedure TFrmMenuPrin.ActFornecedoresExecute(Sender: TObject);
begin

    FrmCadFornecedor:= TFrmCadFornecedor.Create(Self); //criação manual
    FrmCadFornecedor.ShowModal; //exibe a tela no modo modal
    FrmCadFornecedor.Release; //libera a tela da memória
    FrmCadFornecedor:= nil; //atribui o conteúdo nulo para a variável FrmCadFornecedores

end;

procedure TFrmMenuPrin.ActCategoriasExecute(Sender: TObject);
begin

    FrmCadCategoria:= TFrmCadCategoria.Create(Self); //criação manual
    FrmCadCategoria.ShowModal; //exibe a tela no modo modal
    FrmCadCategoria.Release; //libera a tela da memória
    FrmCadCategoria:= nil; //atribui o conteúdo nulo para a variável FrmCadCategorias

end;

procedure TFrmMenuPrin.ActItensExecute(Sender: TObject);
begin

    FrmCadItem:= TFrmCadItem.Create(Self); //criação manual
    FrmCadItem.ShowModal; //exibe a tela no modo modal
    FrmCadItem.Release; //libera a tela da memória
    FrmCadItem:= nil; //atribui o conteúdo nulo para a variável FrmCadItens

end;

procedure TFrmMenuPrin.ActFuncionariosExecute(Sender: TObject);
begin

    FrmCadFuncionario:= TFrmCadFuncionario.Create(Self); //criação manual
    FrmCadFuncionario.ShowModal; //exibe a tela no modo modal
    FrmCadFuncionario.Release; //libera a tela da memória
    FrmCadFuncionario:= nil; //atribui o conteúdo nulo para a variável FrmCadFuncionários

end;

procedure TFrmMenuPrin.actVendasExecute(Sender: TObject);
begin

    FrmMovVenda:= TFrmMovVenda.Create(Self); //criação manual
    FrmMovVenda.ShowModal; //exibe a tela no modo modal
    FrmMovVenda.Release; //libera a tela da memória
    FrmMovVenda:= nil; //atribui o conteúdo nulo para a variável FrmMovVendas


end;

Procedure TFrmMenuPrin.Compactar;
var  dao: OLEVariant;
begin
  Panel1.Visible := True;
  Dm.Conexao.Connected := False;
  Try
    Panel1.Caption:='Compactando Tabela';
    Panel1.Repaint;
    dao := CreateOleObject('DAO.DBEngine.36'); 
    dao.CompactDatabase(ExtractFileDir (Application.ExeName)+'\Banco.mdb', ExtractFileDir(Application.ExeName)+'\Banco2.mdb','',0,'');
    Panel1.Caption:='Apagando Arquivo Temporário';
    Panel1.Repaint;
    If FileExists(ExtractFileDir (Application.ExeName)+'\Banco2.mdb') then   DeleteFile(ExtractFileDir (Application.ExeName)+'\Banco.mdb');
    Panel1.Caption:='Renomeando Arquivo';
    Panel1.Repaint;
    if FileExists(ExtractFileDir (Application.ExeName)+'\Banco2.mdb') then
    RenameFile(ExtractFileDir(Application.ExeName)+'\Banco2.mdb', 
    ExtractFileDir (Application.ExeName)+'\Banco.mdb');
    Panel1.Caption:='Arquivo Banco.mdb Compactado';
    Panel1.Repaint;
  Except
    panel1.caption:='Ocorreu um Erro durante a compactação';
  end;
  Dm.Conexao.ConnectionString :=  'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+
                              		    ExtractFilePath(Application.ExeName)+
                                 		    'Banco.mdb;Persist Security Info=False;';
  Dm.Conexao.Connected := True;
  Panel1.Visible := False;
end;


procedure TFrmMenuPrin.ActCompExecute(Sender: TObject);
begin
If MessageDlg('Antes de confirmar esta operação, feche o banco de dados.' + #13 + #13 + 'Deseja efetuar a compatação do Banco de Dados?', mtConfirmation, [mbYes, mbNo],0) = mrNo then
    Abort;
Compactar;

end;

procedure TFrmMenuPrin.ActBkpRstExecute(Sender: TObject);
begin

    FrmBkpRst:= TFrmBkpRst.Create(Self); //criação manual
    FrmBkpRst.ShowModal; //exibe a tela no modo modal
    FrmBkpRst.Release; //libera a tela da memória
    FrmBkpRst:= nil; //atribui o conteúdo nulo para a variável FrmBkpRst

end;

procedure TFrmMenuPrin.ActProdFaltaExecute(Sender: TObject);
var Qtde : String;
    OK   : Boolean;
begin
  OK := InputQuery('Digite a Quantidade Mínima', 'Quantidade Mínima', Qtde);
  if OK then
  begin
    With QComprarProdutos do
    begin
       Close;
       Parameters[0].value := Qtde;
       Open;
       //RvPrjProdFalta.Execute;
       With RvSysProdFalta do
          begin
            SystemPrinter.Units         := unCM; //unidades em centímetro
            SystemPrinter.UnitsFactor   := 2.54; // Fator para conversão polegada
            SystemPrinter.Orientation   := poPortrait; // Modo Retrato
            SystemPreview.RulerType     := rtBothCm; // medidas da régua em cm
            //SystemSetups := SystemSetups - [ssAllowSetup]; remove tela de setup
            SystemPreview.FormState  := wsMaximized; // tela relatório maximizada
            Execute; // executa o relatório
          end;
       Close;
    end;
  end;
end;

procedure TFrmMenuPrin.RvSysProdFaltaBeforePrint(Sender: TObject);
begin
  With RvSysProdFalta .BaseReport do
    begin
      FontName := 'Arial'; //define a fonte como Arial
      FontSize := 11;//define o tamanho da fonte para 11
      Bold := false; // desabilita o estilo de fonte negrito
      SetPaperSize(DMPAPER_A4, 0, 0); //ajusta tamanho do papel
    end;
end;

procedure TFrmMenuPrin.RvSysProdFaltaPrint(Sender: TObject);
begin
  With RvSysProdFalta .BaseReport do
    begin
      QComprarProdutos.First; // vai para o primeiro registro da query
      While (not QComprarProdutos.Eof) do // enquanto não for fim de arquivo
      begin
        Lin := 1; // Declarar variável Lin com o tipo Real e escopo global
        Cab_RelProdFalta; // chama a procedure cabeçalho do relatório
        While (not QComprarProdutos.Eof) and (Lin <= 29) do
        begin
          Det_RelProdFalta; // chama a procedure detalhe do relatório
          QComprarProdutos.Next; //vai para o próximo registro
        end;
        if not QComprarProdutos.Eof then
          NewPage; //  insere uma nova página ao relatório
      end;
      Lin := Lin - 0.2;
      MoveTo(0.7,Lin); //move o cursor para a coluna e linha indicados
      LineTo(20.5,Lin);//traça uma linha até posição coluna x linha  indicada. 
      Lin := Lin + 0.5; 
    end;
end;

procedure TFrmMenuPrin.Det_RelProdFalta; // Detalhe do relatório
begin
  with RvSysProdFalta .BaseReport do
  begin
    Gotoxy(0.7,Lin);//tabula coluna e linha no relatório
    Print (QComprarProdutosCatDesc.AsString); // Imprime Nome da Catedoria
    Gotoxy(6.5,Lin);
    Print (QComprarProdutosProdNome.AsString);
    Gotoxy(18,Lin);
    Print(QComprarProdutosProdQtdeEst.AsString);
    Lin := Lin + 0.5;
  end;	
end;

procedure TFrmMenuPrin.Cab_RelProdFalta; // Cabeçalho 
begin
  with RvSysProdFalta .BaseReport do
  begin
    Gotoxy(0.7,Lin); // Declarar variable Lin com o tipo Real e escopo global
    Print('Data:' + FormatDateTime('dd/mm/yyyy " - Hora:" hh:mm:ss',now));
    Bold := False;
    Gotoxy(18,Lin); // tabula coluna e linha de impressão
    Print('Pág.:'+Macro(midCurrentPage)+'/'+Macro(midTotalPages));
    Bold := True; //define estilo da fonte para negrito
    Gotoxy(08,Lin);
    Print('Empresa Distribuidora York'); // Escreve dados no relatório 
    Lin := Lin + 0.5;
    Gotoxy(08,Lin);
    Print('Relatório de Produtos para Compra');
    Lin := Lin + 0.5;
    Gotoxy(0.7, Lin);
    Lin := Lin + 0.5;
    Gotoxy(6,Lin);
    MoveTo(0.7,Lin);
    LineTo(20.5,Lin);
    Lin := Lin + 0.5;

    Gotoxy(0.7,Lin);
    Print ('Categoria');
    Gotoxy(6.5,Lin);
    Print ('Nome do Produto');
    Gotoxy(16,Lin);
    Print('Quantidade em Estoque');

    Lin := Lin + 0.2;
    MoveTo(0.7,Lin);
    LineTo(20.5,Lin);
    Lin := Lin + 0.5;
    Bold := False;
  end;
end;

procedure TFrmMenuPrin.ActCliCidExecute(Sender: TObject);
begin
    FrmPesCliCid1:= TFrmPesCliCid1.Create(Self); //criação manual
    FrmPesCliCid1.ShowModal; //exibe a tela no modo modal
    FrmPesCliCid1.Release; //libera a tela da memória
    FrmPesCliCid1:= nil; //atribui o conteúdo nulo para a variável FrmPesCliCid1
    //FrmPesCliCid1.Show;
    //FrmRelCliCid.QuickRep1.Preview;
    //RvPrjCliente.Execute;

    If QueryClientes.RecordCount > 0 then  // se qtde de registros > 0
      begin
        With RvSysCliente do
          begin
            SystemPrinter.Units         := unCM; //unidades em centímetro
            SystemPrinter.UnitsFactor   := 2.54; // Fator para conversão polegada
            SystemPrinter.Orientation   := poPortrait; // Modo Retrato
            SystemPreview.RulerType     := rtBothCm; // medidas da régua em cm
            //SystemSetups := SystemSetups - [ssAllowSetup]; remove tela de setup
            SystemPreview.FormState  := wsMaximized; // tela relatório maximizada
            Execute; // executa o relatório
          end;
      end
    else
      ShowMessage ('Nenhum Registro Encontrado.');
end;

procedure TFrmMenuPrin.RvSysClienteBeforePrint(Sender: TObject);
begin
  With RvSysCliente .BaseReport do
    begin
      FontName := 'Arial'; //define a fonte como Arial
      FontSize := 11;//define o tamanho da fonte para 11
      Bold := false; // desabilita o estilo de fonte negrito
      SetPaperSize(DMPAPER_A4, 0, 0); //ajusta tamanho do papel
    end;
end;

procedure TFrmMenuPrin.RvSysClientePrint(Sender: TObject);
begin
  With RvSysCliente.BaseReport do
    begin
      QueryClientes.First; // vai para o primeiro registro da query
      While (not QueryClientes.Eof) do // enquanto não for fim de arquivo
      begin
        Lin := 1; // Declarar variável Lin com o tipo Real e escopo global
        Cab_RelCliCidade; // chama a procedure cabeçalho do relatório
        While (not QueryClientes.Eof) and (Lin <= 29) do
        begin
          Det_RelCliCidade; // chama a procedure detalhe do relatório
          QueryClientes.Next; //vai para o próximo registro
        end;
        if not QueryClientes.Eof then
          NewPage; //  insere uma nova página ao relatório
      end;
      Lin := Lin - 0.2;
      MoveTo(0.7,Lin); //move o cursor para a coluna e linha indicados
      LineTo(20.5,Lin);//traça uma linha até posição coluna x linha  indicada. 
      Lin := Lin + 0.5; 
    end;

end;

procedure TFrmMenuPrin.Det_RelCliCidade; // Detalhe do relatório
begin
  with RvSysCliente.BaseReport do
  begin
    Gotoxy(0.7,Lin);//tabula coluna e linha no relatório
    Print (QueryClientesCliNome.AsString); // Imprime Nome do cliente
    Gotoxy(9,Lin);
    Print (QueryClientesCliEnd.AsString);
    Gotoxy(13.5,Lin);
    Print (QueryClientesCliNumFone.AsString);
    Gotoxy(17.5,Lin);
    Print(QueryClientesCliCid.AsString);
    Lin := Lin + 0.5;
  end;
end;

procedure TFrmMenuPrin.Cab_RelCliCidade; // Cabeçalho
begin
  with RvSysCliente.BaseReport do
  begin
    Gotoxy(0.7,Lin); // Declarar variable Lin com o tipo Real e escopo global
    Print('Data:' + FormatDateTime('dd/mm/yyyy " - Hora:" hh:mm:ss',now));
    Bold := False;
    Gotoxy(18,Lin); // tabula coluna e linha de impressão
    Print('Pág.:'+Macro(midCurrentPage)+'/'+Macro(midTotalPages));
    Bold := True; //define estilo da fonte para negrito
    Gotoxy(08,Lin);
    Print('Empresa Distribuidora York'); // Escreve dados no relatório 
    Lin := Lin + 0.5;
    Gotoxy(08,Lin);
    Print('Relatório de Clientes');
    Lin := Lin + 0.5;
    Gotoxy(0.7, Lin);
    Lin := Lin + 0.5;
    Gotoxy(6,Lin);
    MoveTo(0.7,Lin);
    LineTo(20.5,Lin);
    Lin := Lin + 0.5;

    Gotoxy(0.7,Lin);
    Print ('Nome');
    Gotoxy(9,Lin);
    Print ('Endereço');
    Gotoxy(13.5,Lin);
    Print ('Fone');
    Gotoxy(17.5,Lin);
    Print('Cidade');

    Lin := Lin + 0.2;
    MoveTo(0.7,Lin);
    LineTo(20.5,Lin);
    Lin := Lin + 0.5;
    Bold := False;
  end;
end;

procedure TFrmMenuPrin.ActForCidExecute(Sender: TObject);
begin
    FrmPesForCid1:= TFrmPesForCid1.Create(Self); //criação manual
    FrmPesForCid1.ShowModal; //exibe a tela no modo modal
    FrmPesForCid1.Release; //libera a tela da memória
    FrmPesForCid1:= nil; //atribui o conteúdo nulo para a variável FrmPesForCid1
    //FrmPesForCid.ShowModal;
    //RvPrjFornecedores.Execute;

    If QueryFornecedores.RecordCount > 0 then  // se qtde de registros > 0
      begin
        With RvSysFornecedor do
          begin
            SystemPrinter.Units         := unCM; //unidades em centímetro
            SystemPrinter.UnitsFactor   := 2.54; // Fator para conversão polegada
            SystemPrinter.Orientation   := poPortrait; // Modo Retrato
            SystemPreview.RulerType     := rtBothCm; // medidas da régua em cm
            //SystemSetups := SystemSetups - [ssAllowSetup]; remove tela de setup
            SystemPreview.FormState  := wsMaximized; // tela relatório maximizada
            Execute; // executa o relatório
          end;
      end
    else
      ShowMessage ('Nenhum Registro Encontrado.');
end;

procedure TFrmMenuPrin.RvSysFornecedorBeforePrint(Sender: TObject);
begin
  With RvSysFornecedor .BaseReport do
    begin
      FontName := 'Arial'; //define a fonte como Arial
      FontSize := 11;//define o tamanho da fonte para 11
      Bold := false; // desabilita o estilo de fonte negrito
      SetPaperSize(DMPAPER_A4, 0, 0); //ajusta tamanho do papel
    end;
end;

procedure TFrmMenuPrin.RvSysFornecedorPrint(Sender: TObject);
begin
  With RvSysFornecedor.BaseReport do
    begin
      QueryFornecedores.First; // vai para o primeiro registro da query
      While (not QueryFornecedores.Eof) do // enquanto não for fim de arquivo
      begin
        Lin := 1; // Declarar variável Lin com o tipo Real e escopo global
        Cab_RelCadFornecedor; // chama a procedure cabeçalho do relatório
        While (not QueryFornecedores.Eof) and (Lin <= 29) do
        begin
          Det_RelCadFornecedor; // chama a procedure detalhe do relatório
          QueryFornecedores.Next; //vai para o próximo registro
        end;
        if not QueryFornecedores.Eof then
          NewPage; //  insere uma nova página ao relatório
      end;
      Lin := Lin - 0.2;
      MoveTo(0.7,Lin); //move o cursor para a coluna e linha indicados
      LineTo(20.5,Lin);//traça uma linha até posição coluna x linha  indicada.
      Lin := Lin + 0.5;
    end;
end;

procedure TFrmMenuPrin.Det_RelCadFornecedor; // Detalhe do relatório
begin
  with RvSysFornecedor.BaseReport do
  begin
    Gotoxy(0.7,Lin);//tabula coluna e linha no relatório
    Print (QueryFornecedoresForRazao.AsString); // Imprime Nome do fornecedor
    Gotoxy(9,Lin);
    Print (QueryFornecedoresForEnd.AsString);
    Gotoxy(13.5,Lin);
    Print (QueryFornecedoresForNumFone.AsString);
    Gotoxy(17.5,Lin);
    Print(QueryFornecedoresForCid.AsString);
    Lin := Lin + 0.5;
  end;
end;

procedure TFrmMenuPrin.Cab_RelCadFornecedor; // Cabeçalho
begin
  with RvSysFornecedor.BaseReport do
  begin
    Gotoxy(0.7,Lin); // Declarar variable Lin com o tipo Real e escopo global
    Print('Data:' + FormatDateTime('dd/mm/yyyy " - Hora:" hh:mm:ss',now));
    Bold := False;
    Gotoxy(18,Lin); // tabula coluna e linha de impressão
    Print('Pág.:'+Macro(midCurrentPage)+'/'+Macro(midTotalPages));
    Bold := True; //define estilo da fonte para negrito
    Gotoxy(08,Lin);
    Print('Empresa Distribuidora York'); // Escreve dados no relatório
    Lin := Lin + 0.5;
    Gotoxy(08,Lin);
    Print('Relatório de Fornecedores');
    Lin := Lin + 0.5;
    Gotoxy(0.7, Lin);
    Lin := Lin + 0.5;
    Gotoxy(6,Lin);
    MoveTo(0.7,Lin);
    LineTo(20.5,Lin);
    Lin := Lin + 0.5;

    Gotoxy(0.7,Lin);
    Print ('Razão Social');
    Gotoxy(9,Lin);
    Print ('Endereço');
    Gotoxy(13.5,Lin);
    Print ('Fone');
    Gotoxy(17.5,Lin);
    Print('Cidade');

    Lin := Lin + 0.2;
    MoveTo(0.7,Lin);
    LineTo(20.5,Lin);
    Lin := Lin + 0.5;
    Bold := False;
  end;
end;

procedure TFrmMenuPrin.ActFunSalExecute(Sender: TObject);
var Qtde : String;
    OK   : Boolean;
begin
  OK := InputQuery('Digite o Sálário Mínimo', 'Salário Mínimo', Qtde);
  if OK then
  begin
    With QueryFuncionarios do
    begin
       Close;
       Parameters[0].value := Qtde;
       Open;
       //RvPrjFuncionario.Execute;
       With RvSysFuncionario do
          begin
            SystemPrinter.Units         := unCM; //unidades em centímetro
            SystemPrinter.UnitsFactor   := 2.54; // Fator para conversão polegada
            SystemPrinter.Orientation   := poPortrait; // Modo Retrato
            SystemPreview.RulerType     := rtBothCm; // medidas da régua em cm
            //SystemSetups := SystemSetups - [ssAllowSetup]; remove tela de setup
            SystemPreview.FormState  := wsMaximized; // tela relatório maximizada
            Execute; // executa o relatório
          end;
       Close;
    end;
  end;
end;

procedure TFrmMenuPrin.RvSysFuncionarioBeforePrint(Sender: TObject);
begin
  With RvSysFuncionario .BaseReport do
    begin
      FontName := 'Arial'; //define a fonte como Arial
      FontSize := 11;//define o tamanho da fonte para 11
      Bold := false; // desabilita o estilo de fonte negrito
      SetPaperSize(DMPAPER_A4, 0, 0); //ajusta tamanho do papel
    end;
end;

procedure TFrmMenuPrin.RvSysFuncionarioPrint(Sender: TObject);
begin
  With RvSysFuncionario.BaseReport do
    begin
      QueryFuncionarios.First; // vai para o primeiro registro da query
      While (not QueryFuncionarios.Eof) do // enquanto não for fim de arquivo
      begin
        Lin := 1; // Declarar variável Lin com o tipo Real e escopo global
        Cab_RelCadFuncionario; // chama a procedure cabeçalho do relatório
        While (not QueryFuncionarios.Eof) and (Lin <= 29) do
        begin
          Det_RelCadFuncionario; // chama a procedure detalhe do relatório
          QueryFuncionarios.Next; //vai para o próximo registro
        end;
        if not QueryFuncionarios.Eof then
          NewPage; //  insere uma nova página ao relatório
      end;
      Lin := Lin - 0.2;
      MoveTo(0.7,Lin); //move o cursor para a coluna e linha indicados
      LineTo(20.5,Lin);//traça uma linha até posição coluna x linha  indicada.
      Lin := Lin + 0.5;
    end;
end;

procedure TFrmMenuPrin.Det_RelCadFuncionario; // Detalhe do relatório
begin
  with RvSysFuncionario.BaseReport do
  begin
    Gotoxy(0.7,Lin);//tabula coluna e linha no relatório
    Print (QueryFuncionariosFunNome.AsString); // Imprime Nome do funcionário
    Gotoxy(9,Lin);
    Print (QueryFuncionariosFunNumFone.AsString);
    Gotoxy(13,Lin);
    Print (QueryFuncionariosFunDatAdm.AsString);
    Gotoxy(18,Lin);
    Print(QueryFuncionariosFunSalario.AsString);
    Lin := Lin + 0.5;
  end;
end;

procedure TFrmMenuPrin.Cab_RelCadFuncionario; // Cabeçalho
begin
  with RvSysFuncionario.BaseReport do
  begin
    Gotoxy(0.7,Lin); // Declarar variable Lin com o tipo Real e escopo global
    Print('Data:' + FormatDateTime('dd/mm/yyyy " - Hora:" hh:mm:ss',now));
    Bold := False;
    Gotoxy(18,Lin); // tabula coluna e linha de impressão
    Print('Pág.:'+Macro(midCurrentPage)+'/'+Macro(midTotalPages));
    Bold := True; //define estilo da fonte para negrito
    Gotoxy(08,Lin);
    Print('Empresa Distribuidora York'); // Escreve dados no relatório
    Lin := Lin + 0.5;
    Gotoxy(08,Lin);
    Print('Relatório de Funcionários');
    Lin := Lin + 0.5;
    Gotoxy(0.7, Lin);
    Lin := Lin + 0.5;
    Gotoxy(6,Lin);
    MoveTo(0.7,Lin);
    LineTo(20.5,Lin);
    Lin := Lin + 0.5;

    Gotoxy(0.7,Lin);
    Print ('Nome');
    Gotoxy(9,Lin);
    Print ('Fone');
    Gotoxy(13,Lin);
    Print ('Data de Admissão');
    Gotoxy(18,Lin);
    Print('Salário');

    Lin := Lin + 0.2;
    MoveTo(0.7,Lin);
    LineTo(20.5,Lin);
    Lin := Lin + 0.5;
    Bold := False;
  end;
end;

procedure TFrmMenuPrin.ActCalculadoraExecute(Sender: TObject);
begin

    WinExec('calc.exe', sw_show);

end;

end.
