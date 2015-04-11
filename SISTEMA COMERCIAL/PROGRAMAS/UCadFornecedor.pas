unit UCadFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, ComCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  StdCtrls, Buttons, Db, Mask, ComObj, ADODB, RpDefine, RpCon, RpConDS,
  RpRave, RpBase, RpSystem;

type
  TFrmCadFornecedor = class(TFrmCadPadrao)
    lbNome: TLabel;
    EdtNome: TDBEdit;
    lbEndereco: TLabel;
    EdtEndereco: TDBEdit;
    lbCidade: TLabel;
    EdtCidade: TDBEdit;
    lbUf: TLabel;
    EdtUf: TDBEdit;
    lbCep: TLabel;
    EdtCep: TDBEdit;
    lbContato: TLabel;
    EdtContato: TDBEdit;
    lbFone: TLabel;
    EdtFone: TDBEdit;
    lbSite: TLabel;
    EdtSite: TDBEdit;
    FiltraCliente: TButton;
    sbPlanilha: TButton;
    sbGrafico: TButton;
    SaveDialog1: TSaveDialog;
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
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure sbPesquisarClick(Sender: TObject);
    procedure FiltraClienteClick(Sender: TObject);
    procedure sbPlanilhaClick(Sender: TObject);
    procedure sbGraficoClick(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
    procedure RvSysFornecedorBeforePrint(Sender: TObject);
    procedure RvSysFornecedorPrint(Sender: TObject);
    procedure Det_RelCadFornecedor;
    procedure Cab_RelCadFornecedor;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadFornecedor: TFrmCadFornecedor;
  Ascendente: Boolean;
  Lin: Real;

implementation

uses UDM, UGraficoFornecedor, UPesForCid;

{$R *.dfm}

procedure TFrmCadFornecedor.FormShow(Sender: TObject);
begin
  inherited;

    Dm.Tab_Fornecedores.Open;
    Ascendente := False;
   
end;

procedure TFrmCadFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

    Dm.Tab_Fornecedores.Close;
    
end;

procedure TFrmCadFornecedor.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  If Odd(dm.tab_Fornecedores.RecNo) and (dm.tab_Fornecedores.State <> dsInsert) then
  begin //Lembre-se de colocar a unit DB na cláusula uses na unit da tela.
      DBGrid1.Canvas.Brush.Color := clMoneyGreen; // muda a cor do pincel 
      DBGrid1.Canvas.FillRect(Rect); // Preenche o fundo com a cor especificada
      DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);// desenha as células da grade
  end; 


end;

procedure TFrmCadFornecedor.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;

  Ascendente:= not Ascendente ;

  If Ascendente then
      Dm.tab_Fornecedores.IndexFieldNames := Column.FieldName + '   ASC'
  else
 	    Dm.tab_Fornecedores.IndexFieldNames := Column.FieldName + '    DESC';

end;

procedure TFrmCadFornecedor.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
if (Button = nbInsert) then
begin
   Dm.Tab_Fornecedores.Cancel;
   Dm.Tab_Fornecedores.Append;
   EdtNome.SetFocus;
end;
end;

procedure TFrmCadFornecedor.sbPesquisarClick(Sender: TObject);
begin
  inherited;
    If not Dm.Tab_Fornecedores.Locate( 'ForRazao',ValorCampo.Text, [loCaseInsensitive]) then
      MessageDlg('Fornecedor não cadastrado!', mtError, [mbOk], 0);

end;

procedure TFrmCadFornecedor.FiltraClienteClick(Sender: TObject);
Var Cidade : String;
    Ok : Boolean;
begin
   Cidade := 'ALL';
   Ok := InputQuery('Filtra Fornecedores por Cidade', 'Digite o nome da cidade: (ALL remove o filtro)',Cidade);
   If Ok then
     With dm.Tab_Fornecedores do
     begin
       Filtered := false; // Desativa o filtro
       if Cidade <>  'ALL' then
       begin      // A função QuotedStr coloca apóstrofos  no string.
         Filter := 'ForCid = ' + QuotedStr(Cidade); // monta o filtro
         Filtered := true; // Ativa o filtro
       end;
     end;
end;

procedure TFrmCadFornecedor.sbPlanilhaClick(Sender: TObject);
var   Pasta : Variant; // este tipo aceita qualquer tipo de informação, inclusive Objeto OLE
      Linha : Integer;
