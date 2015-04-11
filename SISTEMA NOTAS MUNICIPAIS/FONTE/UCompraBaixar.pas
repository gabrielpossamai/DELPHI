unit UCompraBaixar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, FMTBcd, Provider, DBClient, DB,
  SqlExpr, WSEdit, ExtCtrls, ComCtrls, ToolWin;

type
  TFCompraBaixar = class(TForm)
    lbltitulo: TLabel;
    DBGrid2: TDBGrid;
    QCompra: TSQLQuery;
    DSCompra: TDataSource;
    CDSCompra: TClientDataSet;
    DSPCompra: TDataSetProvider;
    QCompraCOMDATA: TDateField;
    QCompraCOMDESCRICAO: TStringField;
    QCompraPRONOME: TStringField;
    QCompraITEPESOINI: TFMTBCDField;
    QCompraITEPESOFIN: TFMTBCDField;
    QCompraITEPESOTOTAL: TFMTBCDField;
    CDSCompraCOMDATA: TDateField;
    CDSCompraCOMDESCRICAO: TStringField;
    CDSCompraPRONOME: TStringField;
    CDSCompraITEPESOINI: TFMTBCDField;
    CDSCompraITEPESOFIN: TFMTBCDField;
    CDSCompraITEPESOTOTAL: TFMTBCDField;
    QCompraITENUMERO: TIntegerField;
    QCompraITESEQ: TIntegerField;
    CDSCompraITENUMERO: TIntegerField;
    CDSCompraITESEQ: TIntegerField;
    PanPesquisa: TPanel;
    ToolBarItem: TToolBar;
    btnsair: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CDSCompraAfterClose(DataSet: TDataSet);
    procedure CDSCompraBeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure CDSCompraAfterPost(DataSet: TDataSet);
    procedure CDSCompraBeforePost(DataSet: TDataSet);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnsairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCompraBaixar: TFCompraBaixar;

implementation

uses UDM;

{$R *.dfm}


procedure TFCompraBaixar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     action := cafree;
end;       

procedure TFCompraBaixar.CDSCompraAfterClose(DataSet: TDataSet);
begin
     qcompra.close;
end;

procedure TFCompraBaixar.CDSCompraBeforeOpen(DataSet: TDataSet);
begin
     qcompra.open;
end;

procedure TFCompraBaixar.FormShow(Sender: TObject);
begin
     cdscompra.open;
end;

procedure TFCompraBaixar.CDSCompraAfterPost(DataSet: TDataSet);
begin
     cdscompra.ApplyUpdates(0);
end;

procedure TFCompraBaixar.CDSCompraBeforePost(DataSet: TDataSet);
begin
     CDSCompraITEPESOTOTAL.asfloat := CDSCompraITEPESOINI.asfloat - CDSCompraITEPESOFIN.asfloat;
end;

procedure TFCompraBaixar.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = 27 then
          btnsair.click;
end;

procedure TFCompraBaixar.btnsairClick(Sender: TObject);
begin
     if CDSCompra.state = dsedit then
          CDSCompra.post;
     CDSCompra.applyupdates(0);
     cdscompra.close;

     //fazer o esquema de atualizar caixa.

     close;
end;

end.
