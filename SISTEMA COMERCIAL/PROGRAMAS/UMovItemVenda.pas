unit UMovItemVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, ComCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  StdCtrls, Buttons, Mask, Db;

type
  TFrmMovItemVenda = class(TFrmCadPadrao)
    lbItens: TLabel;
    EdtItens: TDBEdit;
    lbValUnit: TLabel;
    EdtValUnit: TDBEdit;
    lbDesc: TLabel;
    EdtDesc: TDBEdit;
    lbQnt: TLabel;
    EdtQnt: TDBEdit;
    lbTotal: TLabel;
    EdtTotal: TDBEdit;
    lbProd: TLabel;
    lcProduto: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure sbPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMovItemVenda: TFrmMovItemVenda;
  Ascendente: Boolean;

implementation

uses UDM;

{$R *.dfm}

procedure TFrmMovItemVenda.FormShow(Sender: TObject);
begin
  inherited;

    Dm.Tab_ItemVenda.Open;
    Ascendente := False;
    Dm.Tab_Produtos.Open;

end;

procedure TFrmMovItemVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

    Dm.Tab_ItemVenda.Close;

end;

procedure TFrmMovItemVenda.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  If Odd(dm.tab_ItemVenda.RecNo) and (dm.tab_ItemVenda.State <> dsInsert) then
  begin //Lembre-se de colocar a unit DB na cláusula uses na unit da tela.
      DBGrid1.Canvas.Brush.Color := clMoneyGreen; // muda a cor do pincel 
      DBGrid1.Canvas.FillRect(Rect); // Preenche o fundo com a cor especificada
      DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);// desenha as células da grade
  end; 

end;

procedure TFrmMovItemVenda.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;

  Ascendente:= not Ascendente ;

  If Ascendente then
     Dm.tab_ItemVenda.IndexFieldNames := Column.FieldName + '   ASC'
  else
 	   Dm.tab_ItemVenda.IndexFieldNames := Column.FieldName + '    DESC';

end;

procedure TFrmMovItemVenda.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
if (Button = nbInsert) then 
begin
   Dm.Tab_ItemVenda.Cancel;
   Dm.Tab_ItemVenda.Append;
   lcProduto.SetFocus;
end;
end;

procedure TFrmMovItemVenda.sbPesquisarClick(Sender: TObject);
begin
  inherited;
    If not Dm.Tab_Produtos.Locate( 'ProdNome',ValorCampo.Text, [loCaseInsensitive]) then
      MessageDlg('Produto não cadastrado!', mtError, [mbOk], 0);
end;

end.
