unit ufrmCadManifestoAlteraSituacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModeloMDIChild, StdCtrls, ExtCtrls, DBCtrls, DB,
  DataSourceUrb, DBClient, ClientDataSetUrb, Provider, Buttons;

type
  TfrmCadManifestoAlteraSituacao = class(TfrmModeloMDIChild)
    dspSituacaoOrigem: TDataSetProvider;
    cdsSituacaoOrigem: TClientDataSetUrb;
    cdsSituacaoOrigemID_Situacao: TIntegerField;
    cdsSituacaoOrigemDescricao: TStringField;
    dtsSituacaoOrigem: TDataSourceUrb;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadManifestoAlteraSituacao: TfrmCadManifestoAlteraSituacao;

implementation

uses ufrmCadManifesto;

{$R *.dfm}

procedure TfrmCadManifestoAlteraSituacao.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

end.


1, 'Todos'
2, 'Em aberto'
3, 'Efetivado'
4, 'Impresso e enviado'
5, 'Pendente'
6, 'Pendente - Cobrar receptor'




