unit UCadFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, ComCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  StdCtrls, Buttons, Db, Mask, ADODB, RpCon, RpConDS, RpBase, RpSystem,
  RpDefine, RpRave, ComObj;

type
  TFrmCadFuncionario = class(TFrmCadPadrao)
    lbNome: TLabel;
    EdtNome: TDBEdit;
    lbEndereco: TLabel;
    EdtEndereco: TDBEdit;
    lbCep: TLabel;
    EdtCep: TDBEdit;
    lbCidade: TLabel;
    EdtCidade: TDBEdit;
    LbUf: TLabel;
    EdtUf: TDBEdit;
    lbFone: TLabel;
    EdtFone: TDBEdit;
    lbDataAdmissao: TLabel;
    EdtDataAdmissao: TDBEdit;
    lbSalario: TLabel;
    EdtSalario: TDBEdit;
    RvPrjFuncionario: TRvProject;
    RvSysFuncionario: TRvSystem;
    RvDtCnFuncionario: TRvDataSetConnection;
    QueryFuncionarios: TADOQuery;
    QueryFuncionariosFunNome: TWideStringField;
    QueryFuncionariosFunNumFone: TWideStringField;
    QueryFuncionariosFunDatAdm: TDateTimeField;
    QueryFuncionariosFunSalario: TBCDField;
    FiltraCliente: TButton;
    sbPlanilha: TButton;
    sbGrafico: TButton;
    SaveDialog1: TSaveDialog;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure sbPesquisarClick(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
    procedure RvSysFuncionarioBeforePrint(Sender: TObject);
    procedure RvSysFuncionarioPrint(Sender: TObject);
    procedure Det_RelCadFuncionario;
    procedure Cab_RelCadFuncionario;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FiltraClienteClick(Sender: TObject);
    procedure sbPlanilhaClick(Sender: TObject);
    procedure sbGraficoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadFuncionario: TFrmCadFuncionario;
  Ascendente: Boolean;
  Lin: Real;

implementation

uses UDM, UGraficoFuncionario;

{$R *.dfm}

procedure TFrmCadFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

    Dm.Tab_Funcionarios.Close;

end;

procedure TFrmCadFuncionario.FormShow(Sender: TObject);
begin
  inherited;

    Dm.Tab_Funcionarios.Open;
    Ascendente := False; 

end;

procedure TFrmCadFuncionario.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  If Odd(dm.tab_Funcionarios.RecNo) and (dm.tab_Funcionarios.State <> dsInsert) then
  begin //Lembre-se de colocar a unit DB na cláusula uses na unit da tela.
      DBGrid1.Canvas.Brush.Color := clMoneyGreen; // muda a cor do pincel
      DBGrid1.Canvas.FillRect(Rect); // Preenche o fundo com a cor especificada
      DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);// desenha as células da grade
  end;

end;

procedure TFrmCadFuncionario.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;

  Ascendente:= not Ascendente ;

  If Ascendente then
     Dm.tab_Funcionarios.IndexFieldNames := Column.FieldName + '   ASC'
  else
 	   Dm.tab_Funcionarios.IndexFieldNames := Column.FieldName + '    DESC';

end;

procedure TFrmCadFuncionario.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
if (Button = nbInsert) then 
begin
   Dm.Tab_Funcionarios.Cancel;
   Dm.Tab_Funcionarios.Append;
   EdtNome.SetFocus;
end;
end;

procedure TFrmCadFuncionario.sbPesquisarClick(Sender: TObject);
begin
  inherited;
    If not Dm.Tab_Funcionarios.Locate( 'FunNome',ValorCampo.Text, [loCaseInsensitive]) then
      MessageDlg('Funcionário não cadastrado!', mtError, [mbOk], 0);

end;

procedure TFrmCadFuncionario.sbImprimirClick(Sender: TObject);
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

procedure TFrmCadFuncionario.RvSysFuncionarioBeforePrint(Sender: TObject);
begin

   With RvSysFuncionario .BaseReport do
    begin
      FontName := 'Arial'; //define a fonte como Arial
      FontSize := 11;//define o tamanho da fonte para 11
      Bold := false; // desabilita o estilo de fonte negrito
      SetPaperSize(DMPAPER_A4, 0, 0); //ajusta tamanho do papel
    end;

end;

procedure TFrmCadFuncionario.RvSysFuncionarioPrint(Sender: TObject);
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

procedure TFrmCadFuncionario.Det_RelCadFuncionario; // Detalhe do relatório
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

procedure TFrmCadFuncionario.Cab_RelCadFuncionario; // Cabeçalho
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

procedure TFrmCadFuncionario.FiltraClienteClick(Sender: TObject);
Var Salario : String;
    Ok : Boolean;
