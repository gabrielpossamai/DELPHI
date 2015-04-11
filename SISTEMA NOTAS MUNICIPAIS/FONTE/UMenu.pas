unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSDBMemo, Buttons, DBGrids, shellapi, Grids, XPMenu,
  comobj, RXCtrls, RxCalc, ImgList, jpeg, AppEvent, dbclient, Provider,
  RLReport, RLRichText, FMTBcd, SqlExpr, dateutils, WSMaskEdit;

  procedure limpa_edits(Form : TForm);
  procedure setCaption(Form : TForm);
  procedure novo_padrao(DataSource : TDataSource; Tabela : String);
  procedure Editar(Form : TForm; chaves : boolean);
  procedure navegar(Form : TForm);
  procedure exportar(tabela, tabelaitem : TDataSource);
  procedure importar(DataSource : TDataSource; Tabela : String);
  procedure html(titulo : string; dbgrid : TDBGrid; DataSource : TDataSource);
  procedure excel(titulo : string; dbgrid : TDbgrid);
  procedure usuario(objeto : String; Programa : Integer);
  procedure integridade(campo, tabela, valor : string);
  procedure mostrarimpressao(tela : tform; mostrar : boolean);
  procedure deleta_caixa(cod : integer);
  procedure execsql(sql : string);
  procedure Rastreabilidade(acao : string; DataSetProv : TdataSetProvider);

  function executasqlretorno (textosql : string) : string;
  function sqltotal (textosql : string) : double;
  function extenso (valor: real): string;
  function BuscaTroca(Text,Busca,Troca : string) : string;
  function atucaixa(cod : integer; data : tdate; historico : string; entrada, saida : double) : integer;
  function atucontacliente(cod : integer; data : tdate; cliente : integer; valor : double; historico : string) : integer;
  function valor_parametro(cod : integer) : string;
  function RemoveAcento(Str:String): String;
  function MAX(Campo, tabela : String) : integer;
  function tbKeyIsDown(const Key: integer): boolean;
  function Arredonda(Valor : Real ; Decimais : Byte) : double;

