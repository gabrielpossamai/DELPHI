unit ufechames;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinBoxCtrls, StdCtrls, bsSkinCtrls, ExtCtrls, ToolWin,
  ComCtrls, DB, ADODB, BusinessSkinForm;

type
  Tfrmfechames = class(TForm)
    bsSkinGroupBox1: TbsSkinGroupBox;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    cmbano: TbsSkinComboBox;
    cmbMes: TbsSkinComboBox;
    qryFechaMes: TADOQuery;
    qryCadTipoDespesas: TADOQuery;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinCoolBar3: TbsSkinCoolBar;
    bsSkinToolBar3: TbsSkinToolBar;
    bsSkinBevel4: TbsSkinBevel;
    BtnFechar: TbsSkinSpeedButton;
    btnOk: TbsSkinSpeedButton;
    QryTempCadDespesas: TADOQuery;
    procedure btnokClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfechames: Tfrmfechames;

implementation

uses uprincipal,Ufuncoes;
{$R *.dfm}

procedure Tfrmfechames.btnokClick(Sender: TObject);
begin
   qryFechaMes.Close;
   qryFechaMes.Sql.Text:='Select Cod_TipoDespesa, Sum(Valor) as Total From T_Despesas '+
                         'where ( month(Data_Lancamento)=:ParMes And Year(Data_Lancamento)=:ParAno ) and '+
                         '       D_C=:parD_C '+
                         'Group by Cod_TipoDespesa ';
   qryFechaMes.Parameters.ParamValues['ParMes']  := intToStr(cmbMes.ItemIndex);
   qryFechaMes.Parameters.ParamValues['ParAno']  := cmbAno.text;
   qryFechaMes.Parameters.ParamValues['ParD_C']  := 'D';
   qryFechaMes.Open;

   While not qryFechaMes.Eof  Do
   Begin
      qryCadTipoDespesas.Close;
      qryCadTipoDespesas.SQL.Text := 'Update T_TipoDespesas set Meta=:parMeta where codigo=:parCodigo ';
      qryCadTipoDespesas.Parameters.ParamValues['ParCodigo']  := QryFechaMes.FieldByname('Cod_TipoDespesa').AsString;
      qryCadTipoDespesas.Parameters.ParamValues['ParMeta']    := QryFechaMes.FieldByname('Total').AsFloat;
      qryCadTipoDespesas.ExecSQL;

      qryFechaMes.Next;
   End;
   CaixaMensagem( 'Concluido com Sucesso!!!', ctInforma, [ cbOk ], 0 );
end;

procedure Tfrmfechames.FormShow(Sender: TObject);
begin
   cmbAno.Items.Clear;
   QryTempCadDespesas.Close;
   QryTempCadDespesas.SQL.Text := ' Select year(Data_lancamento) as Ano from T_Despesas group by year(Data_Lancamento) order by 1 desc';
   QryTempCadDespesas.Open;
   cmbAno.Items.add('Nenhum');

   while Not QryTempCadDespesas.Eof do
   Begin
      cmbAno.Items.add(QryTempCadDespesas.FieldByName('ano').AsString);
      QryTempCadDespesas.Next;
   End;
end;

procedure Tfrmfechames.btnFecharClick(Sender: TObject);
begin
   close;
end;

end.
