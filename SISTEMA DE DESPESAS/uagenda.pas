unit uagenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  BusinessSkinForm, bsSkinCtrls, bsSkinGrids, bsDBGrids, bsSkinTabs, DB,
  DBClient, Provider, ADODB;

type
  TFrmAgenda = class(TForm)
    bsBusinessSkinForm2: TbsBusinessSkinForm;
    pagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    dbgConsulta: TbsSkinDBGrid;
    bsSkinTabSheet2: TbsSkinTabSheet;
    qryCadAgenda: TADOQuery;
    dspCadAgenda: TDataSetProvider;
    cdsCadAgenda: TClientDataSet;
    srcCadAgenda: TDataSource;
    Panel3: TPanel;
    edtPesquisa: TEdit;
    cmpTipoFiltro: TComboBox;
    Codigo: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    cmbGrupos: TComboBox;
    cmbPrioridade: TComboBox;
    edtDescricao: TEdit;
    cmbSinNao: TComboBox;
    bsSkinCoolBar3: TbsSkinCoolBar;
    bsSkinToolBar3: TbsSkinToolBar;
    btnincluir: TbsSkinSpeedButton;
    btnalterar: TbsSkinSpeedButton;
    btnexcluir: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    btnFechar: TbsSkinSpeedButton;
    btnCancela: TbsSkinSpeedButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgenda: TFrmAgenda;

implementation

uses uprincipal;

{$R *.dfm}

procedure TFrmAgenda.FormShow(Sender: TObject);
begin
   qryCadAgenda.SQL.Text :=' Select * from T_Agenda ';
   cdsCadAgenda.Open;
end;

end.
