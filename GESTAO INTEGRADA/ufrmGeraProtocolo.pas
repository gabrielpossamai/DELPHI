unit ufrmGeraProtocolo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModeloMDIChild, Grids, DBGrids, DBGridUrb, DBCtrls, Buttons,
  StdCtrls, DB, DataSourceUrb, DBClient, ClientDataSetUrb, RpDefine, RpCon,
  RpConDS, RvDLDBX, FMTBcd, Provider, SqlExpr;

type
  TfrmGeraProtocolo = class(TfrmModeloMDIChild)
    gbxEmpresa: TGroupBox;
    btnBuscar: TSpeedButton;
    dblNomeFantasia: TDBLookupComboBox;
    dbgGerador: TDBGridUrb;
    btnVisializar: TSpeedButton;
    btnImprimirTodos: TSpeedButton;
    cdsNomeFantasia: TClientDataSetUrb;
    dtsNomeFantasia: TDataSourceUrb;
    cdsNomeFantasiaID_Fantasia: TIntegerField;
    cdsNomeFantasiaDescricao: TStringField;
    cdsProtocEmp: TClientDataSetUrb;
    dtsProtocEmp: TDataSourceUrb;
    rdtsProtocEmp: TRvDataSetConnection;
    cdsProtocManif: TClientDataSetUrb;
    dtsProtocManif: TDataSourceUrb;
    rdtsProtocManif: TRvDataSetConnection;
    cdsProtocEmpresa: TClientDataSetUrb;
    dtsProtocEmpresa: TDataSourceUrb;
    rdtsProtocEmpresa: TRvDataSetConnection;
    cdsProtocEmpID_Fantasia: TIntegerField;
    cdsProtocEmpDescricao: TStringField;
    cdsProtocEmpRazaoSocial: TStringField;
    cdsProtocEmpEndereco: TStringField;
    cdsProtocEmpMunicipio: TStringField;
    cdsProtocEmpUF: TStringField;
    cdsProtocEmpResponsavel: TStringField;
    cdsProtocEmpresaID_Fantasia: TIntegerField;
    cdsProtocEmpresaDescricao: TStringField;
    cdsProtocEmpresaRazaoSocial: TStringField;
    cdsProtocEmpresaEndereco: TStringField;
    cdsProtocEmpresaMunicipio: TStringField;
    cdsProtocEmpresaUF: TStringField;
    cdsProtocEmpresaResponsavel: TStringField;
    cdsProtocEmpresaTextProtoc: TBlobField;
    sqlNomeFantasia: TSQLDataSet;
    dspNomeFantasia: TDataSetProvider;
    sqlProtocEmp: TSQLDataSet;
    dspProtocEmp: TDataSetProvider;
    dspProtocManif: TDataSetProvider;
    sqlProtocManif: TSQLDataSet;
    procedure btnVisializarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeraProtocolo: TfrmGeraProtocolo;

implementation

uses ufrmPrincipal, DateUtils;

{$R *.dfm}

procedure TfrmGeraProtocolo.btnVisializarClick(Sender: TObject);
var
  iEmpresaAtu:   integer;
  iEmpresaAnt:   integer;
  sNumManifesto: String;
  sMesAnoAnt:    String;
  sMesAnoAtu:    String;

  LongMonthNames: array[1..12] of string;

