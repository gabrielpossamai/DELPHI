unit ufrmPrincipal;

interface

uses
  Windows,
  SysUtils,
  Classes,
  Graphics,
  Forms,
  Controls,
  Menus,
  StdCtrls,
  Dialogs,
  Buttons,
  Messages,
  ExtCtrls,
  ComCtrls,
  StdActns,
  ActnList,
  ToolWin,
  ImgList,
  DB,
  DBTables,
  DataBaseUrb,
  SqlExpr,
  DBClient,
  MConnect,
  SConnect,
  RpDefine,
  RpRave,
  RpBase,
  RpSystem,
  RpRenderText,
  RpRenderRTF,
  RpRenderHTML,
  RpRender,
  RpRenderPDF,
  RpRenderCanvas,
  FMTBcd,
  WideStrings, DBXDynalink, DBXMySql;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// CRIAR UMA CONDIÇÃO "IF", PARA DEFINIR QUAL UNIT DE PROJETO SERÁ USADA.     //
// CONSIDERANDO A VARIÁVEL DO SISTEMA                                         //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

type
  TfrmPrincipal = class(TForm)
    mmuPrincipal: TMainMenu;
    mmuArquivo: TMenuItem;
    FileNewItem: TMenuItem;
    FileOpenItem: TMenuItem;
    FileCloseItem: TMenuItem;
    mmuJanela: TMenuItem;
    mmuAjuda: TMenuItem;
    N1: TMenuItem;
    FileExitItem: TMenuItem;
    WindowCascadeItem: TMenuItem;
    WindowTileItem: TMenuItem;
    WindowArrangeItem: TMenuItem;
    HelpAboutItem: TMenuItem;
    FileSaveItem: TMenuItem;
    FileSaveAsItem: TMenuItem;
    mmuEditar: TMenuItem;
    CutItem: TMenuItem;
    CopyItem: TMenuItem;
    PasteItem: TMenuItem;
    WindowMinimizeItem: TMenuItem;
    StatusBar: TStatusBar;
    actPrincipal: TActionList;
    EditarRecortar: TEditCut;
    EditarCopiar: TEditCopy;
    EditarColar: TEditPaste;
    ArquivoSalvar: TAction;
    ArquivoSair: TAction;
    ArquivoAbrir: TAction;
    ArquivoSalvarComo: TAction;
    JanelaCascata: TWindowCascade;
    JanelaHorizontal: TWindowTileHorizontal;
    JanelaArrumaTodas: TWindowArrange;
    JanelaMinimizaTodas: TWindowMinimizeAll;
    AjudaSobre: TAction;
    ArquivoFechar: TWindowClose;
    JanelaVertical: TWindowTileVertical;
    WindowTileItem2: TMenuItem;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    mmuExibir: TMenuItem;
    mmuFerramentas: TMenuItem;
    BarradeFerramentas1: TMenuItem;
    BarradeStatus1: TMenuItem;
    VisualizadordeRelatrios1: TMenuItem;
    Auditoria1: TMenuItem;
    ManutenodeUsurios1: TMenuItem;
    N3: TMenuItem;
    Opes1: TMenuItem;
    SairdoSistema1: TMenuItem;
    rocardeUsurio1: TMenuItem;
    N4: TMenuItem;
    ConfigurarImpressora1: TMenuItem;
    ImprimirTela1: TMenuItem;
    Opcoes: TAction;
    ToolButton2: TToolButton;
    ToolButton9: TToolButton;
    imlPrincipal: TImageList;
    dcom: TDCOMConnection;
    SharedConnection: TSharedConnection;
    rvpGestao_Empresarial: TRvProject;
    rvsFerpan: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    RvRenderHTML1: TRvRenderHTML;
    RvRenderRTF1: TRvRenderRTF;
    RvRenderText1: TRvRenderText;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    sqlDataSet: TSQLDataSet;
    ConexaoBD: TSQLConnection;
    procedure ArquivoAbrirExecute(Sender: TObject);
    procedure AjudaSobreExecute(Sender: TObject);
    procedure ArquivoSairExecute(Sender: TObject);
    procedure OpcoesExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TotalizaManifestos;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses
  ufrmSobre,
  ufrmAbrirNew,
  ufrmEfetivaEnvioManifesto,
  ufrmSobreFerpan,
  ufrmFerramentasOpcoes;

procedure TfrmPrincipal.ArquivoAbrirExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmAbrirNew, frmAbrirNew);
end;

procedure TfrmPrincipal.AjudaSobreExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmSobreFerpan, frmSobreFerpan);
end;

procedure TfrmPrincipal.ArquivoSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.OpcoesExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmFerramentasOpcoes,frmFerramentasOpcoes);
end;


procedure TfrmPrincipal.TotalizaManifestos;
var
 fTotManif:             Double;
 fTotManifPend:         Double;
 fTotManifPendCobRecep: Double;
begin
 self.Color := $00E3E3E3;
 self.Color := clLtGray;

{
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // TOTAL DE MANIFESTOS                                                      //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  frmPrincipal.sqlComandos.CommandText := 'SELECT COUNT(m.Numero) AS TotalManifesto FROM manifesto m';

  sqlComandos.Active := False;
  sqlComandos.Active := True;

  fTotManif := sqlComandos.FieldByName('TotalManifesto').AsFloat;

  sqlComandos.Active := False;

  frmPrincipal.StatusBar.Panels[1].Text := 'Total de Manifesto: ' + FormatFloat('###.###.###', fTotManif);
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // TOTAL DE MANIFESTOS PENDENTES                                            //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  frmPrincipal.sqlComandos.CommandText := 'SELECT COUNT(m.Numero) AS TotalManifesto FROM manifesto m WHERE m.ID_Situacao = 5';

  sqlComandos.Active := False;
  sqlComandos.Active := True;

  fTotManifPend := sqlComandos.FieldByName('TotalManifesto').AsFloat;

  sqlComandos.Active := False;

  frmPrincipal.StatusBar.Panels[2].Text := 'Pendentes: ' + FormatFloat('###.###.###', fTotManifPend);
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // TOTAL DE MANIFESTOS PENDENTES - COBRAR RECEPTOR                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  frmPrincipal.sqlComandos.CommandText := 'SELECT COUNT(m.Numero) AS TotalManifesto FROM manifesto m WHERE m.ID_Situacao = 6';

  sqlComandos.Active := False;
  sqlComandos.Active := True;

  fTotManifPendCobRecep := sqlComandos.FieldByName('TotalManifesto').AsFloat;

  sqlComandos.Active := False;

  frmPrincipal.StatusBar.Panels[3].Text := 'Pendentes Cobrar Receptor: ' + FormatFloat('###.###.###', fTotManifPendCobRecep);
  }
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
////  Self.TotalizaManifestos;
end;

end.