begin
   Salario := 'ALL';
   Ok := InputQuery('Filtra Funcionários por Salário', 'Digite o valor do salário: (ALL remove o filtro)',Salario);
   If Ok then
     With dm.Tab_Funcionarios do
     begin
       Filtered := false; // Desativa o filtro
       if Salario <>  'ALL' then
       begin      // A função QuotedStr coloca apóstrofos  no string.
         Filter := 'FunSalario = ' + QuotedStr(Salario); // monta o filtro
         Filtered := true; // Ativa o filtro
       end;
     end;


end;

procedure TFrmCadFuncionario.sbPlanilhaClick(Sender: TObject);
var   Pasta : Variant; // este tipo aceita qualquer tipo de informação, inclusive Objeto OLE
      Linha : Integer;
begin
  dm.Tab_Funcionarios.Filtered := False;
  Linha := 2;
  Pasta := CreateOleObject('Excel.Application'); // cria uma aplicação do Excel
  Pasta.WorkBooks.Add(1); // adiciona uma pasta do Excel
  Pasta.Caption := 'Cadastro de Funcionários'; // Título da planilha
  Pasta.Visible := False; // Deixa a planilha invisível
  Pasta.Cells[1,1] := 'Código'; // insere o conteúdo 'Código' na célula A1
  Pasta.Cells[1,2] := 'Funcionário'; // insere o conteúdo 'Funcionário' na célula A2
  Pasta.Cells[1,3] := 'Endereço'; // insere o conteúdo 'Endereço' na célula A3
  Pasta.Cells[1,4] := 'Cep'; // insere o conteúdo 'Cep'na célula A4
  Pasta.Cells[1,5] := 'Cidade'; // insere o conteúdo 'Cidade'na célula A5
  Pasta.Cells[1,6] := 'UF'; // insere o conteúdo 'UF'na célula A6
  Pasta.Cells[1,7] := 'Fone'; // insere o conteúdo 'Fone'na célula A7
  Pasta.Cells[1,8] := 'Data de Admissão'; // insere o conteúdo 'Data de Admissão'na célula A8
  Pasta.Cells[1,9] := 'Salário'; // insere o conteúdo 'Salário'na célula A9
  dm.Tab_Funcionarios.DisableControls; // desabilita os controles de dados
  Try
     While not dm.Tab_Funcionarios.Eof do //executa enquanto não for fim de arquivo de funcionarios
     begin
          Pasta.Cells[Linha,1] := dm.Tab_FuncionariosFunCodigo.Value;
          Pasta.Cells[Linha,2] := dm.Tab_FuncionariosFunNome.Value;
          Pasta.Cells[Linha,3] := dm.Tab_FuncionariosFunEnder.Value;
          Pasta.Cells[Linha,4] := dm.Tab_FuncionariosFunCep.Value;
          Pasta.Cells[Linha,5] := dm.Tab_FuncionariosFunCid.Value;
          Pasta.Cells[Linha,6] := dm.Tab_FuncionariosFunEst.Value;
          Pasta.Cells[Linha,7] := dm.Tab_FuncionariosFunNumFone.Value;
          Pasta.Cells[Linha,8] := dm.Tab_FuncionariosFunDatAdm.Value;
          Pasta.Cells[Linha,9] := dm.Tab_FuncionariosFunSalario.Value;
          Linha := Linha + 1; // Incrementa a variável Linha em 01
          dm.Tab_Funcionarios.Next; //vai para o próximo registro da tabela de funcionários
      end;
      Pasta.Columns.AutoFit; // Faz auto ajuste das colunas do Excel
      Pasta.WorkBooks[1].Sheets[1].Protect(DrawingObjects:=True, Contents:=True,   Scenarios:=True,         Password:='1234'); // Coloca Senha de Proteção na Planilha 01
      If  SaveDialog1.Execute then // O componente SaveDialogs está na paleta Dialogs
         Pasta.WorkBooks[1].SaveAs(SaveDialog1.FileName); // Salva a Planilha (Salvar como)
     Pasta.Visible := True; //Deixa a planilha visível
     Finally
         dm.Tab_Funcionarios.EnableControls;  // sempre será executada essa linha
         Pasta := Unassigned;
     end;

end;

procedure TFrmCadFuncionario.sbGraficoClick(Sender: TObject);
begin

    FrmGraficoFuncionario:= TFrmGraficoFuncionario.Create(Self); //criação manual
    FrmGraficoFuncionario.ShowModal; //exibe a tela no modo modal
    FrmGraficoFuncionario.Release; //libera a tela da memória
    FrmGraficoFuncionario:= nil; //atribui o conteúdo nulo para a variável FrmGraficoFuncionarios

end;

end.