begin
  inherited;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // Preenche array com meses por extenso                                     //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  LongMonthNames[ 1] := 'Janeiro';
  LongMonthNames[ 2] := 'Fevereiro';
  LongMonthNames[ 3] := 'Março';
  LongMonthNames[ 4] := 'Abril';
  LongMonthNames[ 5] := 'Maio';
  LongMonthNames[ 6] := 'Junho';
  LongMonthNames[ 7] := 'Julho';
  LongMonthNames[ 8] := 'Agosto';
  LongMonthNames[ 9] := 'Setembro';
  LongMonthNames[ 10] := 'Outubro';
  LongMonthNames[ 11] := 'Novembro';
  LongMonthNames[ 12] := 'Dezembro';
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // Cria o dataset para ser preenchido.                                      //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  cdsProtocEmpresa.FieldDefs.Clear;
  cdsProtocEmpresa.FieldDefs.Add('ID_Fantasia', ftInteger);
  cdsProtocEmpresa.FieldDefs.Add('Descricao', ftString, 50, False);
  cdsProtocEmpresa.FieldDefs.Add('RazaoSocial', ftString, 50, False);
  cdsProtocEmpresa.FieldDefs.Add('Endereco', ftString, 80, False);
  cdsProtocEmpresa.FieldDefs.Add('Municipio', ftString, 30, False);
  cdsProtocEmpresa.FieldDefs.Add('UF', ftString, 2, False);
  cdsProtocEmpresa.FieldDefs.Add('Responsavel', ftString, 50, False);
  cdsProtocEmpresa.FieldDefs.Add('TextProtoc', ftBlob);
  cdsProtocEmpresa.CreateDataSet;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // Ativa os datasets.                                                       //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  cdsProtocEmpresa.Active := True;
  cdsProtocEmp.Active     := True;
  cdsProtocManif.Active   := True;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // Início do loop.                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  cdsProtocEmp.First;
  while not cdsProtocEmp.Eof  do
   begin
     cdsProtocEmpresa.Insert;

     cdsProtocEmpresa.FieldByName('ID_Fantasia').AsInteger := cdsProtocEmp.FieldByName('ID_Fantasia').AsInteger;
     cdsProtocEmpresa.FieldByName('Descricao').AsString    := cdsProtocEmp.FieldByName('Descricao').AsString;
     cdsProtocEmpresa.FieldByName('RazaoSocial').AsString  := cdsProtocEmp.FieldByName('RazaoSocial').AsString;
     cdsProtocEmpresa.FieldByName('Endereco').AsString     := cdsProtocEmp.FieldByName('Endereco').AsString;
     cdsProtocEmpresa.FieldByName('Municipio').AsString    := cdsProtocEmp.FieldByName('Municipio').AsString;
     cdsProtocEmpresa.FieldByName('UF').AsString           := cdsProtocEmp.FieldByName('UF').AsString;
     cdsProtocEmpresa.FieldByName('Responsavel').AsString  := cdsProtocEmp.FieldByName('Responsavel').AsString;

     sNumManifesto := '';
     iEmpresaAtu := cdsProtocEmpresa.FieldByName('ID_Fantasia').AsInteger;
     if cdsProtocManif.Locate('ID_Fantasia', iEmpresaAtu, []) then
     begin

       sMesAnoAnt := LongMonthNames[cdsProtocManif.FieldByName('MES').AsInteger] + '/' + cdsProtocManif.FieldByName('ANO').AsString;
       sMesAnoAtu := LongMonthNames[cdsProtocManif.FieldByName('MES').AsInteger] + '/' + cdsProtocManif.FieldByName('ANO').AsString;

       iEmpresaAnt := cdsProtocManif.FieldByName('ID_Fantasia').AsInteger;
       sNumManifesto := 'Referente ao mês ' + sMesAnoAtu + #13#10;
       while (not cdsProtocManif.Eof) and (iEmpresaAtu = iEmpresaAnt) do
       begin

         if (sMesAnoAnt <> sMesAnoAtu) then
         begin
           Delete(sNumManifesto, Length(sNumManifesto)-1, 2);
           sNumManifesto := sNumManifesto + '.' + #13#10 +  #13#10 + 'Referente ao mês ' + sMesAnoAtu + #13#10;
         end;

         sNumManifesto := sNumManifesto + cdsProtocManif.FieldByName('Numero').AsString + ', ';
         cdsProtocManif.Next;
         iEmpresaAnt := iEmpresaAtu;
         iEmpresaAtu := cdsProtocManif.FieldByName('ID_Fantasia').AsInteger;
         sMesAnoAnt  := sMesAnoAtu;
         sMesAnoAtu  := LongMonthNames[cdsProtocManif.FieldByName('MES').AsInteger] + '/' + cdsProtocManif.FieldByName('ANO').AsString;

       end;

     end;

     cdsProtocEmpresa.FieldByName('TextProtoc').AsString := sNumManifesto;
     cdsProtocEmpresa.Post;
     cdsProtocEmp.Next;

   end;

  frmPrincipal.rvpGestao_Empresarial.ExecuteReport('rptProtocolo');
  cdsProtocEmp.Active   := False;
  cdsProtocManif.Active := False;
end;

procedure TfrmGeraProtocolo.FormCreate(Sender: TObject);
begin
  inherited;
   cdsNomeFantasia.Active := True;
end;

procedure TfrmGeraProtocolo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsNomeFantasia.Active := False;
end;

end.