type
  TFMenu = class(TForm)
    MenuHotel: TMainMenu;
    Cadastros1: TMenuItem;
    Grupos1: TMenuItem;
    Configuracoes: TMenuItem;
    Programas1: TMenuItem;
    Clientes1: TMenuItem;
    Usuarios1: TMenuItem;
    Movimentaes1: TMenuItem;
    W31: TMenuItem;
    Pginanaweb1: TMenuItem;
    ContatoW31: TMenuItem;
    RxCalculator: TRxCalculator;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    SObre1: TMenuItem;
    N1: TMenuItem;
    outros1: TMenuItem;
    Calendrio1: TMenuItem;
    Calculadora1: TMenuItem;
    CadastrodeEmpresas1: TMenuItem;
    AppEvents: TAppEvents;
    PrinterSetupDialog: TPrinterSetupDialog;
    Impressoras1: TMenuItem;
    Produtos1: TMenuItem;
    Sair1: TMenuItem;
    Sair2: TMenuItem;
    Reservar1: TMenuItem;
    Vendas1: TMenuItem;
    Cidades1: TMenuItem;
    MenuPrefeitura: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem22: TMenuItem;
    Programas2: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    W32: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem38: TMenuItem;
    MenuMedicos: TMainMenu;
    MenuItem39: TMenuItem;
    MenuItem42: TMenuItem;
    MenuItem43: TMenuItem;
    MenuItem44: TMenuItem;
    MenuItem45: TMenuItem;
    MenuItem47: TMenuItem;
    MenuItem48: TMenuItem;
    MenuItem50: TMenuItem;
    MenuItem51: TMenuItem;
    MenuItem52: TMenuItem;
    MenuItem53: TMenuItem;
    MenuItem55: TMenuItem;
    MenuItem57: TMenuItem;
    MenuItem60: TMenuItem;
    Programas3: TMenuItem;
    MenuItem62: TMenuItem;
    MenuItem63: TMenuItem;
    MenuItem64: TMenuItem;
    MenuItem65: TMenuItem;
    MenuItem66: TMenuItem;
    MenuItem67: TMenuItem;
    MenuItem68: TMenuItem;
    MenuItem69: TMenuItem;
    MenuItem70: TMenuItem;
    MenuItem71: TMenuItem;
    W33: TMenuItem;
    MenuItem73: TMenuItem;
    MenuItem74: TMenuItem;
    MenuItem75: TMenuItem;
    MenuItem76: TMenuItem;
    MenuContRec: TMainMenu;
    MenuItem4: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem23: TMenuItem;
    Programas4: TMenuItem;
    MenuItem40: TMenuItem;
    MenuItem41: TMenuItem;
    MenuItem46: TMenuItem;
    MenuItem49: TMenuItem;
    MenuItem54: TMenuItem;
    MenuItem56: TMenuItem;
    MenuItem58: TMenuItem;
    MenuItem59: TMenuItem;
    MenuItem61: TMenuItem;
    MenuItem72: TMenuItem;
    W34: TMenuItem;
    MenuItem78: TMenuItem;
    MenuItem79: TMenuItem;
    MenuItem80: TMenuItem;
    MenuItem81: TMenuItem;
    MenuFerroVelho: TMainMenu;
    MenuItem34: TMenuItem;
    MenuItem77: TMenuItem;
    MenuItem82: TMenuItem;
    MenuItem83: TMenuItem;
    MenuItem84: TMenuItem;
    MenuItem85: TMenuItem;
    MenuItem87: TMenuItem;
    MenuItem88: TMenuItem;
    Programas5: TMenuItem;
    MenuItem90: TMenuItem;
    MenuItem91: TMenuItem;
    MenuItem92: TMenuItem;
    MenuItem93: TMenuItem;
    MenuItem94: TMenuItem;
    MenuItem95: TMenuItem;
    MenuItem96: TMenuItem;
    MenuItem97: TMenuItem;
    MenuItem98: TMenuItem;
    MenuItem99: TMenuItem;
    W35: TMenuItem;
    MenuItem101: TMenuItem;
    MenuItem102: TMenuItem;
    MenuItem103: TMenuItem;
    MenuItem104: TMenuItem;
    Profisses1: TMenuItem;
    Compras: TMenuItem;
    CAixa1: TMenuItem;
    ContaCorrentedoCliente1: TMenuItem;
    GruposdoCaixa1: TMenuItem;
    Parmetros1: TMenuItem;
    MenuRodosul: TMainMenu;
    MenuItem86: TMenuItem;
    MenuItem89: TMenuItem;
    MenuItem109: TMenuItem;
    MenuItem114: TMenuItem;
    Programas6: TMenuItem;
    MenuItem116: TMenuItem;
    MenuItem117: TMenuItem;
    MenuItem118: TMenuItem;
    MenuItem119: TMenuItem;
    MenuItem120: TMenuItem;
    MenuItem121: TMenuItem;
    MenuItem122: TMenuItem;
    MenuItem123: TMenuItem;
    MenuItem124: TMenuItem;
    MenuItem125: TMenuItem;
    MenuItem126: TMenuItem;
    W36: TMenuItem;
    MenuItem128: TMenuItem;
    MenuItem129: TMenuItem;
    MenuItem130: TMenuItem;
    MenuItem131: TMenuItem;
    Pesagens1: TMenuItem;
    Modelos1: TMenuItem;
    Categorias1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    img: TImage;
    MenuFactory: TMainMenu;
    MenuItem100: TMenuItem;
    MenuItem107: TMenuItem;
    MenuItem108: TMenuItem;
    MenuItem110: TMenuItem;
    MenuItem111: TMenuItem;
    Programas7: TMenuItem;
    MenuItem113: TMenuItem;
    MenuItem115: TMenuItem;
    MenuItem127: TMenuItem;
    MenuItem132: TMenuItem;
    MenuItem133: TMenuItem;
    MenuItem134: TMenuItem;
    MenuItem135: TMenuItem;
    MenuItem136: TMenuItem;
    MenuItem137: TMenuItem;
    MenuItem138: TMenuItem;
    MenuItem139: TMenuItem;
    W37: TMenuItem;
    MenuItem141: TMenuItem;
    MenuItem142: TMenuItem;
    MenuItem143: TMenuItem;
    MenuItem144: TMenuItem;
    GrupoFinanceiro1: TMenuItem;
    Clientes2: TMenuItem;
    Contas1: TMenuItem;
    Cidades2: TMenuItem;
    Profisso1: TMenuItem;
    GrupodeClientes1: TMenuItem;
    Empresas1: TMenuItem;
    LanamentodeDocumentos1: TMenuItem;
    DocumentoscomProblemas1: TMenuItem;
    ContasaPagar1: TMenuItem;
    MenuApae: TMainMenu;
    MenuItem105: TMenuItem;
    MenuItem106: TMenuItem;
    MenuItem112: TMenuItem;
    MenuItem140: TMenuItem;
    MenuItem147: TMenuItem;
    MenuItem150: TMenuItem;
    MenuItem155: TMenuItem;
    MenuItem156: TMenuItem;
    MenuItem157: TMenuItem;
    MenuItem158: TMenuItem;
    MenuItem159: TMenuItem;
    MenuItem160: TMenuItem;
    MenuItem161: TMenuItem;
    MenuItem162: TMenuItem;
    MenuItem163: TMenuItem;
    MenuItem164: TMenuItem;
    MenuItem165: TMenuItem;
    MenuItem166: TMenuItem;
    MenuItem167: TMenuItem;
    MenuItem168: TMenuItem;
    MenuItem169: TMenuItem;
    MenuItem170: TMenuItem;
    MenuItem171: TMenuItem;
    MenuItem172: TMenuItem;
    GerarBoletos1: TMenuItem;
    ContasaReceber1: TMenuItem;
    MenuEstoque: TMainMenu;
    MenuItem145: TMenuItem;
    MenuItem146: TMenuItem;
    MenuItem148: TMenuItem;
    MenuItem149: TMenuItem;
    MenuItem151: TMenuItem;
    MenuItem152: TMenuItem;
    MenuItem153: TMenuItem;
    MenuItem154: TMenuItem;
    MenuItem173: TMenuItem;
    Programas8: TMenuItem;
    MenuItem175: TMenuItem;
    MenuItem176: TMenuItem;
    MenuItem177: TMenuItem;
    MenuItem178: TMenuItem;
    MenuItem179: TMenuItem;
    MenuItem180: TMenuItem;
    MenuItem181: TMenuItem;
    MenuItem182: TMenuItem;
    MenuItem183: TMenuItem;
    MenuItem184: TMenuItem;
    MenuItem185: TMenuItem;
    W38: TMenuItem;
    MenuItem187: TMenuItem;
    MenuItem188: TMenuItem;
    MenuItem189: TMenuItem;
    MenuItem190: TMenuItem;
    Profisses2: TMenuItem;
    MargensdeLucro1: TMenuItem;
    Alquotas1: TMenuItem;
    CFOP1: TMenuItem;
    CondiesdePagamentos1: TMenuItem;
    Observaes1: TMenuItem;
    GrupodeProdutos: TMenuItem;
    abeladeAlquotadoICMS1: TMenuItem;
    ContasaPagar2: TMenuItem;
    NotasFiscais1: TMenuItem;
    HistricodoCliente1: TMenuItem;
    OutrasEntradasSadas1: TMenuItem;
    RlReportAniver: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBImage1: TRLDBImage;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand2: TRLBand;
    RLDBImage2: TRLDBImage;
    RLDBRichText1: TRLDBRichText;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    QAniver: TSQLQuery;
    CDSAniver: TClientDataSet;
    DSAniver: TDataSource;
    DSPAniver: TDataSetProvider;
    QAniverCLICOD: TIntegerField;
    QAniverCLINOME: TStringField;
    QAniverDIA: TSmallintField;
    QAniverMES: TStringField;
    CDSAniverCLICOD: TIntegerField;
    CDSAniverCLINOME: TStringField;
    CDSAniverDIA: TSmallintField;
    CDSAniverMES: TStringField;
    RLDBText10: TRLDBText;
    QAniverANO: TSmallintField;
    CDSAniverANO: TSmallintField;
    RLDBText11: TRLDBText;
    Relatrios1: TMenuItem;
    Produtos3: TMenuItem;
    MenuGestao: TMainMenu;
    MenuItem191: TMenuItem;
    MenuItem192: TMenuItem;
    MenuItem193: TMenuItem;
    MenuItem194: TMenuItem;
    MenuItem195: TMenuItem;
    MenuItem196: TMenuItem;
    MenuItem197: TMenuItem;
    MenuItem198: TMenuItem;
    MenuItem199: TMenuItem;
    MenuItem200: TMenuItem;
    MenuItem201: TMenuItem;
    MenuItem202: TMenuItem;
    MenuItem203: TMenuItem;
    MenuItem204: TMenuItem;
    MenuItem205: TMenuItem;
    MenuItem206: TMenuItem;
    MenuItem207: TMenuItem;
    MenuItem208: TMenuItem;
    MenuItem209: TMenuItem;
    MenuItem210: TMenuItem;
    MenuItem211: TMenuItem;
    MenuItem212: TMenuItem;
    MenuItem213: TMenuItem;
    MenuItem214: TMenuItem;
    MenuItem215: TMenuItem;
    MenuItem216: TMenuItem;
    MenuItem217: TMenuItem;
    MenuItem218: TMenuItem;
    MenuItem219: TMenuItem;
    Programas9: TMenuItem;
    MenuItem221: TMenuItem;
    MenuItem222: TMenuItem;
    MenuItem223: TMenuItem;
    MenuItem224: TMenuItem;
    MenuItem225: TMenuItem;
    MenuItem226: TMenuItem;
    MenuItem227: TMenuItem;
    MenuItem228: TMenuItem;
    MenuItem229: TMenuItem;
    MenuItem230: TMenuItem;
    MenuItem231: TMenuItem;
    W39: TMenuItem;
    MenuItem233: TMenuItem;
    MenuItem234: TMenuItem;
    MenuItem235: TMenuItem;
    MenuItem236: TMenuItem;
    Produtos2: TMenuItem;
    RelatriodeVendas1: TMenuItem;
    RelatriodeVendas2: TMenuItem;
    FLuxodeCaixa1: TMenuItem;
    Produtos4: TMenuItem;
    ContasaPagar3: TMenuItem;
    CondiesdePagamento1: TMenuItem;
    Servios1: TMenuItem;
    OrdensdeServio1: TMenuItem;
    ExecutarComando1: TMenuItem;
    MenuImobiliaria: TMainMenu;
    MenuItem10: TMenuItem;
    MenuItem174: TMenuItem;
    MenuItem186: TMenuItem;
    MenuItem232: TMenuItem;
    MenuItem243: TMenuItem;
    MenuItem247: TMenuItem;
    MenuItem248: TMenuItem;
    MenuItem249: TMenuItem;
    MenuItem250: TMenuItem;
    MenuItem262: TMenuItem;
    Programas10: TMenuItem;
    MenuItem264: TMenuItem;
    MenuItem265: TMenuItem;
    MenuItem266: TMenuItem;
    MenuItem267: TMenuItem;
    MenuItem268: TMenuItem;
    MenuItem269: TMenuItem;
    MenuItem270: TMenuItem;
    MenuItem271: TMenuItem;
    MenuItem272: TMenuItem;
    MenuItem273: TMenuItem;
    MenuItem274: TMenuItem;
    MenuItem275: TMenuItem;
    W310: TMenuItem;
    MenuItem277: TMenuItem;
    MenuItem278: TMenuItem;
    MenuItem279: TMenuItem;
    MenuItem280: TMenuItem;
    IMveis1: TMenuItem;
    Contratos1: TMenuItem;
    CompraeVenda1: TMenuItem;
    PessoaseEmpresasSimples1: TMenuItem;
    MenuUniversidade: TMainMenu;
    MenuItem11: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem237: TMenuItem;
    MenuItem246: TMenuItem;
    Programas11: TMenuItem;
    MenuItem252: TMenuItem;
    MenuItem253: TMenuItem;
    MenuItem254: TMenuItem;
    MenuItem255: TMenuItem;
    MenuItem256: TMenuItem;
    MenuItem257: TMenuItem;
    MenuItem258: TMenuItem;
    MenuItem259: TMenuItem;
    MenuItem260: TMenuItem;
    MenuItem261: TMenuItem;
    MenuItem263: TMenuItem;
    MenuItem276: TMenuItem;
    W311: TMenuItem;
    MenuItem282: TMenuItem;
    MenuItem283: TMenuItem;
    MenuItem284: TMenuItem;
    MenuItem285: TMenuItem;
    Cursos1: TMenuItem;
    Universidades1: TMenuItem;
    Nveis1: TMenuItem;
    Diretorias1: TMenuItem;
    Estudantes1: TMenuItem;
    MenuCenso: TMainMenu;
    MenuItem19: TMenuItem;
    MenuItem244: TMenuItem;
    MenuItem288: TMenuItem;
    MenuItem289: TMenuItem;
    MenuItem290: TMenuItem;
    MenuItem291: TMenuItem;
    MenuItem292: TMenuItem;
    MenuItem293: TMenuItem;
    MenuItem294: TMenuItem;
    MenuItem295: TMenuItem;
    MenuItem296: TMenuItem;
    W312: TMenuItem;
    MenuItem298: TMenuItem;
    MenuItem299: TMenuItem;
    MenuItem300: TMenuItem;
    MenuItem301: TMenuItem;
    N2: TMenuItem;
    DiasViajados1: TMenuItem;
    Caixa2: TMenuItem;
    MonthCalendar1: TMonthCalendar;
    procedure Grupos1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Programas1Click(Sender: TObject);
    procedure Profisses1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Convenios1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
    procedure Agenda1Click(Sender: TObject);
    procedure W31Click(Sender: TObject);
    procedure ContatoW31Click(Sender: TObject);
    procedure Pginanaweb1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure CadastrodeEmpresas1Click(Sender: TObject);
    procedure Calendrio1Click(Sender: TObject);
    procedure Impressoras1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure Reservar1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure SObre1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Exames1Click(Sender: TObject);
    procedure ProcedimentosAMB1Click(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure HistricodoCliente1Click(Sender: TObject);
    procedure Bairros1Click(Sender: TObject);
    procedure EscritriosContbeis1Click(Sender: TObject);
    procedure Atividades1Click(Sender: TObject);
    procedure Estabelecimentos1Click(Sender: TObject);
    procedure ColadeSapateiro1Click(Sender: TObject);
    procedure GruposdoCaixa1Click(Sender: TObject);
    procedure CAixa1Click(Sender: TObject);
    procedure ContaCorrentedoCliente1Click(Sender: TObject);
    procedure ComprasClick(Sender: TObject);
    procedure Parmetros1Click(Sender: TObject);
    procedure MenuItem89Click(Sender: TObject);
    procedure Modelos1Click(Sender: TObject);
    procedure Excessos1Click(Sender: TObject);
    procedure Notificaes1Click(Sender: TObject);
    procedure Pesagens1Click(Sender: TObject);
    procedure Categorias1Click(Sender: TObject);
    procedure GrupoFinanceiro1Click(Sender: TObject);
    procedure Contas1Click(Sender: TObject);
    procedure Empresas1Click(Sender: TObject);
    procedure LanamentodeDocumentos1Click(Sender: TObject);
    procedure DocumentoscomProblemas1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure GerarBoletos1Click(Sender: TObject);
    procedure MargensdeLucro1Click(Sender: TObject);
    procedure Alquotas1Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure CondiesdePagamentos1Click(Sender: TObject);
    procedure Depsitos1Click(Sender: TObject);
    procedure ipodeCobranas1Click(Sender: TObject);
    procedure Observaes1Click(Sender: TObject);
    procedure GrupodeProdutosClick(Sender: TObject);
    procedure abeladeAlquotadoICMS1Click(Sender: TObject);
    procedure MenuItem153Click(Sender: TObject);
    procedure OutrasEntradasSadas1Click(Sender: TObject);
    procedure Produtos3Click(Sender: TObject);
    procedure Veculos1Click(Sender: TObject);
    procedure ControledeCheques1Click(Sender: TObject);
    procedure NotasFiscais1Click(Sender: TObject);
    procedure RelatriodeVendas1Click(Sender: TObject);
    procedure FLuxodeCaixa1Click(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure OrdensdeServio1Click(Sender: TObject);
    procedure ExecutarComando1Click(Sender: TObject);
    procedure IMveis1Click(Sender: TObject);
    procedure CompraeVenda1Click(Sender: TObject);
    procedure Contratos1Click(Sender: TObject);
    procedure PessoaseEmpresasSimples1Click(Sender: TObject);
    procedure Cursos1Click(Sender: TObject);
    procedure Universidades1Click(Sender: TObject);
    procedure Nveis1Click(Sender: TObject);
    procedure Diretorias1Click(Sender: TObject);
    procedure Estudantes1Click(Sender: TObject);
    procedure MenuItem244Click(Sender: TObject);
    procedure DiasViajados1Click(Sender: TObject);
  private
    { Private declarations }
    procedure menus;
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation

uses UDM, UGrupo, USenha, UPrograma, UProfissao, UCidade, UConvenio,
  UCliente, UUsuario, UAgenda,  URechCenter, UEmpresa, UCalendario, UProduto,
  UReserva, UVenda, Uabout, UExame, UAMB, UBanco, UHistCliente,
  UBairro, UEscritorioContabil, UAtividade, UEstabelecimento,
  UColaSapateiro, UGrupoCaixa, UCaixa, UContaCliente, UCompra, UParametro,
  UMarca, UModelo, UExcesso, UNotificacao, UPesagem, UCategoria, UGrupoFin,
  UConta, UParamEmp, UFactoryDocto, UFactoryDoctoProb,
  UContPag, UGeraBoleto, UMargem, UAliquota, UCfop, UPlanoPgto, UDeposito,
  UTipoCob, UObservacoes, UGrupoProd, UAliquotaICMS, UContRecApae,
  UNotaEnt, UContRec, UOutraSaida, UFProduto, UVeiculo, UCheque, UNotaFisc,
  UVendaRel, UFVenda, UFFluxoCaixa, UServico, UOrdemServico, UExecSQL,
  UImovel, UCompraVenda, UContrato, UClienteSimples, UCurso, UUniversidade,
  UNivel, UDiretoria, UEstudante, UFamilia, UDiasViajados;

{$R *.dfm}

procedure limpa_edits(Form : TForm);
var
     i : integer;
     botao : TtoolButton;
     ds : tdatasource;
     pesquisa : Variant;
begin
     for i := 0 to Form.ComponentCount -1 do
     begin
        if (Form.Components[i] is TWSEdit) then
           TWSedit(Form.Components[i]).clear;
        if (Form.Components[i] is TEdit) then
           Tedit(Form.Components[i]).clear;
        {if (Form.Components[i] is TMaskEdit) then
           TMaskEdit(Form.Components[i]).text := '01/01/1999';
        if (Form.Components[i] is TWSMaskEdit) then
           TWSMaskEdit(Form.Components[i]).text := '01/01/1999';}
     end;
     ds := form.FindComponent('DataSource') as TDataSource;

     if ds <> nil then
     begin
          pesquisa := ds.DataSet.Fields[0].value;
          botao := form.FindComponent('BtnFiltro') as TtoolButton;
          if botao <> nil then
               botao.click;
          ds.DataSet.Locate(ds.DataSet.Fields[0].FieldName ,pesquisa, [loPartialKey, loCaseInsensitive]);
     end;
end;

procedure setCaption(form : tform);
begin
     Form.Caption := dm.CDSRechCenterRECNOME.asstring;
end;

function sqltotal (textosql : string) : double;
begin
     dm.QExiste.close;
     dm.QExiste.sql.text := textosql;
     dm.QExiste.open;
     result := dm.qexiste.fields[0].asfloat;
     dm.QExiste.close;
end;

procedure Rastreabilidade(acao : String; DataSetProv : TdataSetProvider);
Var
     cds : TClientDataSet;
     i : byte;
     campos : string;
begin
     cds := dm.findcomponent('CDS' + copy(DataSetProv.Name,4,length(DataSetProv.Name))) as tclientdataset;
     campos := executasqlretorno('SELECT MAX(RASCOD) FROM TRASTREABILIDADE');
     if campos = '' then campos := '0';
     campos := inttostr(strtoint(campos) + 1);
     dm.qexiste.close;
     with dm.qexiste.sql do
     begin
          clear;
          add('insert into trastreabilidade (rascod, rasdata, rashora, rasusuario, rasacao, rastabela, raschave) values (');
          add(campos + ', :data, :hora, ' + quotedstr(fsenha.txtusuario.text) + ',');
          add(quotedstr(acao) + ',');
          add(quotedstr(cds.name) + ',');

          campos := '';
          for i := 0 to cds.fields.count - 1 do
          begin
               campos := campos + cds.fields[i].fieldname + '=' + cds.fields[i].displaytext + ',';
          end;
          add(quotedstr(copy(campos, 1, 100)));
          add(');');
     end;
     dm.qexiste.parambyname('DATA').asdate := date;
     dm.qexiste.parambyname('HORA').astime := now;
     dm.qexiste.execsql;
     dm.qexiste.close;
end;

function Arredonda(Valor : Real ; Decimais : Byte) : double;
var
  i : Byte;
  ML : string;
  RR : string;
begin
  ML := '0.';
  for i := 1 To Decimais do
  begin
      ML := ML + '0';
  end;
  RR := FormatFloat(ML,Valor);
  Result := StrToFloat (RR);
end;

function executasqlretorno (textosql : string) : string;
begin
     dm.QExiste.close;
     dm.QExiste.sql.text := textosql;
     dm.QExiste.open;
     result := dm.qexiste.fields[0].asstring;
     dm.QExiste.close;
end;

function extenso (valor: real): string;
var
Centavos, Centena, Milhar, Texto, msg: string;
const
Unidades: array[1..9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco',
'Seis', 'Sete', 'Oito', 'Nove');
Dez: array[1..9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze',
'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');
Dezenas: array[1..9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta',
'Cinquenta', 'Sessenta', 'Setenta',
'Oitenta', 'Noventa');
Centenas: array[1..9] of string = ('Cento', 'Duzentos', 'Trezentos',
'Quatrocentos', 'Quinhentos', 'Seiscentos',
'Setecentos', 'Oitocentos', 'Novecentos');
function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;
begin
if Expressao
then Result:=CasoVerdadeiro
else Result:=CasoFalso;
end;
function MiniExtenso (trio: string): string;
var
Unidade, Dezena, Centena: string;
begin
Unidade:='';
Dezena:='';
Centena:='';
if (trio[2]='1') and (trio[3]<>'0') then
begin
Unidade:=Dez[strtoint(trio[3])];
Dezena:='';
end
else
begin
if trio[2]<>'0' then Dezena:=Dezenas[strtoint(trio[2])];
if trio[3]<>'0' then Unidade:=Unidades[strtoint(trio[3])];
end;
if (trio[1]='1') and (Unidade='') and (Dezena='')
then Centena:='cem'
else
if trio[1]<>'0'
then Centena:=Centenas[strtoint(trio[1])]
else Centena:='';
Result:= Centena + ifs((Centena<>'') and ((Dezena<>'') or (Unidade<>'')), ' e ', '')
+ Dezena + ifs((Dezena<>'') and (Unidade<>''),' e ', '') + Unidade;
end;
begin
if (valor>999999.99) or (valor<0) then
begin
msg:='O valor est· fora do intervalo permitido.';
msg:=msg+'O n˙mero deve ser maior ou igual a zero e menor que 999.999,99.';
msg:=msg+' Se n„o for corrigido o n˙mero n„o ser· escrito por extenso.';
showmessage(msg);
Result:='';
exit;
end;
if valor=0 then
begin
Result:='';
Exit;
end;
Texto:=formatfloat('000000.00',valor);
Milhar:=MiniExtenso(Copy(Texto,1,3));
Centena:=MiniExtenso(Copy(Texto,4,3));
Centavos:=MiniExtenso('0'+Copy(Texto,8,2));
Result:=Milhar;
if Milhar<>'' then
if copy(texto,4,3)='000' then
Result:=Result+' Mil Reais'
else
Result:=Result+' Mil, ';
if (((copy(texto,4,2)='00') and (Milhar<>'')
and (copy(texto,6,1)<>'0')) or (centavos=''))
and (Centena<>'') then Result:=Result+'   ';
if (Milhar+Centena <>'') then Result:=Result+Centena;
if (Milhar='') and (copy(texto,4,3)='001') then
Result:=Result+' Real'
else
if (copy(texto,4,3)<>'000') then Result:=Result+' Reais';
if Centavos='' then
begin
Result:=Result+'.';
Exit;
end
else
begin
if Milhar+Centena='' then
Result:=Centavos
else
Result:=Result+', e '+Centavos;
if (copy(texto,8,2)='01') and (Centavos<>'') then
Result:=Result+' Centavo.'
else
Result:=Result+' Centavos.';
end;
end;


function BuscaTroca(Text, Busca, Troca: String): String;
var
  n, i: integer;
begin
  i := length(Busca);
  for n := 1 to length(Text) do
    begin
      if Copy(Text, n, i) = Busca then
        begin
          Delete(Text, n, i); Insert(Troca, Text, n);
        end;
    end;
  Result:= Text;
end;

procedure execsql(sql : string);
begin
     dm.qexiste.close;
     dm.qexiste.sql.text := sql;
     dm.qexiste.execsql;
     dm.qexiste.close;
end;

procedure deleta_caixa(cod : integer);
begin
     dm.qexiste.close;
     with dm.qexiste.sql do
     begin
          clear;
          add('DELETE FROM TCAIXA WHERE CAINUMERO = ' + inttostr(cod));
     end;
     dm.qexiste.execsql;
     dm.qexiste.close;
end;

function valor_parametro(cod : integer) : string;
begin
     dm.qexiste.close;
     with dm.qexiste.sql do
     begin
          clear;
          add('SELECT PARVALOR FROM TPARAMETRO WHERE PARCOD = ' + inttostr(cod));
     end;
     dm.qexiste.open;
     result := dm.qexiste.fieldbyname('PARVALOR').asstring;
     if result = '' then
          showmessage('valor inv·lido para o par‚metro n˙mero ' + inttostr(cod));
     dm.qexiste.close;
end;

function atucontacliente(cod : integer; data : tdate; cliente : integer; valor : double; historico : string) : integer;
var
     codaux : integer;
     grupo : string;
begin
     dm.qexiste.close;
     if cod = 0 then
     begin
          with dm.qexiste.sql do
          begin
               clear;
               add('SELECT MAX(CONNUMERO) FROM TCONTACLIENTE');
          end;
          dm.qexiste.open;
          codaux := dm.qexiste.fieldbyname('MAX').asinteger + 1;
          dm.qexiste.close;
          with dm.qexiste.sql do
          begin
               clear;
               add('INSERT INTO TCONTACLIENTE (CONNUMERO, CONDATA, CONCLIENTE, CONVALOR, CONOBS, CONTIPO) VALUES (');
               add(inttostr(codaux) + ',');
               add(':DATA ,');
               add(inttostr(cliente) + ',');
               add(buscatroca(floattostr(valor),',','.') + ',');
               add(quotedstr(historico) + ', ' + quotedstr('D') + ');');
          end;
          result := codaux;
     end
     else
     begin
          with dm.qexiste.sql do
          begin
               clear;
               add('UPDATE TCONTACLIENTE SET');
               add('CONDATA = :DATA');
               add(', CONOBS = ' + quotedstr(historico));
               add(', CONVALOR = ' + buscatroca(floattostr(valor),',','.'));
               add(', CONCLIENTE = ' + inttostr(cliente));
               add('WHERE CONNUMERO = ' + inttostr(cod));
          end;
          result := cod;
     end;
     dm.qexiste.parambyname('DATA').asdate := data;
     dm.qexiste.execsql;
     dm.qexiste.close;
end;

function atucaixa(cod : integer; data : tdate; historico : string; entrada, saida : double) : integer;
var
     codaux : integer;
     grupo : string;
begin
     dm.qexiste.close;
     if cod = 0 then
     begin
          grupo := valor_parametro(1);
          with dm.qexiste.sql do
          begin
               clear;
               add('SELECT MAX(CAINUMERO) FROM TCAIXA');
          end;
          dm.qexiste.open;
          codaux := dm.qexiste.fieldbyname('MAX').asinteger + 1;
          dm.qexiste.close;
          with dm.qexiste.sql do
          begin
               clear;
               add('INSERT INTO TCAIXA (CAINUMERO, CAIDATA, CAIHISTORICO, CAIENTRADA, CAISAIDA, CAIGRUPO) VALUES (');
               add(inttostr(codaux) + ',');
               add(':DATA ,');
               add(quotedstr(historico) + ',');
               add(buscatroca(floattostr(entrada),',','.') + ',');
               add(buscatroca(floattostr(saida),',','.') + ',');
               add(grupo + ');');
          end;
          result := codaux;
     end
     else
     begin
          with dm.qexiste.sql do
          begin
               clear;
               add('UPDATE TCAIXA SET');
               add('CAIDATA = :DATA');
               add(', CAIHISTORICO = ' + quotedstr(historico));
               add(', CAIENTRADA = ' + buscatroca(floattostr(entrada),',','.'));
               add(', CAISAIDA = ' + buscatroca(floattostr(saida),',','.'));
               add('WHERE CAINUMERO = ' + inttostr(cod));
          end;
          result := cod;
     end;
     dm.qexiste.parambyname('DATA').asdate := data;
     dm.qexiste.execsql;
     dm.qexiste.close;
end;

procedure mostrarimpressao(tela : tform; mostrar : boolean);
var
     i : integer;
     pan : tpanel;
begin
     pan := tela.findcomponent('panimpressao') as tpanel;
     if mostrar then
     begin
          pan.visible := true;
          for i := 0 to 140 do
          begin
               pan.height := i;
               application.processmessages;
          end;
     end
     else
     begin
          for i := 140 downto 0 do
          begin
               pan.height := i;
               application.processmessages;
          end;
          pan.visible := false;
     end;
end;

procedure TFMenu.menus;
begin
     if uppercase(dm.cdsrechcenterrecsistema.asstring) = 'H' then  //hotel
     begin
        fmenu.Menu := menuhotel;
     end;
     if uppercase(dm.cdsrechcenterrecsistema.asstring) = 'M' then //medicos
     begin
        fmenu.Menu := menumedicos;
     end;
     if uppercase(dm.cdsrechcenterrecsistema.asstring) = 'P' then //prefeitura
     begin
        fmenu.Menu := menuprefeitura;
     end;
     if uppercase(dm.cdsrechcenterrecsistema.asstring) = 'C' then //contas a receber
     begin
        fmenu.Menu := menucontrec;
     end;
     if uppercase(dm.cdsrechcenterrecsistema.asstring) = 'R' then //rodosul
     begin
        fmenu.Menu := menurodosul;
     end;
     if uppercase(dm.cdsrechcenterrecsistema.asstring) = 'F' then //ferro velho
     begin
        fmenu.Menu := menuferrovelho;
     end;
     if uppercase(dm.cdsrechcenterrecsistema.asstring) = 'A' then //factory
     begin
        fmenu.Menu := menufactory;
     end;
     if uppercase(dm.cdsrechcenterrecsistema.asstring) = 'E' then //apae
     begin
        fmenu.Menu := menuapae;
     end;
     if uppercase(dm.cdsrechcenterrecsistema.asstring) = 'S' then //estoque
     begin
        fmenu.Menu := menuestoque;
     end;
     if uppercase(dm.cdsrechcenterrecsistema.asstring) = 'G' then //gestao
     begin
        fmenu.Menu := menugestao;
     end;
     if uppercase(dm.cdsrechcenterrecsistema.asstring) = 'I' then //imobili·ria
     begin
        fmenu.Menu := menuimobiliaria;
     end;
     if uppercase(dm.cdsrechcenterrecsistema.asstring) = 'U' then //universidade
     begin
        fmenu.Menu := MenuUniversidade;
     end;
     if uppercase(dm.cdsrechcenterrecsistema.asstring) = 'N' then //censo
     begin
        fmenu.Menu := MenuCenso;
     end;
end;

procedure integridade(campo, tabela, valor : string);
begin
      dm.qexiste.close;
      with dm.qexiste.sql do
      begin
           clear;
           add('Select '+campo+' from ' + tabela + ' where ' + campo + ' = ' + quotedstr(valor));
      end;
      dm.qexiste.open;
      if dm.qexiste.recordcount > 0 then
      begin
           raise exception.create('Impossivel excluir, violaÁ„o de integridade com a tabela ' + tabela);
      end;
      dm.qexiste.close;
end;

function RemoveAcento(Str:String): String;
Const
   ComAcento = '‡‚ÍÙ˚„ı·ÈÌÛ˙Á¸¿¬ ‘€√’¡…Õ”⁄«‹';
   SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
Var
   x : Integer;
begin
   For x := 1 to Length(Str) do
       if Pos(Str[x],ComAcento)<>0 Then
            Str[x] := SemAcento[Pos(Str[x],ComAcento)];
   Result := Str;
end;

procedure Editar(Form : TForm; chaves : boolean);
Var i : Integer;
    comp : tobject;
begin
   if (UpperCase(form.Name) = 'FNOTAENT') or (UpperCase(form.Name) = 'FNOTAFISC') then
   begin
        comp := form.FindComponent('PageControlCad');
        if comp <> nil then
             (comp as TPageControl).ActivePageIndex := 0;
   end;
   comp := form.FindComponent('TabConsulta');
   if comp <> nil then
       (comp as TTabSheet).enabled := false;
   comp := form.FindComponent('TabCadastro');
   if comp <> nil then
       (comp as TTabSheet).enabled := true;
   comp := form.FindComponent('PanPesquisa');
      if comp <> nil then
       (comp as TPanel).enabled := false;

   for i := 0 to Form.ComponentCount -1 do
   begin
      {if (Form.Components[i] is TDBEdit) then
         TDBedit(Form.Components[i]).enabled := True;

      if (Form.Components[i] is TWSDBMemo) then
         TWSDBMemo(Form.Components[i]).enabled := True;}

      if (Form.Components[i] is TWSDBEdit) then
      begin
         if not TWSDBedit(Form.Components[i]).chave then
            TWSDBedit(Form.Components[i]).enabled := true
         else
            TWSDBedit(Form.Components[i]).enabled := chaves;

         if chaves then //novo, passa false para os componentes de chaves
         begin
            if TWSDBedit(Form.Components[i]).FocoNovo then
            begin
               if (TWSDBedit(Form.Components[i]).enabled) then
               begin
                  TWSDBedit(Form.Components[i]).setfocus;
               end;
            end;
         end
         else  //if not chaves then alteraÁ„o, passa false para os componentes de chaves
         begin
            if TWSDBedit(Form.Components[i]).FocoAlterar then
            begin
               if (TWSDBedit(Form.Components[i]).enabled) then
               begin
                  TWSDBedit(Form.Components[i]).setfocus;
               end;
            end;
         end;
      end;

      {if (Form.Components[i] is TCheckBox) then
         TCheckBox(Form.Components[i]).enabled := true;

      if (Form.Components[i] is TDBlookupComboBox) then
         TDBlookupComboBox(Form.Components[i]).enabled := True;

      if (Form.Components[i] is TDBCheckBox) then
         TDBCheckBox(Form.Components[i]).enabled := True;

      if (Form.Components[i] is TEdit) then
          TEdit(Form.Components[i]).enabled := false;}

      if (Form.Components[i] is TWSEdit) then
         if comp <> nil then
         begin
            if TWSEdit(Form.Components[i]).parent = comp then
               TWSEdit(Form.Components[i]).enabled := false
            else
               TWSEdit(Form.Components[i]).enabled := true;
         end
         else
            TWSEdit(Form.Components[i]).enabled := true;

      {if (Form.Components[i] is TSpeedButton) then
         TSpeedButton(Form.Components[i]).enabled := True;}

      if (Form.Components[i] is TToolButton) then
      begin
         if TToolButton(Form.Components[i]).Name = 'btnexportar' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'btnimportar' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'btnsalvaritem' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'btnexcluiritem' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'btnnovopadrao' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'btnhtml' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'btnexcel' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'btngrid' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'btndesconectar' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'BtnPrimeiro' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'BtnAnterior' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'BtnProximo' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'BtnUltimo' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'BtnIncluir' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'BtnAlterar' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'BtnExcluir' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'BtnSair' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'BtnImprimir' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'BtnFiltro' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'BtnSalvar' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'BtnCancelar' then
            TToolButton(Form.Components[i]).Enabled := true;
      end;
   end;
end;

procedure navegar(Form : TForm);
Var I : Integer;
    comp : tobject;
begin
   setCaption(Form);
   if (UpperCase(form.Name) = 'FNOTAENT') or (UpperCase(form.Name) = 'FNOTAFISC') then
   begin
        comp := form.FindComponent('PageControlCad');
        if comp <> nil then
             (comp as TPageControl).ActivePageIndex := 0;
   end;
   comp := form.FindComponent('PanPesquisa');
      if comp <> nil then
       (comp as TPanel).enabled := true;
   for i := 0 to Form.ComponentCount -1 do
   begin
      {if (Form.Components[i] is TDBEdit) then
         TDBedit(Form.Components[i]).enabled := false;

      if (Form.Components[i] is TWSDBMemo) then
         TWSDBMemo(Form.Components[i]).enabled := false;

      if (Form.Components[i] is TWSDBEdit) then
         TWSDBedit(Form.Components[i]).enabled := false;

      if (Form.Components[i] is TDBlookupComboBox) then
         TDBlookupComboBox(Form.Components[i]).enabled := false;

      if (Form.Components[i] is TDBCheckBox) then
         TDBCheckBox(Form.Components[i]).enabled := false;

      if (Form.Components[i] is TEdit) then
         TEdit(Form.Components[i]).enabled := true;}

      if (Form.Components[i] is TWSEdit) then
         if comp <> nil then
            if TWSEdit(Form.Components[i]).parent = comp then
               TWSEdit(Form.Components[i]).enabled := true
         else
            TWSEdit(Form.Components[i]).enabled := false;

      {if (Form.Components[i] is TCheckBox) then
         TCheckBox(Form.Components[i]).enabled := false;

      if (Form.Components[i] is TSpeedButton) then
         TSpeedButton(Form.Components[i]).enabled := false;}

      if (Form.Components[i] is TToolButton) then
      begin
         if TToolButton(Form.Components[i]).Name = 'btnexportar' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'btnimportar' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'btnsalvaritem' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'btnexcluiritem' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'btnnovopadrao' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'btnhtml' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'btnexcel' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'btngrid' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'btndesconectar' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'BtnPrimeiro' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'BtnAnterior' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'BtnProximo' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'BtnUltimo' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'BtnIncluir' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'BtnAlterar' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'BtnExcluir' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'BtnSair' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'BtnImprimir' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'BtnFiltro' then
            TToolButton(Form.Components[i]).Enabled := true;
         if TToolButton(Form.Components[i]).Name = 'BtnSalvar' then
            TToolButton(Form.Components[i]).Enabled := false;
         if TToolButton(Form.Components[i]).Name = 'BtnCancelar' then
            TToolButton(Form.Components[i]).Enabled := false;
      end;
   end;
   comp := form.FindComponent('txtpesquisa');
   if comp <> nil then
   begin
       with comp as twsedit do
       begin
            SetFocus;
       end;
   end;
   comp := form.FindComponent('TabConsulta');
   if comp <> nil then
       (comp as TTabSheet).enabled := true;
   comp := form.FindComponent('TabCadastro');
   if comp <> nil then
       (comp as TTabSheet).enabled := false;
end;

procedure novo_padrao(DataSource : TDataSource; Tabela : String);
var i : integer;
begin
    dm.cdsnovo.close;
    dm.cdsnovo.fielddefs.clear;
    i := 0;
    while i <> DataSource.dataset.FieldCount do
    begin
         dm.cdsnovo.FieldDefs.Add(DataSource.dataset.Fields[i].FieldName, DataSource.dataset.Fields[i].DataType, DataSource.dataset.Fields[i].Size, false);
         inc(i);
    end;
    dm.cdsnovo.createdataset;
    dm.cdsnovo.open;

    dm.cdsnovo.append;
    i := 0;
    while i <> DataSource.dataset.FieldCount do
    begin
         dm.CDSNovo.FieldByName(DataSource.dataset.Fields[i].FieldName).value := DataSource.dataset.FieldByName(DataSource.dataset.Fields[i].FieldName).value;
         inc(i);
    end;
    dm.cdsnovo.post;

    DataSource.dataset.append;
    i := 0;
    while i <> dm.cdsnovo.FieldCount do
    begin
         try
             DataSource.dataset.FieldByName(dm.cdsnovo.Fields[i].FieldName).value := dm.cdsnovo.FieldByName(dm.cdsnovo.Fields[i].FieldName).value;
         except
         end;
         inc(i);
    end;

    dm.qchave.close;
    dm.qchave.Fields.Clear;
    dm.qchave.ParamByName('TABELA').AsString := UpperCase(Tabela);
    dm.qchave.open;
    dm.qchave.first;
    while not dm.qchave.eof do
    begin
        DataSource.dataset.FieldByName(trim(dm.qchave.Fields[0].AsString)).clear;
        dm.qchave.next;            
    end;
    dm.cdsnovo.close;
end;

procedure exportar(tabela, tabelaitem : TDataSource);
var
   i : byte;
begin
    DM.CDSNovo.close;
    DM.CDSNovo.fielddefs.clear;
    for i := 0 to tabela.DataSet.FieldCount - 1 do
    begin
        try
            //fmenu.cdstemp.FieldDefs.Add('Nome do Campo', ftinteger, 0, false);
            DM.CDSNovo.FieldDefs.Add(tabela.DataSet.Fields[i].FieldName, tabela.DataSet.Fields[i].DataType, tabela.DataSet.Fields[i].Size, false);
        except
        end;
    end;
    DM.CDSNovo.createdataset;
    DM.CDSNovo.open;

    if tabelaitem <> nil then
    begin
        DM.CDSItem.close;
        DM.CDSItem.fielddefs.clear;
        for i := 0 to tabelaitem.DataSet.FieldCount - 1 do
        begin
            try
                //fmenu.cdstemp.FieldDefs.Add('Nome do Campo', ftinteger, 0, false);
                DM.CDSItem.FieldDefs.Add(tabelaitem.DataSet.Fields[i].FieldName, tabelaitem.DataSet.Fields[i].DataType, tabelaitem.DataSet.Fields[i].Size, false);
            except
            end;
        end;
        DM.CDSItem.createdataset;
        DM.CDSItem.open;
    end;

    tabela.DataSet.first;
    while not tabela.DataSet.eof do
    begin
         DM.CDSNovo.append;
         for i := 0 to tabela.DataSet.FieldCount - 1 do
         begin
             try
                 DM.CDSNovo.FieldByName(tabela.DataSet.Fields[i].FieldName).value := removeacento(tabela.DataSet.FieldByName(tabela.DataSet.Fields[i].FieldName).value);
             except
             end;
         end;
         DM.CDSNovo.post;
         if tabelaitem <> nil then
         begin
             tabelaitem.DataSet.first;
             while not tabelaitem.DataSet.eof do
             begin
                 DM.CDSItem.append;
                 for i := 0 to tabelaitem.DataSet.FieldCount - 1 do
                 begin
                     try
                         DM.CDSItem.FieldByName(tabelaitem.DataSet.Fields[i].FieldName).value := removeacento(tabelaitem.DataSet.FieldByName(tabelaitem.DataSet.Fields[i].FieldName).value);
                     except
                     end;
                 end;
                 DM.CDSItem.post;                 
                 tabelaitem.dataset.next;
             end;
         end;
         tabela.DataSet.next;
    end;

    if dm.savedialog.execute then
       DM.CDSNovo.SaveToFile(dm.savedialog.filename);

    if tabelaitem <> nil then
       if dm.savedialog.execute then
          DM.CDSItem.SaveToFile(dm.savedialog.filename);
          
    showmessage('ExportaÁ„o ConcluÌda com Sucesso! ('+dm.savedialog.filename+')');
end;

procedure importar(DataSource : TDataSource; Tabela : String);
var
   i : byte;
begin
    dm.cdsnovo.close;
    if dm.OpenDialog.execute then
       dm.cdsnovo.LoadFromFile(dm.opendialog.filename);
    try
        dm.cdsnovo.open;
    except
        showmessage('Problemas ao carregar o arquivo!');
        exit;
    end;
    dm.cdsnovo.first;
    while not dm.cdsnovo.eof do
    begin
         DataSource.DataSet.append;
         for i := 0 to dm.cdsnovo.fields.count - 1 do
         begin
             DataSource.DataSet.fields[i].value := dm.cdsnovo.fields[i].value;
         end;
         DataSource.DataSet.post;
         (DataSource.dataset as tclientdataset).applyupdates(-1);
         dm.cdsnovo.next;
    end;
    dm.cdsnovo.close;
end;

procedure html(titulo : string; dbgrid : TDBGrid; DataSource : TDataSource);
var arq : TextFile;
    i : integer;
begin
  if dm.SaveDialogHTML.execute then
  begin
     AssignFile(Arq, dm.savedialoghtml.FileName);
     Rewrite(Arq);
     Writeln(Arq, '<html>');
     Writeln(Arq, '<head>');
     Writeln(Arq, '<title>RelatÛrio</title>');
     Writeln(Arq, '</head>');
     Writeln(Arq, '<body>');
     Writeln(Arq, '<p align="center"><font face="Courier New" size="5"><b>' + titulo + '</b></font></p>');
     Writeln(Arq, '<table border="1" >');
     Writeln(Arq, '<tr>');
     i := 0;
     while i <> dbgrid.Columns.Count do
     begin
          Writeln(Arq, '<td width="'+inttostr(dbgrid.columns[i].width)+'" bgcolor="#EFEFEF"><b><font face="Courier New" size="2">' + dbgrid.columns[i].title.caption + '</font></b></td>');
          inc(i);
     end;
     Writeln(Arq, '</tr>');

     DataSource.DataSet.First;
     while not DataSource.DataSet.eof do
     begin
          Writeln(Arq, '<tr>');
          i := 0;
          while i <> dbgrid.Columns.Count do
          begin
               Writeln(Arq, '<td width="'+inttostr(dbgrid.columns[i].width)+'"><font face="Courier New" size="2">' + DataSource.DataSet.fieldbyname(dbgrid.columns[i].fieldname).displaytext+ '</font></td>');
               inc(i);
          end;
          Writeln(Arq, '</tr>');
          DataSource.DataSet.next;
     end;
     Writeln(Arq, '</table>');
     Writeln(Arq, '<br>');
     Writeln(Arq, '<font face="Courier New" size="2">');
     Writeln(Arq, 'Data....: '+formatdatetime('dd, "de" mmmm "de" yyyy', date)+'<br>');
     Writeln(Arq, 'Usuario.: '+ fsenha.txtusuario.items.strings[fsenha.txtusuario.itemindex] +'<br>');
     Writeln(Arq, '</font>');
     Writeln(Arq, '</body>');
     Writeln(Arq, '</html>');
     CloseFile(Arq);
     {if application.messagebox ('Deseja enviar o arquivo por e-mail?', 'AtenÁ„o', mb_yesno +  MB_ICONQUESTION )= mryes  then
     begin
          try
              femail := tfemail.create(self);
              femail.txtarquivo.text := dm.savedialoghtml.FileName;
              femail.showmodal;
          finally
              femail.release;
              femail:= nil;
              femail.free;
          end;
     end
     else
     begin
          ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
     end;}
  end;
end;

procedure excel(titulo : string; dbgrid : TDbgrid);
var
    i : integer;
begin
    if Application.MessageBox('Confirma a geraÁ„o da planilha?','ConfirmaÁ„o',mb_YesNo) = mrYes then
    begin
        DbGrid.DataSource.DataSet.First;
        If DM.SaveXls.Execute then
        begin
            with DM.mxNativeExcel Do
            begin
                NewFile;
                FileName :=DM.SaveXls.filename;
                ActiveFont := 0;
                WriteLabel(Row, 1, titulo);
                WriteLabel(Row, 2,'');
                WriteLabel(Row, 3,'');
                Row := 3;
                for i := 0 to dbgrid.Columns.Count - 1 do
                begin
                    WriteLabel(Row, i + 1, DBGrid.Columns[i].Title.Caption);
                end;
                Row := Row + 1;
                DbGrid.DataSource.DataSet.first;
                While not DbGrid.DataSource.DataSet.Eof do
                begin
                    for i := 0 to dbgrid.Columns.Count - 1 do
                    begin
                        WriteLabel( Row, i + 1, DBGrid.DataSource.DataSet.Fieldbyname(DBGrid.Columns[i].FieldName).DisplayText);
                    end;
                    DbGrid.DataSource.DataSet.Next;
                    Row := Row + 1;
                end;
                CloseFile;
                SaveToFile;
                Application.MessageBox(pchar('Planilha ' + DM.SaveXls.FileName + ' gerada.'),'Aviso',mb_Ok);
                DbGrid.DataSource.DataSet.First;
            end;
        end;
    end;
end;

procedure usuario(objeto : String; Programa : Integer);
begin
     if dm.cdsusuario.Locate('USULOGIN', fsenha.txtusuario.items.strings[fsenha.txtusuario.itemindex], []) then
     begin
          if dm.CDSItemusuario.Locate('ITEUSUARIO;ITEPROGRAMA', VarArrayOf([fsenha.txtusuario.items.strings[fsenha.txtusuario.itemindex],programa]) , []) then
          begin
               if uppercase(objeto) = 'BTNINCLUIR' then
                  if uppercase(dm.CDSItemUsuarioITEINSERCAO.asstring) = 'N' then
                     raise Exception.Create('Acesso negado para o usu·rio.');
               if uppercase(objeto) = 'BTNNOVOPADRAO' then
                  if uppercase(dm.CDSItemUsuarioITEINSERCAO.asstring) = 'N' then
                     raise Exception.Create('Acesso negado para o usu·rio.');
               if uppercase(objeto) = 'BTNALTERAR' then
                  if uppercase(dm.CDSItemUsuarioITEALTERACAO.asstring) = 'N' then
                     raise Exception.Create('Acesso negado para o usu·rio.');
               if uppercase(objeto) = 'BTNEXCLUIR' then
                  if uppercase(dm.CDSItemUsuarioITEEXCLUSAO.asstring) = 'N' then
                     raise Exception.Create('Acesso negado para o usu·rio.');
               if uppercase(objeto) = 'BTNIMPRIMIR' then
                  if uppercase(dm.CDSItemUsuarioITERELATORIO.asstring) = 'N' then
                     raise Exception.Create('Acesso negado para o usu·rio.');
               if uppercase(objeto) = 'BTNHTML' then
                  if uppercase(dm.CDSItemUsuarioITERELATORIO.asstring) = 'N' then
                     raise Exception.Create('Acesso negado para o usu·rio.');
               if uppercase(objeto) = 'BTNEXCEL' then
                  if uppercase(dm.CDSItemUsuarioITERELATORIO.asstring) = 'N' then
                     raise Exception.Create('Acesso negado para o usu·rio.');
               if uppercase(objeto) = 'BTNEXPORTAR' then
                  if uppercase(dm.CDSItemUsuarioITERELATORIO.asstring) = 'N' then
                     raise Exception.Create('Acesso negado para o usu·rio.');
               if uppercase(objeto) = 'BTNIMPORTAR' then
                  if uppercase(dm.CDSItemUsuarioITERELATORIO.asstring) = 'N' then
                     raise Exception.Create('Acesso negado para o usu·rio.');
               if uppercase(objeto) = 'BTNCONSULTAR' then
                  if uppercase(dm.CDSItemUsuarioITEACESSO.asstring) = 'N' then
                     raise Exception.Create('Acesso negado para o usu·rio.');
          end;
     end;
end;

function MAX(Campo, tabela : String) : integer;
begin
     dm.qmax.close;
     with dm.qmax.sql do
     begin
          clear;
          add('SELECT MAX('+campo+') AS COD FROM ' + tabela);
     end;
     dm.qmax.open;
     result := dm.qmaxcod.asinteger + 1;
     dm.qmax.close;
end;

function tbKeyIsDown(const Key: integer): boolean;
begin
  Result := GetKeyState(Key) and 128 > 0;
end;

procedure TFMenu.Grupos1Click(Sender: TObject);
begin
     usuario('btnconsultar',3);
     try
         fgrupo := tfgrupo.create(self);
         fgrupo.showmodal;
     finally
         dm.cdscidade.close;
         fgrupo.release;
         fgrupo:= nil;
         fgrupo.free;
     end;
end;

procedure TFMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     application.Terminate;
end;

procedure TFMenu.Programas1Click(Sender: TObject);
begin
     usuario('btnconsultar',3);
     try
         fprograma := tfprograma.create(self);
         fprograma.showmodal;
     finally
         dm.cdscidade.close;
         fprograma.release;
         fprograma:= nil;
         fprograma.free;
     end;
end;

procedure TFMenu.Profisses1Click(Sender: TObject);
begin
     usuario('btnconsultar',4);
     try
         fprofissao := tfprofissao.create(self);
         fprofissao.showmodal;
     finally
         dm.cdsprofissao.close;
         fprofissao.release;
         fprofissao:= nil;
         fprofissao.free;
     end;
end;

procedure TFMenu.Cidades1Click(Sender: TObject);
begin
     usuario('btnconsultar',5);
     try
         fcidade := tfcidade.create(self);
         fcidade.showmodal;
     finally
         dm.cdscidade.close;
         fcidade.release;
         fcidade:= nil;
         fcidade.free;
     end;
end;

procedure TFMenu.Convenios1Click(Sender: TObject);
begin
     usuario('btnconsultar',6);
     try
         fconvenio := tfconvenio.create(self);
         fconvenio.showmodal;
     finally
         dm.cdsconvenio.close;
         fconvenio.release;
         fconvenio:= nil;
         fconvenio.free;
     end;
end;

procedure TFMenu.Clientes1Click(Sender: TObject);
begin
     usuario('btnconsultar',7);
     try
         fcliente := tfcliente.create(self);
         fcliente.showmodal;
     finally
         dm.cdscliente.close;
         fcliente.release;
         fcliente:= nil;
         fcliente.free;
     end;
end;

procedure TFMenu.Usuarios1Click(Sender: TObject);
begin
     usuario('btnconsultar',2);
     try
         fusuario := tfusuario.create(self);
         fusuario.showmodal;
     finally
         fusuario.release;
         fusuario:= nil;
         fusuario.free;
     end;
end;

procedure TFMenu.Agenda1Click(Sender: TObject);
begin
     usuario('btnconsultar',8);
     try
         fagenda := tfagenda.create(self);
         fagenda.showmodal;
     finally
         dm.cdsagenda.close;
         fagenda.release;
         fagenda:= nil;
         fagenda.free;
     end;
end;

procedure TFMenu.W31Click(Sender: TObject);
begin
     try
         frechcenter := tfrechcenter.create(self);
         frechcenter.showmodal;
     finally
         frechcenter.release;
         frechcenter:= nil;
         frechcenter.free;
     end;
     menus;
end;

procedure TFMenu.ContatoW31Click(Sender: TObject);
var
    Mail : String;
begin
    Mail := 'mailto:' + dm.cdsrechcenterrecemail.asstring;
    ShellExecute(GetDesktopWindow,'open',pchar(Mail),nil,nil,sw_ShowNormal);
end;

procedure TFMenu.Pginanaweb1Click(Sender: TObject);
var ie : Variant;
begin
 IE := CreateOleObject('InternetExplorer.Application');
 IE.Visible := true;
 IE.Navigate(dm.cdsrechcenterrecsite.asstring);
end;

procedure TFMenu.Calculadora1Click(Sender: TObject);
begin
     RxCalculator.execute;
end;

procedure TFMenu.CadastrodeEmpresas1Click(Sender: TObject);
begin
     usuario('btnconsultar',9);
     try
         fparamemp := tfparamemp.create(self);
         fparamemp.showmodal;
     finally
         fparamemp.release;
         fparamemp := nil;
         fparamemp.free;
     end;
end;

procedure TFMenu.Calendrio1Click(Sender: TObject);
begin
     try
         fcalendario := tfcalendario.create(self);
         fcalendario.showmodal;
     finally
         fcalendario.release;
         fcalendario := nil;
         fcalendario.free;
     end;
end;

procedure TFMenu.Impressoras1Click(Sender: TObject);
begin
     PrinterSetupDialog.execute;
end;

procedure TFMenu.Produtos1Click(Sender: TObject);
begin
     usuario('btnconsultar',10);
     try
         fproduto := tfproduto.create(self);
         fproduto.showmodal;
     finally
         dm.cdsproduto.close;
         fproduto.release;
         fproduto:= nil;
         fproduto.free;
     end;
end;

procedure TFMenu.Sair2Click(Sender: TObject);
begin
     application.terminate;
end;

procedure TFMenu.Reservar1Click(Sender: TObject);
begin
     usuario('btnconsultar',11);
     try
         freserva := tfreserva.create(self);
         freserva.showmodal;
     finally
         dm.cdsreserva.close;
         freserva.release;
         freserva:= nil;
         freserva.free;
     end;
end;

procedure TFMenu.Vendas1Click(Sender: TObject);
begin
     usuario('btnconsultar',12);
     try
         fvenda := tfvenda.create(self);
         fvenda.showmodal;
     finally
         dm.cdsvenda.close;
         fvenda.release;
         fvenda:= nil;
         fvenda.free;
     end;
end;

procedure TFMenu.SObre1Click(Sender: TObject);
begin
     try
         FSobre := tFSobre.create(self);
         FSobre.showmodal;
     finally
         FSobre.release;
         FSobre:= nil;
         FSobre.free;
     end;
end;

procedure TFMenu.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);

     Application.Title := dm.cdsrechcenterrecnome.asstring;

     MonthCalendar1.Date := date;

     if (FileExists('logo.jpg'))
     or (FileExists('LOGO.JPG'))
     or (FileExists('Logo.jpg')) then
          img.Picture.LoadFromFile('logo.jpg');

     menus;

     if fsenha.txtusuario.items.strings[fsenha.txtusuario.itemindex] <> 'Master' then
     begin
          Programas1.visible := false;
          W31.visible := false;
          Programas2.visible := false;
          W32.visible := false;
          Programas3.visible := false;
          W33.visible := false;
          Programas4.visible := false;
          W34.visible := false;
          Programas5.visible := false;
          W35.visible := false;
          Programas6.visible := false;
          W36.visible := false;
          Programas7.visible := false;
          W37.visible := false;
          Programas8.visible := false;
          W38.visible := false;
          Programas9.visible := false;
          W39.visible := false;
          Programas10.visible := false;
          W310.visible := false;
          Programas11.visible := false;
          W311.visible := false;
          W312.visible := false;
     end;

     if valor_parametro(5) = 'S' then
     begin
          CDSAniver.close;
          with qaniver.SQL do
          begin
               clear;
               add('SELECT CLICOD, CLINOME, EXTRACT(DAY FROM CLINASCIMENTO) AS DIA,');
               add('CASE Extract(month from CLINASCIMENTO)');
               add('    WHEN 1 THEN ' + quotedstr('Janeiro'));
               add('    WHEN 2 THEN ' + quotedstr('Fevereiro'));
               add('    WHEN 3 THEN ' + quotedstr('MarÁo'));
               add('    WHEN 4 THEN ' + quotedstr('Abril'));
               add('    WHEN 5 THEN ' + quotedstr('Maio'));
               add('    WHEN 6 THEN ' + quotedstr('Junho'));
               add('    WHEN 7 THEN ' + quotedstr('Julho'));
               add('    WHEN 8 THEN ' + quotedstr('Agosto'));
               add('    WHEN 9 THEN ' + quotedstr('Setembro'));
               add('    WHEN 10 THEN ' + quotedstr('Outubro'));
               add('    WHEN 11 THEN ' + quotedstr('Novembro'));
               add('    WHEN 12 THEN ' + quotedstr('Dezembro'));
               add('  end as MES, EXTRACT(YEAR FROM CLINASCIMENTO) AS ANO');
               add('FROM TCLIENTE');
               add('WHERE (EXTRACT(MONTH FROM CLINASCIMENTO) = ' + inttostr(monthof(date + 3)) + ' AND EXTRACT(DAY FROM CLINASCIMENTO) = ' + inttostr(dayof(date + 3)) + ')');
               add('OR (EXTRACT(MONTH FROM CLINASCIMENTO) = ' + inttostr(monthof(date + 2)) + ' AND EXTRACT(DAY FROM CLINASCIMENTO) = ' + inttostr(dayof(date + 2)) + ')');
               add('OR (EXTRACT(MONTH FROM CLINASCIMENTO) = ' + inttostr(monthof(date + 1)) + ' AND EXTRACT(DAY FROM CLINASCIMENTO) = ' + inttostr(dayof(date + 1)) + ')');
               add('OR (EXTRACT(MONTH FROM CLINASCIMENTO) = ' + inttostr(monthof(date + 0)) + ' AND EXTRACT(DAY FROM CLINASCIMENTO) = ' + inttostr(dayof(date + 0)) + ')');
               add('OR (EXTRACT(MONTH FROM CLINASCIMENTO) = ' + inttostr(monthof(date - 1)) + ' AND EXTRACT(DAY FROM CLINASCIMENTO) = ' + inttostr(dayof(date - 1)) + ')');
               add('OR (EXTRACT(MONTH FROM CLINASCIMENTO) = ' + inttostr(monthof(date - 2)) + ' AND EXTRACT(DAY FROM CLINASCIMENTO) = ' + inttostr(dayof(date - 2)) + ')');
               add('OR (EXTRACT(MONTH FROM CLINASCIMENTO) = ' + inttostr(monthof(date - 3)) + ' AND EXTRACT(DAY FROM CLINASCIMENTO) = ' + inttostr(dayof(date - 3)) + ')');
               add('ORDER BY CLINOME');
          end;
          CDSAniver.open;
          RlReportAniver.previewmodal;
     end;     
end;

procedure TFMenu.Exames1Click(Sender: TObject);
begin
     usuario('btnconsultar',13);
     try
         fexame := tfexame.create(self);
         fexame.showmodal;
     finally
         dm.cdsexame.close;
         fexame.release;
         fexame:= nil;
         fexame.free;
     end;
end;

procedure TFMenu.ProcedimentosAMB1Click(Sender: TObject);
begin
     usuario('btnconsultar',14);
     try
         famb := tfamb.create(self);
         famb.showmodal;
     finally
         dm.cdsamb.close;
         famb.release;
         famb:= nil;
         famb.free;
     end;
end;

procedure TFMenu.Bancos1Click(Sender: TObject);
begin
     usuario('btnconsultar',15);
     try
         fbanco := tfbanco.create(self);
         fbanco.showmodal;
     finally
         dm.cdsbanco.close;
         fbanco.release;
         fbanco:= nil;
         fbanco.free;
     end;
end;

procedure TFMenu.ContasaReceber1Click(Sender: TObject);
begin
     usuario('btnconsultar',16);
     if dm.CDSRechCenterRECSISTEMA.asstring = 'E' then
     begin
          try
              fcontrecApae := tfcontrecApae.create(self);
              fcontrecApae.showmodal;
          finally
              dm.cdscontrec.close;
              fcontrecApae.release;
              fcontrecApae:= nil;
              fcontrecApae.free;
          end;
     end
     else
     begin
          try
              fcontrec := tfcontrec.create(self);
              fcontrec.showmodal;
          finally
              dm.cdscontrec.close;
              fcontrec.release;
              fcontrec:= nil;
              fcontrec.free;
          end;
     end;
end;

procedure TFMenu.HistricodoCliente1Click(Sender: TObject);
begin
     usuario('btnconsultar',17);
     try
         fhistcliente := tfhistcliente.create(self);
         fhistcliente.showmodal;
     finally
         dm.cdshistcliente.close;
         fhistcliente.release;
         fhistcliente:= nil;
         fhistcliente.free;
     end;
end;

procedure TFMenu.Bairros1Click(Sender: TObject);
begin
     usuario('btnconsultar',18);
     try
         fbairro := tfbairro.create(self);
         fbairro.showmodal;
     finally
         dm.cdsbairro.close;
         fbairro.release;
         fbairro:= nil;
         fbairro.free;
     end;
end;

procedure TFMenu.EscritriosContbeis1Click(Sender: TObject);
begin
     usuario('btnconsultar',19);
     try
         fescritoriocontabil := tfescritoriocontabil.create(self);
         fescritoriocontabil.showmodal;
     finally
         dm.cdsescritoriocontabil.close;
         fescritoriocontabil.release;
         fescritoriocontabil := nil;
         fescritoriocontabil.free;
     end;
end;

procedure TFMenu.Atividades1Click(Sender: TObject);
begin
     usuario('btnconsultar',20);
     try
         fatividade := tfatividade.create(self);
         fatividade.showmodal;
     finally
         dm.cdsatividade.close;
         fatividade.release;
         fatividade := nil;
         fatividade.free;
     end;
end;

procedure TFMenu.Estabelecimentos1Click(Sender: TObject);
begin
     usuario('btnconsultar',21);
     try
         festabelecimento := tfestabelecimento.create(self);
         festabelecimento.showmodal;
     finally
         dm.cdsestabelecimento.close;
         festabelecimento.release;
         festabelecimento := nil;
         festabelecimento.free;
     end;
end;

procedure TFMenu.ColadeSapateiro1Click(Sender: TObject);
begin
     usuario('btnconsultar',22);
     try
         fcolasapateiro := tfcolasapateiro.create(self);
         fcolasapateiro.showmodal;
     finally
         dm.cdscolasapateiro.close;
         fcolasapateiro.release;
         fcolasapateiro := nil;
         fcolasapateiro.free;
     end;
end;

procedure TFMenu.GruposdoCaixa1Click(Sender: TObject);
begin
     usuario('btnconsultar',23);
     try
         fgrupocaixa := tfgrupocaixa.create(self);
         fgrupocaixa.showmodal;
     finally
         dm.cdsgrupocaixa.close;
         fgrupocaixa.release;
         fgrupocaixa := nil;
         fgrupocaixa.free;
     end;
end;

procedure TFMenu.CAixa1Click(Sender: TObject);
begin
     usuario('btnconsultar',24);
     try
         fcaixa := tfcaixa.create(self);
         fcaixa.showmodal;
     finally
         dm.cdscaixa.close;
         fcaixa.release;
         fcaixa := nil;
         fcaixa.free;
     end;
end;

procedure TFMenu.ContaCorrentedoCliente1Click(Sender: TObject);
begin
     usuario('btnconsultar',25);
     try
         fcontacliente := tfcontacliente.create(self);
         fcontacliente.showmodal;
     finally
         dm.cdscontacliente.close;
         fcontacliente.release;
         fcontacliente := nil;
         fcontacliente.free;
     end;
end;

procedure TFMenu.ComprasClick(Sender: TObject);
begin
     usuario('btnconsultar',26);
     try
         fcompra := tfcompra.create(self);
         fcompra.showmodal;
     finally
         dm.cdscompra.close;
         fcompra.release;
         fcompra := nil;
         fcompra.free;
     end;
end;

procedure TFMenu.Parmetros1Click(Sender: TObject);
begin
     usuario('btnconsultar',27);
     try
         fparametro := tfparametro.create(self);
         fparametro.showmodal;
     finally
         dm.cdsparametro.close;
         fparametro.release;
         fparametro := nil;
         fparametro.free;
     end;
end;

procedure TFMenu.MenuItem89Click(Sender: TObject);
begin
     usuario('btnconsultar',28);
     try
         fmarca := tfmarca.create(self);
         fmarca.showmodal;
     finally
         dm.cdsmarca.close;
         fmarca.release;
         fmarca := nil;
         fmarca.free;
     end;
end;

procedure TFMenu.Modelos1Click(Sender: TObject);
begin
     usuario('btnconsultar',29);
     try
         fmodelo := tfmodelo.create(self);
         fmodelo.showmodal;
     finally
         dm.cdsmodelo.close;
         fmodelo.release;
         fmodelo := nil;
         fmodelo.free;
     end;
end;

procedure TFMenu.Excessos1Click(Sender: TObject);
begin
     usuario('btnconsultar',30);
     try
         fexcesso := tfexcesso.create(self);
         fexcesso.showmodal;
     finally
         dm.cdsexcesso.close;
         fexcesso.release;
         fexcesso := nil;
         fexcesso.free;
     end;
end;

procedure TFMenu.Notificaes1Click(Sender: TObject);
begin
     usuario('btnconsultar',31);
     try
         fnotificacao := tfnotificacao.create(self);
         fnotificacao.showmodal;
     finally
         dm.cdsnotificacao.close;
         fnotificacao.release;
         fnotificacao := nil;
         fnotificacao.free;
     end;
end;

procedure TFMenu.Pesagens1Click(Sender: TObject);
begin
     usuario('btnconsultar',32);
     try
         fpesagem := tfpesagem.create(self);
         fpesagem.showmodal;
     finally
         dm.cdspesagem.close;
         fpesagem.release;
         fpesagem := nil;
         fpesagem.free;
     end;
end;

procedure TFMenu.Categorias1Click(Sender: TObject);
begin
     usuario('btnconsultar',33);
     try
         fcategoria := tfcategoria.create(self);
         fcategoria.showmodal;
     finally
         dm.cdscategoria.close;
         fcategoria.release;
         fcategoria := nil;
         fcategoria.free;
     end;
end;

procedure TFMenu.GrupoFinanceiro1Click(Sender: TObject);
begin
     usuario('btnconsultar',34);
     try
         fgrupofin := tfgrupofin.create(self);
         fgrupofin.showmodal;
     finally
         dm.cdsgrupofin.close;
         fgrupofin.release;
         fgrupofin := nil;
         fgrupofin.free;
     end;

end;

procedure TFMenu.Contas1Click(Sender: TObject);
begin
     usuario('btnconsultar',35);
     try
         fconta := tfconta.create(self);
         fconta.showmodal;
     finally
         dm.cdsconta.close;
         fconta.release;
         fconta:= nil;
         fconta.free;
     end;
end;

procedure TFMenu.Empresas1Click(Sender: TObject);
begin
     usuario('btnconsultar',36);
     try
         fempresa := tfempresa.create(self);
         fempresa.showmodal;
     finally
         dm.cdsempresa.close;
         fempresa.release;
         fempresa:= nil;
         fempresa.free;
     end;
end;

procedure TFMenu.LanamentodeDocumentos1Click(Sender: TObject);
begin
     usuario('btnconsultar',37);
     try
         FFactoryDocto := tFFactoryDocto.create(self);
         FFactoryDocto.showmodal;
     finally
         dm.cdsFactoryDocto.close;
         FFactoryDocto.release;
         FFactoryDocto:= nil;
         FFactoryDocto.free;
     end;
end;

procedure TFMenu.DocumentoscomProblemas1Click(Sender: TObject);
begin
     usuario('btnconsultar',38);
     try
         FFactoryDoctoProb := tFFactoryDoctoProb.create(self);
         FFactoryDoctoProb.showmodal;
     finally
         dm.CDSFactoryDoctoProb.close;
         FFactoryDoctoProb.release;
         FFactoryDoctoProb:= nil;
         FFactoryDoctoProb.free;
     end;
end;

procedure TFMenu.ContasaPagar1Click(Sender: TObject);
begin
     usuario('btnconsultar',39);
     try
         FContPag := tFContPag.create(self);
         FContPag.showmodal;
     finally
         dm.CDSContPag.close;
         FContPag.release;
         FContPag:= nil;
         FContPag.free;
     end;
end;

procedure TFMenu.GerarBoletos1Click(Sender: TObject);
begin
     try
         FGeraBoleto := TFGeraBoleto.create(self);
         FGeraBoleto.showmodal;
     finally
         FGeraBoleto.release;
         FGeraBoleto:= nil;
         FGeraBoleto.free;
     end;
end;

procedure TFMenu.MargensdeLucro1Click(Sender: TObject);
begin
     usuario('btnconsultar',40);
     try
         FMargem := TFMargem.create(self);
         FMargem.showmodal;
     finally
         FMargem.release;
         FMargem:= nil;
         FMargem.free;
     end;
end;

procedure TFMenu.Alquotas1Click(Sender: TObject);
begin
     usuario('btnconsultar',41);
     try
         FAliquota := TFAliquota.create(self);
         FAliquota.showmodal;
     finally
         FAliquota.release;
         FAliquota:= nil;
         FAliquota.free;
     end;
end;

procedure TFMenu.CFOP1Click(Sender: TObject);
begin
     usuario('btnconsultar',42);
     try
         FCFOP:= TFCFOP.create(self);
         FCFOP.showmodal;
     finally
         FCFOP.release;
         FCFOP:= nil;
         FCFOP.free;
     end;
end;

procedure TFMenu.CondiesdePagamentos1Click(Sender: TObject);
begin
     usuario('btnconsultar',43);
     try
         FPlanoPgto:= TFPlanoPgto.create(self);
         FPlanoPgto.showmodal;
     finally
         FPlanoPgto.release;
         FPlanoPgto:= nil;
         FPlanoPgto.free;
     end;
end;

procedure TFMenu.Depsitos1Click(Sender: TObject);
begin
     usuario('btnconsultar',44);
     try
         FDeposito:= TFDeposito.create(self);
         FDeposito.showmodal;
     finally
         FDeposito.release;
         FDeposito:= nil;
         FDeposito.free;
     end;
end;

procedure TFMenu.ipodeCobranas1Click(Sender: TObject);
begin
     usuario('btnconsultar',45);
     try
         FTipoCob:= TFTipoCob.create(self);
         FTipoCob.showmodal;
     finally
         FTipoCob.release;
         FTipoCob := nil;
         FTipoCob.free;
     end;
end;

procedure TFMenu.Observaes1Click(Sender: TObject);
begin
     usuario('btnconsultar',46);
     try
         FObservacoes:= TFObservacoes.create(self);
         FObservacoes.showmodal;
     finally
         FObservacoes.release;
         FObservacoes := nil;
         FObservacoes.free;
     end;
end;

procedure TFMenu.GrupodeProdutosClick(Sender: TObject);
begin
     usuario('btnconsultar',47);
     try
         fgrupoprod := tfgrupoprod.create(self);
         fgrupoprod.showmodal;
     finally
         dm.cdsgrupoprod.close;
         fgrupoprod.release;
         fgrupoprod:= nil;
         fgrupoprod.free;
     end;
end;

procedure TFMenu.abeladeAlquotadoICMS1Click(Sender: TObject);
begin
     usuario('btnconsultar',48);
     try
         faliquotaicms := tfaliquotaicms.create(self);
         faliquotaicms.showmodal;
     finally
         dm.CDSAliquotaICMS.close;
         faliquotaicms.release;
         faliquotaicms:= nil;
         faliquotaicms.free;
     end;

end;

procedure TFMenu.MenuItem153Click(Sender: TObject);
begin
     usuario('btnconsultar',49);
     try
         FNotaEnt := TFNotaEnt.create(self);
         FNotaEnt.showmodal;
     finally
         FNotaEnt.release;
         FNotaEnt := nil;
         FNotaEnt.free;
     end;
end;

procedure TFMenu.OutrasEntradasSadas1Click(Sender: TObject);
begin
     usuario('btnconsultar',50);
     try
         FOutraSaida := TFOutraSaida.create(self);
         FOutraSaida.showmodal;
     finally
         FOutraSaida.release;
         FOutraSaida := nil;
         FOutraSaida.free;
     end;
end;

procedure TFMenu.Produtos3Click(Sender: TObject);
begin
     usuario('btnimprimir', 10);
     try
          ffproduto := tffproduto.create(self);
          ffproduto.showmodal;
     finally
          ffproduto.release;
          ffproduto:= nil;
          ffproduto.free;
     end;
end;

procedure TFMenu.Veculos1Click(Sender: TObject);
begin
     usuario('btnconsultar', 51);
     try
          fveiculo := tfveiculo.create(self);
          fveiculo.showmodal;
     finally
          fveiculo.release;
          fveiculo:= nil;
    ;      fveiculo.free;
     end;
end;

procedure TFMenu.ControledeCheques1Click(Sender: TObject);
begin
     usuario('btnconsultar', 52);
     try
          fcheque := tfcheque.create(self);
          fcheque.showmodal;
     finally
          fcheque.release;
          fcheque := nil;
          fcheque.free;
     end;
end;

procedure TFMenu.NotasFiscais1Click(Sender: TObject);
begin
     usuario('btnconsultar', 53);
     try
          fnotafisc:= tfnotafisc.create(self);
          fnotafisc.showmodal;
     finally
          fnotafisc.release;
          fnotafisc := nil;
          fnotafisc.free;
     end;

end;

procedure TFMenu.RelatriodeVendas1Click(Sender: TObject);
begin
     usuario('btnimprimir', 53);
     try
          ffvenda := tffvenda.create(self);
          ffvenda.showmodal;
     finally
          ffvenda.release;
          ffvenda:= nil;
          ffvenda.free;
     end;
end;

procedure TFMenu.FLuxodeCaixa1Click(Sender: TObject);
begin
     usuario('btnimprimir', 24);
     try
          fffluxocaixa := tfffluxocaixa.create(self);
          fffluxocaixa.showmodal;
     finally
          fffluxocaixa.release;
          fffluxocaixa:= nil;
          fffluxocaixa.free;
     end;
end;

procedure TFMenu.Servios1Click(Sender: TObject);
begin
     usuario('btnconsultar', 54);
     try
          fservico := tfservico.create(self);               
          fservico.showmodal;
     finally
          fservico.release;
          fservico:= nil;
          fservico.free;
     end;
end;

procedure TFMenu.OrdensdeServio1Click(Sender: TObject);
begin
     usuario('btnconsultar', 55);
     try
          fordemservico := tfordemservico.create(self);
          fordemservico.showmodal;
     finally
          fordemservico.release;
          fordemservico:= nil;
          fordemservico.free;
     end;
end;

procedure TFMenu.ExecutarComando1Click(Sender: TObject);
begin
     try
          FExecSQL := TFExecSQL.create(self);
          FExecSQL.showmodal;
     finally
          FExecSQL.release;
          FExecSQL:= nil;
          FExecSQL.free;
     end;
end;

procedure TFMenu.IMveis1Click(Sender: TObject);
begin
     usuario('btnconsultar', 56);
     try
          fimovel := tfimovel.create(self);
          fimovel.showmodal;
     finally
          fimovel.release;
          fimovel := nil;
          fimovel.free;
     end;
end;

procedure TFMenu.CompraeVenda1Click(Sender: TObject);
begin
     usuario('btnconsultar', 57);
     try
          fcompravenda := tfcompravenda.create(self);
          fcompravenda.showmodal;
     finally
          fcompravenda.release;
          fcompravenda := nil;
          fcompravenda.free;
     end;

end;

procedure TFMenu.Contratos1Click(Sender: TObject);
begin
     usuario('btnconsultar', 58);
     try
          fcontrato := tfcontrato.create(self);
          fcontrato.showmodal;
     finally
          fcontrato.release;
          fcontrato := nil;
          fcontrato.free;
     end;
end;

procedure TFMenu.PessoaseEmpresasSimples1Click(Sender: TObject);
begin
     usuario('btnconsultar',7);
     try
         fclienteSimples := tfclienteSimples.create(self);
         fclienteSimples.showmodal;
     finally
         dm.cdscliente.close;
         fclienteSimples.release;
         fclienteSimples := nil;
         fclienteSimples.free;
     end;
end;

procedure TFMenu.Cursos1Click(Sender: TObject);
begin
     usuario('btnconsultar',59);
     try
         fcurso := tfcurso.create(self);
         fcurso.showmodal;
     finally
         dm.cdscurso.close;
         fcurso.release;
         fcurso := nil;
         fcurso.free;
     end;
end;

procedure TFMenu.Universidades1Click(Sender: TObject);
begin
     usuario('btnconsultar',60);
     try
         funiversidade := tfuniversidade.create(self);
         funiversidade.showmodal;
     finally
         dm.CDSUniversidade.close;
         funiversidade.release;
         funiversidade := nil;
         funiversidade.free;
     end;
end;

procedure TFMenu.Nveis1Click(Sender: TObject);
begin
     usuario('btnconsultar',61);
     try
         fnivel := tfnivel.create(self);
         fnivel.showmodal;
     finally
         dm.CDSNivel.close;
         fnivel.release;
         fnivel := nil;
         fnivel.free;
     end;
end;

procedure TFMenu.Diretorias1Click(Sender: TObject);
begin
     usuario('btnconsultar',62);
     try
         fdiretoria := tfdiretoria.create(self);
         fdiretoria.showmodal;
     finally
         dm.CDSDiretoria.close;
         fdiretoria.release;
         fdiretoria := nil;
         fdiretoria.free;
     end;
end;

procedure TFMenu.Estudantes1Click(Sender: TObject);
begin
     usuario('btnconsultar',63);
     try
         festudante := tfestudante.create(self);
         festudante.showmodal;
     finally
         dm.CDSEstudante.close;
         festudante.release;
         festudante := nil;
         festudante.free;
     end;
end;

procedure TFMenu.MenuItem244Click(Sender: TObject);
begin
     usuario('btnconsultar',64);
     try
         ffamilia := tffamilia.create(self);
         ffamilia.showmodal;
     finally
         dm.CDSFamilia.close;
         ffamilia.release;
         ffamilia := nil;
         ffamilia.free;
     end;
end;

procedure TFMenu.DiasViajados1Click(Sender: TObject);
begin
     usuario('btnconsultar',65);
     try
         fdiasviajados := tfdiasviajados.create(self);
         fdiasviajados.showmodal;
     finally
         dm.CDSDiasViajados.close;
         fdiasviajados.release;
         fdiasviajados := nil;
         fdiasviajados.free;
     end;

end;

end.

