unit UMovVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, ComCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  StdCtrls, Buttons, Db, Mask;

type
  TFrmMovVenda = class(TFrmCadPadrao)
    lbDataVenda: TLabel;
    EdtDataVenda: TDBEdit;
    lbValor: TLabel;
    EdtValor: TDBEdit;
    lbDesc: TLabel;
    EdtDesc: TDBEdit;
    lbAcres: TLabel;
    EdtAcres: TDBEdit;
    lbFrete: TLabel;
    EdtFrete: TDBEdit;
    lbQnt: TLabel;
    EdtQnt: TDBEdit;
    SpeedButton4: TSpeedButton;
    lbCliente: TLabel;
    lcCliente: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure sbPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMovVenda: TFrmMovVenda;
  Ascendente: Boolean;

implementation

uses UDM, UMovItemVenda;

{$R *.dfm}

procedure TFrmMovVenda.FormShow(Sender: TObject);
begin
  inherited;

    Dm.Tab_Venda.Open;
    Ascendente := False;
    Dm.Tab_Clientes.Open; 

end;

procedure TFrmMovVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

    Dm.Tab_Venda.Close;

end;

procedure TFrmMovVenda.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  If Odd(dm.tab_Venda.RecNo) and (dm.tab_Venda.State <> dsInsert) then
  begin //Lembre-se de colocar a unit DB na cláusula uses na unit da tela.
      DBGrid1.Canvas.Brush.Color := clMoneyGreen; // muda a cor do pincel 
      DBGrid1.Canvas.FillRect(Rect); // Preenche o fundo com a cor especificada
      DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);// desenha as células da grade
  end; 

end;

procedure TFrmMovVenda.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;

  Ascendente:= not Ascendente ;

  If Ascendente then
     Dm.tab_Venda.IndexFieldNames := Column.FieldName + '   ASC'
  else
 	   Dm.tab_Venda.IndexFieldNames := Column.FieldName + '    DESC';

end;

procedure TFrmMovVenda.SpeedButton4Click(Sender: TObject);
begin
  inherited;
    FrmMovItemVenda:= TFrmMovItemVenda.Create(Self); //criação manual
    FrmMovItemVenda.ShowModal; //exibe a tela no modo modal
    FrmMovItemVenda.Release; //libera a tela da memória
    FrmMovItemVenda:= nil; //atribui o conteúdo nulo para a variável FrmMovItemVenda

end;

procedure TFrmMovVenda.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
if (Button = nbInsert) then 
begin
   Dm.Tab_Venda.Cancel;
   Dm.Tab_Venda.Append;
   lcCliente.SetFocus;
end;
end;

procedure TFrmMovVenda.sbPesquisarClick(Sender: TObject);
begin
  inherited;

  If not Dm.Tab_Clientes.Locate( 'CliNome',ValorCampo.Text, [loCaseInsensitive]) then
      MessageDlg('Cliente não cadastrado!', mtError, [mbOk], 0);
end;

end.
