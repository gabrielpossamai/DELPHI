unit UCadCategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, ComCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  StdCtrls, Buttons, Db, Mask, ComObj;

type
  TFrmCadCategoria = class(TFrmCadPadrao)
    lbCod: TLabel;
    EdtCod: TDBEdit;
    lbDesc: TLabel;
    EdtDesc: TDBEdit;
    FiltraCliente: TButton;
    sbPlanilha: TButton;
    SaveDialog1: TSaveDialog;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCategoria: TFrmCadCategoria;
  Ascendente: Boolean;

implementation

uses UDM;

{$R *.dfm}

procedure TFrmCadCategoria.FormShow(Sender: TObject);
begin
  inherited;

    Dm.Tab_Categorias.Open;
    Ascendente := False;

end;

procedure TFrmCadCategoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

    Dm.Tab_Categorias.Close;

end;

procedure TFrmCadCategoria.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  If Odd(dm.tab_Categorias.RecNo) and (dm.tab_Categorias.State <> dsInsert) then
  begin //Lembre-se de colocar a unit DB na cláusula uses na unit da tela.
      DBGrid1.Canvas.Brush.Color := clMoneyGreen; // muda a cor do pincel
      DBGrid1.Canvas.FillRect(Rect); // Preenche o fundo com a cor especificada
      DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);// desenha as células da grade
  end; 

end;

procedure TFrmCadCategoria.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;

  Ascendente:= not Ascendente ;

  If Ascendente then
     Dm.tab_Clientes.IndexFieldNames := Column.FieldName + '   ASC'
  else
 	   Dm.tab_Clientes.IndexFieldNames := Column.FieldName + '    DESC';

end;

procedure TFrmCadCategoria.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
if (Button = nbInsert) then 
begin
   Dm.Tab_Categorias.Cancel;
   Dm.Tab_Categorias.Append;
   EdtDesc.SetFocus;
end;

end;

procedure TFrmCadCategoria.sbPesquisarClick(Sender: TObject);
begin
  inherited;
    If not Dm.Tab_Categorias.Locate( 'CatDesc',ValorCampo.Text, [loCaseInsensitive]) then
      MessageDlg('Categoria não cadastrada!', mtError, [mbOk], 0);

end;

procedure TFrmCadCategoria.FiltraClienteClick(Sender: TObject);
  Var Categoria : String;
      Ok : Boolean;
begin
   Categoria := 'ALL';
   Ok := InputQuery('Filtra Categoria por Produtos', 'Digite o nome da categoria: (ALL remove o filtro)',Categoria);
   If Ok then
     With dm.Tab_Categorias do
     begin
       Filtered := false; // Desativa o filtro
       if Categoria <>  'ALL' then
       begin      // A função QuotedStr coloca apóstrofos  no string.
         Filter := 'CatDesc = ' + QuotedStr(Categoria); // monta o filtro
         Filtered := true; // Ativa o filtro
       end;
     end;

end;

procedure TFrmCadCategoria.sbPlanilhaClick(Sender: TObject);
var   Pasta : Variant; // este tipo aceita qualquer tipo de informação, inclusive Objeto OLE
      Linha : Integer;
begin
  dm.Tab_Categorias.Filtered := False;
  Linha := 2;
  Pasta := CreateOleObject('Excel.Application'); // cria uma aplicação do Excel
  Pasta.WorkBooks.Add(1); // adiciona uma pasta do Excel
  Pasta.Caption := 'Cadastro de Categorias'; // Título da planilha
  Pasta.Visible := False; // Deixa a planilha invisível
  Pasta.Cells[1,1] := 'Código'; // insere o conteúdo 'Código' na célula A1
  Pasta.Cells[1,2] := 'Descrição'; // insere o conteúdo 'Descrição' na célula A2
  dm.Tab_Categorias.DisableControls; // desabilita os controles de dados
  Try
     While not dm.Tab_Categorias.Eof do //executa enquanto não for fim de arquivo de categorias
     begin
          Pasta.Cells[Linha,1] := dm.Tab_CategoriasCatCodigo.Value;
          Pasta.Cells[Linha,2] := dm.Tab_CategoriasCatDesc.Value;
          Linha := Linha + 1; // Incrementa a variável Linha em 01
          dm.Tab_Categorias.Next; //vai para o próximo registro da tabela de categorias
      end;
      Pasta.Columns.AutoFit; // Faz auto ajuste das colunas do Excel
      Pasta.WorkBooks[1].Sheets[1].Protect(DrawingObjects:=True, Contents:=True,   Scenarios:=True,         Password:='1234'); // Coloca Senha de Proteção na Planilha 01
      If  SaveDialog1.Execute then // O componente SaveDialogs está na paleta Dialogs 
         Pasta.WorkBooks[1].SaveAs(SaveDialog1.FileName); // Salva a Planilha (Salvar como)
     Pasta.Visible := True; //Deixa a planilha visível
     Finally
         dm.Tab_Categorias.EnableControls;  // sempre será executada essa linha
         Pasta := Unassigned;
     end;
end;

end.