begin
  dm.Tab_Fornecedores.Filtered := False;
  Linha := 2;
  Pasta := CreateOleObject('Excel.Application'); // cria uma aplicação do Excel
  Pasta.WorkBooks.Add(1); // adiciona uma pasta do Excel
  Pasta.Caption := 'Cadastro de Fornecedores'; // Título da planilha
  Pasta.Visible := False; // Deixa a planilha invisível
  Pasta.Cells[1,1] := 'Código'; // insere o conteúdo 'Código' na célula A1
  Pasta.Cells[1,2] := 'Fornecedor'; // insere o conteúdo 'Fornecedor' na célula A2
  Pasta.Cells[1,3] := 'Endereço'; // insere o conteúdo 'Endereço'na célula A3
  Pasta.Cells[1,4] := 'Cidade'; // insere o conteúdo 'Cidade'na célula A4
  Pasta.Cells[1,5] := 'UF'; // insere o conteúdo 'UF'na célula A5
  Pasta.Cells[1,6] := 'Cep'; // insere o conteúdo 'Cep'na célula A6
  Pasta.Cells[1,7] := 'Contato'; // insere o conteúdo 'Contato'na célula A7
  Pasta.Cells[1,8] := 'Fone'; // insere o conteúdo 'Fone'na célula A8
  Pasta.Cells[1,9] := 'Site'; // insere o conteúdo 'Site'na célula A9
  dm.Tab_Fornecedores.DisableControls; // desabilita os controles de dados
  Try
     While not dm.Tab_Fornecedores.Eof do //executa enquanto não for fim de arquivo de fornecedores
     begin
          Pasta.Cells[Linha,1] := dm.Tab_FornecedoresForCodigo.Value;
          Pasta.Cells[Linha,2] := dm.Tab_FornecedoresForRazao.Value;
          Pasta.Cells[Linha,3] := dm.Tab_FornecedoresForEnd.Value;
          Pasta.Cells[Linha,4] := dm.Tab_FornecedoresForCid.Value;
          Pasta.Cells[Linha,5] := dm.Tab_FornecedoresForEst.Value;
          Pasta.Cells[Linha,6] := dm.Tab_FornecedoresForCep.Value;
          Pasta.Cells[Linha,7] := dm.Tab_FornecedoresForCont.Value;
          Pasta.Cells[Linha,8] := dm.Tab_FornecedoresForNumFone.Value;
          Pasta.Cells[Linha,9] := dm.Tab_FornecedoresForHomPag.Value;
          Linha := Linha + 1; // Incrementa a variável Linha em 01
          dm.Tab_Fornecedores.Next; //vai para o próximo registro da tabela de fornecedores
      end;
      Pasta.Columns.AutoFit; // Faz auto ajuste das colunas do Excel
      Pasta.WorkBooks[1].Sheets[1].Protect(DrawingObjects:=True, Contents:=True,   Scenarios:=True,         Password:='1234'); // Coloca Senha de Proteção na Planilha 01
      If  SaveDialog1.Execute then // O componente SaveDialogs está na paleta Dialogs 
         Pasta.WorkBooks[1].SaveAs(SaveDialog1.FileName); // Salva a Planilha (Salvar como)
     Pasta.Visible := True; //Deixa a planilha visível
     Finally
         dm.Tab_Fornecedores.EnableControls;  // sempre será executada essa linha
         Pasta := Unassigned;
     end;

end;

procedure TFrmCadFornecedor.sbGraficoClick(Sender: TObject);
begin
  inherited;
    FrmGraficoFornecedor:= TFrmGraficoFornecedor.Create(Self); //criação manual
    FrmGraficoFornecedor.ShowModal; //exibe a tela no modo modal
    FrmGraficoFornecedor.Release; //libera a tela da memória
    FrmGraficoFornecedor:= nil; //atribui o conteúdo nulo para a variável FrmGraficoFornecedor
end;

procedure TFrmCadFornecedor.sbImprimirClick(Sender: TObject);
begin
  inherited;
    FrmPesForCid:= TFrmPesForCid.Create(Self); //criação manual
    FrmPesForCid.ShowModal; //exibe a tela no modo modal
    FrmPesForCid.Release; //libera a tela da memória
    FrmPesForCid:= nil; //atribui o conteúdo nulo para a variável FrmPesForCid
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

procedure TFrmCadFornecedor.RvSysFornecedorBeforePrint(Sender: TObject);
begin
  inherited;

  With RvSysFornecedor .BaseReport do
    begin
      FontName := 'Arial'; //define a fonte como Arial
      FontSize := 11;//define o tamanho da fonte para 11
      Bold := false; // desabilita o estilo de fonte negrito
      SetPaperSize(DMPAPER_A4, 0, 0); //ajusta tamanho do papel
    end;
end;

procedure TFrmCadFornecedor.RvSysFornecedorPrint(Sender: TObject);
begin
  inherited;

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

procedure TFrmCadFornecedor.Det_RelCadFornecedor; // Detalhe do relatório
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

procedure TFrmCadFornecedor.Cab_RelCadFornecedor; // Cabeçalho
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


end.
