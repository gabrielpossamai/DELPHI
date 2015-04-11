unit ufrmRelatoriosMensais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModeloRelatWizard, RpDefine, RpCon, RpConDS, DB,
  DataSourceUrb, DBClient, ClientDataSetUrb, Provider, DBCtrls, ExtCtrls,
  Mask, StdCtrls, ComCtrls, Buttons;

type
  TfrmRelatoriosMensais = class(TfrmModeloRelatWizard)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatoriosMensais: TfrmRelatoriosMensais;

implementation

{$R *.dfm}

end.
