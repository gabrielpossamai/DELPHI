unit UDM;

interface

uses
  Windows, Forms, SysUtils, Classes, DB, ImgList,
  Controls, DBClient, Dialogs, mxNativeExcel, IBTable,
  DBXpress, FMTBcd, SqlExpr, Provider, RLPreviewForm, RLFilters,
  RLPDFFilter, RLDraftFilter, RLXLSFilter, RLHTMLFilter, ExtDlgs,
  shellapi, EHintBal, ELibFnc;

type
  TDM = class(TDataModule)
    ImageList: TImageList;
    CDSNovo: TClientDataSet;
    SaveDialog: TSaveDialog;
    OpenDialog: TOpenDialog;
    SaveDialogHTML: TSaveDialog;
    SaveXls: TSaveDialog;
    mxNativeExcel: TmxNativeExcel;
    SQLConnection: TSQLConnection;
    QPrograma: TSQLQuery;
    QProgramaPROCOD: TIntegerField;
    QProgramaPRONOME: TStringField;
    CDSPrograma: TClientDataSet;
    DSPPrograma: TDataSetProvider;
    CDSProgramaPROCOD: TIntegerField;
    CDSProgramaPRONOME: TStringField;
    QCidade: TSQLQuery;
    CDSCidade: TClientDataSet;
    DSPCidade: TDataSetProvider;
    QCidadeCIDCOD: TIntegerField;
    QCidadeCIDNOME: TStringField;
    QCidadeCIDUF: TStringField;
    CDSCidadeCIDCOD: TIntegerField;
    CDSCidadeCIDNOME: TStringField;
    CDSCidadeCIDUF: TStringField;
    QProfissao: TSQLQuery;
    CDSProfissao: TClientDataSet;
    DSPProfissao: TDataSetProvider;
    QProfissaoPROCOD: TIntegerField;
    QProfissaoPRONOME: TStringField;
    CDSProfissaoPROCOD: TIntegerField;
    CDSProfissaoPRONOME: TStringField;
    QGrupo: TSQLQuery;
    CDSGrupo: TClientDataSet;
    DSPGrupo: TDataSetProvider;
    QGrupoGRUCOD: TIntegerField;
    QGrupoGRUNOME: TStringField;
    CDSGrupoGRUCOD: TIntegerField;
    CDSGrupoGRUNOME: TStringField;
    QMax: TSQLQuery;
    QChave: TSQLQuery;
    QMaxCOD: TIntegerField;
    QItemUsuario: TSQLQuery;
    CDSUsuario: TClientDataSet;
    DSPUsuario: TDataSetProvider;
    CDSUsuarioUSULOGIN: TStringField;
    CDSUsuarioUSUNOME: TStringField;
    CDSUsuarioUSUSENHA: TStringField;
    QUsuario: TSQLQuery;
    CDSItemUsuario: TClientDataSet;
    DSPItemUsuario: TDataSetProvider;
    QUsuarioUSULOGIN: TStringField;
    QUsuarioUSUNOME: TStringField;
    QUsuarioUSUSENHA: TStringField;
    QExiste: TSQLQuery;
    QConvenio: TSQLQuery;
    CDSConvenio: TClientDataSet;
    DSPConvenio: TDataSetProvider;
    QItemUsuarioITEUSUARIO: TStringField;
    QItemUsuarioITEPROGRAMA: TIntegerField;
    QItemUsuarioITEACESSO: TStringField;
    QItemUsuarioITEINSERCAO: TStringField;
    QItemUsuarioITEALTERACAO: TStringField;
    QItemUsuarioITEEXCLUSAO: TStringField;
    QItemUsuarioITERELATORIO: TStringField;
    CDSItemUsuarioITEUSUARIO: TStringField;
    CDSItemUsuarioITEPROGRAMA: TIntegerField;
    CDSItemUsuarioITEACESSO: TStringField;
    CDSItemUsuarioITEINSERCAO: TStringField;
    CDSItemUsuarioITEALTERACAO: TStringField;
    CDSItemUsuarioITEEXCLUSAO: TStringField;
    CDSItemUsuarioITERELATORIO: TStringField;
    CDSConvenioCONCOD: TIntegerField;
    CDSConvenioCONNOME: TStringField;
    QConvenioCONCOD: TIntegerField;
    QConvenioCONNOME: TStringField;
    QConvenioCONVALOR: TFMTBCDField;
    QConvenioCONACRESCIMO: TFMTBCDField;
    QConvenioCONDESCONTO: TFMTBCDField;
    QConvenioCONOBS: TMemoField;
    CDSConvenioCONVALOR: TFMTBCDField;
    CDSConvenioCONACRESCIMO: TFMTBCDField;
    CDSConvenioCONDESCONTO: TFMTBCDField;
    CDSConvenioCONOBS: TMemoField;
    QCliente: TSQLQuery;
    CDSCliente: TClientDataSet;
    DSPCliente: TDataSetProvider;
    QClienteCLICOD: TIntegerField;
    QClienteCLITIPO: TStringField;
    QClienteCLINOME: TStringField;
    QClienteCLIRAZAO: TStringField;
    QClienteCLINASCIMENTO: TDateField;
    QClienteCLIENDERECO: TStringField;
    QClienteCLIBAIRRO: TStringField;
    QClienteCLINUMERO: TIntegerField;
    QClienteCLICIDADE: TIntegerField;
    QClienteCLIGRUPO: TIntegerField;
    QClienteCLIPROFISSAO: TIntegerField;
    QClienteCLITELRESIDENCIAL: TStringField;
    QClienteCLITELCOMERCIAL: TStringField;
    QClienteCLITELFAX: TStringField;
    QClienteCLITELCELULAR: TStringField;
    QClienteCLIEMAIL: TStringField;
    QClienteCLICONVENIO: TIntegerField;
    QClienteCLIIDENTIDADE: TStringField;
    QClienteCLIINSCRICAO: TStringField;
    QClienteCLICPF: TStringField;
    QClienteCLIOBS: TMemoField;
    CDSClienteCLICOD: TIntegerField;
    CDSClienteCLITIPO: TStringField;
    CDSClienteCLINOME: TStringField;
    CDSClienteCLIRAZAO: TStringField;
    CDSClienteCLINASCIMENTO: TDateField;
    CDSClienteCLIENDERECO: TStringField;
    CDSClienteCLIBAIRRO: TStringField;
    CDSClienteCLINUMERO: TIntegerField;
    CDSClienteCLICIDADE: TIntegerField;
    CDSClienteCLIGRUPO: TIntegerField;
    CDSClienteCLIPROFISSAO: TIntegerField;
    CDSClienteCLITELRESIDENCIAL: TStringField;
    CDSClienteCLITELCOMERCIAL: TStringField;
    CDSClienteCLITELFAX: TStringField;
    CDSClienteCLITELCELULAR: TStringField;
    CDSClienteCLIEMAIL: TStringField;
    CDSClienteCLICONVENIO: TIntegerField;
    CDSClienteCLIIDENTIDADE: TStringField;
    CDSClienteCLIINSCRICAO: TStringField;
    CDSClienteCLICPF: TStringField;
    CDSClienteCLIOBS: TMemoField;
    CDSClienteGrupo: TStringField;
    CDSClienteCidade: TStringField;
    CDSClienteProfissao: TStringField;
    CDSClienteConvenio: TStringField;
    DSItemUsuario: TDataSource;
    CDSItemUsuarioPrograma: TStringField;
    QAgenda: TSQLQuery;
    CDSAgenda: TClientDataSet;
    DSPAgenda: TDataSetProvider;
    QAgendaAGEDATA: TDateField;
    QAgendaAGEHORA: TTimeField;
    QAgendaAGECLIENTE: TIntegerField;
    QAgendaAGEOBS: TMemoField;
    CDSAgendaAGEDATA: TDateField;
    CDSAgendaAGEHORA: TTimeField;
    CDSAgendaAGECLIENTE: TIntegerField;
    CDSAgendaAGEOBS: TMemoField;
    CDSAgendaCliente: TStringField;
    ImageListPageControl: TImageList;
    QParamEmp: TSQLQuery;
    CDSParamEmp: TClientDataSet;
    DSPParamEmp: TDataSetProvider;
    QRechCenter: TSQLQuery;
    CDSRechCenter: TClientDataSet;
    DSPRechCenter: TDataSetProvider;
    DSRechCenter: TDataSource;
    DSParamEmp: TDataSource;
    DSCidade: TDataSource;
    DSPrograma: TDataSource;
    DSGrupo: TDataSource;
    DSUsuario: TDataSource;
    DSProfissao: TDataSource;
    DSConvenio: TDataSource;
    DSCliente: TDataSource;
    DSAgenda: TDataSource;
    RLPDFFilter: TRLPDFFilter;
    RLHTMLFilter: TRLHTMLFilter;
    RLXLSFilter: TRLXLSFilter;
    QParamEmpEMPCOD: TIntegerField;
    QParamEmpEMPNOME: TStringField;
    QParamEmpEMPRAZAO: TStringField;
    QParamEmpEMPENDERECO: TStringField;
    QParamEmpEMPBAIRRO: TStringField;
    QParamEmpEMPNUMERO: TIntegerField;
    QParamEmpEMPCIDADE: TIntegerField;
    QParamEmpEMPRESPONSAVEL: TStringField;
    QParamEmpEMPCAB: TBlobField;
    QParamEmpEMPFIGURA: TBlobField;
    CDSParamEmpEMPCOD: TIntegerField;
    CDSParamEmpEMPNOME: TStringField;
    CDSParamEmpEMPRAZAO: TStringField;
    CDSParamEmpEMPENDERECO: TStringField;
    CDSParamEmpEMPBAIRRO: TStringField;
    CDSParamEmpEMPNUMERO: TIntegerField;
    CDSParamEmpEMPCIDADE: TIntegerField;
    CDSParamEmpEMPRESPONSAVEL: TStringField;
    CDSParamEmpEMPCAB: TBlobField;
    CDSParamEmpEMPFIGURA: TBlobField;
    OpenPictureDialog: TOpenPictureDialog;
    QParamEmpEMPTELEFONE: TStringField;
    QParamEmpEMPTELFAX: TStringField;
    QParamEmpEMPSITE: TStringField;
    QParamEmpEMPEMAIL: TStringField;
    CDSParamEmpEMPTELEFONE: TStringField;
    CDSParamEmpEMPTELFAX: TStringField;
    CDSParamEmpEMPSITE: TStringField;
    CDSParamEmpEMPEMAIL: TStringField;
    CDSParamEmpCidade: TStringField;
    ImageListMenu: TImageList;
    QProduto: TSQLQuery;
    CDSProduto: TClientDataSet;
    DSPProduto: TDataSetProvider;
    DSProduto: TDataSource;
    QProdutoPROCOD: TIntegerField;
    QProdutoPRONOME: TStringField;
    QProdutoPROVALOR: TFMTBCDField;
    QProdutoPROGRUPO: TIntegerField;
    CDSProdutoPROCOD: TIntegerField;
    CDSProdutoPRONOME: TStringField;
    CDSProdutoPROVALOR: TFMTBCDField;
    CDSProdutoPROGRUPO: TIntegerField;
    QReserva: TSQLQuery;
    DSPReserva: TDataSetProvider;
    DSReserva: TDataSource;
    CDSReserva: TClientDataSet;
    QItemVenda: TSQLQuery;
    CDSVenda: TClientDataSet;
    DSPVenda: TDataSetProvider;
    QVenda: TSQLQuery;
    CDSItemVenda: TClientDataSet;
    DSPItemVenda: TDataSetProvider;
    DSItemVenda: TDataSource;
    DSVenda: TDataSource;
    CDSItemVendaITEPRODUTO: TIntegerField;
    CDSItemVendaProduto: TStringField;
    CDSVendaVENCLIENTE: TIntegerField;
    CDSVendaVENDATA: TDateField;
    QProdutoPROCUSTO: TFMTBCDField;
    QProdutoPROVENDAS: TIntegerField;
    CDSProdutoPROCUSTO: TFMTBCDField;
    CDSProdutoPROVENDAS: TIntegerField;
    CDSProdutoGrupo: TStringField;
    QReservaRESDATA: TDateField;
    QReservaRESQUARTO: TStringField;
    QReservaRESCLIENTE: TIntegerField;
    QReservaRESDATAENTRADA: TDateField;
    QReservaRESDATASAIDA: TDateField;
    CDSReservaRESDATA: TDateField;
    CDSReservaRESQUARTO: TStringField;
    CDSReservaRESCLIENTE: TIntegerField;
    CDSReservaRESDATAENTRADA: TDateField;
    CDSReservaRESDATASAIDA: TDateField;
    CDSReservacliente: TStringField;
    CDSVendacliente: TStringField;
    CDSVendaCLINOME: TStringField;
    CDSItem: TClientDataSet;
    QExame: TSQLQuery;
    CDSExame: TClientDataSet;
    DSPExame: TDataSetProvider;
    DSExame: TDataSource;
    QExameEXACOD: TIntegerField;
    QExameEXANOME: TStringField;
    CDSExameEXACOD: TIntegerField;
    CDSExameEXANOME: TStringField;
    QAgendaAGEEXAME: TIntegerField;
    CDSAgendaAGEEXAME: TIntegerField;
    CDSAgendaExame: TStringField;
    QAmb: TSQLQuery;
    CDSAmb: TClientDataSet;
    DSPAmb: TDataSetProvider;
    DSAmb: TDataSource;
    QAmbAMBCOD: TStringField;
    QAmbAMBNOME: TStringField;
    CDSAmbAMBCOD: TStringField;
    CDSAmbAMBNOME: TStringField;
    QItemAgenda: TSQLQuery;
    CDSItemAgenda: TClientDataSet;
    DSPItemAgenda: TDataSetProvider;
    DSItemAgenda: TDataSource;
    QItemAgendaITEDATA: TDateField;
    QItemAgendaITEHORA: TTimeField;
    QItemAgendaITEAMB: TStringField;
    QItemAgendaAMBNOME: TStringField;
    CDSItemAgendaITEDATA: TDateField;
    CDSItemAgendaITEHORA: TTimeField;
    CDSItemAgendaITEAMB: TStringField;
    CDSItemAgendaAMBNOME: TStringField;
    QAgendaCLINOME: TStringField;
    CDSAgendaCLINOME: TStringField;
    QBanco: TSQLQuery;
    CDSBanco: TClientDataSet;
    DSPBanco: TDataSetProvider;
    DSBanco: TDataSource;
    QBancoBANCOD: TIntegerField;
    QBancoBANNOME: TStringField;
    QBancoBANCIDADE: TIntegerField;
    QBancoBANUMERO: TStringField;
    QBancoCIDNOME: TStringField;
    CDSBancoBANCOD: TIntegerField;
    CDSBancoBANNOME: TStringField;
    CDSBancoBANCIDADE: TIntegerField;
    CDSBancoBANUMERO: TStringField;
    CDSBancoCIDNOME: TStringField;
    CDSBancoCidade: TStringField;
    QContRec: TSQLQuery;
    CDSContRec: TClientDataSet;
    DSPContRec: TDataSetProvider;
    DSContRec: TDataSource;
    QContRecRECDOCUMENTO: TIntegerField;
    QContRecRECEMISSAO: TDateField;
    QContRecRECCLIENTE: TIntegerField;
    QContRecRECBANCO: TIntegerField;
    QContRecCLINOME: TStringField;
    QContRecBANNOME: TStringField;
    CDSContRecRECDOCUMENTO: TIntegerField;
    CDSContRecRECEMISSAO: TDateField;
    CDSContRecRECCLIENTE: TIntegerField;
    CDSContRecRECBANCO: TIntegerField;
    CDSContRecCLINOME: TStringField;
    CDSContRecBANNOME: TStringField;
    CDSContRecCliente: TStringField;
    CDSContRecBanco: TStringField;
    QContRecRECSITUACAO: TStringField;
    CDSContRecRECSITUACAO: TStringField;
    CDSContRecTotal: TFloatField;
    QHistCliente: TSQLQuery;
    CDSHistCliente: TClientDataSet;
    DSPHistCliente: TDataSetProvider;
    DSHistCliente: TDataSource;
    QItemHistCliente: TSQLQuery;
    CDSItemHistCliente: TClientDataSet;
    DSPItemHistCliente: TDataSetProvider;
    DSItemHistCliente: TDataSource;
    QHistClienteHISCLIENTE: TIntegerField;
    QHistClienteHISOBS: TMemoField;
    QHistClienteCLINOME: TStringField;
    CDSHistClienteHISCLIENTE: TIntegerField;
    CDSHistClienteHISOBS: TMemoField;
    CDSHistClienteCLINOME: TStringField;
    QItemHistClienteITECLIENTE: TIntegerField;
    QItemHistClienteITEDATA: TDateField;
    QItemHistClienteITEOBS: TStringField;
    CDSItemHistClienteITECLIENTE: TIntegerField;
    CDSItemHistClienteITEDATA: TDateField;
    CDSItemHistClienteITEOBS: TStringField;
    CDSHistClienteCliente: TStringField;
    CDSItemHistClienteCliente: TStringField;
    QBairro: TSQLQuery;
    CDSBairro: TClientDataSet;
    DSPBairro: TDataSetProvider;
    DSBairro: TDataSource;
    QBairroBAICOD: TIntegerField;
    QBairroBAINOME: TStringField;
    QBairroBAICIDADE: TIntegerField;
    CDSBairroBAICOD: TIntegerField;
    CDSBairroBAINOME: TStringField;
    CDSBairroBAICIDADE: TIntegerField;
    CDSBairroCidade: TStringField;
    QAtividade: TSQLQuery;
    CDSAtividade: TClientDataSet;
    DSPAtividade: TDataSetProvider;
    DSAtividade: TDataSource;
    QAtividadeATICOD: TIntegerField;
    QAtividadeATINOME: TStringField;
    CDSAtividadeATICOD: TIntegerField;
    CDSAtividadeATINOME: TStringField;
    QItemEstabelecimento: TSQLQuery;
    CDSEstabelecimento: TClientDataSet;
    DSPEstabelecimento: TDataSetProvider;
    QEstabelecimento: TSQLQuery;
    CDSItemEstabelecimento: TClientDataSet;
    DSPItemEstabelecimento: TDataSetProvider;
    DSItemEstabelecimento: TDataSource;
    DSEstabelecimento: TDataSource;
    QEstabelecimentoESTCOD: TIntegerField;
    QEstabelecimentoESTNOME: TStringField;
    QEstabelecimentoESTCNPJCPF: TStringField;
    QEstabelecimentoESTENDERECO: TStringField;
    QEstabelecimentoESTBAIRRO: TIntegerField;
    QEstabelecimentoESTFONE: TStringField;
    QEstabelecimentoESTATIVIDADE: TIntegerField;
    QEstabelecimentoESTDATA: TDateField;
    QEstabelecimentoESTENQUADRAMENTO: TStringField;
    QEstabelecimentoESTESCRITORIOCONTABIL: TIntegerField;
    QEstabelecimentoESTRENOVACAO: TIntegerField;
    CDSEstabelecimentoESTCOD: TIntegerField;
    CDSEstabelecimentoESTNOME: TStringField;
    CDSEstabelecimentoESTCNPJCPF: TStringField;
    CDSEstabelecimentoESTENDERECO: TStringField;
    CDSEstabelecimentoESTBAIRRO: TIntegerField;
    CDSEstabelecimentoESTFONE: TStringField;
    CDSEstabelecimentoESTATIVIDADE: TIntegerField;
    CDSEstabelecimentoESTDATA: TDateField;
    CDSEstabelecimentoESTENQUADRAMENTO: TStringField;
    CDSEstabelecimentoESTESCRITORIOCONTABIL: TIntegerField;
    CDSEstabelecimentoESTRENOVACAO: TIntegerField;
    QItemEstabelecimentoITEESTABELECIMENTO: TIntegerField;
    QItemEstabelecimentoITEANO: TIntegerField;
    QItemEstabelecimentoITEOBS: TStringField;
    CDSItemEstabelecimentoITEESTABELECIMENTO: TIntegerField;
    CDSItemEstabelecimentoITEANO: TIntegerField;
    CDSItemEstabelecimentoITEOBS: TStringField;
    QEscritorioContabil: TSQLQuery;
    CDSEscritorioContabil: TClientDataSet;
    DSPEscritorioContabil: TDataSetProvider;
    DSEscritorioContabil: TDataSource;
    QEscritorioContabilESCCOD: TIntegerField;
    QEscritorioContabilESCNOME: TStringField;
    QEscritorioContabilESCCIDADE: TIntegerField;
    QEscritorioContabilESCFONE: TStringField;
    QEscritorioContabilESCRESPONSAVEL: TStringField;
    CDSEscritorioContabilESCCOD: TIntegerField;
    CDSEscritorioContabilESCNOME: TStringField;
    CDSEscritorioContabilESCCIDADE: TIntegerField;
    CDSEscritorioContabilESCFONE: TStringField;
    CDSEscritorioContabilESCRESPONSAVEL: TStringField;
    CDSEscritorioContabilCidade: TStringField;
    CDSEstabelecimentoBairro: TStringField;
    CDSEstabelecimentoAtividade: TStringField;
    CDSEstabelecimentoEscritorioContabil: TStringField;
    QItemColaSapateiro: TSQLQuery;
    CDSColaSapateiro: TClientDataSet;
    DSPColaSapateiro: TDataSetProvider;
    QColaSapateiro: TSQLQuery;
    CDSItemColaSapateiro: TClientDataSet;
    DSPItemColaSapateiro: TDataSetProvider;
    DSItemColaSapateiro: TDataSource;
    DSColaSapateiro: TDataSource;
    QColaSapateiroCOLCOD: TIntegerField;
    QColaSapateiroCOLCNPJCPF: TStringField;
    QColaSapateiroCOLENDERECO: TStringField;
    QColaSapateiroCOLBAIRRO: TIntegerField;
    QColaSapateiroCOLFONE: TStringField;
    QColaSapateiroCOLATIVIDADE: TIntegerField;
    CDSColaSapateiroCOLCOD: TIntegerField;
    CDSColaSapateiroCOLCNPJCPF: TStringField;
    CDSColaSapateiroCOLENDERECO: TStringField;
    CDSColaSapateiroCOLBAIRRO: TIntegerField;
    CDSColaSapateiroCOLFONE: TStringField;
    CDSColaSapateiroCOLATIVIDADE: TIntegerField;
    CDSColaSapateiroBairro: TStringField;
    CDSColaSapateiroAtividade: TStringField;
    QItemColaSapateiroITECOLA: TIntegerField;
    QItemColaSapateiroITEDATA: TDateField;
    QItemColaSapateiroITEOBS: TStringField;
    CDSItemColaSapateiroITECOLA: TIntegerField;
    CDSItemColaSapateiroITEDATA: TDateField;
    CDSItemColaSapateiroITEOBS: TStringField;
    QColaSapateiroCOLNOME: TStringField;
    CDSColaSapateiroCOLNOME: TStringField;
    QContRecRECPARCELAS: TSmallintField;
    CDSContRecRECPARCELAS: TSmallintField;
    QProdutoPROESTOQUE: TFMTBCDField;
    QProdutoPROMULTIPLICADOR: TFMTBCDField;
    CDSProdutoPROESTOQUE: TFMTBCDField;
    CDSProdutoPROMULTIPLICADOR: TFMTBCDField;
    QVendaVENNUMERO: TIntegerField;
    QVendaVENDATA: TDateField;
    QVendaVENCLIENTE: TIntegerField;
    QVendaCLINOME: TStringField;
    CDSVendaVENNUMERO: TIntegerField;
    QItemVendaITENUMERO: TIntegerField;
    QItemVendaITESEQ: TIntegerField;
    QItemVendaITEPRODUTO: TIntegerField;
    QItemVendaITEPESO: TFMTBCDField;
    QItemVendaITEVALOR: TFMTBCDField;
    QItemVendaPRONOME: TStringField;
    CDSItemVendaITENUMERO: TIntegerField;
    CDSItemVendaITESEQ: TIntegerField;
    CDSItemVendaITEPESO: TFMTBCDField;
    CDSItemVendaITEVALOR: TFMTBCDField;
    CDSItemVendaPRONOME: TStringField;
    QGrupoCaixa: TSQLQuery;
    CDSGrupoCaixa: TClientDataSet;
    DSPGrupoCaixa: TDataSetProvider;
    DSGrupoCaixa: TDataSource;
    QGrupoCaixaGRUCAICOD: TIntegerField;
    QGrupoCaixaGRUCAINOME: TStringField;
    CDSGrupoCaixaGRUCAICOD: TIntegerField;
    CDSGrupoCaixaGRUCAINOME: TStringField;
    QCaixa: TSQLQuery;
    CDSCaixa: TClientDataSet;
    DSPCaixa: TDataSetProvider;
    DSCaixa: TDataSource;
    QCaixaCAINUMERO: TIntegerField;
    QCaixaCAIDATA: TDateField;
    QCaixaCAIHISTORICO: TStringField;
    QCaixaCAIENTRADA: TFMTBCDField;
    QCaixaCAISAIDA: TFMTBCDField;
    QCaixaCAIGRUPO: TIntegerField;
    QCaixaGRUCAINOME: TStringField;
    QContaCliente: TSQLQuery;
    CDSContaCliente: TClientDataSet;
    DSPContaCliente: TDataSetProvider;
    DSContaCliente: TDataSource;
    QContaClienteCONNUMERO: TIntegerField;
    QContaClienteCONDATA: TDateField;
    QContaClienteCONCLIENTE: TIntegerField;
    QContaClienteCONVALOR: TFMTBCDField;
    QContaClienteCONTIPO: TStringField;
    CDSContaClienteCONNUMERO: TIntegerField;
    CDSContaClienteCONDATA: TDateField;
    CDSContaClienteCONCLIENTE: TIntegerField;
    CDSContaClienteCONVALOR: TFMTBCDField;
    CDSContaClienteCONTIPO: TStringField;
    CDSCaixaCAINUMERO: TIntegerField;
    CDSCaixaCAIDATA: TDateField;
    CDSCaixaCAIHISTORICO: TStringField;
    CDSCaixaCAIENTRADA: TFMTBCDField;
    CDSCaixaCAISAIDA: TFMTBCDField;
    CDSCaixaCAIGRUPO: TIntegerField;
    CDSCaixaGRUCAINOME: TStringField;
    CDSCaixaGrupoCaixa: TStringField;
    CDSContaClientecliente: TStringField;
    QContaClienteCLINOME: TStringField;
    CDSContaClienteCLINOME: TStringField;
    QItemCompra: TSQLQuery;
    CDSCompra: TClientDataSet;
    DSPCompra: TDataSetProvider;
    QCompra: TSQLQuery;
    CDSItemCompra: TClientDataSet;
    DSPItemCompra: TDataSetProvider;
    DSItemCompra: TDataSource;
    DSCompra: TDataSource;
    QCompraCOMNUMERO: TIntegerField;
    QCompraCOMDATA: TDateField;
    QCompraCOMDESCRICAO: TStringField;
    CDSCompraCOMNUMERO: TIntegerField;
    CDSCompraCOMDATA: TDateField;
    CDSCompraCOMDESCRICAO: TStringField;
    QItemCompraITENUMERO: TIntegerField;
    QItemCompraITESEQ: TIntegerField;
    QItemCompraITEPRODUTO: TIntegerField;
    QItemCompraITEPESOINI: TFMTBCDField;
    QItemCompraITEPESOFIN: TFMTBCDField;
    QItemCompraITEPESOTOTAL: TFMTBCDField;
    QItemCompraPRONOME: TStringField;
    CDSItemCompraITENUMERO: TIntegerField;
    CDSItemCompraITESEQ: TIntegerField;
    CDSItemCompraITEPRODUTO: TIntegerField;
    CDSItemCompraITEPESOINI: TFMTBCDField;
    CDSItemCompraITEPESOFIN: TFMTBCDField;
    CDSItemCompraITEPESOTOTAL: TFMTBCDField;
    CDSItemCompraPRONOME: TStringField;
    CDSItemCompraProduto: TStringField;
    QTotalVenda: TSQLQuery;
    QTotalVendaSUM: TFMTBCDField;
    DSTotalVenda: TDataSource;
    DSTotalCompra: TDataSource;
    QTotalCompra: TSQLQuery;
    QTotalCompraSUM: TFMTBCDField;
    QVendaVENLCTOCAIXA: TIntegerField;
    CDSVendaVENLCTOCAIXA: TIntegerField;
    QCompraCOMLCTOCAIXA: TIntegerField;
    CDSCompraCOMLCTOCAIXA: TIntegerField;
    QParametro: TSQLQuery;
    DSPParametro: TDataSetProvider;
    DSParametro: TDataSource;
    CDSParametro: TClientDataSet;
    QParametroPARCOD: TIntegerField;
    QParametroPARNOME: TStringField;
    QParametroPARVALOR: TStringField;
    CDSParametroPARCOD: TIntegerField;
    CDSParametroPARNOME: TStringField;
    CDSParametroPARVALOR: TStringField;
    QUsuarioUSUMATRICULA: TStringField;
    CDSUsuarioUSUMATRICULA: TStringField;
    QMarca: TSQLQuery;
    DSPMarca: TDataSetProvider;
    DSMarca: TDataSource;
    CDSMarca: TClientDataSet;
    QMarcaMARCOD: TIntegerField;
    QMarcaMARNOME: TStringField;
    QMarcaMARSIGLA: TStringField;
    CDSMarcaMARCOD: TIntegerField;
    CDSMarcaMARNOME: TStringField;
    CDSMarcaMARSIGLA: TStringField;
    QModelo: TSQLQuery;
    DSPModelo: TDataSetProvider;
    DSModelo: TDataSource;
    CDSModelo: TClientDataSet;
    QExcesso: TSQLQuery;
    DSPExcesso: TDataSetProvider;
    DSExcesso: TDataSource;
    CDSExcesso: TClientDataSet;
    QExcessoEXCCOD: TIntegerField;
    QExcessoEXCPESOMIN: TFMTBCDField;
    QExcessoEXCPESOMAX: TFMTBCDField;
    QExcessoEXCVALOR: TFMTBCDField;
    CDSExcessoEXCCOD: TIntegerField;
    CDSExcessoEXCPESOMIN: TFMTBCDField;
    CDSExcessoEXCPESOMAX: TFMTBCDField;
    CDSExcessoEXCVALOR: TFMTBCDField;
    QNotificacao: TSQLQuery;
    DSPNotificacao: TDataSetProvider;
    DSNotificacao: TDataSource;
    CDSNotificacao: TClientDataSet;
    QNotificacaoNOTCOD: TIntegerField;
    QNotificacaoNOTPESAGEM: TIntegerField;
    QNotificacaoNOTEXCESSO: TIntegerField;
    CDSNotificacaoNOTCOD: TIntegerField;
    CDSNotificacaoNOTPESAGEM: TIntegerField;
    CDSNotificacaoNOTEXCESSO: TIntegerField;
    QPesagem: TSQLQuery;
    DSPPesagem: TDataSetProvider;
    DSPesagem: TDataSource;
    CDSPesagem: TClientDataSet;
    QPesagemPESCOD: TIntegerField;
    QPesagemPESDATA: TDateField;
    QPesagemPESOPERADOR: TStringField;
    QPesagemPESMARCA: TIntegerField;
    QPesagemPESMODELO: TStringField;
    QPesagemPESCATEGORIA: TIntegerField;
    QPesagemPESRODADOS: TIntegerField;
    QPesagemPESPESO: TFMTBCDField;
    QPesagemPESTARA: TFMTBCDField;
    QPesagemPESTOLERANCIA: TFMTBCDField;
    QPesagemPESLIMITE: TFMTBCDField;
    QPesagemPESPESOEXCEDENTE: TFMTBCDField;
    QPesagemPESPLACA: TStringField;
    QPesagemPESPROPRIETARIO: TStringField;
    QPesagemPESCONDUTOR: TStringField;
    QPesagemPESCNH: TStringField;
    QPesagemPESNUMEROAET: TIntegerField;
    QPesagemPESPESOAET: TFMTBCDField;
    CDSPesagemPESCOD: TIntegerField;
    CDSPesagemPESDATA: TDateField;
    CDSPesagemPESOPERADOR: TStringField;
    CDSPesagemPESMARCA: TIntegerField;
    CDSPesagemPESMODELO: TStringField;
    CDSPesagemPESCATEGORIA: TIntegerField;
    CDSPesagemPESRODADOS: TIntegerField;
    CDSPesagemPESPESO: TFMTBCDField;
    CDSPesagemPESTARA: TFMTBCDField;
    CDSPesagemPESTOLERANCIA: TFMTBCDField;
    CDSPesagemPESLIMITE: TFMTBCDField;
    CDSPesagemPESPESOEXCEDENTE: TFMTBCDField;
    CDSPesagemPESPLACA: TStringField;
    CDSPesagemPESPROPRIETARIO: TStringField;
    CDSPesagemPESCONDUTOR: TStringField;
    CDSPesagemPESCNH: TStringField;
    CDSPesagemPESNUMEROAET: TIntegerField;
    CDSPesagemPESPESOAET: TFMTBCDField;
    CDSPesagemoperador: TStringField;
    CDSPesagemmarca: TStringField;
    QCategoria: TSQLQuery;
    DSPCategoria: TDataSetProvider;
    DSCategoria: TDataSource;
    CDSCategoria: TClientDataSet;
    QCategoriaCATCOD: TIntegerField;
    QCategoriaCATNOME: TStringField;
    QCategoriaCATRODADOS: TIntegerField;
    QCategoriaCATPESO: TFMTBCDField;
    QCategoriaCATOBS: TStringField;
    QCategoriaCATFOTO: TStringField;
    CDSCategoriaCATCOD: TIntegerField;
    CDSCategoriaCATNOME: TStringField;
    CDSCategoriaCATRODADOS: TIntegerField;
    CDSCategoriaCATPESO: TFMTBCDField;
    CDSCategoriaCATOBS: TStringField;
    CDSCategoriaCATFOTO: TStringField;
    CDSPesagemcategoria: TStringField;
    QPesagemPESHORA: TTimeField;
    QPesagemPESPESO1: TFMTBCDField;
    QPesagemPESPESO2: TFMTBCDField;
    QPesagemPESPESO3: TFMTBCDField;
    QPesagemPESPESO4: TFMTBCDField;
    QPesagemPESPESO5: TFMTBCDField;
    QPesagemPESPESO6: TFMTBCDField;
    CDSPesagemPESHORA: TTimeField;
    CDSPesagemPESPESO1: TFMTBCDField;
    CDSPesagemPESPESO2: TFMTBCDField;
    CDSPesagemPESPESO3: TFMTBCDField;
    CDSPesagemPESPESO4: TFMTBCDField;
    CDSPesagemPESPESO5: TFMTBCDField;
    CDSPesagemPESPESO6: TFMTBCDField;
    QPesagemPESPESO7: TFMTBCDField;
    CDSPesagemPESPESO7: TFMTBCDField;
    CDSPesagemobs: TStringField;
    QCategoriaCATPESOPERMITIDO: TFMTBCDField;
    CDSCategoriaCATPESOPERMITIDO: TFMTBCDField;
    QPesagemPESPESOPERMITIDO: TFMTBCDField;
    CDSPesagemPESPESOPERMITIDO: TFMTBCDField;
    CDSPesagemPesoPermitido: TFloatField;
    CDSPesagemexcesso: TFloatField;
    QItemCompraITEPRECO: TFMTBCDField;
    CDSItemCompraITEPRECO: TFMTBCDField;
    CDSPesagemmatricula: TIntegerField;
    CDSPesagemtolerancia: TFloatField;
    QContaClienteCONOBS: TStringField;
    CDSContaClienteCONOBS: TStringField;
    QVendaVENLCTOCLIENTE: TIntegerField;
    CDSVendaVENLCTOCLIENTE: TIntegerField;
    QConta: TSQLQuery;
    DSPConta: TDataSetProvider;
    DSConta: TDataSource;
    CDSConta: TClientDataSet;
    QGrupoFin: TSQLQuery;
    DSPGrupoFin: TDataSetProvider;
    DSGrupoFin: TDataSource;
    CDSGrupoFin: TClientDataSet;
    QGrupoFinGRUCOD: TIntegerField;
    QGrupoFinGRUNOME: TStringField;
    CDSGrupoFinGRUCOD: TIntegerField;
    CDSGrupoFinGRUNOME: TStringField;
    QContaCONCOD: TIntegerField;
    QContaCONNOME: TStringField;
    QContaCONBANCO: TIntegerField;
    QContaBANNOME: TStringField;
    CDSContaCONCOD: TIntegerField;
    CDSContaCONNOME: TStringField;
    CDSContaCONBANCO: TIntegerField;
    CDSContaBANNOME: TStringField;
    CDSContabanco: TStringField;
    QClienteCLIAGENCIA: TStringField;
    QClienteCLICONTA: TIntegerField;
    QClienteCLIGERENTE: TStringField;
    QClienteCLITAXAJUROANO: TFMTBCDField;
    QClienteCLILIMITE: TFMTBCDField;
    QClienteCLIVALORMAXDOCTO: TFMTBCDField;
    CDSClienteCLIAGENCIA: TStringField;
    CDSClienteCLICONTA: TIntegerField;
    CDSClienteCLIGERENTE: TStringField;
    CDSClienteCLITAXAJUROANO: TFMTBCDField;
    CDSClienteCLILIMITE: TFMTBCDField;
    CDSClienteCLIVALORMAXDOCTO: TFMTBCDField;
    CDSClienteCLIEMPRESA: TIntegerField;
    QEmpresa: TSQLQuery;
    DSPEmpresa: TDataSetProvider;
    DSEmpresa: TDataSource;
    CDSEmpresa: TClientDataSet;
    QEmpresaEMPCOD: TIntegerField;
    QEmpresaEMPNOME: TStringField;
    QEmpresaEMPRAZAO: TStringField;
    QEmpresaEMPENDERECO: TStringField;
    QEmpresaEMPBAIRRO: TStringField;
    QEmpresaEMPNUMERO: TIntegerField;
    QEmpresaEMPCIDADE: TIntegerField;
    QEmpresaEMPRESPONSAVEL: TStringField;
    QEmpresaEMPCAB: TBlobField;
    QEmpresaEMPFIGURA: TBlobField;
    QEmpresaEMPTELEFONE: TStringField;
    QEmpresaEMPTELFAX: TStringField;
    QEmpresaEMPSITE: TStringField;
    QEmpresaEMPEMAIL: TStringField;
    QEmpresaEMPFATANUAL: TFMTBCDField;
    QEmpresaEMPNUMFUNC: TIntegerField;
    QEmpresaEMPRESTRICOES: TStringField;
    QEmpresaEMPGARANTIAS: TStringField;
    QEmpresaCIDNOME: TStringField;
    CDSEmpresaEMPCOD: TIntegerField;
    CDSEmpresaEMPNOME: TStringField;
    CDSEmpresaEMPRAZAO: TStringField;
    CDSEmpresaEMPENDERECO: TStringField;
    CDSEmpresaEMPBAIRRO: TStringField;
    CDSEmpresaEMPNUMERO: TIntegerField;
    CDSEmpresaEMPCIDADE: TIntegerField;
    CDSEmpresaEMPRESPONSAVEL: TStringField;
    CDSEmpresaEMPCAB: TBlobField;
    CDSEmpresaEMPFIGURA: TBlobField;
    CDSEmpresaEMPTELEFONE: TStringField;
    CDSEmpresaEMPTELFAX: TStringField;
    CDSEmpresaEMPSITE: TStringField;
    CDSEmpresaEMPEMAIL: TStringField;
    CDSEmpresaEMPFATANUAL: TFMTBCDField;
    CDSEmpresaEMPNUMFUNC: TIntegerField;
    CDSEmpresaEMPRESTRICOES: TStringField;
    CDSEmpresaEMPGARANTIAS: TStringField;
    CDSEmpresaCIDNOME: TStringField;
    CDSEmpresacidade: TStringField;
    CDSClienteconta: TStringField;
    CDSClienteempresa: TStringField;
    QItemFactoryDocto: TSQLQuery;
    CDSFactoryDocto: TClientDataSet;
    DSPFactoryDocto: TDataSetProvider;
    QFactoryDocto: TSQLQuery;
    CDSItemFactoryDocto: TClientDataSet;
    DSPItemFactoryDocto: TDataSetProvider;
    DSItemFactoryDocto: TDataSource;
    DSFactoryDocto: TDataSource;
    QFactoryDoctoProb: TSQLQuery;
    CDSFactoryDoctoProb: TClientDataSet;
    DSPFactoryDoctoProb: TDataSetProvider;
    DSFactoryDoctoProb: TDataSource;
    QFactoryDoctoFACDOCCOD: TIntegerField;
    QFactoryDoctoFACDOCCLIENTE: TIntegerField;
    QFactoryDoctoFACDOCTAXA: TFMTBCDField;
    QFactoryDoctoFACDOCDATA: TDateField;
    CDSFactoryDoctoFACDOCCOD: TIntegerField;
    CDSFactoryDoctoFACDOCCLIENTE: TIntegerField;
    CDSFactoryDoctoFACDOCTAXA: TFMTBCDField;
    CDSFactoryDoctoFACDOCDATA: TDateField;
    CDSFactoryDoctoCliente: TStringField;
    QItemFactoryDoctoITECOD: TIntegerField;
    QItemFactoryDoctoITEBANCO: TIntegerField;
    QItemFactoryDoctoITECHEQUE: TIntegerField;
    QItemFactoryDoctoITECPFCPNJ: TStringField;
    QItemFactoryDoctoITEVCTO: TDateField;
    QItemFactoryDoctoITEVALOR: TFMTBCDField;
    QItemFactoryDoctoITEDESC: TFMTBCDField;
    CDSItemFactoryDoctoITECOD: TIntegerField;
    CDSItemFactoryDoctoITEBANCO: TIntegerField;
    CDSItemFactoryDoctoITECHEQUE: TIntegerField;
    CDSItemFactoryDoctoITECPFCPNJ: TStringField;
    CDSItemFactoryDoctoITEVCTO: TDateField;
    CDSItemFactoryDoctoITEVALOR: TFMTBCDField;
    CDSItemFactoryDoctoITEDESC: TFMTBCDField;
    CDSItemFactoryDoctobanco: TStringField;
    QFactoryDoctoProbFACPROBANCO: TIntegerField;
    QFactoryDoctoProbFACPROCHEQUE: TIntegerField;
    QFactoryDoctoProbFACPROCPFCNPJ: TStringField;
    QFactoryDoctoProbFACPRODEVOLUCAO: TIntegerField;
    QFactoryDoctoProbFACPROMOTIVO: TStringField;
    QFactoryDoctoProbFACPRODATA: TDateField;
    QFactoryDoctoProbFACPROVALOR: TFMTBCDField;
    QFactoryDoctoProbFACPROTAXAS: TFMTBCDField;
    QFactoryDoctoProbFACPROCLIENTE: TIntegerField;
    QFactoryDoctoProbFACPROOBS: TStringField;
    CDSFactoryDoctoProbFACPROBANCO: TIntegerField;
    CDSFactoryDoctoProbFACPROCHEQUE: TIntegerField;
    CDSFactoryDoctoProbFACPROCPFCNPJ: TStringField;
    CDSFactoryDoctoProbFACPRODEVOLUCAO: TIntegerField;
    CDSFactoryDoctoProbFACPROMOTIVO: TStringField;
    CDSFactoryDoctoProbFACPRODATA: TDateField;
    CDSFactoryDoctoProbFACPROVALOR: TFMTBCDField;
    CDSFactoryDoctoProbFACPROTAXAS: TFMTBCDField;
    CDSFactoryDoctoProbFACPROCLIENTE: TIntegerField;
    CDSFactoryDoctoProbFACPROOBS: TStringField;
    CDSFactoryDoctoProbBanco: TStringField;
    CDSFactoryDoctoProbCliente: TStringField;
    QItemFactoryDoctoITELIQ: TFMTBCDField;
    CDSItemFactoryDoctoITELIQ: TFMTBCDField;
    QParamEmpEMPCPFCNPJ: TStringField;
    QParamEmpEMPIE: TStringField;
    CDSParamEmpEMPCPFCNPJ: TStringField;
    CDSParamEmpEMPIE: TStringField;
    QClienteCLICEP: TStringField;
    CDSClienteCLICEP: TStringField;
    QEmpresaEMPCPFCNPJ: TStringField;
    QEmpresaEMPIE: TStringField;
    CDSEmpresaEMPCPFCNPJ: TStringField;
    CDSEmpresaEMPIE: TStringField;
    QFactoryDoctoFACDOCAVALISTA: TStringField;
    QFactoryDoctoFACDOCAVALISTACPF: TStringField;
    CDSFactoryDoctoFACDOCAVALISTA: TStringField;
    CDSFactoryDoctoFACDOCAVALISTACPF: TStringField;
    QItemFactoryDoctoITESACADO: TStringField;
    CDSItemFactoryDoctoITESACADO: TStringField;
    QFactoryDoctoFACDOCVALORIOF: TFMTBCDField;
    CDSFactoryDoctoFACDOCVALORIOF: TFMTBCDField;
    QContPag: TSQLQuery;
    QItemContPag: TSQLQuery;
    DSPItemContPag: TDataSetProvider;
    DSPContPag: TDataSetProvider;
    CDSContPag: TClientDataSet;
    CDSContPagBanco: TStringField;
    CDSContPagCliente: TStringField;
    CDSContPagTotal: TFloatField;
    CDSItemContPag: TClientDataSet;
    DSItemContPag: TDataSource;
    DSContPag: TDataSource;
    QContPagPAGDOCUMENTO: TIntegerField;
    QContPagPAGEMISSAO: TDateField;
    QContPagPAGCLIENTE: TIntegerField;
    QContPagPAGBANCO: TIntegerField;
    QContPagPAGVALOR: TFMTBCDField;
    QContPagCLINOME: TStringField;
    QContPagBANNOME: TStringField;
    QContPagPAGACRESCIMO: TFMTBCDField;
    QContPagPAGDESCONTO: TFMTBCDField;
    QContPagPAGENTRADA: TFMTBCDField;
    QContPagPAGTOTAL: TFMTBCDField;
    QContPagPAGSITUACAO: TStringField;
    QContPagPAGVALORPAGO: TFMTBCDField;
    QContPagPAGPARCELAS: TSmallintField;
    CDSContPagPAGDOCUMENTO: TIntegerField;
    CDSContPagPAGEMISSAO: TDateField;
    CDSContPagPAGCLIENTE: TIntegerField;
    CDSContPagPAGBANCO: TIntegerField;
    CDSContPagPAGVALOR: TFMTBCDField;
    CDSContPagCLINOME: TStringField;
    CDSContPagBANNOME: TStringField;
    CDSContPagPAGACRESCIMO: TFMTBCDField;
    CDSContPagPAGDESCONTO: TFMTBCDField;
    CDSContPagPAGENTRADA: TFMTBCDField;
    CDSContPagPAGTOTAL: TFMTBCDField;
    CDSContPagPAGSITUACAO: TStringField;
    CDSContPagPAGVALORPAGO: TFMTBCDField;
    CDSContPagPAGPARCELAS: TSmallintField;
    QItemContPagITEDOCUMENTO: TIntegerField;
    QItemContPagITEDATA: TDateField;
    QItemContPagITEVALOR: TFMTBCDField;
    QItemContPagITESITUACAO: TStringField;
    QItemContPagITEPAGAMENTO: TDateField;
    CDSItemContPagITEDOCUMENTO: TIntegerField;
    CDSItemContPagITEDATA: TDateField;
    CDSItemContPagITEVALOR: TFMTBCDField;
    CDSItemContPagITESITUACAO: TStringField;
    CDSItemContPagITEPAGAMENTO: TDateField;
    QItemContPagITELCTOCAIXA: TIntegerField;
    CDSItemContPagITELCTOCAIXA: TIntegerField;
    QItemFactoryDoctoITEBAIXADO: TStringField;
    QItemFactoryDoctoITEDATABAIXA: TDateField;
    QItemFactoryDoctoITELCTOCAIXA: TIntegerField;
    CDSItemFactoryDoctoITEBAIXADO: TStringField;
    CDSItemFactoryDoctoITEDATABAIXA: TDateField;
    CDSItemFactoryDoctoITELCTOCAIXA: TIntegerField;
    QItemFactoryDoctoITEIOF: TFloatField;
    CDSItemFactoryDoctoITEIOF: TFloatField;
    QItemFactoryDoctoITETAXA: TFloatField;
    CDSItemFactoryDoctoITETAXA: TFloatField;
    QChaveCAMPO: TStringField;
    QContaClienteCONLCTOCAIXA: TIntegerField;
    CDSContaClienteCONLCTOCAIXA: TIntegerField;
    CDSCaixaEntrada: TFloatField;
    CDSCaixaSaida: TFloatField;
    QCaixaCAIBAIXADO: TStringField;
    CDSCaixaCAIBAIXADO: TStringField;
    QContRecRECPAGAMENTO: TDateField;
    CDSContRecRECPAGAMENTO: TDateField;
    QContRecRECVALOR: TFloatField;
    QContRecRECACRESCIMO: TFloatField;
    QContRecRECDESCONTO: TFloatField;
    QContRecRECENTRADA: TFloatField;
    QContRecRECTOTAL: TFloatField;
    QContRecRECVALORPAGO: TFloatField;
    CDSContRecRECVALOR: TFloatField;
    CDSContRecRECACRESCIMO: TFloatField;
    CDSContRecRECDESCONTO: TFloatField;
    CDSContRecRECENTRADA: TFloatField;
    CDSContRecRECTOTAL: TFloatField;
    CDSContRecRECVALORPAGO: TFloatField;
    QMargem: TSQLQuery;
    CDSMargem: TClientDataSet;
    DSPMargem: TDataSetProvider;
    DSMargem: TDataSource;
    QMargemMARCOD: TIntegerField;
    QMargemMAR1: TFloatField;
    QMargemMAR2: TFloatField;
    QMargemMAR3: TFloatField;
    QMargemMAR4: TFloatField;
    QMargemMAR5: TFloatField;
    CDSMargemMARCOD: TIntegerField;
    CDSMargemMAR1: TFloatField;
    CDSMargemMAR2: TFloatField;
    CDSMargemMAR3: TFloatField;
    CDSMargemMAR4: TFloatField;
    CDSMargemMAR5: TFloatField;
    QProdutoPROMARCA: TIntegerField;
    QProdutoPROUNIEMB: TStringField;
    QProdutoPROQUANTEMB: TIntegerField;
    QProdutoPROUNIVENDA: TStringField;
    QProdutoPROFORNECEDOR: TIntegerField;
    QProdutoPROPESOLIQ: TFloatField;
    QProdutoPROPESOBRUTO: TFloatField;
    QProdutoPROLOCALIZACAO: TStringField;
    QProdutoPROREFERENCIA: TStringField;
    QProdutoPROESTMIN: TFloatField;
    QProdutoPROESTMAX: TFloatField;
    QProdutoPROIPI: TFloatField;
    QProdutoPROCFCUPOM: TIntegerField;
    QProdutoPROCFNOTA: TIntegerField;
    QProdutoPROOBS: TStringField;
    QProdutoPROCODBAREMB: TStringField;
    QProdutoPROCODBARUNI: TStringField;
    QProdutoPROCUSTOMEDIOEMB: TFloatField;
    QProdutoPROCUSTOMEDIOUNI: TFloatField;
    QProdutoPROCUSTOATUEMB: TFloatField;
    QProdutoPROCUSTOATUUNI: TFloatField;
    QProdutoPROULTATU: TDateField;
    QProdutoPROPRECOUSAR: TStringField;
    QProdutoPROMARGEM: TIntegerField;
    QProdutoPROPRECO1: TFloatField;
    QProdutoPROPRECO2: TFloatField;
    QProdutoPROPRECO3: TFloatField;
    QProdutoPROPRECO4: TFloatField;
    QProdutoPROPRECO5: TFloatField;
    CDSProdutoPROMARCA: TIntegerField;
    CDSProdutoPROUNIEMB: TStringField;
    CDSProdutoPROQUANTEMB: TIntegerField;
    CDSProdutoPROUNIVENDA: TStringField;
    CDSProdutoPROFORNECEDOR: TIntegerField;
    CDSProdutoPROPESOLIQ: TFloatField;
    CDSProdutoPROPESOBRUTO: TFloatField;
    CDSProdutoPROLOCALIZACAO: TStringField;
    CDSProdutoPROREFERENCIA: TStringField;
    CDSProdutoPROESTMIN: TFloatField;
    CDSProdutoPROESTMAX: TFloatField;
    CDSProdutoPROIPI: TFloatField;
    CDSProdutoPROCFCUPOM: TIntegerField;
    CDSProdutoPROCFNOTA: TIntegerField;
    CDSProdutoPROOBS: TStringField;
    CDSProdutoPROCODBAREMB: TStringField;
    CDSProdutoPROCODBARUNI: TStringField;
    CDSProdutoPROCUSTOMEDIOEMB: TFloatField;
    CDSProdutoPROCUSTOMEDIOUNI: TFloatField;
    CDSProdutoPROCUSTOATUEMB: TFloatField;
    CDSProdutoPROCUSTOATUUNI: TFloatField;
    CDSProdutoPROULTATU: TDateField;
    CDSProdutoPROPRECOUSAR: TStringField;
    CDSProdutoPROMARGEM: TIntegerField;
    CDSProdutoPROPRECO1: TFloatField;
    CDSProdutoPROPRECO2: TFloatField;
    CDSProdutoPROPRECO3: TFloatField;
    CDSProdutoPROPRECO4: TFloatField;
    CDSProdutoPROPRECO5: TFloatField;
    CDSProdutoMarca: TStringField;
    CDSProdutoFornecedor: TStringField;
    QAliquota: TSQLQuery;
    CDSAliquota: TClientDataSet;
    DSPAliquota: TDataSetProvider;
    DSAliquota: TDataSource;
    QAliquotaALICOD: TIntegerField;
    QAliquotaALITIPO: TStringField;
    QAliquotaALIALIQUOTA: TFloatField;
    QAliquotaALIBASECALC: TFloatField;
    QAliquotaALIOBS: TStringField;
    CDSAliquotaALICOD: TIntegerField;
    CDSAliquotaALITIPO: TStringField;
    CDSAliquotaALIALIQUOTA: TFloatField;
    CDSAliquotaALIBASECALC: TFloatField;
    CDSAliquotaALIOBS: TStringField;
    QCFOP: TSQLQuery;
    CDSCFOP: TClientDataSet;
    DSPCFOP: TDataSetProvider;
    DSCFOP: TDataSource;
    QCFOPCFOPCOD: TStringField;
    QCFOPCFOPNOME: TStringField;
    CDSCFOPCFOPCOD: TStringField;
    CDSCFOPCFOPNOME: TStringField;
    QPlanoPgto: TSQLQuery;
    CDSPlanoPgto: TClientDataSet;
    DSPPlanoPgto: TDataSetProvider;
    DSPlanoPgto: TDataSource;
    QPlanoPgtoPLANOME: TStringField;
    QPlanoPgtoPLAVEZES: TIntegerField;
    QPlanoPgtoPLADIAS: TIntegerField;
    CDSPlanoPgtoPLANOME: TStringField;
    CDSPlanoPgtoPLAVEZES: TIntegerField;
    CDSPlanoPgtoPLADIAS: TIntegerField;
    QPlanoPgtoPLACOD: TIntegerField;
    CDSPlanoPgtoPLACOD: TIntegerField;
    QDeposito: TSQLQuery;
    CDSDeposito: TClientDataSet;
    DSPDeposito: TDataSetProvider;
    DSDeposito: TDataSource;
    QDepositoDEPCOD: TIntegerField;
    QDepositoDEPNOME: TStringField;
    CDSDepositoDEPCOD: TIntegerField;
    CDSDepositoDEPNOME: TStringField;
    QTipoCob: TSQLQuery;
    CDSTipoCob: TClientDataSet;
    DSPTipoCob: TDataSetProvider;
    DSTipoCob: TDataSource;
    QTipoCobTIPCOD: TIntegerField;
    QTipoCobTIPNOME: TStringField;
    CDSTipoCobTIPCOD: TIntegerField;
    CDSTipoCobTIPNOME: TStringField;
    QObservacoes: TSQLQuery;
    CDSObservacoes: TClientDataSet;
    DSPObservacoes: TDataSetProvider;
    DSObservacoes: TDataSource;
    QObservacoesOBSCOD: TIntegerField;
    QObservacoesOBSTEXTO: TMemoField;
    CDSObservacoesOBSCOD: TIntegerField;
    CDSObservacoesOBSTEXTO: TMemoField;
    CDSObservacoestexto: TStringField;
    QGrupoProd: TSQLQuery;
    CDSGrupoProd: TClientDataSet;
    DSPGrupoProd: TDataSetProvider;
    DSGrupoProd: TDataSource;
    QGrupoProdGRUCOD: TIntegerField;
    QGrupoProdGRUNOME: TStringField;
    CDSGrupoProdGRUCOD: TIntegerField;
    CDSGrupoProdGRUNOME: TStringField;
    QAliquotaICMS: TSQLQuery;
    CDSAliquotaICMS: TClientDataSet;
    DSPAliquotaICMS: TDataSetProvider;
    DSAliquotaICMS: TDataSource;
    QAliquotaICMSALISIGLA: TStringField;
    QAliquotaICMSALICFOP: TStringField;
    QAliquotaICMSALICODIGO: TIntegerField;
    QAliquotaICMSALIICMSREVENDA: TFloatField;
    QAliquotaICMSALIICMSCONSUMIDOR: TFloatField;
    QAliquotaICMSALIBASECALC: TFloatField;
    QAliquotaICMSALISITTRIB: TFloatField;
    QAliquotaICMSALIOBS: TStringField;
    CDSAliquotaICMSALISIGLA: TStringField;
    CDSAliquotaICMSALICFOP: TStringField;
    CDSAliquotaICMSALICODIGO: TIntegerField;
    CDSAliquotaICMSALIICMSREVENDA: TFloatField;
    CDSAliquotaICMSALIICMSCONSUMIDOR: TFloatField;
    CDSAliquotaICMSALIBASECALC: TFloatField;
    CDSAliquotaICMSALISITTRIB: TFloatField;
    CDSAliquotaICMSALIOBS: TStringField;
    CDSAliquotaICMSCFOP: TStringField;
    QNotaEnt: TSQLQuery;
    CDSNotaEnt: TClientDataSet;
    DSPNotaEnt: TDataSetProvider;
    DSNotaEnt: TDataSource;
    QItemNotaEnt: TSQLQuery;
    CDSItemNotaEnt: TClientDataSet;
    DSPItemNotaEnt: TDataSetProvider;
    DSItemNotaEnt: TDataSource;
    QNotaEntNOTFORNECEDOR: TIntegerField;
    QNotaEntNOTNOTA: TIntegerField;
    QNotaEntNOTPEDIDO: TIntegerField;
    QNotaEntNOTDATA: TDateField;
    QNotaEntNOTDATALCTO: TDateField;
    QNotaEntNOTDEPOSITO: TIntegerField;
    QNotaEntNOTCFOP: TStringField;
    QNotaEntNOTSUBTOTAL: TFloatField;
    QNotaEntNOTICMS: TFloatField;
    QNotaEntNOTIPI: TFloatField;
    QNotaEntNOTICMSSUBST: TFloatField;
    QNotaEntNOTFRETE: TFloatField;
    QNotaEntNOTICMSFRETE: TFloatField;
    QNotaEntNOTSEGURO: TFloatField;
    QNotaEntNOTOUTRASDESP: TFloatField;
    QNotaEntNOTDESCONTO: TFloatField;
    QNotaEntNOTVALORBASECALC: TFloatField;
    QNotaEntNOTTAXAJURO: TFloatField;
    QNotaEntNOTTOTAL: TFloatField;
    QNotaEntNOTPLANOPGTO: TFloatField;
    QNotaEntNOTATUCONTPAGAR: TStringField;
    QNotaEntNOTCONTPAGAR: TIntegerField;
    QNotaEntNOTENTRADA: TFloatField;
    QNotaEntNOTBANCO: TIntegerField;
    QNotaEntNOTCIDADE: TIntegerField;
    CDSNotaEntNOTFORNECEDOR: TIntegerField;
    CDSNotaEntNOTNOTA: TIntegerField;
    CDSNotaEntNOTPEDIDO: TIntegerField;
    CDSNotaEntNOTDATA: TDateField;
    CDSNotaEntNOTDATALCTO: TDateField;
    CDSNotaEntNOTDEPOSITO: TIntegerField;
    CDSNotaEntNOTCFOP: TStringField;
    CDSNotaEntNOTSUBTOTAL: TFloatField;
    CDSNotaEntNOTICMS: TFloatField;
    CDSNotaEntNOTIPI: TFloatField;
    CDSNotaEntNOTICMSSUBST: TFloatField;
    CDSNotaEntNOTFRETE: TFloatField;
    CDSNotaEntNOTICMSFRETE: TFloatField;
    CDSNotaEntNOTSEGURO: TFloatField;
    CDSNotaEntNOTOUTRASDESP: TFloatField;
    CDSNotaEntNOTDESCONTO: TFloatField;
    CDSNotaEntNOTVALORBASECALC: TFloatField;
    CDSNotaEntNOTTAXAJURO: TFloatField;
    CDSNotaEntNOTTOTAL: TFloatField;
    CDSNotaEntNOTPLANOPGTO: TFloatField;
    CDSNotaEntNOTATUCONTPAGAR: TStringField;
    CDSNotaEntNOTCONTPAGAR: TIntegerField;
    CDSNotaEntNOTENTRADA: TFloatField;
    CDSNotaEntNOTBANCO: TIntegerField;
    CDSNotaEntNOTCIDADE: TIntegerField;
    CDSNotaEntfornecedor: TStringField;
    CDSNotaEntdeposito: TStringField;
    CDSNotaEntcfop: TStringField;
    CDSNotaEntplanopgto: TStringField;
    CDSNotaEntbanco: TStringField;
    CDSNotaEntcidade: TStringField;
    CDSItemNotaEntITEFORNECEDOR: TIntegerField;
    CDSItemNotaEntITENOTA: TIntegerField;
    CDSItemNotaEntITEPRODUTO: TIntegerField;
    CDSItemNotaEntITECFOP: TStringField;
    CDSItemNotaEntITESITTRIB: TIntegerField;
    CDSItemNotaEntITEBASECALC: TIntegerField;
    CDSItemNotaEntITEQUANT: TFloatField;
    CDSItemNotaEntITEPRECO: TFloatField;
    CDSItemNotaEntITEICMS: TFloatField;
    CDSItemNotaEntITEIPI: TFloatField;
    CDSItemNotaEntITEDESC: TFloatField;
    CDSItemNotaEntITETOTAL: TFloatField;
    CDSNotaEntfornecedordados: TStringField;
    CDSItemNotaEntProduto: TStringField;
    QBancoBANMENSAGEM: TMemoField;
    CDSBancoBANMENSAGEM: TMemoField;
    QVctoNotaEnt: TSQLQuery;
    CDSVctoNotaEnt: TClientDataSet;
    DSPVctoNotaEnt: TDataSetProvider;
    DSVctoNotaEnt: TDataSource;
    QItemNotaEntITEFORNECEDOR: TIntegerField;
    QItemNotaEntITENOTA: TIntegerField;
    QItemNotaEntITEPRODUTO: TIntegerField;
    QItemNotaEntITECFOP: TStringField;
    QItemNotaEntITESITTRIB: TIntegerField;
    QItemNotaEntITEBASECALC: TIntegerField;
    QItemNotaEntITEQUANT: TFloatField;
    QItemNotaEntITEPRECO: TFloatField;
    QItemNotaEntITEICMS: TFloatField;
    QItemNotaEntITEIPI: TFloatField;
    QItemNotaEntITEDESC: TFloatField;
    QItemNotaEntITETOTAL: TFloatField;
    QVctoNotaEntVCTOFORNECEDOR: TIntegerField;
    QVctoNotaEntVCTONOTA: TIntegerField;
    QVctoNotaEntVCTODATA: TDateField;
    QVctoNotaEntVCTOVALOR: TFloatField;
    CDSVctoNotaEntVCTOFORNECEDOR: TIntegerField;
    CDSVctoNotaEntVCTONOTA: TIntegerField;
    CDSVctoNotaEntVCTODATA: TDateField;
    CDSVctoNotaEntVCTOVALOR: TFloatField;
    QProdutoGRUNOME: TStringField;
    CDSProdutoGRUNOME: TStringField;
    QItemContRec: TSQLQuery;
    QItemContRecITEDOCUMENTO: TIntegerField;
    QItemContRecITEDATA: TDateField;
    QItemContRecITESITUACAO: TStringField;
    QItemContRecITEPAGAMENTO: TDateField;
    QItemContRecITEVALOR: TFloatField;
    CDSItemContRec: TClientDataSet;
    CDSItemContRecITEDOCUMENTO: TIntegerField;
    CDSItemContRecITEDATA: TDateField;
    CDSItemContRecITESITUACAO: TStringField;
    CDSItemContRecITEPAGAMENTO: TDateField;
    CDSItemContRecITEVALOR: TFloatField;
    DSPItemContRec: TDataSetProvider;
    DSItemContRec: TDataSource;
    QContRecRECNUMBANCO: TStringField;
    CDSContRecRECNUMBANCO: TStringField;
    QNotaEntDEPNOME: TStringField;
    QNotaEntCLINOME: TStringField;
    QNotaEntCFOPNOME: TStringField;
    CDSNotaEntDEPNOME: TStringField;
    CDSNotaEntCLINOME: TStringField;
    CDSNotaEntCFOPNOME: TStringField;
    QNotaEntNOTDATASTR: TStringField;
    CDSNotaEntNOTDATASTR: TStringField;
    QNotaEntNOTOPERACAO: TStringField;
    CDSNotaEntNOTOPERACAO: TStringField;
    QOutraSaida: TSQLQuery;
    CDSOutraSaida: TClientDataSet;
    DSPOutraSaida: TDataSetProvider;
    DSOutraSaida: TDataSource;
    QOutraSaidaOUTCOD: TIntegerField;
    QOutraSaidaOUTTIPO: TStringField;
    QOutraSaidaOUTDATA: TDateField;
    QOutraSaidaOUTPRODUTO: TIntegerField;
    QOutraSaidaOUTQUANT: TFloatField;
    QOutraSaidaOUTMOTIVO: TStringField;
    CDSOutraSaidaOUTCOD: TIntegerField;
    CDSOutraSaidaOUTTIPO: TStringField;
    CDSOutraSaidaOUTDATA: TDateField;
    CDSOutraSaidaOUTPRODUTO: TIntegerField;
    CDSOutraSaidaOUTQUANT: TFloatField;
    CDSOutraSaidaOUTMOTIVO: TStringField;
    CDSOutraSaidaproduto: TStringField;
    QRechCenterRECNOME: TStringField;
    QRechCenterRECENDERECO: TStringField;
    QRechCenterRECBAIRRO: TStringField;
    QRechCenterRECCIDADE: TStringField;
    QRechCenterRECTELEFONE: TStringField;
    QRechCenterRECFAX: TStringField;
    QRechCenterRECSITE: TStringField;
    QRechCenterRECEMAIL: TStringField;
    QRechCenterRECLOGO: TBlobField;
    QRechCenterRECSISTEMA: TStringField;
    QRechCenterRECVERSAO: TIntegerField;
    CDSRechCenterRECNOME: TStringField;
    CDSRechCenterRECENDERECO: TStringField;
    CDSRechCenterRECBAIRRO: TStringField;
    CDSRechCenterRECCIDADE: TStringField;
    CDSRechCenterRECTELEFONE: TStringField;
    CDSRechCenterRECFAX: TStringField;
    CDSRechCenterRECSITE: TStringField;
    CDSRechCenterRECEMAIL: TStringField;
    CDSRechCenterRECLOGO: TBlobField;
    CDSRechCenterRECSISTEMA: TStringField;
    CDSRechCenterRECVERSAO: TIntegerField;
    QVeiculo: TSQLQuery;
    CDSVeiculo: TClientDataSet;
    DSPVeiculo: TDataSetProvider;
    DSVeiculo: TDataSource;
    QVeiculoVEICOD: TIntegerField;
    QVeiculoVEIPLACA: TStringField;
    QVeiculoVEICHASSI: TStringField;
    QVeiculoVEICIDADE: TIntegerField;
    QVeiculoVEIMODELO: TIntegerField;
    QVeiculoVEIDESCRICAO: TStringField;
    QVeiculoVEIANOFAB: TIntegerField;
    QVeiculoVEIANOMOD: TIntegerField;
    QVeiculoVEIPROPRIETARIO: TIntegerField;
    QVeiculoVEIDATAVENDA: TDateField;
    QVeiculoVEICONCVENDA: TStringField;
    QVeiculoVEIULTIMACONC: TStringField;
    QVeiculoVEICOR: TStringField;
    QVeiculoVEICAPACTANQUE: TFloatField;
    QVeiculoVEIOBS: TMemoField;
    CDSVeiculoVEICOD: TIntegerField;
    CDSVeiculoVEIPLACA: TStringField;
    CDSVeiculoVEICHASSI: TStringField;
    CDSVeiculoVEICIDADE: TIntegerField;
    CDSVeiculoVEIMODELO: TIntegerField;
    CDSVeiculoVEIDESCRICAO: TStringField;
    CDSVeiculoVEIANOFAB: TIntegerField;
    CDSVeiculoVEIANOMOD: TIntegerField;
    CDSVeiculoVEIPROPRIETARIO: TIntegerField;
    CDSVeiculoVEIDATAVENDA: TDateField;
    CDSVeiculoVEICONCVENDA: TStringField;
    CDSVeiculoVEIULTIMACONC: TStringField;
    CDSVeiculoVEICOR: TStringField;
    CDSVeiculoVEICAPACTANQUE: TFloatField;
    CDSVeiculoVEIOBS: TMemoField;
    CDSVeiculomodelo: TStringField;
    CDSVeiculomodelo2: TStringField;
    CDSVeiculoproprietario: TStringField;
    QPlanoPgtoPLATIPO: TStringField;
    QPlanoPgtoPLADIA: TIntegerField;
    QPlanoPgtoPLA1: TIntegerField;
    QPlanoPgtoPLA2: TIntegerField;
    QPlanoPgtoPLA3: TIntegerField;
    QPlanoPgtoPLA4: TIntegerField;
    QPlanoPgtoPLA5: TIntegerField;
    QPlanoPgtoPLA6: TIntegerField;
    QPlanoPgtoPLA7: TIntegerField;
    QPlanoPgtoPLA8: TIntegerField;
    QPlanoPgtoPLA9: TIntegerField;
    QPlanoPgtoPLA10: TIntegerField;
    CDSPlanoPgtoPLATIPO: TStringField;
    CDSPlanoPgtoPLADIA: TIntegerField;
    CDSPlanoPgtoPLA1: TIntegerField;
    CDSPlanoPgtoPLA2: TIntegerField;
    CDSPlanoPgtoPLA3: TIntegerField;
    CDSPlanoPgtoPLA4: TIntegerField;
    CDSPlanoPgtoPLA5: TIntegerField;
    CDSPlanoPgtoPLA6: TIntegerField;
    CDSPlanoPgtoPLA7: TIntegerField;
    CDSPlanoPgtoPLA8: TIntegerField;
    CDSPlanoPgtoPLA9: TIntegerField;
    CDSPlanoPgtoPLA10: TIntegerField;
    QContRecRECPLANOPGTO: TIntegerField;
    CDSContRecRECPLANOPGTO: TIntegerField;
    CDSContRecplanopgto: TStringField;
    QContPagPAGPLANOPGTO: TIntegerField;
    CDSContPagPAGPLANOPGTO: TIntegerField;
    CDSContPagplanopgto: TStringField;
    QProdutoPROMARGEM1: TFloatField;
    QProdutoPROMARGEM2: TFloatField;
    QProdutoPROMARGEM3: TFloatField;
    QProdutoPROMARGEM4: TFloatField;
    QProdutoPROMARGEM5: TFloatField;
    CDSProdutoPROMARGEM1: TFloatField;
    CDSProdutoPROMARGEM2: TFloatField;
    CDSProdutoPROMARGEM3: TFloatField;
    CDSProdutoPROMARGEM4: TFloatField;
    CDSProdutoPROMARGEM5: TFloatField;
    QCheque: TSQLQuery;
    CDSCheque: TClientDataSet;
    DSPCheque: TDataSetProvider;
    DSCheque: TDataSource;
    QChequeCHEBANCO: TIntegerField;
    QChequeCHECONTA: TIntegerField;
    QChequeCHENUMERO: TIntegerField;
    QChequeCHEEMISSAO: TDateField;
    QChequeCHEVCTO: TDateField;
    QChequeCHEVALOR: TFloatField;
    QChequeCHENOMINAL: TStringField;
    QChequeCHERESPONSAVEL: TStringField;
    CDSChequeCHEBANCO: TIntegerField;
    CDSChequeCHECONTA: TIntegerField;
    CDSChequeCHENUMERO: TIntegerField;
    CDSChequeCHEEMISSAO: TDateField;
    CDSChequeCHEVCTO: TDateField;
    CDSChequeCHEVALOR: TFloatField;
    CDSChequeCHENOMINAL: TStringField;
    CDSChequeCHERESPONSAVEL: TStringField;
    CDSChequeBanco: TStringField;
    QNotaFisc: TSQLQuery;
    CDSNotaFisc: TClientDataSet;
    DSPNotaFisc: TDataSetProvider;
    DSNotaFisc: TDataSource;
    QItemNotaFisc: TSQLQuery;
    CDSItemNotaFisc: TClientDataSet;
    DSPItemNotaFisc: TDataSetProvider;
    DSItemNotaFisc: TDataSource;
    QVctoNotaFisc: TSQLQuery;
    CDSVctoNotaFisc: TClientDataSet;
    DSPVctoNotaFisc: TDataSetProvider;
    DSVctoNotaFisc: TDataSource;
    QNotaFiscNOTNUMERO: TIntegerField;
    QNotaFiscNOTEMISSAO: TDateField;
    QNotaFiscNOTSAIDA: TDateField;
    QNotaFiscNOTHORASAIDA: TStringField;
    QNotaFiscNOTCFOP: TStringField;
    QNotaFiscNOTCLIENTE: TIntegerField;
    QNotaFiscNOTOPERACAO: TStringField;
    QNotaFiscNOTSUBTOTAL: TFloatField;
    QNotaFiscNOTDESCONTO: TFloatField;
    QNotaFiscNOTFRETE: TFloatField;
    QNotaFiscNOTFUNRURAL: TFloatField;
    QNotaFiscNOTOUTRASDESP: TFloatField;
    QNotaFiscNOTIPI: TFloatField;
    QNotaFiscNOTTOTAL: TFloatField;
    QNotaFiscNOTBASECALC: TFloatField;
    QNotaFiscNOTICMS: TFloatField;
    QNotaFiscNOTTRANSPORTADORA: TIntegerField;
    QNotaFiscNOTPLACA: TStringField;
    QNotaFiscNOTVOLQUANT: TStringField;
    QNotaFiscNOTVOLESPECIE: TStringField;
    QNotaFiscNOTVOLPESOBRUTO: TFloatField;
    QNotaFiscNOTVOLPESOLIQ: TFloatField;
    QNotaFiscNOTVOLMARCA: TStringField;
    QNotaFiscNOTVOLNUMERO: TStringField;
    QNotaFiscNOTPLANOPGTO: TIntegerField;
    QNotaFiscNOTCIDADE: TIntegerField;
    QNotaFiscNOTBANCO: TIntegerField;
    QNotaFiscNOTVENDEDOR: TIntegerField;
    QNotaFiscNOTATUCONTREC: TStringField;
    QNotaFiscNOTCONTREC: TIntegerField;
    QNotaFiscNOTOBS: TMemoField;
    QNotaFiscCLINOME: TStringField;
    QNotaFiscCFOPNOME: TStringField;
    CDSNotaFiscNOTNUMERO: TIntegerField;
    CDSNotaFiscNOTEMISSAO: TDateField;
    CDSNotaFiscNOTSAIDA: TDateField;
    CDSNotaFiscNOTHORASAIDA: TStringField;
    CDSNotaFiscNOTCFOP: TStringField;
    CDSNotaFiscNOTCLIENTE: TIntegerField;
    CDSNotaFiscNOTOPERACAO: TStringField;
    CDSNotaFiscNOTSUBTOTAL: TFloatField;
    CDSNotaFiscNOTDESCONTO: TFloatField;
    CDSNotaFiscNOTFRETE: TFloatField;
    CDSNotaFiscNOTFUNRURAL: TFloatField;
    CDSNotaFiscNOTOUTRASDESP: TFloatField;
    CDSNotaFiscNOTIPI: TFloatField;
    CDSNotaFiscNOTTOTAL: TFloatField;
    CDSNotaFiscNOTBASECALC: TFloatField;
    CDSNotaFiscNOTICMS: TFloatField;
    CDSNotaFiscNOTTRANSPORTADORA: TIntegerField;
    CDSNotaFiscNOTPLACA: TStringField;
    CDSNotaFiscNOTVOLQUANT: TStringField;
    CDSNotaFiscNOTVOLESPECIE: TStringField;
    CDSNotaFiscNOTVOLPESOBRUTO: TFloatField;
    CDSNotaFiscNOTVOLPESOLIQ: TFloatField;
    CDSNotaFiscNOTVOLMARCA: TStringField;
    CDSNotaFiscNOTVOLNUMERO: TStringField;
    CDSNotaFiscNOTPLANOPGTO: TIntegerField;
    CDSNotaFiscNOTCIDADE: TIntegerField;
    CDSNotaFiscNOTBANCO: TIntegerField;
    CDSNotaFiscNOTVENDEDOR: TIntegerField;
    CDSNotaFiscNOTATUCONTREC: TStringField;
    CDSNotaFiscNOTCONTREC: TIntegerField;
    CDSNotaFiscNOTOBS: TMemoField;
    CDSNotaFiscCLINOME: TStringField;
    CDSNotaFiscCFOPNOME: TStringField;
    CDSNotaFisccliente: TStringField;
    CDSNotaFisctransportadora: TStringField;
    CDSNotaFisccidade: TStringField;
    CDSNotaFiscbanco: TStringField;
    CDSNotaFisccfop: TStringField;
    CDSNotaFiscvendedor: TStringField;
    CDSNotaFiscclientedados: TStringField;
    CDSNotaFiscplanopgto: TStringField;
    QItemNotaFiscITENUMERO: TIntegerField;
    QItemNotaFiscITEPRODUTO: TIntegerField;
    QItemNotaFiscITEQUANT: TFloatField;
    QItemNotaFiscITEPRECO: TFloatField;
    QItemNotaFiscITEICMS: TFloatField;
    QItemNotaFiscITECUSTO: TFloatField;
    QItemNotaFiscITEIPI: TFloatField;
    CDSItemNotaFiscITENUMERO: TIntegerField;
    CDSItemNotaFiscITEPRODUTO: TIntegerField;
    CDSItemNotaFiscITEQUANT: TFloatField;
    CDSItemNotaFiscITEPRECO: TFloatField;
    CDSItemNotaFiscITEICMS: TFloatField;
    CDSItemNotaFiscITECUSTO: TFloatField;
    CDSItemNotaFiscITEIPI: TFloatField;
    CDSItemNotaFiscproduto: TStringField;
    QVctoNotaFiscVCTONUMERO: TIntegerField;
    QVctoNotaFiscVCTODATA: TDateField;
    QVctoNotaFiscVCTOVALOR: TFloatField;
    CDSVctoNotaFiscVCTONUMERO: TIntegerField;
    CDSVctoNotaFiscVCTODATA: TDateField;
    CDSVctoNotaFiscVCTOVALOR: TFloatField;
    QNotaFiscNOTENTRADA: TFloatField;
    CDSNotaFiscNOTENTRADA: TFloatField;
    QItemNotaFiscITETOTAL: TFloatField;
    CDSItemNotaFiscITETOTAL: TFloatField;
    QItemNotaFiscITECFOP: TStringField;
    CDSItemNotaFiscITECFOP: TStringField;
    QItemNotaFiscITEBASECALC: TFloatField;
    QItemNotaFiscITEDESC: TFloatField;
    CDSItemNotaFiscITEBASECALC: TFloatField;
    CDSItemNotaFiscITEDESC: TFloatField;
    QClienteCLIEMPRESA: TIntegerField;
    QClienteCLICOMPRADOR: TStringField;
    QProdutoPROCODFORNECEDOR: TStringField;
    CDSProdutoPROCODFORNECEDOR: TStringField;
    CDSClienteCLICOMPRADOR: TStringField;
    QServico: TSQLQuery;
    DSPServico: TDataSetProvider;
    DSServico: TDataSource;
    CDSServico: TClientDataSet;
    QServicoSERCOD: TIntegerField;
    QServicoSERNOME: TStringField;
    QServicoSERVALOR: TFloatField;
    CDSServicoSERCOD: TIntegerField;
    CDSServicoSERNOME: TStringField;
    CDSServicoSERVALOR: TFloatField;
    QOrdemServico: TSQLQuery;
    CDSOrdemServico: TClientDataSet;
    DSPOrdemServico: TDataSetProvider;
    DSOrdemServico: TDataSource;
    QOrdemServicoProduto: TSQLQuery;
    CDSOrdemServicoProduto: TClientDataSet;
    DSPOrdemServicoProduto: TDataSetProvider;
    DSOrdemServicoProduto: TDataSource;
    QOrdemServicoServico: TSQLQuery;
    CDSOrdemServicoServico: TClientDataSet;
    DSPOrdemServicoServico: TDataSetProvider;
    DSOrdemServicoServico: TDataSource;
    QOrdemServicoProdutoORDPRONUMERO: TIntegerField;
    QOrdemServicoProdutoORDPROPRODUTO: TIntegerField;
    QOrdemServicoProdutoORDPROQUANT: TFloatField;
    QOrdemServicoProdutoORDPROVALOR: TFloatField;
    QOrdemServicoProdutoORDPROCUSTO: TFloatField;
    QOrdemServicoProdutoORDPROTOTAL: TFloatField;
    CDSOrdemServicoProdutoORDPRONUMERO: TIntegerField;
    CDSOrdemServicoProdutoORDPROPRODUTO: TIntegerField;
    CDSOrdemServicoProdutoORDPROQUANT: TFloatField;
    CDSOrdemServicoProdutoORDPROVALOR: TFloatField;
    CDSOrdemServicoProdutoORDPROCUSTO: TFloatField;
    CDSOrdemServicoProdutoORDPROTOTAL: TFloatField;
    QOrdemServicoServicoORDSERNUMERO: TIntegerField;
    QOrdemServicoServicoORDSERSERVICO: TIntegerField;
    QOrdemServicoServicoORDSERQUANT: TFloatField;
    QOrdemServicoServicoORDSERVALOR: TFloatField;
    QOrdemServicoServicoORDSERTOTAL: TFloatField;
    CDSOrdemServicoServicoORDSERNUMERO: TIntegerField;
    CDSOrdemServicoServicoORDSERSERVICO: TIntegerField;
    CDSOrdemServicoServicoORDSERQUANT: TFloatField;
    CDSOrdemServicoServicoORDSERVALOR: TFloatField;
    CDSOrdemServicoServicoORDSERTOTAL: TFloatField;
    CDSOrdemServicoProdutoproduto: TStringField;
    CDSOrdemServicoServicoservico: TStringField;
    QOrdemServicoORDNUMERO: TIntegerField;
    QOrdemServicoORDDATAENT: TDateField;
    QOrdemServicoORDHORAENT: TStringField;
    QOrdemServicoORDCLIENTE: TIntegerField;
    QOrdemServicoORDVEICULO: TIntegerField;
    QOrdemServicoORDTIPOSERVICO: TStringField;
    QOrdemServicoORDDATASAI: TDateField;
    QOrdemServicoORDHORASAI: TStringField;
    QOrdemServicoORDVENDEDOR: TIntegerField;
    QOrdemServicoORDTOTALPRODUTOS: TFloatField;
    QOrdemServicoORDTOTALSERVICOS: TFloatField;
    QOrdemServicoORDACRESCIMO: TFloatField;
    QOrdemServicoORDDESCONTO: TFloatField;
    QOrdemServicoORDTOTAL: TFloatField;
    QOrdemServicoORDPLANOPGTO: TIntegerField;
    QOrdemServicoORDBANCO: TIntegerField;
    QOrdemServicoORDOBS: TMemoField;
    QOrdemServicoORDBAIXADO: TStringField;
    CDSOrdemServicoORDNUMERO: TIntegerField;
    CDSOrdemServicoORDDATAENT: TDateField;
    CDSOrdemServicoORDHORAENT: TStringField;
    CDSOrdemServicoORDCLIENTE: TIntegerField;
    CDSOrdemServicoORDVEICULO: TIntegerField;
    CDSOrdemServicoORDTIPOSERVICO: TStringField;
    CDSOrdemServicoORDDATASAI: TDateField;
    CDSOrdemServicoORDHORASAI: TStringField;
    CDSOrdemServicoORDVENDEDOR: TIntegerField;
    CDSOrdemServicoORDTOTALPRODUTOS: TFloatField;
    CDSOrdemServicoORDTOTALSERVICOS: TFloatField;
    CDSOrdemServicoORDACRESCIMO: TFloatField;
    CDSOrdemServicoORDDESCONTO: TFloatField;
    CDSOrdemServicoORDTOTAL: TFloatField;
    CDSOrdemServicoORDPLANOPGTO: TIntegerField;
    CDSOrdemServicoORDBANCO: TIntegerField;
    CDSOrdemServicoORDOBS: TMemoField;
    CDSOrdemServicoORDBAIXADO: TStringField;
    QOrdemServicoORDATUCONTREC: TStringField;
    QOrdemServicoORDCONTREC: TIntegerField;
    CDSOrdemServicoORDATUCONTREC: TStringField;
    CDSOrdemServicoORDCONTREC: TIntegerField;
    QOrdemServicoVcto: TSQLQuery;
    CDSOrdemServicoVcto: TClientDataSet;
    DSPOrdemServicoVcto: TDataSetProvider;
    DSOrdemServicoVcto: TDataSource;
    QOrdemServicoVctoORDVCTONUMERO: TIntegerField;
    QOrdemServicoVctoORDVCTODATA: TDateField;
    QOrdemServicoVctoORDVCTOVALOR: TFloatField;
    CDSOrdemServicoVctoORDVCTONUMERO: TIntegerField;
    CDSOrdemServicoVctoORDVCTODATA: TDateField;
    CDSOrdemServicoVctoORDVCTOVALOR: TFloatField;
    CDSOrdemServicocliente: TStringField;
    CDSOrdemServicoveiculo: TStringField;
    CDSOrdemServicovendedor: TStringField;
    CDSOrdemServicoplanopgto: TStringField;
    CDSOrdemServicobanco: TStringField;
    QOrdemServicoORDENTRADA: TFloatField;
    CDSOrdemServicoORDENTRADA: TFloatField;
    CDSOrdemServicoclientedados: TStringField;
    QItemContRecITELCTOCAIXA: TIntegerField;
    CDSItemContRecITELCTOCAIXA: TIntegerField;
    QOutraSaidaOUTLCTOCAIXA: TIntegerField;
    CDSOutraSaidaOUTLCTOCAIXA: TIntegerField;
    QModeloMODCOD: TIntegerField;
    QModeloMODNOME: TStringField;
    QModeloMODMARCA: TIntegerField;
    CDSModeloMODCOD: TIntegerField;
    CDSModeloMODNOME: TStringField;
    CDSModeloMODMARCA: TIntegerField;
    CDSModelomarca: TStringField;
    QClienteCLITIPOIMOB: TStringField;
    CDSClienteCLITIPOIMOB: TStringField;
    QImovel: TSQLQuery;
    DSPImovel: TDataSetProvider;
    DSImovel: TDataSource;
    CDSImovel: TClientDataSet;
    QImovelIMOCOD: TIntegerField;
    QImovelIMOEMPREENDIMENTO: TStringField;
    QImovelIMOPROPRIETARIO: TIntegerField;
    QImovelIMOCONSTRUTORA: TStringField;
    QImovelIMOENDERECO: TStringField;
    QImovelIMONUMERO: TIntegerField;
    QImovelIMOBAIRRO: TStringField;
    QImovelIMOCIDADE: TIntegerField;
    QImovelIMOREFERENCIA: TStringField;
    QImovelIMOPAVIMENTO: TIntegerField;
    QImovelIMOAREAUTIL: TFloatField;
    QImovelIMOAREACOMUM: TFloatField;
    QImovelIMOAREAGARAGEM: TFloatField;
    QImovelIMODORMITORIOS: TIntegerField;
    QImovelIMOSUITES: TIntegerField;
    QImovelIMOBANHEIROS: TIntegerField;
    QImovelIMOSALAS: TIntegerField;
    QImovelIMOSACADAS: TIntegerField;
    QImovelIMODESCRICAO: TMemoField;
    QImovelIMOFOTO1: TStringField;
    QImovelIMOFOTO2: TStringField;
    QImovelIMOFOTO3: TStringField;
    QImovelIMOFOTO4: TStringField;
    QImovelIMOFOTO5: TStringField;
    QImovelIMOALUGADO: TStringField;
    CDSImovelIMOCOD: TIntegerField;
    CDSImovelIMOEMPREENDIMENTO: TStringField;
    CDSImovelIMOPROPRIETARIO: TIntegerField;
    CDSImovelIMOCONSTRUTORA: TStringField;
    CDSImovelIMOENDERECO: TStringField;
    CDSImovelIMONUMERO: TIntegerField;
    CDSImovelIMOBAIRRO: TStringField;
    CDSImovelIMOCIDADE: TIntegerField;
    CDSImovelIMOREFERENCIA: TStringField;
    CDSImovelIMOPAVIMENTO: TIntegerField;
    CDSImovelIMOAREAUTIL: TFloatField;
    CDSImovelIMOAREACOMUM: TFloatField;
    CDSImovelIMOAREAGARAGEM: TFloatField;
    CDSImovelIMODORMITORIOS: TIntegerField;
    CDSImovelIMOSUITES: TIntegerField;
    CDSImovelIMOBANHEIROS: TIntegerField;
    CDSImovelIMOSALAS: TIntegerField;
    CDSImovelIMOSACADAS: TIntegerField;
    CDSImovelIMODESCRICAO: TMemoField;
    CDSImovelIMOFOTO1: TStringField;
    CDSImovelIMOFOTO2: TStringField;
    CDSImovelIMOFOTO3: TStringField;
    CDSImovelIMOFOTO4: TStringField;
    CDSImovelIMOFOTO5: TStringField;
    CDSImovelIMOALUGADO: TStringField;
    CDSImovelcidade: TStringField;
    CDSImovelproprietario: TStringField;
    QContrato: TSQLQuery;
    CDSContrato: TClientDataSet;
    DSPContrato: TDataSetProvider;
    DSContrato: TDataSource;
    QItemContrato: TSQLQuery;
    CDSItemContrato: TClientDataSet;
    DSPItemContrato: TDataSetProvider;
    DSItemContrato: TDataSource;
    QContratoCONCOD: TIntegerField;
    QContratoCONLOCADOR: TIntegerField;
    QContratoCONLOCATARIO: TIntegerField;
    QContratoCONIMOVEL: TIntegerField;
    QContratoCONINICIO: TDateField;
    QContratoCONFIM: TDateField;
    QContratoCONESPECIE: TStringField;
    QContratoCONVALOR: TFloatField;
    QContratoCONOUTROS: TFloatField;
    QContratoCONENTRADA: TFloatField;
    QContratoCONLIQUIDO: TFloatField;
    QContratoCONFIADO: TIntegerField;
    QContratoCONOBS: TStringField;
    CDSContratoCONCOD: TIntegerField;
    CDSContratoCONLOCADOR: TIntegerField;
    CDSContratoCONLOCATARIO: TIntegerField;
    CDSContratoCONIMOVEL: TIntegerField;
    CDSContratoCONINICIO: TDateField;
    CDSContratoCONFIM: TDateField;
    CDSContratoCONESPECIE: TStringField;
    CDSContratoCONVALOR: TFloatField;
    CDSContratoCONOUTROS: TFloatField;
    CDSContratoCONENTRADA: TFloatField;
    CDSContratoCONLIQUIDO: TFloatField;
    CDSContratoCONFIADO: TIntegerField;
    CDSContratoCONOBS: TStringField;
    CDSContratolocador: TStringField;
    CDSContratolocatario: TStringField;
    CDSContratoimovel: TStringField;
    QCompraVenda: TSQLQuery;
    DSPCompraVenda: TDataSetProvider;
    DSCompraVenda: TDataSource;
    CDSCompraVenda: TClientDataSet;
    QCompraVendaCOMCOD: TIntegerField;
    QCompraVendaCOMVENDEDOR: TIntegerField;
    QCompraVendaCOMCOMPRADOR: TIntegerField;
    QCompraVendaCOMIMOVEL: TIntegerField;
    QCompraVendaCOMVALOR: TFloatField;
    QCompraVendaCOMDATA: TDateField;
    QCompraVendaCOMOBS: TStringField;
    CDSCompraVendaCOMCOD: TIntegerField;
    CDSCompraVendaCOMVENDEDOR: TIntegerField;
    CDSCompraVendaCOMCOMPRADOR: TIntegerField;
    CDSCompraVendaCOMIMOVEL: TIntegerField;
    CDSCompraVendaCOMVALOR: TFloatField;
    CDSCompraVendaCOMDATA: TDateField;
    CDSCompraVendaCOMOBS: TStringField;
    CDSCompraVendacomprador: TStringField;
    CDSCompraVendavendedor: TStringField;
    CDSCompraVendaimovel: TStringField;
    CDSContratototal: TFloatField;
    QContratoCONSITUACAO: TStringField;
    QContratoCONVALORPAGO: TFloatField;
    CDSContratoCONSITUACAO: TStringField;
    CDSContratoCONVALORPAGO: TFloatField;
    QImovelIMOCEP: TStringField;
    CDSImovelIMOCEP: TStringField;
    QContratoLOCATARIO: TStringField;
    QContratoLOCATARIO_CPF: TStringField;
    QContratoLOCADOR: TStringField;
    QContratoLOCADOR_CPF: TStringField;
    QContratoIMOENDERECO: TStringField;
    QContratoIMOBAIRRO: TStringField;
    QContratoIMONUMERO: TIntegerField;
    QContratoIMOCEP: TStringField;
    QContratoCIDNOME: TStringField;
    CDSContratoLOCATARIO_CPF: TStringField;
    CDSContratoLOCADOR_CPF: TStringField;
    CDSContratoIMOENDERECO: TStringField;
    CDSContratoIMOBAIRRO: TStringField;
    CDSContratoIMONUMERO: TIntegerField;
    CDSContratoIMOCEP: TStringField;
    CDSContratoCIDNOME: TStringField;
    QContratoCONCOMISSAO: TFloatField;
    CDSContratoCONCOMISSAO: TFloatField;
    QContratoCONTIPO: TStringField;
    CDSContratoCONTIPO: TStringField;
    QContratoCONFIADORNOME: TStringField;
    QContratoCONFIADORCPF: TStringField;
    CDSContratoCONFIADORNOME: TStringField;
    CDSContratoCONFIADORCPF: TStringField;
    QItemContratoITECONTRATO: TIntegerField;
    QItemContratoITEVCTO: TDateField;
    QItemContratoITEVALOR: TFloatField;
    QItemContratoITEPGTO: TDateField;
    QItemContratoITEVALORPAGO: TFloatField;
    QItemContratoITECONALUGUEL: TFloatField;
    QItemContratoITECONCONDOMINIO: TFloatField;
    QItemContratoITECONIIMPOSTO: TFloatField;
    QItemContratoITECONSEGURO: TFloatField;
    QItemContratoITECONAGUA: TFloatField;
    QItemContratoITECONLUZ: TFloatField;
    QItemContratoITECONGARAGEM: TFloatField;
    QItemContratoITECONOUTRO1: TFloatField;
    QItemContratoITECONOUTRO2: TFloatField;
    QItemContratoITECONOUTRO3: TFloatField;
    CDSItemContratoITECONTRATO: TIntegerField;
    CDSItemContratoITEVCTO: TDateField;
    CDSItemContratoITEVALOR: TFloatField;
    CDSItemContratoITEPGTO: TDateField;
    CDSItemContratoITEVALORPAGO: TFloatField;
    CDSItemContratoITECONALUGUEL: TFloatField;
    CDSItemContratoITECONCONDOMINIO: TFloatField;
    CDSItemContratoITECONIIMPOSTO: TFloatField;
    CDSItemContratoITECONSEGURO: TFloatField;
    CDSItemContratoITECONAGUA: TFloatField;
    CDSItemContratoITECONLUZ: TFloatField;
    CDSItemContratoITECONGARAGEM: TFloatField;
    CDSItemContratoITECONOUTRO1: TFloatField;
    CDSItemContratoITECONOUTRO2: TFloatField;
    CDSItemContratoITECONOUTRO3: TFloatField;
    QCurso: TSQLQuery;
    DSPCurso: TDataSetProvider;
    DSCurso: TDataSource;
    CDSCurso: TClientDataSet;
    QCursoCURCOD: TIntegerField;
    QCursoCURNOME: TStringField;
    CDSCursoCURCOD: TIntegerField;
    CDSCursoCURNOME: TStringField;
    QUniversidade: TSQLQuery;
    DSPUniversidade: TDataSetProvider;
    DSUniversidade: TDataSource;
    CDSUniversidade: TClientDataSet;
    QUniversidadeUNICOD: TIntegerField;
    QUniversidadeUNINOME: TStringField;
    CDSUniversidadeUNICOD: TIntegerField;
    CDSUniversidadeUNINOME: TStringField;
    QNivel: TSQLQuery;
    DSPNivel: TDataSetProvider;
    DSNivel: TDataSource;
    CDSNivel: TClientDataSet;
    QNivelNIVCOD: TIntegerField;
    QNivelNIVNOME: TStringField;
    CDSNivelNIVCOD: TIntegerField;
    CDSNivelNIVNOME: TStringField;
    QDiretoria: TSQLQuery;
    DSPDiretoria: TDataSetProvider;
    DSDiretoria: TDataSource;
    CDSDiretoria: TClientDataSet;
    QDiretoriaDIRCOD: TIntegerField;
    QDiretoriaDIRGESTAO: TStringField;
    QDiretoriaDIRPRESIDENTE: TStringField;
    QDiretoriaDIRVICEPRESIDENTE: TStringField;
    QDiretoriaDIRTESOUREIRO1: TStringField;
    QDiretoriaDIRTESOUREIRO2: TStringField;
    QDiretoriaDIRSECRETARIA1: TStringField;
    QDiretoriaDIRSECRETARIA2: TStringField;
    QDiretoriaDIRCONSELHEIRO1: TStringField;
    QDiretoriaDIRCONSELHEIRO2: TStringField;
    QDiretoriaDIRCONSELHEIRO3: TStringField;
    CDSDiretoriaDIRCOD: TIntegerField;
    CDSDiretoriaDIRGESTAO: TStringField;
    CDSDiretoriaDIRPRESIDENTE: TStringField;
    CDSDiretoriaDIRVICEPRESIDENTE: TStringField;
    CDSDiretoriaDIRTESOUREIRO1: TStringField;
    CDSDiretoriaDIRTESOUREIRO2: TStringField;
    CDSDiretoriaDIRSECRETARIA1: TStringField;
    CDSDiretoriaDIRSECRETARIA2: TStringField;
    CDSDiretoriaDIRCONSELHEIRO1: TStringField;
    CDSDiretoriaDIRCONSELHEIRO2: TStringField;
    CDSDiretoriaDIRCONSELHEIRO3: TStringField;
    QEstudante: TSQLQuery;
    DSPEstudante: TDataSetProvider;
    DSEstudante: TDataSource;
    CDSEstudante: TClientDataSet;
    QEstudanteESTCOD: TIntegerField;
    QEstudanteESTNOME: TStringField;
    QEstudanteESTCPF: TStringField;
    QEstudanteESTSEXO: TStringField;
    QEstudanteESTMAE: TStringField;
    QEstudanteESTDATANASC: TDateField;
    QEstudanteESTENDERECO: TStringField;
    QEstudanteESTBAIRRO: TStringField;
    QEstudanteESTCIDADE: TIntegerField;
    QEstudanteESTCEP: TStringField;
    QEstudanteESTFONE: TStringField;
    QEstudanteESTCELULAR: TStringField;
    QEstudanteESTVOIP: TStringField;
    QEstudanteESTMSN: TStringField;
    QEstudanteESTEMAIL: TStringField;
    QEstudanteESTSITE: TStringField;
    QEstudanteESTCURSO: TIntegerField;
    QEstudanteESTPROFISSAO: TIntegerField;
    QEstudanteESTOBS: TStringField;
    QEstudanteESTDATAINCLUSAO: TDateField;
    QEstudanteESTNIVEL: TIntegerField;
    QEstudanteESTUNIVERSIDADE: TIntegerField;
    QEstudanteESTSITUACAO: TStringField;
    CDSEstudanteESTCOD: TIntegerField;
    CDSEstudanteESTNOME: TStringField;
    CDSEstudanteESTCPF: TStringField;
    CDSEstudanteESTSEXO: TStringField;
    CDSEstudanteESTMAE: TStringField;
    CDSEstudanteESTDATANASC: TDateField;
    CDSEstudanteESTENDERECO: TStringField;
    CDSEstudanteESTBAIRRO: TStringField;
    CDSEstudanteESTCIDADE: TIntegerField;
    CDSEstudanteESTCEP: TStringField;
    CDSEstudanteESTFONE: TStringField;
    CDSEstudanteESTCELULAR: TStringField;
    CDSEstudanteESTVOIP: TStringField;
    CDSEstudanteESTMSN: TStringField;
    CDSEstudanteESTEMAIL: TStringField;
    CDSEstudanteESTSITE: TStringField;
    CDSEstudanteESTCURSO: TIntegerField;
    CDSEstudanteESTPROFISSAO: TIntegerField;
    CDSEstudanteESTOBS: TStringField;
    CDSEstudanteESTDATAINCLUSAO: TDateField;
    CDSEstudanteESTNIVEL: TIntegerField;
    CDSEstudanteESTUNIVERSIDADE: TIntegerField;
    CDSEstudanteESTSITUACAO: TStringField;
    CDSEstudantecidade: TStringField;
    CDSEstudantecurso: TStringField;
    CDSEstudanteprofissao: TStringField;
    CDSEstudantenivel: TStringField;
    CDSEstudanteuniversidade: TStringField;
    QClienteCLIFORNECEDOR: TStringField;
    CDSClienteCLIFORNECEDOR: TStringField;
    QOrdemServicoORDPLACA: TStringField;
    QOrdemServicoORDNOMECLIENTE: TStringField;
    QOrdemServicoORDTELEFONE: TStringField;
    CDSOrdemServicoORDPLACA: TStringField;
    CDSOrdemServicoORDNOMECLIENTE: TStringField;
    CDSOrdemServicoORDTELEFONE: TStringField;
    QFamilia: TSQLQuery;
    CDSFamilia: TClientDataSet;
    DSPFamilia: TDataSetProvider;
    DSFamilia: TDataSource;
    QFamiliaSubordinado: TSQLQuery;
    CDSFamiliaSubordinado: TClientDataSet;
    DSPFamiliaSubordinado: TDataSetProvider;
    DSFamiliaSubordinado: TDataSource;
    QFamiliaFAMCOD: TIntegerField;
    QFamiliaFAMNOME: TStringField;
    QFamiliaFAMNASCIMENTO: TDateField;
    QFamiliaFANENDERECO: TStringField;
    QFamiliaFANNUMERO: TIntegerField;
    QFamiliaFANLOCALIDADE: TStringField;
    QFamiliaFANESCOLARIDADE: TStringField;
    QFamiliaFANRENDA: TFloatField;
    QFamiliaFANZONA: TStringField;
    QFamiliaFANLATITUDE: TStringField;
    QFamiliaFANLONGITUDE: TStringField;
    CDSFamiliaFAMCOD: TIntegerField;
    CDSFamiliaFAMNOME: TStringField;
    CDSFamiliaFAMNASCIMENTO: TDateField;
    CDSFamiliaFANENDERECO: TStringField;
    CDSFamiliaFANNUMERO: TIntegerField;
    CDSFamiliaFANLOCALIDADE: TStringField;
    CDSFamiliaFANESCOLARIDADE: TStringField;
    CDSFamiliaFANRENDA: TFloatField;
    CDSFamiliaFANZONA: TStringField;
    CDSFamiliaFANLATITUDE: TStringField;
    CDSFamiliaFANLONGITUDE: TStringField;
    QFamiliaSubordinadoFAMSUBFAMILIA: TIntegerField;
    QFamiliaSubordinadoFAMSUBCOD: TIntegerField;
    QFamiliaSubordinadoFAMSUBNOME: TStringField;
    QFamiliaSubordinadoFAMSUBNASCIMENTO: TDateField;
    QFamiliaSubordinadoFAMSUBESCOLARIDADE: TStringField;
    QFamiliaSubordinadoFAMSUBRENDA: TFloatField;
    CDSFamiliaSubordinadoFAMSUBFAMILIA: TIntegerField;
    CDSFamiliaSubordinadoFAMSUBCOD: TIntegerField;
    CDSFamiliaSubordinadoFAMSUBNOME: TStringField;
    CDSFamiliaSubordinadoFAMSUBNASCIMENTO: TDateField;
    CDSFamiliaSubordinadoFAMSUBESCOLARIDADE: TStringField;
    CDSFamiliaSubordinadoFAMSUBRENDA: TFloatField;
    QFamiliaFANENERGIA: TStringField;
    CDSFamiliaFANENERGIA: TStringField;
    QDiasViajados: TSQLQuery;
    DSPDiasViajados: TDataSetProvider;
    DSDiasViajados: TDataSource;
    CDSDiasViajados: TClientDataSet;
    QDiasViajadosDIAALUNO: TIntegerField;
    QDiasViajadosDIADATA: TDateField;
    QDiasViajadosDIAVALORSEGUNDA: TFloatField;
    QDiasViajadosDIAVALORTERCA: TFloatField;
    QDiasViajadosDIAVALORQUARTA: TFloatField;
    QDiasViajadosDIAVALORQUINTA: TFloatField;
    QDiasViajadosDIAVALORSEXTA: TFloatField;
    QDiasViajadosDIAVALORTOTAL: TFloatField;
    CDSDiasViajadosDIAALUNO: TIntegerField;
    CDSDiasViajadosDIADATA: TDateField;
    CDSDiasViajadosDIAVALORSEGUNDA: TFloatField;
    CDSDiasViajadosDIAVALORTERCA: TFloatField;
    CDSDiasViajadosDIAVALORQUARTA: TFloatField;
    CDSDiasViajadosDIAVALORQUINTA: TFloatField;
    CDSDiasViajadosDIAVALORSEXTA: TFloatField;
    CDSDiasViajadosDIAVALORTOTAL: TFloatField;
    CDSDiasViajadosAluno: TStringField;
    QDiasViajadosESTNOME: TStringField;
    CDSDiasViajadosESTNOME: TStringField;
    QDiasViajadosDIAVAISEGUNDA: TStringField;
    QDiasViajadosDIAVAITERCA: TStringField;
    QDiasViajadosDIAVAIQUARTA: TStringField;
    QDiasViajadosDIAVAIQUINTA: TStringField;
    QDiasViajadosDIAVAISEXTA: TStringField;
    QDiasViajadosDIAVIAGEMSEGUNDA: TStringField;
    QDiasViajadosDIAVIAGEMTERCA: TStringField;
    QDiasViajadosDIAVIAGEMQUARTA: TStringField;
    QDiasViajadosDIAVIAGEMQUINTA: TStringField;
    QDiasViajadosDIAVIAGEMSEXTA: TStringField;
    CDSDiasViajadosDIAVAISEGUNDA: TStringField;
    CDSDiasViajadosDIAVAITERCA: TStringField;
    CDSDiasViajadosDIAVAIQUARTA: TStringField;
    CDSDiasViajadosDIAVAIQUINTA: TStringField;
    CDSDiasViajadosDIAVAISEXTA: TStringField;
    CDSDiasViajadosDIAVIAGEMSEGUNDA: TStringField;
    CDSDiasViajadosDIAVIAGEMTERCA: TStringField;
    CDSDiasViajadosDIAVIAGEMQUARTA: TStringField;
    CDSDiasViajadosDIAVIAGEMQUINTA: TStringField;
    CDSDiasViajadosDIAVIAGEMSEXTA: TStringField;
    CDSDiasViajadosTotal: TFloatField;
    QEstudanteCURNOME: TStringField;
    CDSEstudanteCURNOME: TStringField;
    procedure CDSCidadeAfterInsert(DataSet: TDataSet);
    procedure CDSProfissaoAfterInsert(DataSet: TDataSet);
    procedure CDSProgramaAfterInsert(DataSet: TDataSet);
    procedure CDSGrupoAfterInsert(DataSet: TDataSet);
    procedure CDSConvenioAfterInsert(DataSet: TDataSet);
    procedure CDSUsuarioAfterClose(DataSet: TDataSet);
    procedure CDSItemUsuarioAfterClose(DataSet: TDataSet);
    procedure CDSClienteAfterClose(DataSet: TDataSet);
    procedure CDSClienteAfterInsert(DataSet: TDataSet);
    procedure CDSClienteBeforeOpen(DataSet: TDataSet);
    procedure CDSItemUsuarioBeforeOpen(DataSet: TDataSet);
    procedure CDSUsuarioBeforeOpen(DataSet: TDataSet);
    procedure CDSUsuarioAfterScroll(DataSet: TDataSet);
    procedure CDSUsuarioAfterInsert(DataSet: TDataSet);
    procedure CDSUsuarioAfterDelete(DataSet: TDataSet);
    procedure CDSUsuarioAfterCancel(DataSet: TDataSet);
    procedure CDSUsuarioAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure CDSAgendaAfterClose(DataSet: TDataSet);
    procedure CDSAgendaAfterInsert(DataSet: TDataSet);
    procedure CDSAgendaBeforeOpen(DataSet: TDataSet);
    procedure CDSParamEmpAfterClose(DataSet: TDataSet);
    procedure CDSParamEmpAfterInsert(DataSet: TDataSet);
    procedure CDSParamEmpBeforeOpen(DataSet: TDataSet);
    procedure CDSProdutoAfterClose(DataSet: TDataSet);
    procedure CDSProdutoBeforeOpen(DataSet: TDataSet);
    procedure CDSReservaAfterClose(DataSet: TDataSet);
    procedure CDSReservaBeforeOpen(DataSet: TDataSet);
    procedure CDSItemVendaAfterClose(DataSet: TDataSet);
    procedure CDSItemVendaBeforeOpen(DataSet: TDataSet);
    procedure CDSVendaBeforeOpen(DataSet: TDataSet);
    procedure CDSVendaAfterScroll(DataSet: TDataSet);
    procedure CDSVendaAfterInsert(DataSet: TDataSet);
    procedure CDSVendaAfterDelete(DataSet: TDataSet);
    procedure CDSVendaAfterClose(DataSet: TDataSet);
    procedure CDSVendaAfterCancel(DataSet: TDataSet);
    procedure CDSVendaAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure CDSReservaAfterInsert(DataSet: TDataSet);
    procedure CDSItemVendaAfterDelete(DataSet: TDataSet);
    procedure CDSExameAfterInsert(DataSet: TDataSet);
    procedure CDSItemAgendaAfterClose(DataSet: TDataSet);
    procedure CDSItemAgendaBeforeOpen(DataSet: TDataSet);
    procedure CDSAgendaAfterDelete(DataSet: TDataSet);
    procedure CDSAgendaAfterCancel(DataSet: TDataSet);
    procedure CDSAgendaAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure CDSAgendaAfterScroll(DataSet: TDataSet);
    procedure CDSAgendaBeforeClose(DataSet: TDataSet);
    procedure CDSAgendaAfterOpen(DataSet: TDataSet);
    procedure CDSBancoAfterInsert(DataSet: TDataSet);
    procedure CDSContRecAfterClose(DataSet: TDataSet);
    procedure CDSContRecAfterInsert(DataSet: TDataSet);
    procedure CDSContRecBeforeOpen(DataSet: TDataSet);
    procedure CDSContRecCalcFields(DataSet: TDataSet);
    procedure CDSHistClienteBeforeOpen(DataSet: TDataSet);
    procedure CDSHistClienteBeforeClose(DataSet: TDataSet);
    procedure CDSHistClienteAfterScroll(DataSet: TDataSet);
    procedure CDSHistClienteAfterOpen(DataSet: TDataSet);
    procedure CDSHistClienteAfterInsert(DataSet: TDataSet);
    procedure CDSHistClienteAfterDelete(DataSet: TDataSet);
    procedure CDSHistClienteAfterCancel(DataSet: TDataSet);
    procedure CDSHistClienteAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure CDSHistClienteAfterClose(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure CDSBairroAfterClose(DataSet: TDataSet);
    procedure CDSBairroAfterInsert(DataSet: TDataSet);
    procedure CDSBairroBeforeOpen(DataSet: TDataSet);
    procedure CDSEstabelecimentoAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure CDSEstabelecimentoAfterCancel(DataSet: TDataSet);
    procedure CDSEstabelecimentoAfterClose(DataSet: TDataSet);
    procedure CDSEstabelecimentoAfterDelete(DataSet: TDataSet);
    procedure CDSEstabelecimentoAfterInsert(DataSet: TDataSet);
    procedure CDSEstabelecimentoAfterScroll(DataSet: TDataSet);
    procedure CDSEstabelecimentoBeforeOpen(DataSet: TDataSet);
    procedure CDSEscritorioContabilAfterClose(DataSet: TDataSet);
    procedure CDSEscritorioContabilAfterInsert(DataSet: TDataSet);
    procedure CDSEscritorioContabilBeforeOpen(DataSet: TDataSet);
    procedure CDSAtividadeAfterInsert(DataSet: TDataSet);
    procedure CDSColaSapateiroAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure CDSColaSapateiroAfterCancel(DataSet: TDataSet);
    procedure CDSColaSapateiroAfterDelete(DataSet: TDataSet);
    procedure CDSColaSapateiroAfterScroll(DataSet: TDataSet);
    procedure CDSColaSapateiroAfterClose(DataSet: TDataSet);
    procedure CDSColaSapateiroAfterInsert(DataSet: TDataSet);
    procedure CDSColaSapateiroBeforeOpen(DataSet: TDataSet);
    procedure CDSGrupoCaixaAfterInsert(DataSet: TDataSet);
    procedure CDSCaixaAfterClose(DataSet: TDataSet);
    procedure CDSCaixaAfterInsert(DataSet: TDataSet);
    procedure CDSCaixaBeforeOpen(DataSet: TDataSet);
    procedure CDSContaClienteAfterClose(DataSet: TDataSet);
    procedure CDSContaClienteAfterInsert(DataSet: TDataSet);
    procedure CDSItemVendaAfterInsert(DataSet: TDataSet);
    procedure CDSCompraBeforeOpen(DataSet: TDataSet);
    procedure CDSCompraAfterScroll(DataSet: TDataSet);
    procedure CDSCompraAfterInsert(DataSet: TDataSet);
    procedure CDSCompraAfterDelete(DataSet: TDataSet);
    procedure CDSCompraAfterCancel(DataSet: TDataSet);
    procedure CDSCompraAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure CDSCompraAfterClose(DataSet: TDataSet);
    procedure CDSItemCompraBeforePost(DataSet: TDataSet);
    procedure CDSItemCompraAfterClose(DataSet: TDataSet);
    procedure CDSItemCompraAfterInsert(DataSet: TDataSet);
    procedure CDSItemCompraBeforeOpen(DataSet: TDataSet);
    procedure CDSProdutoAfterInsert(DataSet: TDataSet);
    procedure CDSParametroAfterInsert(DataSet: TDataSet);
    procedure CDSMarcaAfterInsert(DataSet: TDataSet);
    procedure CDSModeloAfterClose(DataSet: TDataSet);
    procedure CDSModeloAfterInsert(DataSet: TDataSet);
    procedure CDSModeloBeforeOpen(DataSet: TDataSet);
    procedure CDSExcessoAfterInsert(DataSet: TDataSet);
    procedure CDSNotificacaoAfterInsert(DataSet: TDataSet);
    procedure CDSPesagemAfterClose(DataSet: TDataSet);
    procedure CDSPesagemAfterInsert(DataSet: TDataSet);
    procedure CDSPesagemBeforeOpen(DataSet: TDataSet);
    procedure CDSCategoriaAfterInsert(DataSet: TDataSet);
    procedure CDSPesagemCalcFields(DataSet: TDataSet);
    procedure CDSGrupoFinAfterInsert(DataSet: TDataSet);
    procedure CDSContaAfterClose(DataSet: TDataSet);
    procedure CDSContaAfterInsert(DataSet: TDataSet);
    procedure CDSContaBeforeOpen(DataSet: TDataSet);
    procedure CDSEmpresaAfterClose(DataSet: TDataSet);
    procedure CDSEmpresaAfterInsert(DataSet: TDataSet);
    procedure CDSEmpresaBeforeOpen(DataSet: TDataSet);
    procedure CDSFactoryDoctoBeforeOpen(DataSet: TDataSet);
    procedure CDSFactoryDoctoAfterScroll(DataSet: TDataSet);
    procedure CDSFactoryDoctoAfterDelete(DataSet: TDataSet);
    procedure CDSFactoryDoctoAfterCancel(DataSet: TDataSet);
    procedure CDSFactoryDoctoAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure CDSFactoryDoctoAfterClose(DataSet: TDataSet);
    procedure CDSFactoryDoctoAfterInsert(DataSet: TDataSet);
    procedure CDSItemFactoryDoctoAfterClose(DataSet: TDataSet);
    procedure CDSItemFactoryDoctoBeforeOpen(DataSet: TDataSet);
    procedure CDSFactoryDoctoProbAfterClose(DataSet: TDataSet);
    procedure CDSFactoryDoctoProbBeforeOpen(DataSet: TDataSet);
    procedure CDSContPagCalcFields(DataSet: TDataSet);
    procedure CDSContPagBeforePost(DataSet: TDataSet);
    procedure CDSContPagBeforeOpen(DataSet: TDataSet);
    procedure CDSContPagAfterScroll(DataSet: TDataSet);
    procedure CDSContPagAfterInsert(DataSet: TDataSet);
    procedure CDSContPagAfterDelete(DataSet: TDataSet);
    procedure CDSContPagAfterClose(DataSet: TDataSet);
    procedure CDSContPagAfterCancel(DataSet: TDataSet);
    procedure CDSContPagAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure CDSItemContPagAfterInsert(DataSet: TDataSet);
    procedure CDSItemContPagAfterPost(DataSet: TDataSet);
    procedure CDSFactoryDoctoProbAfterInsert(DataSet: TDataSet);
    procedure CDSItemFactoryDoctoAfterPost(DataSet: TDataSet);
    procedure CDSItemFactoryDoctoAfterDelete(DataSet: TDataSet);
    procedure DSPCidadeBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure CDSCaixaCalcFields(DataSet: TDataSet);
    procedure CDSMargemAfterInsert(DataSet: TDataSet);
    procedure CDSAliquotaAfterInsert(DataSet: TDataSet);
    procedure CDSPlanoPgtoAfterInsert(DataSet: TDataSet);
    procedure CDSDepositoAfterInsert(DataSet: TDataSet);
    procedure CDSTipoCobAfterInsert(DataSet: TDataSet);
    procedure CDSObservacoesAfterInsert(DataSet: TDataSet);
    procedure CDSObservacoesCalcFields(DataSet: TDataSet);
    procedure CDSGrupoProdAfterInsert(DataSet: TDataSet);
    procedure CDSNotaEntCalcFields(DataSet: TDataSet);
    procedure CDSNotaEntAfterOpen(DataSet: TDataSet);
    procedure CDSNotaEntBeforeClose(DataSet: TDataSet);
    procedure CDSNotaEntAfterInsert(DataSet: TDataSet);
    procedure CDSNotaEntAfterClose(DataSet: TDataSet);
    procedure CDSNotaEntBeforeOpen(DataSet: TDataSet);
    procedure CDSNotaEntAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure CDSNotaEntAfterCancel(DataSet: TDataSet);
    procedure CDSNotaEntAfterDelete(DataSet: TDataSet);
    procedure CDSNotaEntAfterScroll(DataSet: TDataSet);
    procedure CDSItemContRecAfterInsert(DataSet: TDataSet);
    procedure CDSItemContRecAfterPost(DataSet: TDataSet);
    procedure CDSContRecAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure CDSContRecAfterCancel(DataSet: TDataSet);
    procedure CDSContRecAfterDelete(DataSet: TDataSet);
    procedure CDSContRecAfterScroll(DataSet: TDataSet);
    procedure CDSContRecAfterOpen(DataSet: TDataSet);
    procedure CDSNotaEntBeforePost(DataSet: TDataSet);
    procedure CDSOutraSaidaAfterInsert(DataSet: TDataSet);
    procedure CDSOutraSaidaAfterClose(DataSet: TDataSet);
    procedure CDSOutraSaidaBeforeOpen(DataSet: TDataSet);
    procedure CDSVeiculoAfterInsert(DataSet: TDataSet);
    procedure CDSVeiculoAfterClose(DataSet: TDataSet);
    procedure CDSVeiculoBeforeOpen(DataSet: TDataSet);
    procedure CDSChequeAfterClose(DataSet: TDataSet);
    procedure CDSChequeBeforeOpen(DataSet: TDataSet);
    procedure CDSChequeAfterInsert(DataSet: TDataSet);
    procedure CDSNotaFiscCalcFields(DataSet: TDataSet);
    procedure CDSNotaFiscBeforeOpen(DataSet: TDataSet);
    procedure CDSNotaFiscBeforeClose(DataSet: TDataSet);
    procedure CDSNotaFiscAfterScroll(DataSet: TDataSet);
    procedure CDSNotaFiscAfterOpen(DataSet: TDataSet);
    procedure CDSNotaFiscAfterInsert(DataSet: TDataSet);
    procedure CDSNotaFiscAfterDelete(DataSet: TDataSet);
    procedure CDSNotaFiscAfterClose(DataSet: TDataSet);
    procedure CDSNotaFiscAfterCancel(DataSet: TDataSet);
    procedure CDSNotaFiscAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure CDSServicoAfterInsert(DataSet: TDataSet);
    procedure CDSOrdemServicoAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure CDSOrdemServicoAfterCancel(DataSet: TDataSet);
    procedure CDSOrdemServicoAfterClose(DataSet: TDataSet);
    procedure CDSOrdemServicoAfterDelete(DataSet: TDataSet);
    procedure CDSOrdemServicoAfterOpen(DataSet: TDataSet);
    procedure CDSOrdemServicoAfterScroll(DataSet: TDataSet);
    procedure CDSOrdemServicoBeforeClose(DataSet: TDataSet);
    procedure CDSOrdemServicoAfterInsert(DataSet: TDataSet);
    procedure CDSOrdemServicoBeforeOpen(DataSet: TDataSet);
    procedure CDSOrdemServicoCalcFields(DataSet: TDataSet);
    procedure CDSProdutoBeforePost(DataSet: TDataSet);
    procedure CDSImovelAfterInsert(DataSet: TDataSet);
    procedure CDSImovelAfterClose(DataSet: TDataSet);
    procedure CDSImovelBeforeOpen(DataSet: TDataSet);
    procedure CDSContratoAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure CDSContratoAfterCancel(DataSet: TDataSet);
    procedure CDSContratoAfterDelete(DataSet: TDataSet);
    procedure CDSContratoAfterOpen(DataSet: TDataSet);
    procedure CDSContratoAfterScroll(DataSet: TDataSet);
    procedure CDSContratoAfterClose(DataSet: TDataSet);
    procedure CDSContratoBeforeOpen(DataSet: TDataSet);
    procedure CDSContratoAfterInsert(DataSet: TDataSet);
    procedure CDSCompraVendaAfterClose(DataSet: TDataSet);
    procedure CDSCompraVendaBeforeOpen(DataSet: TDataSet);
    procedure CDSCompraVendaAfterInsert(DataSet: TDataSet);
    procedure CDSImovelAfterScroll(DataSet: TDataSet);
    procedure CDSContratoCalcFields(DataSet: TDataSet);
    procedure CDSItemContratoAfterPost(DataSet: TDataSet);
    procedure CDSItemContratoBeforePost(DataSet: TDataSet);
    procedure CDSCursoAfterInsert(DataSet: TDataSet);
    procedure CDSUniversidadeAfterInsert(DataSet: TDataSet);
    procedure CDSNivelAfterInsert(DataSet: TDataSet);
    procedure CDSDiretoriaAfterInsert(DataSet: TDataSet);
    procedure CDSEstudanteAfterInsert(DataSet: TDataSet);
    procedure CDSEstudanteAfterClose(DataSet: TDataSet);
    procedure CDSFamiliaBeforeOpen(DataSet: TDataSet);
    procedure CDSFamiliaAfterScroll(DataSet: TDataSet);
    procedure CDSFamiliaAfterOpen(DataSet: TDataSet);
    procedure CDSFamiliaBeforeClose(DataSet: TDataSet);
    procedure CDSFamiliaAfterDelete(DataSet: TDataSet);
    procedure CDSFamiliaAfterInsert(DataSet: TDataSet);
    procedure CDSFamiliaSubordinadoAfterPost(DataSet: TDataSet);
    procedure CDSFamiliaSubordinadoAfterInsert(DataSet: TDataSet);
    procedure CDSDiasViajadosAfterClose(DataSet: TDataSet);
    procedure CDSDiasViajadosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure carregafamilia;
    procedure carregacontrato;
    procedure carregacontrec;
    procedure carreganotafisc;
    procedure carregaordemservico;
    procedure carreganotaent;    
    procedure carregafactory;
    procedure carregacompras;    
    procedure carregacolasapateiro;
    procedure carregausuarios;
    procedure carregavendas;
    procedure carregaagenda;
    procedure carregahist;
    procedure carregaestabelecimento;
    procedure carregacontpag;
    procedure atualizafactorydocto;
  public
    procedure atualizar_sistema;
  end;

var
  DM: TDM;

implementation

uses UMenu, USenha, UImovel;

{$R *.dfm}

procedure TDM.atualizar_sistema;
var
     versaoatu, versao : integer;
begin
     versaoatu := 78;
     with qexiste do
     begin
          close;
          sql.add('SELECT CAST(RECVERSAO AS INTEGER) AS VERSAO FROM TRECHCENTER');
          open;
          versao := fieldbyname('VERSAO').asinteger;
          if versao < versaoatu then
          begin
               showmessage('Há uma nova versão dispónivel, o sistema fará a atualização automáticamente, ' + #13 +
                           'antes é apropriado que faça uma cópia de segurança do seu banco de dados. ' + #13 +
                           'Copie o arquivo ' + quotedstr(ExtractFilePath(Application.ExeName) + 'BANCO.GDB') + ' para um cd ou outra pasta,' + #13 +
                           'Qualquer dúvida entre em contato com seu revendedor.' + #13 + #13 +
                           'Pressione OK para continuar a atualização.');
          end;
          if versao < 1 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TBAIRRO');
               sql.add('(');
               sql.add('  BAICOD	INTEGER NOT NULL,');
               sql.add('  BAINOME	VARCHAR(50),');
               sql.add('  BAICIDADE	INTEGER,');
               sql.add('CONSTRAINT PK_TBAIRRO PRIMARY KEY (BAICOD));');
               ExecSQL;

               sql.clear;
               sql.add('CREATE TABLE TCOLASAPATEIRO');
               sql.add('(');
               sql.add('  COLCOD	INTEGER NOT NULL,');
               sql.add('  COLNOME	VARCHAR(100),');
               sql.add('  COLCNPJCPF	VARCHAR(20),');
               sql.add('  COLENDERECO	VARCHAR(50),');
               sql.add('  COLBAIRRO	INTEGER,');
               sql.add('  COLFONE	VARCHAR(20),');
               sql.add('  COLATIVIDADE	INTEGER,');
               sql.add('CONSTRAINT PK_TCOLASAPATEIRO PRIMARY KEY (COLCOD)');
               sql.add(');');
               ExecSQL;

               sql.clear;
               sql.add('CREATE TABLE TESCRITORIOCONTABIL');
               sql.add('(');
               sql.add('  ESCCOD	INTEGER NOT NULL,');
               sql.add('  ESCNOME	VARCHAR(50),');
               sql.add('  ESCCIDADE	INTEGER,');
               sql.add('  ESCFONE	VARCHAR(20),');
               sql.add('  ESCRESPONSAVEL	VARCHAR(50),');
               sql.add('CONSTRAINT PK_TESCRITORIOCONTABIL PRIMARY KEY (ESCCOD)');
               sql.add(');');
               ExecSQL;

               sql.clear;
               sql.add('CREATE TABLE TESTABELECIMENTO');
               sql.add('(');
               sql.add('  ESTCOD	INTEGER NOT NULL,');
               sql.add('  ESTNOME	VARCHAR(100),');
               sql.add('  ESTCNPJCPF	VARCHAR(30),');
               sql.add('  ESTENDERECO	VARCHAR(100),');
               sql.add('  ESTBAIRRO	INTEGER,');
               sql.add('  ESTFONE	VARCHAR(30),');
               sql.add('  ESTATIVIDADE	INTEGER,');
               sql.add('  ESTDATA	DATE,');
               sql.add('  ESTENQUADRAMENTO	VARCHAR(10),');
               sql.add('  ESTESCRITORIOCONTABIL	INTEGER,');
               sql.add('  ESTRENOVACAO	INTEGER,');
               sql.add('CONSTRAINT PK_TESTABELECIMENTO PRIMARY KEY (ESTCOD)');
               sql.add(');');
               ExecSQL;

               sql.clear;
               sql.add('CREATE TABLE TITEMCOLASAPATEIRO');
               sql.add('(');
               sql.add('  ITECOLA	INTEGER NOT NULL,');
               sql.add('  ITEDATA	DATE NOT NULL,');
               sql.add('  ITEOBS	VARCHAR(50),');
               sql.add('CONSTRAINT PK_TITEMCOLASAPATEIRO PRIMARY KEY (ITECOLA, ITEDATA)');
               sql.add(');');
               ExecSQL;

               sql.clear;
               sql.add('CREATE TABLE TITEMESTABELECIMENTO');
               sql.add('(');
               sql.add('  ITEESTABELECIMENTO	INTEGER NOT NULL,');
               sql.add('  ITEANO	INTEGER NOT NULL,');
               sql.add('  ITEOBS	VARCHAR(100),');
               sql.add('CONSTRAINT PK_TITEMESTABELECIMENTO PRIMARY KEY (ITEESTABELECIMENTO, ITEANO)');
               sql.add(');');
               ExecSQL;

               sql.clear;
               sql.add('ALTER TABLE TITEMCOLASAPATEIRO ADD CONSTRAINT FK_TITEMCOLASAPATEIRO_COLTASAPA');
               sql.add('FOREIGN KEY (ITECOLA) REFERENCES TCOLASAPATEIRO (COLCOD)');
               sql.add('ON UPDATE CASCADE ON DELETE CASCADE;');
               ExecSQL;

               sql.clear;
               sql.add('ALTER TABLE TITEMESTABELECIMENTO ADD CONSTRAINT FK_TITEMESTABELECIMENTO_ESTABEL');
               sql.add('FOREIGN KEY (ITEESTABELECIMENTO) REFERENCES TESTABELECIMENTO (ESTCOD)');
               sql.add('ON UPDATE CASCADE ON DELETE CASCADE;');
               ExecSQL;

               sql.clear;
               sql.add('insert into tprograma (procod, pronome) values (18, ''cadastro de bairros'');');
               execsql;

               sql.clear;
               sql.add('insert into tprograma (procod, pronome) values (19, ''cadastro de escritorios contabeis'');');
               execsql;

               sql.clear;
               sql.add('insert into tprograma (procod, pronome) values (20, ''cadastro de atividades'');');
               execsql;

               sql.clear;
               sql.add('insert into tprograma (procod, pronome) values (21, ''cadastro de estabelecimentos'');');
               execsql;

               sql.clear;
               sql.add('insert into tprograma (procod, pronome) values (22, ''cadastro de cola de sapateiro'');');
               execsql;
          end;
          if versao < 2 then
          begin
               sql.clear;
               sql.add(' CREATE TABLE TITEMCONTREC (');
               sql.add('   ITEDOCUMENTO INTEGER NOT NULL,');
               sql.add('   ITEDATA DATE NOT NULL,');
               sql.add('   ITEVALOR NUMERIC(15,2),');
               sql.add('   ITESITUACAO VARCHAR(10),');
               sql.add('   ITEPAGAMENTO DATE);');
               ExecSQL;

               sql.clear;
               sql.add('alter table TITEMCONTREC');
               sql.add('add constraint PK_TITEMCONTREC');
               sql.add('primary key (ITEDOCUMENTO,ITEDATA);');
               ExecSQL;

               sql.clear;
               sql.add('alter table TITEMCONTREC');
               sql.add('add constraint FK_TITEMCONTREC_CONTREC');
               sql.add('foreign key (ITEDOCUMENTO)');
               sql.add('references TCONTREC(RECDOCUMENTO)');
               sql.add('on delete CASCADE');
               sql.add('on update CASCADE;');
               ExecSQL;

               sql.clear;
               sql.add('ALTER TABLE TCONTREC ADD RECPARCELAS SMALLINT;');
               ExecSQL;
          end;
          if versao < 3 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TCOMPRA ADD COMLCTOCAIXA INTEGER;');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TVENDA ADD VENLCTOCAIXA INTEGER;');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TPARAMETRO(');
               sql.add('  PARCOD	INTEGER NOT NULL,');
               sql.add('  PARNOME	VARCHAR(100),');
               sql.add('  PARVALOR	VARCHAR(100),');
               sql.add('CONSTRAINT PK_TPARAMETRO PRIMARY KEY (PARCOD));');
               ExecSql;

               sql.clear;
               sql.add('INSERT INTO TPARAMETRO VALUES (1, ' + quotedstr('Grupo de Caixa para lançamento') + ', ' + quotedstr('1') + ');');
               ExecSql;
          end;

          if versao < 4 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TUSUARIO ADD USUMATRICULA VARCHAR(10);');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TMARCA(');
               sql.add('  MARCOD	INTEGER NOT NULL,');
               sql.add('  MARNOME	VARCHAR(100),');
               sql.add('  MARSIGLA	VARCHAR(100),');
               sql.add('CONSTRAINT PK_TMARCA PRIMARY KEY (MARCOD));');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TMODELO(');
               sql.add('  MODCOD	INTEGER NOT NULL,');
               sql.add('  MODNOME	VARCHAR(100),');
               sql.add('  MODMARCA	INTEGER,');
               sql.add('CONSTRAINT PK_TMODELO PRIMARY KEY (MODCOD));');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TMODELO');
               sql.add('ADD CONSTRAINT FK_TMODELO_MARCA');
               sql.add('FOREIGN KEY (MODMARCA)');
               sql.add('REFERENCES TMARCA(MARCOD);');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TCATEGORIA(');
               sql.add('  CATCOD	INTEGER NOT NULL,');
               sql.add('  CATNOME	VARCHAR(100),');
               sql.add('  CATRODADOS	INTEGER,');
               sql.add('  CATPESO	NUMERIC(10,2),');
               sql.add('  CATOBS	VARCHAR(100),');
               sql.add('  CATFOTO	VARCHAR(100),');
               sql.add('CONSTRAINT PK_TCATEGORIA PRIMARY KEY (CATCOD));');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TPESAGEM(');
               sql.add('  PESCOD	INTEGER NOT NULL,');
               sql.add('  PESDATA DATE,');
               sql.add('  PESOPERADOR VARCHAR(20),');
               sql.add('  PESMARCA	INTEGER ,');
               sql.add('  PESMODELO	VARCHAR(100),');
               sql.add('  PESCATEGORIA	INTEGER,');
               sql.add('  PESRODADOS	INTEGER,');
               sql.add('  PESPESO NUMERIC(10,2),');
               sql.add('  PESTARA NUMERIC(10,2),');
               sql.add('  PESTOLERANCIA NUMERIC(10,2),');
               sql.add('  PESLIMITE NUMERIC(10,2),');
               sql.add('  PESPESOEXCEDENTE NUMERIC(10,2),');
               sql.add('  PESPLACA VARCHAR(20),');
               sql.add('  PESPROPRIETARIO VARCHAR(100),');
               sql.add('  PESCONDUTOR VARCHAR(100),');
               sql.add('  PESCNH VARCHAR(30),');
               sql.add('  PESNUMEROAET INTEGER,');
               sql.add('  PESPESOAET NUMERIC(10,2),');
               sql.add('CONSTRAINT PK_TPESAGEM PRIMARY KEY (PESCOD));');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TPESAGEM');
               sql.add('ADD CONSTRAINT FK_TPESAGEM_OPERADOR');
               sql.add('FOREIGN KEY (PESOPERADOR)');
               sql.add('REFERENCES TUSUARIO(USULOGIN);');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TPESAGEM');
               sql.add('ADD CONSTRAINT FK_TPESAGEM_MARCA');
               sql.add('FOREIGN KEY (PESMARCA)');
               sql.add('REFERENCES TMARCA(MARCOD);');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TPESAGEM');
               sql.add('ADD CONSTRAINT FK_TPESAGEM_CATEGORIA');
               sql.add('FOREIGN KEY (PESCATEGORIA)');
               sql.add('REFERENCES TCATEGORIA(CATCOD);');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TEXCESSO(');
               sql.add('  EXCCOD	INTEGER NOT NULL,');
               sql.add('  EXCPESOMIN	NUMERIC(10,2),');
               sql.add('  EXCPESOMAX	NUMERIC(10,2),');
               sql.add('  EXCVALOR	NUMERIC(10,2),');
               sql.add('CONSTRAINT PK_TEXCESSO PRIMARY KEY (EXCCOD));');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TNOTIFICACAO(');
               sql.add('  NOTCOD	INTEGER NOT NULL,');
               sql.add('  NOTPESAGEM	INTEGER,');
               sql.add('  NOTEXCESSO	INTEGER,');
               sql.add('CONSTRAINT PK_TNOTIFICACAO PRIMARY KEY (NOTCOD));');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TNOTIFICACAO');
               sql.add('ADD CONSTRAINT FK_TNOTIFICACAO_PESAGEM');
               sql.add('FOREIGN KEY (NOTPESAGEM)');
               sql.add('REFERENCES TPESAGEM(PESCOD);');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TNOTIFICACAO');
               sql.add('ADD CONSTRAINT FK_TNOTIFICACAO_EXCESSO');
               sql.add('FOREIGN KEY (NOTEXCESSO)');
               sql.add('REFERENCES TEXCESSO(EXCCOD);');
               ExecSql;
          end;

          if versao < 5 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TPESAGEM ADD PESHORA TIME;');
               ExecSQL;

               sql.clear;
               sql.add('ALTER TABLE TPESAGEM ADD PESPESO1 NUMERIC(10,2);');
               ExecSQL;

               sql.clear;
               sql.add('ALTER TABLE TPESAGEM ADD PESPESO2 NUMERIC(10,2);');
               ExecSQL;

               sql.clear;
               sql.add('ALTER TABLE TPESAGEM ADD PESPESO3 NUMERIC(10,2);');
               ExecSQL;

               sql.clear;
               sql.add('ALTER TABLE TPESAGEM ADD PESPESO4 NUMERIC(10,2);');
               ExecSQL;

               sql.clear;
               sql.add('ALTER TABLE TPESAGEM ADD PESPESO5 NUMERIC(10,2);');
               ExecSQL;

               sql.clear;
               sql.add('ALTER TABLE TPESAGEM ADD PESPESO6 NUMERIC(10,2);');
               ExecSQL;

               sql.clear;
               sql.add('ALTER TABLE TPESAGEM ADD PESPESO7 NUMERIC(10,2);');
               ExecSQL;
          end;
          if versao < 6 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TPESAGEM ADD PESPESOPERMITIDO NUMERIC(10,2);');
               ExecSQL;

               sql.clear;
               sql.add('ALTER TABLE TCATEGORIA ADD CATPESOPERMITIDO NUMERIC(10,2);');
               ExecSQL;
          end;
          if versao < 7 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TITEMCOMPRA ADD ITEPRECO NUMERIC(10,2);');
               ExecSQL;
          end;
          if versao < 8 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TCONTACLIENTE ADD CONOBS VARCHAR(100);');
               ExecSQL;
          end;

          if versao < 9 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TVENDA ADD VENLCTOCLIENTE INTEGER;');
               ExecSQL;
          end;

          if versao < 10 then
          begin
               sql.clear;
               sql.add('UPDATE TPRODUTO SET PROESTOQUE = 0 WHERE PROESTOQUE IS NULL;');
               ExecSQL;

               sql.clear;
               sql.add('CREATE TABLE TTMPCONTACLIENTE(');
               sql.add('  TMPCLIENTE VARCHAR(50) NOT NULL,');
               sql.add('  TMPDATA	DATE NOT NULL,');
               sql.add('  TMPCODIGO	INTEGER NOT NULL,');
               sql.add('  TMPSALDOANT NUMERIC(10,2),');
               sql.add('  TMPTIPO	VARCHAR(1),');
               sql.add('  TMPVALOR NUMERIC(10,2),');
               sql.add('  TMPSALDO NUMERIC(10,2),');
               sql.add('  TMPOBS VARCHAR(100),');
               sql.add('CONSTRAINT PK_TTMPCONTACLIENTE PRIMARY KEY (TMPCLIENTE, TMPDATA, TMPCODIGO));');
               ExecSql;
          end;
          if versao < 11 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TCONTA(');
               sql.add('  CONCOD INTEGER NOT NULL,');
               sql.add('  CONNOME	VARCHAR(50),');
               sql.add('  CONBANCO INTEGER,');
               sql.add('CONSTRAINT PK_TCONTA PRIMARY KEY (CONCOD));');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TCONTA');
               sql.add('ADD CONSTRAINT FK_TCONTA_BANCO');
               sql.add('FOREIGN KEY (CONBANCO)');
               sql.add('REFERENCES TBANCO(BANCOD);');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TGRUPOFIN(');
               sql.add('  GRUCOD INTEGER NOT NULL,');
               sql.add('  GRUNOME	VARCHAR(50),');
               sql.add('CONSTRAINT PK_TGRUPOFIN PRIMARY KEY (GRUCOD));');
               ExecSql;
          end;

          if versao < 12 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TCLIENTE');
               sql.add('  ADD CLIAGENCIA VARCHAR(10),');
               sql.add('  ADD CLICONTA INTEGER,');
               sql.add('  ADD CLIGERENTE VARCHAR(100),');
               sql.add('  ADD CLITAXAJUROANO NUMERIC(10,2),');
               sql.add('  ADD CLILIMITE NUMERIC(10,2),');
               sql.add('  ADD CLIVALORMAXDOCTO NUMERIC(10,2),');
               sql.add('  ADD CLIEMPRESA INTEGER;');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TCLIENTE');
               sql.add('ADD CONSTRAINT FK_TCLIENTE_CONTA');
               sql.add('FOREIGN KEY (CLICONTA)');
               sql.add('REFERENCES TCONTA(CONCOD);');
               ExecSql;
          end;

          if versao < 13 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TPARAMEMP (');
               sql.add('EMPCOD          INTEGER NOT NULL,');
               sql.add('EMPNOME         VARCHAR(100),');
               sql.add('EMPRAZAO        VARCHAR(100),');
               sql.add('EMPENDERECO     VARCHAR(100),');
               sql.add('EMPBAIRRO       VARCHAR(50),');
               sql.add('EMPNUMERO       INTEGER,');
               sql.add('EMPCIDADE       INTEGER,');
               sql.add('EMPRESPONSAVEL  VARCHAR(50),');
               sql.add('EMPCAB          BLOB SUB_TYPE 0 SEGMENT SIZE 80,');
               sql.add('EMPFIGURA       BLOB SUB_TYPE 0 SEGMENT SIZE 80,');
               sql.add('EMPTELEFONE     VARCHAR(20),');
               sql.add('EMPTELFAX       VARCHAR(20),');
               sql.add('EMPSITE         VARCHAR(50),');
               sql.add('EMPEMAIL        VARCHAR(50),');
               sql.add('CONSTRAINT PK_TPARAMEMP PRIMARY KEY (EMPCOD));');
               execsql;

               sql.clear;
               sql.add('INSERT INTO TPARAMEMP SELECT * FROM TEMPRESA;');
               execsql;
          end;

          if versao < 14 then
          begin
               sql.clear;
               sql.add('DROP TABLE TEMPRESA;');
               execsql;

               sql.clear;
               sql.add('CREATE TABLE TEMPRESA (');
               sql.add('EMPCOD          INTEGER NOT NULL,');
               sql.add('EMPNOME         VARCHAR(100),');
               sql.add('EMPRAZAO        VARCHAR(100),');
               sql.add('EMPENDERECO     VARCHAR(100),');
               sql.add('EMPBAIRRO       VARCHAR(50),');
               sql.add('EMPNUMERO       INTEGER,');
               sql.add('EMPCIDADE       INTEGER,');
               sql.add('EMPRESPONSAVEL  VARCHAR(50),');
               sql.add('EMPCAB          BLOB SUB_TYPE 0 SEGMENT SIZE 80,');
               sql.add('EMPFIGURA       BLOB SUB_TYPE 0 SEGMENT SIZE 80,');
               sql.add('EMPTELEFONE     VARCHAR(20),');
               sql.add('EMPTELFAX       VARCHAR(20),');
               sql.add('EMPSITE         VARCHAR(50),');
               sql.add('EMPEMAIL        VARCHAR(50),');
               sql.add('EMPFATANUAL NUMERIC(10,2),');
               sql.add('EMPNUMFUNC INTEGER,');
               sql.add('EMPRESTRICOES VARCHAR(50),');
               sql.add('EMPGARANTIAS VARCHAR(50),');
               sql.add('CONSTRAINT PK_TEMPRESA PRIMARY KEY (EMPCOD));');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TCLIENTE');
               sql.add('ADD CONSTRAINT FK_TCLIENTE_EMPRESA');
               sql.add('FOREIGN KEY (CLIEMPRESA)');
               sql.add('REFERENCES TEMPRESA(EMPCOD);');
               ExecSql;
          end;

          if versao < 15 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TFACTORYDOCTO (');
               sql.add('    FACDOCCOD INTEGER NOT NULL,');
               sql.add('    FACDOCCLIENTE INTEGER,');
               sql.add('    FACDOCTAXA NUMERIC(10,2) DEFAULT 0,');
               sql.add('    FACDOCDATA DATE,');
               sql.add('CONSTRAINT PK_FACTORYDOCTO PRIMARY KEY (FACDOCCOD));');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TFACTORYDOCTO');
               sql.add('ADD CONSTRAINT FK_TFACTORYDOCTO_CLIENTE');
               sql.add('FOREIGN KEY (FACDOCCLIENTE)');
               sql.add('REFERENCES TCLIENTE(CLICOD);');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TITEMFACTORYDOCTO (');
               sql.add('    ITECOD INTEGER NOT NULL,');
               sql.add('    ITEBANCO INTEGER NOT NULL,');
               sql.add('    ITECHEQUE INTEGER NOT NULL,');
               sql.add('    ITECPFCPNJ VARCHAR(30),');
               sql.add('    ITEVCTO DATE,');
               sql.add('    ITEVALOR NUMERIC(10,2),');
               sql.add('    ITEDESC NUMERIC(10,2),');
               sql.add('    ITELIQ NUMERIC(10,2),');
               sql.add('CONSTRAINT PK_TITEMFACTORYDOCTO PRIMARY KEY (ITECOD, ITEBANCO, ITECHEQUE));');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TITEMFACTORYDOCTO');
               sql.add('ADD CONSTRAINT FK_TITEM_FACTORYDOCTO');
               sql.add('FOREIGN KEY (ITECOD)');
               sql.add('REFERENCES TFACTORYDOCTO(FACDOCCOD)');
               sql.add('ON UPDATE CASCADE ON DELETE CASCADE ;');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TITEMFACTORYDOCTO');
               sql.add('ADD CONSTRAINT FK_TITEMFACTORYDOCTO_BANCO');
               sql.add('FOREIGN KEY (ITEBANCO)');
               sql.add('REFERENCES TBANCO(BANCOD);');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TFACTORYDOCTOPROB (');
               sql.add('    FACPROBANCO INTEGER NOT NULL,');
               sql.add('    FACPROCHEQUE INTEGER NOT NULL,');
               sql.add('    FACPROCPFCNPJ VARCHAR(30),');
               sql.add('    FACPRODEVOLUCAO INTEGER,');
               sql.add('    FACPROMOTIVO VARCHAR(50),');
               sql.add('    FACPRODATA DATE,');
               sql.add('    FACPROVALOR NUMERIC(10,2),');
               sql.add('    FACPROTAXAS NUMERIC(10,2),');
               sql.add('    FACPROCLIENTE INTEGER,');
               sql.add('    FACPROOBS VARCHAR(50),');
               sql.add('CONSTRAINT PK_FACTORYDOCTOPROB PRIMARY KEY (FACPROBANCO, FACPROCHEQUE));');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TFACTORYDOCTOPROB');
               sql.add('ADD CONSTRAINT FK_TFACTORYDOCTOPROB_BANCO');
               sql.add('FOREIGN KEY (FACPROBANCO)');
               sql.add('REFERENCES TBANCO(BANCOD);');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TFACTORYDOCTOPROB');
               sql.add('ADD CONSTRAINT FK_TFACTORYDOCTOPROB_CLIENTE');
               sql.add('FOREIGN KEY (FACPROCLIENTE)');
               sql.add('REFERENCES TCLIENTE(CLICOD);');
               ExecSql;
          end;
          if versao < 16 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TPARAMEMP ADD EMPCPFCNPJ VARCHAR(20),');
               sql.add('                      ADD EMPIE VARCHAR(30);');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TEMPRESA  ADD EMPCPFCNPJ VARCHAR(20),');
               sql.add('                      ADD EMPIE VARCHAR(30);');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TCLIENTE ADD CLICEP VARCHAR(10);');
               execsql;
          end;
          if versao < 17 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TFACTORYDOCTO ADD FACDOCAVALISTA VARCHAR(50),');
               sql.add('                          ADD FACDOCAVALISTACPF VARCHAR(30),');
               sql.add('                          ADD FACDOCVALORIOF NUMERIC(10,2);');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TITEMFACTORYDOCTO  ADD ITESACADO VARCHAR(50);');
               execsql;
          end;
          if versao < 18 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TCONTPAG (');
               sql.add('    PAGDOCUMENTO  INTEGER NOT NULL,');
               sql.add('    PAGEMISSAO    DATE NOT NULL,');
               sql.add('    PAGCLIENTE    INTEGER,');
               sql.add('    PAGBANCO      INTEGER,');
               sql.add('    PAGFORMA      INTEGER,');
               sql.add('    PAGVALOR      NUMERIC(15,2),');
               sql.add('    PAGACRESCIMO  NUMERIC(15,2),');
               sql.add('    PAGDESCONTO   NUMERIC(15,2),');
               sql.add('    PAGENTRADA    NUMERIC(15,2),');
               sql.add('    PAGTOTAL      NUMERIC(15,2),');
               sql.add('    PAGSITUACAO   VARCHAR(10),');
               sql.add('    PAGVALORPAGO  NUMERIC(15,2),');
               sql.add('    PAGPARCELAS   SMALLINT,');
               sql.add('PRIMARY KEY (PAGDOCUMENTO));');
               execsql;

               sql.clear;
               sql.add('CREATE TABLE TITEMCONTPAG (');
               sql.add('    ITEDOCUMENTO  INTEGER NOT NULL,');
               sql.add('    ITEDATA       DATE NOT NULL,');
               sql.add('    ITEVALOR      NUMERIC(15,2),');
               sql.add('    ITESITUACAO   VARCHAR(10),');
               sql.add('    ITEPAGAMENTO  DATE,');
               sql.add('PRIMARY KEY(ITEDOCUMENTO, ITEDATA));');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TCONTPAG');
               sql.add('ADD CONSTRAINT FK_TCONTPAG_BANCO');
               sql.add('FOREIGN KEY (PAGBANCO)');
               sql.add('REFERENCES TBANCO(BANCOD);');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TCONTPAG');
               sql.add('ADD CONSTRAINT FK_TCONTPAG_CLIENTE');
               sql.add('FOREIGN KEY (PAGCLIENTE)');
               sql.add('REFERENCES TCLIENTE(CLICOD);');
               ExecSql;
          end;
          if versao < 19 then
          begin
               sql.clear;
               sql.add('INSERT INTO TPARAMETRO VALUES (2, ' + quotedstr('Valor IOF FActory') + ', ' + quotedstr('0') + ');');
               execsql;

               sql.clear;
               sql.add('INSERT INTO TPARAMETRO VALUES (3, ' + quotedstr('Valor Taxa de Servico FActory') + ', ' + quotedstr('0') + ');');
               execsql;
          end;
          if versao < 20 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TITEMCONTPAG ADD ITELCTOCAIXA INTEGER DEFAULT 0;');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TITEMFACTORYDOCTO ADD ITEBAIXADO VARCHAR(1),');
               sql.add('                              ADD ITEDATABAIXA DATE,');
               sql.add('                              ADD ITELCTOCAIXA INTEGER;');
               execsql;
          end;
          if versao < 21 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TITEMFACTORYDOCTO ADD ITEIOF  DOUBLE PRECISION DEFAULT 0;');
               execsql;
          end;
          if versao < 22 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TITEMFACTORYDOCTO ADD ITETAXA DOUBLE PRECISION DEFAULT 0;');
               execsql;
          end;
          if versao < 23 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TCONTACLIENTE ADD CONLCTOCAIXA INTEGER DEFAULT 0;');
               execsql;
          end;
          if versao < 24 then
          begin
               sql.clear;
               sql.add('UPDATE TCAIXA SET CAIENTRADA = 0 WHERE CAIENTRADA IS NULL;');
               execsql;

               sql.clear;
               sql.add('UPDATE TCAIXA SET CAISAIDA = 0 WHERE CAISAIDA IS NULL;');
               execsql;
          end;
          if versao < 25 then
          begin
               sql.clear;
               sql.add('INSERT INTO TPARAMETRO (PARCOD,PARNOME,PARVALOR) VALUES (4,' + quotedstr('Valor Tolerancia Rodosul') + ',' + quotedstr('7,5') + ');');
               execsql;
          end;
          if versao < 26 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TCAIXA ADD CAIBAIXADO VARCHAR(1) DEFAULT ' + quotedstr('S'));
               execsql;
          end;
          if versao < 27 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TBANCO ADD BANMENSAGEM VARCHAR(100);');
               execsql;
          end;
          if versao < 28 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TCONTREC ADD RECPAGAMENTO DATE;');
               execsql;
          end;
          if versao < 29 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TCONTREC ADD RECVALORTMP DOUBLE PRECISION,');
               sql.add('                     ADD RECACRESCIMOTMP DOUBLE PRECISION,');
               sql.add('                     ADD RECDESCONTOTMP DOUBLE PRECISION,');
               sql.add('                     ADD RECENTRADATMP DOUBLE PRECISION,');
               sql.add('                     ADD RECTOTALTMP DOUBLE PRECISION,');
               sql.add('                     ADD RECVALORPAGOTMP DOUBLE PRECISION;');
               ExecSQL;

               sql.clear;
               sql.add('UPDATE TCONTREC SET RECVALORTMP = RECVALOR,');
               sql.add('                    RECACRESCIMOTMP = RECACRESCIMO,');
               sql.add('                    RECDESCONTOTMP = RECDESCONTO,');
               sql.add('                    RECENTRADATMP = RECENTRADA,');
               sql.add('                    RECTOTALTMP = RECTOTAL,');
               sql.add('                    RECVALORPAGOTMP = RECVALORPAGO;');
               ExecSQL;

               sql.clear;
               sql.add('ALTER TABLE TCONTREC DROP RECVALOR,');
               sql.add('                     DROP RECACRESCIMO,');
               sql.add('                     DROP RECDESCONTO,');
               sql.add('                     DROP RECENTRADA,');
               sql.add('                     DROP RECTOTAL,');
               sql.add('                     DROP RECVALORPAGO;');
               ExecSQL;

               sql.clear;
               sql.add('ALTER TABLE TCONTREC ADD RECVALOR DOUBLE PRECISION,');
               sql.add('                     ADD RECACRESCIMO DOUBLE PRECISION,');
               sql.add('                     ADD RECDESCONTO DOUBLE PRECISION,');
               sql.add('                     ADD RECENTRADA DOUBLE PRECISION,');
               sql.add('                     ADD RECTOTAL DOUBLE PRECISION,');
               sql.add('                     ADD RECVALORPAGO DOUBLE PRECISION;');
               ExecSQL;

               sql.clear;
               sql.add('UPDATE TCONTREC SET RECVALOR = RECVALORTMP,');
               sql.add('                    RECACRESCIMO = RECACRESCIMOTMP,');
               sql.add('                    RECDESCONTO = RECDESCONTOTMP,');
               sql.add('                    RECENTRADA = RECENTRADATMP,');
               sql.add('                    RECTOTAL = RECTOTALTMP,');
               sql.add('                    RECVALORPAGO = RECVALORPAGOTMP;');
               ExecSQL;

               sql.clear;
               sql.add('ALTER TABLE TCONTREC DROP RECVALORTMP,');
               sql.add('                     DROP RECACRESCIMOTMP,');
               sql.add('                     DROP RECDESCONTOTMP,');
               sql.add('                     DROP RECENTRADATMP,');
               sql.add('                     DROP RECTOTALTMP,');
               sql.add('                     DROP RECVALORPAGOTMP;');
               ExecSQL;
          end;
          if versao < 30 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TMARGEM(');
               sql.add('    MARCOD INTEGER NOT NULL,');
               sql.add('    MAR1 DOUBLE PRECISION,');
               sql.add('    MAR2 DOUBLE PRECISION,');
               sql.add('    MAR3 DOUBLE PRECISION,');
               sql.add('    MAR4 DOUBLE PRECISION,');
               sql.add('    MAR5 DOUBLE PRECISION,');
               sql.add('PRIMARY KEY(MARCOD));');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TPRODUTO ADD PROMARCA INTEGER,');
               sql.add('                     ADD PROUNIEMB VARCHAR(10),');
               sql.add('                     ADD PROQUANTEMB INTEGER,');
               sql.add('                     ADD PROUNIVENDA VARCHAR(10),');
               sql.add('                     ADD PROFORNECEDOR INTEGER,');
               sql.add('                     ADD PROPESOLIQ DOUBLE PRECISION,');
               sql.add('                     ADD PROPESOBRUTO DOUBLE PRECISION,');
               sql.add('                     ADD PROLOCALIZACAO VARCHAR(30),');
               sql.add('                     ADD PROREFERENCIA VARCHAR(30),');
               sql.add('                     ADD PROESTMIN DOUBLE PRECISION,');
               sql.add('                     ADD PROESTMAX DOUBLE PRECISION,');
               sql.add('                     ADD PROIPI DOUBLE PRECISION,');
               sql.add('                     ADD PROCFCUPOM INTEGER,');
               sql.add('                     ADD PROCFNOTA INTEGER,');
               sql.add('                     ADD PROOBS VARCHAR(100),');
               sql.add('                     ADD PROCODBAREMB VARCHAR(50),');
               sql.add('                     ADD PROCODBARUNI VARCHAR(50),');
               sql.add('                     ADD PROCUSTOMEDIOEMB DOUBLE PRECISION,');
               sql.add('                     ADD PROCUSTOMEDIOUNI DOUBLE PRECISION,');
               sql.add('                     ADD PROCUSTOATUEMB DOUBLE PRECISION,');
               sql.add('                     ADD PROCUSTOATUUNI DOUBLE PRECISION,');
               sql.add('                     ADD PROULTATU DATE,');
               sql.add('                     ADD PROPRECOUSAR VARCHAR(1),');
               sql.add('                     ADD PROMARGEM INTEGER NOT NULL,');
               sql.add('                     ADD PROPRECO1 DOUBLE PRECISION,');
               sql.add('                     ADD PROPRECO2 DOUBLE PRECISION,');
               sql.add('                     ADD PROPRECO3 DOUBLE PRECISION,');
               sql.add('                     ADD PROPRECO4 DOUBLE PRECISION,');
               sql.add('                     ADD PROPRECO5 DOUBLE PRECISION;');
               ExecSQL;

               sql.clear;
               sql.add('ALTER TABLE TPRODUTO');
               sql.add('ADD CONSTRAINT FK_TPRODUTO_MARCA');
               sql.add('FOREIGN KEY (PROMARCA)');
               sql.add('REFERENCES TMARCA(MARCOD);');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TPRODUTO');
               sql.add('ADD CONSTRAINT FK_TPRODUTO_FORNECEDOR');
               sql.add('FOREIGN KEY (PROFORNECEDOR)');
               sql.add('REFERENCES TCLIENTE(CLICOD);');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TPRODUTO');
               sql.add('ADD CONSTRAINT FK_TPRODUTO_MARGEM');
               sql.add('FOREIGN KEY (PROMARGEM)');
               sql.add('REFERENCES TMARGEM(MARCOD);');
               ExecSql;
          end;
          if versao < 31 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TALIQUOTA(');
               sql.add('    ALICOD INTEGER NOT NULL,');
               sql.add('    ALITIPO VARCHAR(50),');
               sql.add('    ALIALIQUOTA DOUBLE PRECISION,');
               sql.add('    ALIBASECALC DOUBLE PRECISION,');
               sql.add('    ALIOBS VARCHAR(50),');
               sql.add('PRIMARY KEY(ALICOD));');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TPRODUTO');
               sql.add('ADD CONSTRAINT FK_TPRODUTO_ALIQ_CUPOM');
               sql.add('FOREIGN KEY (PROCFCUPOM)');
               sql.add('REFERENCES TALIQUOTA(ALICOD);');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TPRODUTO');
               sql.add('ADD CONSTRAINT FK_TPRODUTO_ALIQ_NOTA');
               sql.add('FOREIGN KEY (PROCFNOTA)');
               sql.add('REFERENCES TALIQUOTA(ALICOD);');
               ExecSql;
          end;

          if versao < 32 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TCFOP(');
               sql.add('    CFOPCOD VARCHAR(10) NOT NULL,');
               sql.add('    CFOPNOME VARCHAR(50),');
               sql.add('PRIMARY KEY(CFOPCOD));');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TPLANOPGTO(');
               sql.add('    PLACOD INTEGER NOT NULL,');
               sql.add('    PLANOME VARCHAR(50),');
               sql.add('    PLAVEZES INTEGER,');
               sql.add('    PLADIAS INTEGER,');
               sql.add('PRIMARY KEY(PLACOD));');
               ExecSql;
          end;

          if versao < 33 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TDEPOSITO(');
               sql.add('    DEPCOD INTEGER NOT NULL,');
               sql.add('    DEPNOME VARCHAR(50),');
               sql.add('PRIMARY KEY(DEPCOD));');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TTIPOCOB(');
               sql.add('    TIPCOD INTEGER NOT NULL,');
               sql.add('    TIPNOME VARCHAR(50),');
               sql.add('PRIMARY KEY(TIPCOD));');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TOBSERVACOES(');
               sql.add('    OBSCOD INTEGER NOT NULL,');
               sql.add('    OBSTEXTO BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
               sql.add('PRIMARY KEY(OBSCOD));');
               ExecSql;
          end;

          if versao < 34 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TGRUPOPROD(');
               sql.add('    GRUCOD INTEGER NOT NULL,');
               sql.add('    GRUNOME VARCHAR(50),');
               sql.add('PRIMARY KEY(GRUCOD));');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TPRODUTO');
               sql.add('ADD CONSTRAINT FK_TPRODUTO_GRUPO');
               sql.add('FOREIGN KEY (PROGRUPO)');
               sql.add('REFERENCES TGRUPOPROD(GRUCOD);');
               ExecSql;
          end;

          if versao < 35 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TALIQUOTAICMS(');
               sql.add('    ALISIGLA VARCHAR(2) NOT NULL,');
               sql.add('    ALICFOP VARCHAR(10) NOT NULL,');
               sql.add('    ALICODIGO INTEGER NOT NULL,');
               sql.add('    ALIICMSREVENDA DOUBLE PRECISION,');
               sql.add('    ALIICMSCONSUMIDOR DOUBLE PRECISION,');
               sql.add('    ALIBASECALC DOUBLE PRECISION,');
               sql.add('    ALISITTRIB DOUBLE PRECISION,');
               sql.add('    ALIOBS VARCHAR(50),');
               sql.add('PRIMARY KEY(ALISIGLA, ALICFOP, ALICODIGO));');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TALIQUOTAICMS');
               sql.add('ADD CONSTRAINT FK_TALIQUOTAICMS_CFOP');
               sql.add('FOREIGN KEY (ALICFOP)');
               sql.add('REFERENCES TCFOP(CFOPCOD);');
               ExecSql;
          end;

          if versao < 36 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TNOTAENT(');
               sql.add('    NOTFORNECEDOR INTEGER NOT NULL,');
               sql.add('    NOTNOTA INTEGER NOT NULL,');
               sql.add('    NOTPEDIDO INTEGER,');
               sql.add('    NOTDATA DATE,');
               sql.add('    NOTDATALCTO DATE,');
               sql.add('    NOTDEPOSITO INTEGER,');
               sql.add('    NOTCFOP VARCHAR(10),');
               sql.add('    NOTOPERACAO VARCHAR(30),');
               sql.add('    NOTSUBTOTAL DOUBLE PRECISION DEFAULT 0,');
               sql.add('    NOTICMS DOUBLE PRECISION DEFAULT 0,');
               sql.add('    NOTIPI DOUBLE PRECISION DEFAULT 0,');
               sql.add('    NOTICMSSUBST DOUBLE PRECISION DEFAULT 0,');
               sql.add('    NOTFRETE DOUBLE PRECISION DEFAULT 0,');
               sql.add('    NOTICMSFRETE DOUBLE PRECISION DEFAULT 0,');
               sql.add('    NOTSEGURO DOUBLE PRECISION DEFAULT 0,');
               sql.add('    NOTOUTRASDESP DOUBLE PRECISION DEFAULT 0,');
               sql.add('    NOTDESCONTO DOUBLE PRECISION DEFAULT 0,');
               sql.add('    NOTVALORBASECALC DOUBLE PRECISION DEFAULT 0,');
               sql.add('    NOTTAXAJURO DOUBLE PRECISION DEFAULT 0,');
               sql.add('    NOTTOTAL DOUBLE PRECISION DEFAULT 0,');
               sql.add('    NOTPLANOPGTO DOUBLE PRECISION DEFAULT 0,');
               sql.add('    NOTATUCONTPAGAR VARCHAR(1),');
               sql.add('    NOTCONTPAGAR INTEGER,');
               sql.add('    NOTENTRADA DOUBLE PRECISION DEFAULT 0,');
               sql.add('    NOTBANCO INTEGER,');
               sql.add('    NOTCIDADE INTEGER,');                              
               sql.add('PRIMARY KEY(NOTFORNECEDOR, NOTNOTA));');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TNOTAENT');
               sql.add('ADD CONSTRAINT FK_TNOTAENT_PLANO_PGTO');
               sql.add('FOREIGN KEY (NOTPLANOPGTO)');
               sql.add('REFERENCES TPLANOPGTO(PLACOD);');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TNOTAENT');
               sql.add('ADD CONSTRAINT FK_TNOTAENT_FORNECEDOR');
               sql.add('FOREIGN KEY (NOTFORNECEDOR)');
               sql.add('REFERENCES TCLIENTE(CLICOD);');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TNOTAENT');
               sql.add('ADD CONSTRAINT FK_TNOTAENT_DEPOSITO');
               sql.add('FOREIGN KEY (NOTDEPOSITO)');
               sql.add('REFERENCES TDEPOSITO(DEPCOD);');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TNOTAENT');
               sql.add('ADD CONSTRAINT FK_TNOTAENT_CFOP');
               sql.add('FOREIGN KEY (NOTCFOP)');
               sql.add('REFERENCES TCFOP(CFOPCOD);');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TNOTAENT');
               sql.add('ADD CONSTRAINT FK_TNOTAENT_BANCO');
               sql.add('FOREIGN KEY (NOTBANCO)');
               sql.add('REFERENCES TBANCO(BANCOD);');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TNOTAENT');
               sql.add('ADD CONSTRAINT FK_TNOTAENT_CIDADE');
               sql.add('FOREIGN KEY (NOTCIDADE)');
               sql.add('REFERENCES TCIDADE(CIDCOD);');
               ExecSql;

               sql.clear;
               sql.add('COMMIT;');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TITEMNOTAENT(');
               sql.add('    ITEFORNECEDOR INTEGER NOT NULL,');
               sql.add('    ITENOTA INTEGER NOT NULL,');
               sql.add('    ITEPRODUTO INTEGER NOT NULL,');
               sql.add('    ITECFOP VARCHAR(10),');
               sql.add('    ITESITTRIB INTEGER DEFAULT 0,');
               sql.add('    ITEBASECALC INTEGER DEFAULT 0,');
               sql.add('    ITEQUANT DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ITEPRECO DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ITEICMS DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ITEIPI DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ITEDESC DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ITETOTAL DOUBLE PRECISION DEFAULT 0,');
               sql.add('PRIMARY KEY(ITEFORNECEDOR, ITENOTA, ITEPRODUTO));');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TITEMNOTAENT');
               sql.add('ADD CONSTRAINT FK_TITEMNOTAENT_PRODUTO');
               sql.add('FOREIGN KEY (ITEPRODUTO)');
               sql.add('REFERENCES TPRODUTO(PROCOD);');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TITEMNOTAENT');
               sql.add('ADD CONSTRAINT FK_TITEMNOTAENT_CFOP');
               sql.add('FOREIGN KEY (ITECFOP)');
               sql.add('REFERENCES TCFOP(CFOPCOD);');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TITEMNOTAENT');
               sql.add('ADD CONSTRAINT FK_TITEMNOTAENT_NOTAENT');
               sql.add('FOREIGN KEY (ITEFORNECEDOR, ITENOTA)');
               sql.add('REFERENCES TNOTAENT(NOTFORNECEDOR, NOTNOTA)');
               sql.add('ON UPDATE CASCADE ON DELETE CASCADE;');
               ExecSql;
          end;

          if versao < 37 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TBANCO DROP BANMENSAGEM;');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TBANCO ADD BANMENSAGEM BLOB SUB_TYPE 1 SEGMENT SIZE 80;');
               execsql;
          end;

          if versao < 38 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TVCTONOTAENT(');
               sql.add('    VCTOFORNECEDOR INTEGER NOT NULL,');
               sql.add('    VCTONOTA INTEGER NOT NULL,');
               sql.add('    VCTODATA DATE NOT NULL,');
               sql.add('    VCTOVALOR DOUBLE PRECISION DEFAULT 0,');
               sql.add('PRIMARY KEY(VCTOFORNECEDOR, VCTONOTA, VCTODATA));');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TVCTONOTAENT');
               sql.add('ADD CONSTRAINT FK_TVCTONOTAENT_NOTAENT');
               sql.add('FOREIGN KEY (VCTOFORNECEDOR, VCTONOTA)');
               sql.add('REFERENCES TNOTAENT(NOTFORNECEDOR, NOTNOTA)');
               sql.add('ON UPDATE CASCADE ON DELETE CASCADE;');
               execsql;
          end;

          if versao < 39 then
          begin
              sql.clear;
              sql.add('ALTER TABLE TITEMCONTREC ADD ITEVALORTMP DOUBLE PRECISION;');
              ExecSQL;

              sql.clear;
              sql.add('UPDATE TITEMCONTREC SET ITEVALORTMP = ITEVALOR;');
              ExecSQL;

              sql.clear;
              sql.add('ALTER TABLE TITEMCONTREC DROP ITEVALOR;');
              ExecSQL;

              sql.clear;
              sql.add('ALTER TABLE TITEMCONTREC ADD ITEVALOR DOUBLE PRECISION;');
              ExecSQL;

              sql.clear;
              sql.add('UPDATE TITEMCONTREC SET ITEVALOR = ITEVALORTMP;');
              ExecSQL;

              sql.clear;
              sql.add('ALTER TABLE TITEMCONTREC DROP ITEVALORTMP;');
              ExecSQL;
          end;

          if versao < 40 then
          begin
              sql.clear;
              sql.add('CREATE TRIGGER TITEMNOTAENT_AI FOR TITEMNOTAENT');
              sql.add('ACTIVE AFTER INSERT POSITION 0');
              SQL.ADD('AS');
              SQL.ADD('BEGIN');
              SQL.ADD('     UPDATE TPRODUTO SET TPRODUTO.PROESTOQUE = TPRODUTO.PROESTOQUE + NEW.ITEQUANT');
              SQL.ADD('     WHERE TPRODUTO.PROCOD = NEW.ITEPRODUTO;');
              SQL.ADD('END');
              execsql;

              sql.clear;
              sql.add('CREATE TRIGGER TITEMNOTAENT_AD FOR TITEMNOTAENT');
              sql.add('ACTIVE AFTER DELETE POSITION 0');
              SQL.ADD('AS');
              SQL.ADD('BEGIN');
              SQL.ADD('UPDATE TPRODUTO SET TPRODUTO.PROESTOQUE = TPRODUTO.PROESTOQUE - OLD.ITEQUANT');
              SQL.ADD('     WHERE TPRODUTO.PROCOD = OLD.ITEPRODUTO;');
              SQL.ADD('END');
              execsql;
          end;
          if versao < 41 then
          begin
              sql.clear;
              sql.add('ALTER TABLE TCONTREC ADD RECNUMBANCO VARCHAR(30);');
              ExecSQL;
          end;
          if versao < 42 then
          begin
              sql.clear;
              sql.add('ALTER TABLE TNOTAENT ADD NOTDATASTR VARCHAR(10);');
              ExecSQL;
          end;
          if versao < 43 then
          begin
              sql.clear;
              sql.add('CREATE TABLE TOUTRASAIDA(');
              sql.add('    OUTCOD INTEGER NOT NULL,');
              sql.add('    OUTTIPO VARCHAR(1),');
              sql.add('    OUTDATA DATE,');
              sql.add('    OUTPRODUTO INTEGER,');
              sql.add('    OUTQUANT DOUBLE PRECISION DEFAULT 0,');
              sql.add('    OUTMOTIVO VARCHAR(100),');
              sql.add('PRIMARY KEY(OUTCOD));');
              execsql;

              sql.clear;
              sql.add('ALTER TABLE TOUTRASAIDA');
              sql.add('ADD CONSTRAINT FK_TOUTRASAIDA_PRODUTO');
              sql.add('FOREIGN KEY (OUTPRODUTO)');
              sql.add('REFERENCES TPRODUTO(PROCOD);');
              execsql;

              sql.clear;
              sql.add('CREATE TRIGGER TOUTRASAIDA_AI FOR TOUTRASAIDA');
              sql.add('ACTIVE AFTER INSERT POSITION 0');
              sql.add('AS');
              sql.add('BEGIN');
              sql.add('  IF (NEW.OUTTIPO = ' + quotedstr('E') + ') THEN');
              sql.add('  BEGIN');
              sql.add('       UPDATE TPRODUTO SET TPRODUTO.PROESTOQUE = TPRODUTO.PROESTOQUE + NEW.OUTQUANT');
              sql.add('            WHERE TPRODUTO.PROCOD = NEW.OUTPRODUTO;');
              sql.add('  END');
              sql.add('  IF (NEW.OUTTIPO = ' + quotedstr('S') + ') THEN');
              sql.add('  BEGIN');
              sql.add('       UPDATE TPRODUTO SET TPRODUTO.PROESTOQUE = TPRODUTO.PROESTOQUE - NEW.OUTQUANT');
              sql.add('            WHERE TPRODUTO.PROCOD = NEW.OUTPRODUTO;');
              sql.add('  END');
              sql.add('END');
              execsql;

              sql.clear;
              sql.add('CREATE TRIGGER TOUTRASAIDA_AD FOR TOUTRASAIDA');
              sql.add('ACTIVE AFTER DELETE POSITION 0');
              sql.add('AS');
              sql.add('BEGIN');
              sql.add('  IF (OLD.OUTTIPO = ' + quotedstr('E') + ') THEN');
              sql.add('  BEGIN');
              sql.add('       UPDATE TPRODUTO SET TPRODUTO.PROESTOQUE = TPRODUTO.PROESTOQUE - OLD.OUTQUANT');
              sql.add('            WHERE TPRODUTO.PROCOD = OLD.OUTPRODUTO;');
              sql.add('  END');
              sql.add('  IF (OLD.OUTTIPO = ' + quotedstr('S') + ') THEN');
              sql.add('  BEGIN');
              sql.add('       UPDATE TPRODUTO SET TPRODUTO.PROESTOQUE = TPRODUTO.PROESTOQUE + OLD.OUTQUANT');
              sql.add('            WHERE TPRODUTO.PROCOD = OLD.OUTPRODUTO;');
              sql.add('  END');
              sql.add('END');
              execsql;

              sql.clear;
              sql.add('CREATE TRIGGER TOUTRASAIDA_AU FOR TOUTRASAIDA');
              sql.add('ACTIVE BEFORE UPDATE POSITION 0');
              sql.add('AS');
              sql.add('BEGIN');
              sql.add('  IF (OLD.OUTTIPO = ' + quotedstr('E') + ') THEN');
              sql.add('  BEGIN');
              sql.add('       UPDATE TPRODUTO SET TPRODUTO.PROESTOQUE = TPRODUTO.PROESTOQUE - OLD.OUTQUANT + NEW.OUTQUANT');
              sql.add('            WHERE TPRODUTO.PROCOD = NEW.OUTPRODUTO;');
              sql.add('  END');
              sql.add('  IF (OLD.OUTTIPO = ' + quotedstr('S') + ') THEN');
              sql.add('  BEGIN');
              sql.add('       UPDATE TPRODUTO SET TPRODUTO.PROESTOQUE = TPRODUTO.PROESTOQUE + OLD.OUTQUANT - NEW.OUTQUANT');
              sql.add('            WHERE TPRODUTO.PROCOD = NEW.OUTPRODUTO;');
              sql.add('  END');
              sql.add('END');
              execsql;
          end;
          if versao < 44 then
          begin
              sql.clear;
              sql.add('CREATE TABLE TVEICULO(');
              sql.add('    VEICOD INTEGER NOT NULL,');
              sql.add('    VEIPLACA VARCHAR(10),');
              sql.add('    VEICHASSI VARCHAR(50),');
              sql.add('    VEICIDADE INTEGER,');
              sql.add('    VEIMODELO INTEGER,');
              sql.add('    VEIDESCRICAO VARCHAR(100),');
              sql.add('    VEIANOFAB INTEGER,');
              sql.add('    VEIANOMOD INTEGER,');
              sql.add('    VEIPROPRIETARIO INTEGER,');
              sql.add('    VEIDATAVENDA DATE,');
              sql.add('    VEICONCVENDA VARCHAR(50),');
              sql.add('    VEIULTIMACONC VARCHAR(50),');
              sql.add('    VEICOR VARCHAR(50),');
              sql.add('    VEICAPACTANQUE DOUBLE PRECISION DEFAULT 0,');
              sql.add('    VEIOBS BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
              sql.add('PRIMARY KEY(VEICOD));');
              execsql;

              sql.clear;
              sql.add('ALTER TABLE TVEICULO');
              sql.add('ADD CONSTRAINT FK_TVEICULO_CIDADE');
              sql.add('FOREIGN KEY (VEICIDADE)');
              sql.add('REFERENCES TCIDADE(CIDCOD);');
              execsql;

              sql.clear;
              sql.add('ALTER TABLE TVEICULO');
              sql.add('ADD CONSTRAINT FK_TVEICULO_MODELO');
              sql.add('FOREIGN KEY (VEIMODELO)');
              sql.add('REFERENCES TMODELO(MODCOD);');
              execsql;

              sql.clear;
              sql.add('ALTER TABLE TVEICULO');
              sql.add('ADD CONSTRAINT FK_TVEICULO_PROPRIETARIO');
              sql.add('FOREIGN KEY (VEIPROPRIETARIO)');
              sql.add('REFERENCES TCLIENTE(CLICOD);');
              execsql;
          end;

          if versao < 45 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TNOTAENT');
               sql.add('DROP CONSTRAINT FK_TNOTAENT_CFOP;');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TNOTAENT');
               sql.add('DROP CONSTRAINT FK_TNOTAENT_BANCO;');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TNOTAENT');
               sql.add('DROP CONSTRAINT FK_TNOTAENT_CIDADE;');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TNOTAENT');
               sql.add('DROP CONSTRAINT FK_TNOTAENT_PLANO_PGTO;');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TNOTAENT');
               sql.add('DROP CONSTRAINT FK_TNOTAENT_DEPOSITO;');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TITEMNOTAENT');
               sql.add('DROP CONSTRAINT FK_TITEMNOTAENT_CFOP;');
               ExecSql;

               sql.clear;
               sql.add('INSERT INTO TPARAMETRO (PARCOD,PARNOME,PARVALOR) VALUES (5,' + quotedstr('MOSTRAR REL DE ANIVERSARIANTES') + ',' + quotedstr('S') + ');');
               ExecSql;
          end;
          if versao < 46 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TRECHCENTER ALTER RECVERSAO TYPE INTEGER;');
               ExecSql;
          end;
          if versao < 47 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TPLANOPGTO');
               sql.add('   ADD PLATIPO VARCHAR(1),');
               sql.add('   ADD PLADIA INTEGER,');
               sql.add('   ADD PLA1 INTEGER,');
               sql.add('   ADD PLA2 INTEGER,');
               sql.add('   ADD PLA3 INTEGER,');
               sql.add('   ADD PLA4 INTEGER,');
               sql.add('   ADD PLA5 INTEGER,');
               sql.add('   ADD PLA6 INTEGER,');
               sql.add('   ADD PLA7 INTEGER,');
               sql.add('   ADD PLA8 INTEGER,');
               sql.add('   ADD PLA9 INTEGER,');
               sql.add('   ADD PLA10 INTEGER;');
               ExecSql;
          end;
          if versao < 48 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TCONTREC ADD RECPLANOPGTO INTEGER;');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TCONTPAG ADD PAGPLANOPGTO INTEGER;');
               ExecSql;
          end;
          if versao < 49 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TPRODUTO');
               sql.add('     ADD PROMARGEM1 DOUBLE PRECISION DEFAULT 0,');
               sql.add('     ADD PROMARGEM2 DOUBLE PRECISION DEFAULT 0,');
               sql.add('     ADD PROMARGEM3 DOUBLE PRECISION DEFAULT 0,');
               sql.add('     ADD PROMARGEM4 DOUBLE PRECISION DEFAULT 0,');
               sql.add('     ADD PROMARGEM5 DOUBLE PRECISION DEFAULT 0;');
               ExecSql;
          end;
          if versao < 50 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TCHEQUE(');
               sql.add('     CHEBANCO INTEGER NOT NULL,');
               sql.add('     CHECONTA INTEGER NOT NULL,');
               sql.add('     CHENUMERO INTEGER NOT NULL,');
               sql.add('     CHEEMISSAO DATE,');
               sql.add('     CHEVCTO DATE,');
               sql.add('     CHEVALOR DOUBLE PRECISION DEFAULT 0,');
               sql.add('     CHENOMINAL VARCHAR(50),');
               sql.add('     CHERESPONSAVEL VARCHAR(50),');
               sql.add('PRIMARY KEY(CHEBANCO, CHECONTA, CHENUMERO));');
               ExecSql;
          end;
          if versao < 51 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TNOTAFISC(');
               sql.add('     NOTNUMERO INTEGER NOT NULL,');
               sql.add('     NOTEMISSAO DATE,');
               sql.add('     NOTSAIDA DATE,');
               sql.add('     NOTHORASAIDA VARCHAR(5),');
               sql.add('     NOTCFOP VARCHAR(10),');
               sql.add('     NOTCLIENTE INTEGER NOT NULL,');
               sql.add('     NOTOPERACAO VARCHAR(30),');
               sql.add('     NOTSUBTOTAL DOUBLE PRECISION DEFAULT 0,');
               sql.add('     NOTDESCONTO DOUBLE PRECISION DEFAULT 0,');
               sql.add('     NOTFRETE DOUBLE PRECISION DEFAULT 0,');
               sql.add('     NOTFUNRURAL DOUBLE PRECISION DEFAULT 0,');
               sql.add('     NOTOUTRASDESP DOUBLE PRECISION DEFAULT 0,');
               sql.add('     NOTIPI DOUBLE PRECISION DEFAULT 0,');
               sql.add('     NOTTOTAL DOUBLE PRECISION DEFAULT 0,');
               sql.add('     NOTBASECALC DOUBLE PRECISION DEFAULT 0,');
               sql.add('     NOTICMS DOUBLE PRECISION DEFAULT 0,');
               sql.add('     NOTENTRADA DOUBLE PRECISION DEFAULT 0,');
               sql.add('     NOTTRANSPORTADORA INTEGER,');
               sql.add('     NOTPLACA VARCHAR(10),');
               sql.add('     NOTVOLQUANT VARCHAR(30),');
               sql.add('     NOTVOLESPECIE VARCHAR(30),');
               sql.add('     NOTVOLPESOBRUTO DOUBLE PRECISION DEFAULT 0,');
               sql.add('     NOTVOLPESOLIQ DOUBLE PRECISION DEFAULT 0,');
               sql.add('     NOTVOLMARCA VARCHAR(30),');
               sql.add('     NOTVOLNUMERO VARCHAR(30),');
               sql.add('     NOTPLANOPGTO INTEGER,');
               sql.add('     NOTCIDADE INTEGER,');
               sql.add('     NOTBANCO INTEGER,');
               sql.add('     NOTVENDEDOR INTEGER,');
               sql.add('     NOTATUCONTREC VARCHAR(1),');
               sql.add('     NOTCONTREC INTEGER,');
               sql.add('     NOTOBS BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
               sql.add('PRIMARY KEY(NOTNUMERO));');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TITEMNOTAFISC(');
               sql.add('     ITENUMERO INTEGER NOT NULL,');
               sql.add('     ITEPRODUTO INTEGER NOT NULL,');
               sql.add('     ITEQUANT DOUBLE PRECISION DEFAULT 0,');
               sql.add('     ITEPRECO DOUBLE PRECISION DEFAULT 0,');
               sql.add('     ITEICMS DOUBLE PRECISION DEFAULT 0,');
               sql.add('     ITECUSTO DOUBLE PRECISION DEFAULT 0,');
               sql.add('     ITEIPI DOUBLE PRECISION DEFAULT 0,');
               sql.add('     ITETOTAL DOUBLE PRECISION DEFAULT 0,');
               sql.add('     ITEBASECALC DOUBLE PRECISION DEFAULT 0,');
               sql.add('     ITEDESC DOUBLE PRECISION DEFAULT 0,');
               sql.add('PRIMARY KEY (ITENUMERO, ITEPRODUTO));');
               execsql;

               sql.clear;
               sql.add('CREATE TABLE TVCTONOTAFISC(');
               sql.add('     VCTONUMERO INTEGER NOT NULL,');
               sql.add('     VCTODATA DATE NOT NULL,');
               sql.add('     VCTOVALOR DOUBLE PRECISION DEFAULT 0,');
               sql.add('PRIMARY KEY(VCTONUMERO, VCTODATA));');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TITEMNOTAFISC');
               sql.add('ADD CONSTRAINT FK_TITEMNOTAFISC_NOTAFISC');
               sql.add('FOREIGN KEY (ITENUMERO)');
               sql.add('REFERENCES TNOTAFISC(NOTNUMERO)');
               sql.add('ON UPDATE CASCADE ON DELETE CASCADE;');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TVCTONOTAFISC');
               sql.add('ADD CONSTRAINT FK_TVCTONOTAFISC_NOTAFISC');
               sql.add('FOREIGN KEY (VCTONUMERO)');
               sql.add('REFERENCES TNOTAFISC(NOTNUMERO)');
               sql.add('ON UPDATE CASCADE ON DELETE CASCADE;');
               execsql;

               sql.clear;
               sql.add('CREATE TRIGGER TITEMNOTAFISC_AI FOR TITEMNOTAFISC');
               sql.add('ACTIVE AFTER INSERT POSITION 0');
               sql.add('AS');
               sql.add('BEGIN');
               sql.add('       UPDATE TPRODUTO SET TPRODUTO.PROESTOQUE = TPRODUTO.PROESTOQUE - NEW.ITEQUANT');
               sql.add('            WHERE TPRODUTO.PROCOD = NEW.ITEPRODUTO;');
               sql.add('END');
               execsql;

               sql.clear;
               sql.add('CREATE TRIGGER TITEMNOTAFISC_AD FOR TITEMNOTAFISC');
               sql.add('ACTIVE AFTER DELETE POSITION 0');
               sql.add('AS');
               sql.add('BEGIN');
               sql.add('       UPDATE TPRODUTO SET TPRODUTO.PROESTOQUE = TPRODUTO.PROESTOQUE + OLD.ITEQUANT');
               sql.add('            WHERE TPRODUTO.PROCOD = OLD.ITEPRODUTO;');
               sql.add('END');
               execsql;

               sql.clear;
               sql.add('CREATE TRIGGER TITEMNOTAFISC_BU FOR TITEMNOTAFISC');
               sql.add('ACTIVE BEFORE UPDATE POSITION 0');
               sql.add('AS');
               sql.add('BEGIN');
               sql.add('       UPDATE TPRODUTO SET TPRODUTO.PROESTOQUE = TPRODUTO.PROESTOQUE + OLD.ITEQUANT - NEW.ITEQUANT');
               sql.add('            WHERE TPRODUTO.PROCOD = NEW.ITEPRODUTO;');
               sql.add('END');
               execsql;
          end;
          if versao < 52 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TCLIENTE ADD CLICOMPRADOR VARCHAR(100);');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TPRODUTO ADD PROCODFORNECEDOR VARCHAR(30);');
               ExecSql;
          end;
          if versao < 53 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TTMPFLUXO(');
               sql.add('   TMPTIPO VARCHAR(1) NOT NULL,');
               sql.add('   TMPGRUPO INTEGER NOT NULL,');
               sql.add('   TMPNOMEGRUPO VARCHAR(50),');
               sql.add('   TMPVALOR1 DOUBLE PRECISION DEFAULT 0,');
               sql.add('   TMPVALOR2 DOUBLE PRECISION DEFAULT 0,');
               sql.add('   TMPVALOR3 DOUBLE PRECISION DEFAULT 0,');
               sql.add('   TMPVALOR4 DOUBLE PRECISION DEFAULT 0,');
               sql.add('   TMPVALOR5 DOUBLE PRECISION DEFAULT 0,');
               sql.add('   TMPVALOR6 DOUBLE PRECISION DEFAULT 0,');
               sql.add('   TMPVALOR7 DOUBLE PRECISION DEFAULT 0,');
               sql.add('   TMPVALOR8 DOUBLE PRECISION DEFAULT 0,');
               sql.add('   TMPVALOR9 DOUBLE PRECISION DEFAULT 0,');
               sql.add('   TMPVALOR10 DOUBLE PRECISION DEFAULT 0,');
               sql.add('   TMPVALOR11 DOUBLE PRECISION DEFAULT 0,');
               sql.add('   TMPVALOR12 DOUBLE PRECISION DEFAULT 0,');
               sql.add('PRIMARY KEY(TMPTIPO, TMPGRUPO));');
               ExecSql;
          end;

          if versao < 54 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TSERVICO(');
               sql.add('   SERCOD INTEGER NOT NULL,');
               sql.add('   SERNOME VARCHAR(50),');
               sql.add('   SERVALOR DOUBLE PRECISION DEFAULT 0,');
               sql.add('PRIMARY KEY(SERCOD));');
               execsql;

               sql.clear;
               sql.add('CREATE TABLE TORDEMSERVICO(');
               sql.add('   ORDNUMERO INTEGER NOT NULL,');
               sql.add('   ORDDATAENT DATE,');
               sql.add('   ORDHORAENT VARCHAR(5),');
               sql.add('   ORDCLIENTE INTEGER,');
               sql.add('   ORDVEICULO INTEGER,');
               sql.add('   ORDTIPOSERVICO VARCHAR(30),');
               sql.add('   ORDDATASAI DATE,');
               sql.add('   ORDHORASAI VARCHAR(5),');
               sql.add('   ORDVENDEDOR INTEGER,');
               sql.add('   ORDTOTALPRODUTOS DOUBLE PRECISION DEFAULT 0,');
               sql.add('   ORDTOTALSERVICOS DOUBLE PRECISION DEFAULT 0,');
               sql.add('   ORDACRESCIMO DOUBLE PRECISION DEFAULT 0,');
               sql.add('   ORDDESCONTO DOUBLE PRECISION DEFAULT 0,');
               sql.add('   ORDTOTAL DOUBLE PRECISION DEFAULT 0,');
               sql.add('   ORDENTRADA DOUBLE PRECISION DEFAULT 0,');
               sql.add('   ORDPLANOPGTO INTEGER,');
               sql.add('   ORDBANCO INTEGER,');
               sql.add('   ORDOBS BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
               sql.add('   ORDBAIXADO VARCHAR(1) DEFAULT ' + quotedstr('N') +',');
               sql.add('PRIMARY KEY(ORDNUMERO));');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TORDEMSERVICOPRODUTO(');
               sql.add('   ORDPRONUMERO INTEGER NOT NULL,');
               sql.add('   ORDPROPRODUTO INTEGER NOT NULL,');
               sql.add('   ORDPROQUANT DOUBLE PRECISION DEFAULT 0,');
               sql.add('   ORDPROVALOR DOUBLE PRECISION DEFAULT 0,');
               sql.add('   ORDPROCUSTO DOUBLE PRECISION DEFAULT 0,');
               sql.add('   ORDPROTOTAL DOUBLE PRECISION DEFAULT 0,');
               sql.add('PRIMARY KEY(ORDPRONUMERO,ORDPROPRODUTO));');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TORDEMSERVICOPRODUTO');
               sql.add('ADD CONSTRAINT FK_PRODUTO_ORDEMSERVICO');
               sql.add('FOREIGN KEY (ORDPRONUMERO)');
               sql.add('REFERENCES TORDEMSERVICO(ORDNUMERO)');
               sql.add('ON UPDATE CASCADE ON DELETE CASCADE;');
               execsql;

               sql.clear;
               sql.add('CREATE TRIGGER TORDEMSERVICOPRODUTO_AI FOR TORDEMSERVICOPRODUTO');
               sql.add('ACTIVE AFTER INSERT POSITION 0');
               sql.add('AS');
               sql.add('BEGIN');
               sql.add('       UPDATE TPRODUTO SET TPRODUTO.PROESTOQUE = TPRODUTO.PROESTOQUE - NEW.ORDPROQUANT');
               sql.add('            WHERE TPRODUTO.PROCOD = NEW.ORDPROPRODUTO;');
               sql.add('END');
               execsql;

               sql.clear;
               sql.add('CREATE TRIGGER TORDEMSERVICOPRODUTO_AD FOR TORDEMSERVICOPRODUTO');
               sql.add('ACTIVE AFTER DELETE POSITION 0');
               sql.add('AS');
               sql.add('BEGIN');
               sql.add('       UPDATE TPRODUTO SET TPRODUTO.PROESTOQUE = TPRODUTO.PROESTOQUE + OLD.ORDPROQUANT');
               sql.add('            WHERE TPRODUTO.PROCOD = OLD.ORDPROPRODUTO;');
               sql.add('END');
               execsql;

               sql.clear;
               sql.add('CREATE TRIGGER TORDEMSERVICOPRODUTO_BU FOR TORDEMSERVICOPRODUTO');
               sql.add('ACTIVE BEFORE UPDATE POSITION 0');
               sql.add('AS');
               sql.add('BEGIN');
               sql.add('       UPDATE TPRODUTO SET TPRODUTO.PROESTOQUE = TPRODUTO.PROESTOQUE + OLD.ORDPROQUANT - NEW.ORDPROQUANT');
               sql.add('            WHERE TPRODUTO.PROCOD = NEW.ORDPROPRODUTO;');
               sql.add('END');
               execsql;

               sql.clear;
               sql.add('CREATE TABLE TORDEMSERVICOSERVICO(');
               sql.add('   ORDSERNUMERO INTEGER NOT NULL,');
               sql.add('   ORDSERSERVICO INTEGER NOT NULL,');
               sql.add('   ORDSERQUANT DOUBLE PRECISION DEFAULT 0,');
               sql.add('   ORDSERVALOR DOUBLE PRECISION DEFAULT 0,');
               sql.add('   ORDSERTOTAL DOUBLE PRECISION DEFAULT 0,');
               sql.add('PRIMARY KEY(ORDSERNUMERO,ORDSERSERVICO));');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TORDEMSERVICOSERVICO');
               sql.add('ADD CONSTRAINT FK_SERVICO_ORDEMSERVICO');
               sql.add('FOREIGN KEY (ORDSERNUMERO)');
               sql.add('REFERENCES TORDEMSERVICO(ORDNUMERO)');
               sql.add('ON UPDATE CASCADE ON DELETE CASCADE;');
               execsql;
          end;

          if versao < 55 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TORDEMSERVICOVCTO(');
               sql.add('   ORDVCTONUMERO INTEGER NOT NULL,');
               sql.add('   ORDVCTODATA DATE NOT NULL,');
               sql.add('   ORDVCTOVALOR DOUBLE PRECISION DEFAULT 0,');
               sql.add('PRIMARY KEY(ORDVCTONUMERO,ORDVCTODATA));');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TORDEMSERVICOVCTO');
               sql.add('ADD CONSTRAINT FK_VCTO_ORDEMSERVICO');
               sql.add('FOREIGN KEY (ORDVCTONUMERO)');
               sql.add('REFERENCES TORDEMSERVICO(ORDNUMERO)');
               sql.add('ON UPDATE CASCADE ON DELETE CASCADE;');
               execsql;
          end;

          if versao < 56 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TORDEMSERVICO ADD ORDATUCONTREC VARCHAR(1) DEFAULT ' + quotedstr('S') + ',');
               sql.add('                          ADD ORDCONTREC INTEGER;');
               execsql;
          end;

          if versao < 57 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TITEMCONTREC ADD ITELCTOCAIXA INTEGER DEFAULT 0;');
               execsql;
          end;

          if versao < 58 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TOUTRASAIDA ADD OUTLCTOCAIXA INTEGER DEFAULT 0;');
               execsql;
          end;

          if versao < 59 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TMODELO');
               sql.add('DROP CONSTRAINT FK_TMODELO_MARCA;');
               execsql;
          end;

          if versao < 60 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TCLIENTE');
               sql.add('ADD CLITIPOIMOB VARCHAR(1) DEFAULT ' + quotedstr('1')+ ';');
               execsql;
          end;

          if versao < 61 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TIMOVEL(');
               sql.add('    IMOCOD INTEGER NOT NULL,');
               sql.add('    IMOEMPREENDIMENTO VARCHAR(50),');
               sql.add('    IMOPROPRIETARIO INTEGER,');               
               sql.add('    IMOCONSTRUTORA VARCHAR(50),');
               sql.add('    IMOENDERECO VARCHAR(50),');
               sql.add('    IMONUMERO INTEGER,');
               sql.add('    IMOBAIRRO VARCHAR(50),');
               sql.add('    IMOCIDADE INTEGER,');
               sql.add('    IMOREFERENCIA VARCHAR(50),');
               sql.add('    IMOPAVIMENTO INTEGER,');
               sql.add('    IMOAREAUTIL DOUBLE PRECISION,');
               sql.add('    IMOAREACOMUM DOUBLE PRECISION,');
               sql.add('    IMOAREAGARAGEM DOUBLE PRECISION,');
               sql.add('    IMODORMITORIOS INTEGER,');
               sql.add('    IMOSUITES INTEGER,');
               sql.add('    IMOBANHEIROS INTEGER,');
               sql.add('    IMOSALAS INTEGER,');
               sql.add('    IMOSACADAS INTEGER,');
               sql.add('    IMODESCRICAO BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
               sql.add('    IMOFOTO1 VARCHAR(100),');
               sql.add('    IMOFOTO2 VARCHAR(100),');
               sql.add('    IMOFOTO3 VARCHAR(100),');
               sql.add('    IMOFOTO4 VARCHAR(100),');
               sql.add('    IMOFOTO5 VARCHAR(100),');
               sql.add('    IMOALUGADO VARCHAR(1),');                                                                          
               sql.add('PRIMARY KEY(IMOCOD));');
               ExecSql;
          end;

          if versao < 62 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TCOMPRAVENDA(');
               sql.add('    COMCOD INTEGER NOT NULL,');
               sql.add('    COMVENDEDOR INTEGER,');
               sql.add('    COMCOMPRADOR INTEGER,');
               sql.add('    COMIMOVEL INTEGER,');
               sql.add('    COMVALOR DOUBLE PRECISION,');
               sql.add('    COMDATA DATE,');
               sql.add('    COMOBS VARCHAR(100),');
               sql.add('PRIMARY KEY(COMCOD));');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TCONTRATO(');
               sql.add('    CONCOD INTEGER NOT NULL,');
               sql.add('    CONLOCADOR INTEGER,');
               sql.add('    CONLOCATARIO INTEGER,');
               sql.add('    CONIMOVEL INTEGER,');
               sql.add('    CONINICIO DATE,');
               sql.add('    CONFIM DATE,');
               sql.add('    CONESPECIE VARCHAR(50),');
               sql.add('    CONVALOR DOUBLE PRECISION,');
               sql.add('    CONOUTROS DOUBLE PRECISION,');
               sql.add('    CONENTRADA DOUBLE PRECISION,');
               sql.add('    CONLIQUIDO DOUBLE PRECISION,');
               sql.add('    CONFIADO INTEGER,');
               sql.add('    CONOBS VARCHAR(100),');
               sql.add('PRIMARY KEY(CONCOD));');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TITEMCONTRATO(');
               sql.add('    ITECONTRATO INTEGER NOT NULL,');
               sql.add('    ITEVCTO DATE NOT NULL,');
               sql.add('    ITEVALOR DOUBLE PRECISION,');
               sql.add('    ITEPGTO DATE,');
               sql.add('    ITEVALORPAGO DOUBLE PRECISION,');
               sql.add('PRIMARY KEY(ITECONTRATO, ITEVCTO));');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TITEMCONTRATO');
               sql.add('ADD CONSTRAINT FK_VCTO_CONTRATO');
               sql.add('FOREIGN KEY (ITECONTRATO)');
               sql.add('REFERENCES TCONTRATO(CONCOD)');
               sql.add('ON UPDATE CASCADE ON DELETE CASCADE;');
               execsql;
          end;
          if versao < 63 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TCONTRATO');
               sql.add('    ADD CONSITUACAO VARCHAR(10),');
               sql.add('    ADD CONVALORPAGO DOUBLE PRECISION DEFAULT 0;');
               ExecSql;
          end;
          if versao < 64 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TIMOVEL');
               sql.add('    ADD IMOCEP VARCHAR(10);');
               ExecSql;
          end;
          if versao < 65 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TCONTRATO');
               sql.add('    ADD CONCOMISSAO DOUBLE PRECISION;');
               ExecSql;
          end;

          if versao < 66 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TCONTRATO');
               sql.add('    ADD CONTIPO VARCHAR(50);');
               ExecSql;
          end;

          if versao < 67 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TCONTRATO');
               sql.add('    ADD CONFIADORNOME VARCHAR(50),');
               sql.add('    ADD CONFIADORCPF VARCHAR(20);');
               ExecSql;
          end;

          if versao < 68 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TITEMCONTRATO');
               sql.add('    ADD ITECONALUGUEL DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ADD ITECONCONDOMINIO DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ADD ITECONIIMPOSTO DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ADD ITECONSEGURO DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ADD ITECONAGUA DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ADD ITECONLUZ DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ADD ITECONGARAGEM DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ADD ITECONOUTRO1 DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ADD ITECONOUTRO2 DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ADD ITECONOUTRO3 DOUBLE PRECISION DEFAULT 0;');
               ExecSql;
          end;

          if versao < 69 then
          begin
               sql.clear;
               sql.add('DROP TABLE TITEMCONTRATO;');
               execsql;

               sql.clear;
               sql.add('CREATE TABLE TITEMCONTRATO(');
               sql.add('    ITECONTRATO INTEGER NOT NULL,');
               sql.add('    ITEVCTO DATE NOT NULL,');
               sql.add('    ITEVALOR DOUBLE PRECISION,');
               sql.add('    ITEPGTO DATE,');
               sql.add('    ITEVALORPAGO DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ITECONALUGUEL DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ITECONCONDOMINIO DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ITECONIIMPOSTO DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ITECONSEGURO DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ITECONAGUA DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ITECONLUZ DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ITECONGARAGEM DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ITECONOUTRO1 DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ITECONOUTRO2 DOUBLE PRECISION DEFAULT 0,');
               sql.add('    ITECONOUTRO3 DOUBLE PRECISION DEFAULT 0,');
               sql.add('PRIMARY KEY(ITECONTRATO, ITEVCTO));');
               ExecSql;

               sql.clear;
               sql.add('ALTER TABLE TITEMCONTRATO');
               sql.add('ADD CONSTRAINT FK_VCTO_CONTRATO');
               sql.add('FOREIGN KEY (ITECONTRATO)');
               sql.add('REFERENCES TCONTRATO(CONCOD)');
               sql.add('ON UPDATE CASCADE ON DELETE CASCADE;');
               execsql;
          end;
          if versao < 70 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TUNIVERSIDADE(');
               sql.add('    UNICOD INTEGER NOT NULL,');
               sql.add('    UNINOME VARCHAR(100),');
               sql.add('PRIMARY KEY(UNICOD));');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TCURSO(');
               sql.add('    CURCOD INTEGER NOT NULL,');
               sql.add('    CURNOME VARCHAR(100),');
               sql.add('PRIMARY KEY(CURCOD));');
               ExecSql;

               sql.clear;
               sql.add('CREATE TABLE TNIVEL(');
               sql.add('    NIVCOD INTEGER NOT NULL,');
               sql.add('    NIVNOME VARCHAR(100),');
               sql.add('PRIMARY KEY(NIVCOD));');
               ExecSql;

               sql.clear;
               sql.add('insert into tprograma (procod, pronome) values (59, ''cadastro de cursos'');');
               execsql;

               sql.clear;
               sql.add('insert into tprograma (procod, pronome) values (60, ''cadastro de universidades'');');
               execsql;

               sql.clear;
               sql.add('insert into tprograma (procod, pronome) values (61, ''cadastro de niveis'');');
               execsql;
          end;
          if versao < 71 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TDIRETORIA(');
               sql.add('    DIRCOD INTEGER NOT NULL,');
               sql.add('    DIRGESTAO VARCHAR(100),');
               sql.add('    DIRPRESIDENTE VARCHAR(100),');
               sql.add('    DIRVICEPRESIDENTE VARCHAR(100),');
               sql.add('    DIRTESOUREIRO1 VARCHAR(100),');
               sql.add('    DIRTESOUREIRO2 VARCHAR(100),');
               sql.add('    DIRSECRETARIA1 VARCHAR(100),');
               sql.add('    DIRSECRETARIA2 VARCHAR(100),');
               sql.add('    DIRCONSELHEIRO1 VARCHAR(100),');
               sql.add('    DIRCONSELHEIRO2 VARCHAR(100),');
               sql.add('    DIRCONSELHEIRO3 VARCHAR(100),');
               sql.add('PRIMARY KEY(DIRCOD));');
               ExecSql;

               sql.clear;
               sql.add('insert into tprograma (procod, pronome) values (62, ''cadastro de diretorias'');');
               execsql;
          end;

          if versao < 72 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TESTUDANTE (');
               sql.add('    ESTCOD           INTEGER NOT NULL,');
               sql.add('    ESTNOME          VARCHAR(100),');
               sql.add('    ESTCPF           VARCHAR(20),');
               sql.add('    ESTSEXO          VARCHAR(10),');
               sql.add('    ESTMAE           VARCHAR(100),');
               sql.add('    ESTDATANASC      DATE,');
               sql.add('    ESTENDERECO      VARCHAR(100),');
               sql.add('    ESTBAIRRO        VARCHAR(50),');
               sql.add('    ESTCIDADE        INTEGER,');
               sql.add('    ESTCEP           VARCHAR(10),');
               sql.add('    ESTFONE          VARCHAR(20),');
               sql.add('    ESTCELULAR       VARCHAR(20),');
               sql.add('    ESTVOIP          VARCHAR(100),');
               sql.add('    ESTMSN           VARCHAR(100),');
               sql.add('    ESTEMAIL         VARCHAR(100),');
               sql.add('    ESTSITE          VARCHAR(100),');
               sql.add('    ESTPROFISSAO     INTEGER,');
               sql.add('    ESTOBS           VARCHAR(100),');
               sql.add('    ESTDATAINCLUSAO  DATE,');
               sql.add('    ESTNIVEL         INTEGER,');
               sql.add('    ESTUNIVERSIDADE  INTEGER,');
               sql.add('    ESTCURSO         INTEGER,');
               sql.add('    ESTSITUACAO      VARCHAR(30),');
               sql.add('    PRIMARY KEY (ESTCOD));');
               execsql;

               sql.clear;
               sql.add('insert into tprograma (procod, pronome) values (63, ''cadastro de estudantes'');');
               execsql;
          end;

          if versao < 73 then
          begin
               sql.text := 'drop trigger TORDEMSERVICOPRODUTO_AD';
               execsql;

               sql.text := 'drop trigger TORDEMSERVICOPRODUTO_AI';
               execsql;

               sql.text := 'drop trigger TORDEMSERVICOPRODUTO_BU';
               execsql;

               sql.clear;
               sql.add('CREATE TRIGGER TITEMNOTAFISC_AI FOR TITEMNOTAFISC');
               sql.add('ACTIVE AFTER INSERT POSITION 0');
               sql.add('AS');
               sql.add('BEGIN');
               sql.add('       UPDATE TPRODUTO SET TPRODUTO.PROESTOQUE = TPRODUTO.PROESTOQUE - NEW.ITEQUANT');
               sql.add('            WHERE TPRODUTO.PROCOD = NEW.ITEPRODUTO;');
               sql.add('END');
               try execsql; except end;

               sql.clear;
               sql.add('CREATE TRIGGER TITEMNOTAFISC_AD FOR TITEMNOTAFISC');
               sql.add('ACTIVE AFTER DELETE POSITION 0');
               sql.add('AS');
               sql.add('BEGIN');
               sql.add('       UPDATE TPRODUTO SET TPRODUTO.PROESTOQUE = TPRODUTO.PROESTOQUE + OLD.ITEQUANT');
               sql.add('            WHERE TPRODUTO.PROCOD = OLD.ITEPRODUTO;');
               sql.add('END');
               try execsql; except end;

               sql.clear;
               sql.add('CREATE TRIGGER TITEMNOTAFISC_BU FOR TITEMNOTAFISC');
               sql.add('ACTIVE BEFORE UPDATE POSITION 0');
               sql.add('AS');
               sql.add('BEGIN');
               sql.add('       UPDATE TPRODUTO SET TPRODUTO.PROESTOQUE = TPRODUTO.PROESTOQUE + OLD.ITEQUANT - NEW.ITEQUANT');
               sql.add('            WHERE TPRODUTO.PROCOD = NEW.ITEPRODUTO;');
               sql.add('END');
               try execsql; except end;

          end;
          if versao < 74 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TCLIENTE');
               sql.add('ADD CLIFORNECEDOR VARCHAR(1) DEFAULT ''S'';');
               execsql;

               sql.clear;
               sql.add('UPDATE TCLIENTE');
               sql.add('SET CLIFORNECEDOR = ''S'';');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TORDEMSERVICO ');
               sql.add('ADD ORDPLACA VARCHAR(9),');
               sql.add('ADD ORDNOMECLIENTE VARCHAR(50),');
               sql.add('ADD ORDTELEFONE VARCHAR(50);');
               execsql;
          end;
          if versao < 75 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TFAMILIA(');
               sql.add('FAMCOD INTEGER NOT NULL,'); //AUTOINC
               sql.add('FAMNOME VARCHAR(100),'); //Chefe da Família
               sql.add('FAMNASCIMENTO DATE,');
               sql.add('FANENDERECO VARCHAR(100),');
               sql.add('FANNUMERO INTEGER,');
               sql.add('FANLOCALIDADE VARCHAR(100),');
               sql.add('FANESCOLARIDADE VARCHAR(50),');
               sql.add('FANRENDA DOUBLE PRECISION DEFAULT 0,');
               sql.add('FANZONA VARCHAR(10),'); //Urbana ou Rural
               sql.add('FANLATITUDE VARCHAR(10),');
               sql.add('FANLONGITUDE VARCHAR(10),');
               sql.add('PRIMARY KEY (FAMCOD));');
               execsql;

               sql.clear;
               sql.add('CREATE TABLE TFAMILIASUBORDINADO(');
               sql.add('FAMSUBFAMILIA INTEGER NOT NULL,');
               sql.add('FAMSUBCOD INTEGER NOT NULL,'); //AUTOINC
               sql.add('FAMSUBNOME VARCHAR(100),');
               sql.add('FAMSUBNASCIMENTO DATE,');
               sql.add('FAMSUBESCOLARIDADE VARCHAR(50),');
               sql.add('FAMSUBRENDA DOUBLE PRECISION DEFAULT 0,');
               sql.add('PRIMARY KEY (FAMSUBFAMILIA, FAMSUBCOD));');
               execsql;

               sql.clear;
               sql.add('ALTER TABLE TFAMILIASUBORDINADO');
               sql.add('ADD CONSTRAINT FK_FAMILIA_SUBORDINADO');
               sql.add('FOREIGN KEY (FAMSUBFAMILIA)');
               sql.add('REFERENCES TFAMILIA(FAMCOD)');
               sql.add('ON UPDATE CASCADE ON DELETE CASCADE;');
               execsql;
          end;

          if versao < 76 then
          begin
               sql.clear;
               sql.add('ALTER TABLE TFAMILIA ADD FANENERGIA VARCHAR(1) DEFAULT ''S'';');
               execsql;
          end;

          if versao < 77 then
          begin
               sql.clear;
               sql.add('CREATE TABLE TDIASVIAJADOS(');
               sql.add('DIAALUNO INTEGER NOT NULL,');
               sql.add('DIADATA DATE,');

               sql.add('DIAVAISEGUNDA VARCHAR(3) DEFAULT ''Sim'',');
               sql.add('DIAVAITERCA VARCHAR(3) DEFAULT ''Sim'',');
               sql.add('DIAVAIQUARTA VARCHAR(3) DEFAULT ''Sim'',');
               sql.add('DIAVAIQUINTA VARCHAR(3) DEFAULT ''Sim'',');
               sql.add('DIAVAISEXTA VARCHAR(3) DEFAULT ''Sim'',');

               sql.add('DIAVIAGEMSEGUNDA VARCHAR(15) DEFAULT ''Ida e Volta'',');
               sql.add('DIAVIAGEMTERCA VARCHAR(15) DEFAULT ''Ida e Volta'',');
               sql.add('DIAVIAGEMQUARTA VARCHAR(15) DEFAULT ''Ida e Volta'',');
               sql.add('DIAVIAGEMQUINTA VARCHAR(15) DEFAULT ''Ida e Volta'',');
               sql.add('DIAVIAGEMSEXTA VARCHAR(15) DEFAULT ''Ida e Volta'',');

               sql.add('DIAVALORSEGUNDA DOUBLE PRECISION DEFAULT 0,');
               sql.add('DIAVALORTERCA DOUBLE PRECISION DEFAULT 0,');
               sql.add('DIAVALORQUARTA DOUBLE PRECISION DEFAULT 0,');
               sql.add('DIAVALORQUINTA DOUBLE PRECISION DEFAULT 0,');
               sql.add('DIAVALORSEXTA DOUBLE PRECISION DEFAULT 0,');

               sql.add('DIAVALORTOTAL DOUBLE PRECISION DEFAULT 0,');
               sql.add('PRIMARY KEY (DIAALUNO));');
               execsql;
          end;

          if versao < 78 then
          begin
               sql.clear;
               sql.add('insert into tprograma (procod, pronome) values (64, ''cadastro de famílias'');');
               execsql;

               sql.clear;
               sql.add('insert into tprograma (procod, pronome) values (65, ''dias viajadas'');');
               execsql;
          end;
          
          sql.clear;
          sql.add('UPDATE TRECHCENTER SET RECVERSAO = ' + inttostr(versaoatu) + ';');
          ExecSQL;
     end;
     qexiste.close;
end;

procedure TDM.atualizafactorydocto;
begin
     if dm.cdsfactorydocto.state in [dsinsert, dsedit] then
     begin
          try
               dm.CDSFactoryDoctoFACDOCTAXA.asfloat := strtofloat(executasqlretorno (' SELECT SUM(ITETAXA)' +
                                                                                     ' FROM TITEMFACTORYDOCTO' +
                                                                                     ' WHERE ITECOD = ' + CDSFactoryDoctoFACDOCCOD.asstring));
          except
          end;
          try
               dm.CDSFactoryDoctoFACDOCVALORIOF.asfloat := strtofloat(executasqlretorno (' SELECT SUM(ITEIOF)' +
                                                                                         ' FROM TITEMFACTORYDOCTO' +
                                                                                         ' WHERE ITECOD = ' + CDSFactoryDoctoFACDOCCOD.asstring));
          except
          end;
     end;
end;

procedure TDM.carregafamilia;
begin
     CDSFamiliaSubordinado.close;
     qFamiliaSubordinado.params[0].asinteger := CDSFamiliaFAMCOD.AsInteger;
     CDSFamiliaSubordinado.open;
end;


procedure TDM.carregacontrato;
begin
     cdsitemcontrato.close;
     qitemcontrato.params[0].asinteger := CDSContratoCONCOD.AsInteger;
     cdsitemcontrato.open;
end;

procedure TDM.carregacontrec;
begin
     cdsitemcontrec.close;
     qitemcontrec.params[0].asinteger := CDSContRecRECDOCUMENTO.AsInteger;
     cdsitemcontrec.open;
end;

procedure TDM.carregaordemservico;
begin
     cdsordemservicoproduto.close;
     qordemservicoproduto.params[0].asinteger := CDSOrdemServicoORDNUMERO.AsInteger;
     cdsordemservicoproduto.open;

     cdsordemservicoservico.close;
     qordemservicoservico.params[0].asinteger := CDSOrdemServicoORDNUMERO.AsInteger;
     cdsordemservicoservico.open;

     CDSOrdemServicoVcto.close;
     QOrdemServicoVcto.params[0].asinteger := CDSOrdemServicoORDNUMERO.AsInteger;
     CDSOrdemServicoVcto.open;
end;

procedure TDM.carreganotaent;
begin
     cdsitemnotaent.close;
     qitemnotaent.params[0].asinteger := CDSNotaEntNotFornecedor.AsInteger;
     qitemnotaent.params[1].asinteger := CDSNotaEntNotNota.AsInteger;
     cdsitemnotaent.open;

     cdsvctonotaent.close;
     qvctonotaent.params[0].asinteger := CDSNotaEntNotFornecedor.AsInteger;
     qvctonotaent.params[1].asinteger := CDSNotaEntNotNota.AsInteger;
     cdsvctonotaent.open;
end;

procedure TDM.carreganotafisc;
begin
     cdsitemnotafisc.close;
     qitemnotafisc.params[0].asinteger := CDSNotaFiscNotNumero.AsInteger;
     cdsitemnotafisc.open;

     cdsvctonotafisc.close;
     qvctonotafisc.params[0].asinteger := CDSNotaFiscNotNumero.AsInteger;
     cdsvctonotafisc.open;
end;

procedure TDM.carregacontpag;
begin
     cdsitemcontpag.close;
     qitemcontpag.params[0].asinteger := CDSContPagPagDocumento.AsInteger;
     cdsitemcontpag.open;
end;

procedure TDM.carregafactory;
begin
     cdsitemfactorydocto.close;
     qitemfactorydocto.params[0].asinteger := CDSFactoryDoctoFACDOCCOD.AsInteger;
     cdsitemfactorydocto.open;
end;

procedure TDM.carregacompras;
begin
     cdsitemcompra.close;
     qitemcompra.params[0].asinteger := CDSCompraComNumero.AsInteger;
     cdsitemcompra.open;

     qtotalcompra.close;
     qtotalcompra.params[0].asinteger := CDSCompraComNumero.asinteger;
     qtotalcompra.open;
end;

procedure TDM.carregacolasapateiro;
begin
     cdsitemcolasapateiro.close;
     qitemcolasapateiro.params[0].asinteger := cdscolasapateirocolcod.AsInteger;
     cdsitemcolasapateiro.open;
end;

procedure TDM.carregaestabelecimento;
begin
     cdsitemestabelecimento.close;
     qitemestabelecimento.params[0].asinteger := cdsestabelecimentoestcod.AsInteger;
     cdsitemestabelecimento.open;
end;

procedure TDM.carregahist;
begin
     cdsitemhistcliente.close;
     qitemhistcliente.params[0].asinteger := cdshistclientehiscliente.AsInteger;
     cdsitemhistcliente.open;
end;

procedure TDM.carregaagenda;
begin
     cdsitemagenda.close;
     qitemagenda.params[0].asdate := cdsagendaagedata.AsDateTime;
     qitemagenda.params[1].astime := cdsagendaagehora.AsDateTime;
     cdsitemagenda.open;
end;

procedure TDM.carregavendas;
begin
     cdsitemvenda.close;
     qitemvenda.params[0].asinteger := cdsvendavennumero.asinteger;
     cdsitemvenda.open;

     qtotalvenda.close;
     qtotalvenda.params[0].asinteger := cdsvendavennumero.asinteger;
     qtotalvenda.open;
end;

procedure TDM.carregausuarios;
begin
     cdsitemusuario.close;
     qitemusuario.params[0].asstring := cdsusuariousulogin.asstring;
     cdsitemusuario.open;
end;

procedure TDM.CDSCidadeAfterInsert(DataSet: TDataSet);
begin
     cdscidadecidcod.asinteger := MAX('CIDCOD', 'TCIDADE');
end;

procedure TDM.CDSProfissaoAfterInsert(DataSet: TDataSet);
begin
    cdsprofissaoprocod.asinteger := max('PROCOD', 'TPROFISSAO')
end;

procedure TDM.CDSProgramaAfterInsert(DataSet: TDataSet);
begin
     cdsprogramaprocod.asinteger := MAX('PROCOD', 'TPROGRAMA');
end;

procedure TDM.CDSGrupoAfterInsert(DataSet: TDataSet);
begin
     cdsgrupogrucod.asinteger := MAX('GRUCOD', 'TGRUPO');
end;

procedure TDM.CDSConvenioAfterInsert(DataSet: TDataSet);
begin
    cdsconvenioconcod.asinteger := max('CONCOD', 'TCONVENIO');
end;

procedure TDM.CDSUsuarioAfterClose(DataSet: TDataSet);
begin
     cdsitemusuario.close;
end;

procedure TDM.CDSItemUsuarioAfterClose(DataSet: TDataSet);
begin
     cdsprograma.close;
end;

procedure TDM.CDSClienteAfterClose(DataSet: TDataSet);
begin
     cdsempresa.close;
     cdsconta.close;
     cdsgrupo.close;
     cdsprofissao.close;
     cdscidade.close;
     cdsconvenio.close;
end;

procedure TDM.CDSClienteAfterInsert(DataSet: TDataSet);
begin
    cdsclienteclicod.asinteger := max('CLICOD', 'TCLIENTE');
end;

procedure TDM.CDSClienteBeforeOpen(DataSet: TDataSet);
begin
     cdsgrupo.open;
     cdsprofissao.open;
     cdscidade.open;
     cdsempresa.open;
     cdsconta.open;
     cdsconvenio.open;
end;

procedure TDM.CDSItemUsuarioBeforeOpen(DataSet: TDataSet);
begin
     cdsprograma.open;
end;

procedure TDM.CDSUsuarioBeforeOpen(DataSet: TDataSet);
begin
     carregausuarios;
     cdsitemusuario.open;
end;

procedure TDM.CDSUsuarioAfterScroll(DataSet: TDataSet);
begin
     carregausuarios;
end;

procedure TDM.CDSUsuarioAfterInsert(DataSet: TDataSet);
begin
     carregausuarios;
end;

procedure TDM.CDSUsuarioAfterDelete(DataSet: TDataSet);
begin
     carregausuarios;
end;

procedure TDM.CDSUsuarioAfterCancel(DataSet: TDataSet);
begin
     carregausuarios;
end;

procedure TDM.CDSUsuarioAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
     carregausuarios;
end;

procedure TDM.CDSAgendaAfterClose(DataSet: TDataSet);
begin
     cdscliente.close;
end;

procedure TDM.CDSAgendaAfterInsert(DataSet: TDataSet);
begin
     cdsagendaagedata.asdatetime := date;
     CDSAgendaAGEHORA.AsDateTime := time;
     carregaagenda;
end;

procedure TDM.CDSAgendaBeforeOpen(DataSet: TDataSet);
begin
     cdscliente.open;
     carregaagenda;
end;

procedure TDM.CDSParamEmpAfterClose(DataSet: TDataSet);
begin
     cdscidade.close;
end;

procedure TDM.CDSParamEmpAfterInsert(DataSet: TDataSet);
begin
    cdsparamempempcod.asinteger := max('EMPCOD', 'TEMPRESA');
end;

procedure TDM.CDSParamEmpBeforeOpen(DataSet: TDataSet);
begin
     cdscidade.open;
end;

procedure TDM.CDSProdutoAfterClose(DataSet: TDataSet);
begin
     cdsmarca.close;
     cdscliente.close;
     CDSGrupoProd.close;
     CDSMargem.close;
end;

procedure TDM.CDSProdutoBeforeOpen(DataSet: TDataSet);
begin
     CDSMargem.open;
     cdsmarca.open;
     cdscliente.open;
     CDSGrupoProd.open;
end;

procedure TDM.CDSReservaAfterClose(DataSet: TDataSet);
begin
     cdscliente.close;
end;

procedure TDM.CDSReservaBeforeOpen(DataSet: TDataSet);
begin
     cdscliente.open;
end;

procedure TDM.CDSItemVendaAfterClose(DataSet: TDataSet);
begin
     cdsproduto.close;
     qtotalvenda.close;
end;

procedure TDM.CDSItemVendaBeforeOpen(DataSet: TDataSet);
begin
     cdsproduto.open;
end;

procedure TDM.CDSVendaBeforeOpen(DataSet: TDataSet);
begin
     carregavendas;
end;

procedure TDM.CDSVendaAfterScroll(DataSet: TDataSet);
begin
     carregavendas;
end;

procedure TDM.CDSVendaAfterInsert(DataSet: TDataSet);
begin
     carregavendas;
     CDSVendaVENNUMERO.asinteger := max('VENNUMERO', 'TVENDA');
     CDSVendaVENDATA.asdatetime := date;
     dm.CDSVendaVEnLCTOCAIXA.asinteger := 0;
     dm.CDSVendaVEnLCTOCLIENTE.asinteger := 0;     
end;

procedure TDM.CDSVendaAfterDelete(DataSet: TDataSet);
begin
     carregavendas;
end;

procedure TDM.CDSVendaAfterClose(DataSet: TDataSet);
begin
     cdsitemvenda.close;
end;

procedure TDM.CDSVendaAfterCancel(DataSet: TDataSet);
begin
     carregavendas;
end;

procedure TDM.CDSVendaAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
     carregavendas;
end;

procedure TDM.CDSReservaAfterInsert(DataSet: TDataSet);
begin
     cdsreservaresdata.asdatetime := date;
     cdsreservaresdataentrada.asdatetime := date;
     cdsreservaresdatasaida.asdatetime := date;
end;

procedure TDM.CDSItemVendaAfterDelete(DataSet: TDataSet);
{var
     valor : double; }
begin
     {valor := 0;
     cdsitemvenda.first;
     while not cdsitemvenda.eof do
     begin
          valor := valor + (CDSItemVendaITEQUANT.asfloat * CDSItemVendaITEVALOR.asfloat);
          cdsitemvenda.next;
     end;
     if (cdsvenda.state = dsedit) and (cdsvenda.state = dsinsert) then
         cdsvendaventotal.asfloat := valor
     else
     begin
         cdsvenda.edit;
         cdsvendaventotal.asfloat := valor;
         cdsvenda.post;
         cdsvenda.applyupdates(-1);
     end;}
end;

procedure TDM.CDSExameAfterInsert(DataSet: TDataSet);
begin
     cdsexameexacod.asinteger := MAX('EXACOD', 'TEXAME');
end;

procedure TDM.CDSItemAgendaAfterClose(DataSet: TDataSet);
begin
     cdsamb.close;
end;

procedure TDM.CDSItemAgendaBeforeOpen(DataSet: TDataSet);
begin
     cdsamb.open;
end;

procedure TDM.CDSAgendaAfterDelete(DataSet: TDataSet);
begin
     carregaagenda;
end;

procedure TDM.CDSAgendaAfterCancel(DataSet: TDataSet);
begin
     carregaagenda;
end;

procedure TDM.CDSAgendaAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
     carregaagenda;
end;

procedure TDM.CDSAgendaAfterScroll(DataSet: TDataSet);
begin
     carregaagenda;
end;

procedure TDM.CDSAgendaBeforeClose(DataSet: TDataSet);
begin
     cdsitemagenda.close;
end;

procedure TDM.CDSAgendaAfterOpen(DataSet: TDataSet);
begin
     carregaagenda;
end;

procedure TDM.CDSBancoAfterInsert(DataSet: TDataSet);
begin
     cdsbancobancod.asinteger := MAX('BANCOD', 'TBANCO');
end;

procedure TDM.CDSContRecAfterClose(DataSet: TDataSet);
begin
     cdscliente.close;
     cdsbanco.close;
     cdsitemcontrec.close;
     cdsplanopgto.close;
end;

procedure TDM.CDSContRecAfterInsert(DataSet: TDataSet);
begin
     cdscontrecrecdocumento.asinteger := MAX('RECDOCUMENTO', 'TCONTREC');
     CDSContRecRECEMISSAO.asdatetime := date;
     CDSContRecRECSITUACAO.asstring := 'Aberto';
     CDSContRecRECPARCELAS.asinteger := 5;
     carregacontrec;      
end;

procedure TDM.CDSContRecBeforeOpen(DataSet: TDataSet);
begin
     cdscliente.open;
     cdsbanco.open;
     cdsplanopgto.open;     
end;

procedure TDM.CDSContRecCalcFields(DataSet: TDataSet);
begin
     cdscontrectotal.asfloat := CDSContRecRECVALOR.asfloat + CDSContRecRECACRESCIMO.asfloat -
                                CDSContRecRECDESCONTO.asfloat - CDSContRecRECENTRADA.asfloat -
                                CDSContRecRECVALORPAGO.asfloat;
end;

procedure TDM.CDSHistClienteBeforeOpen(DataSet: TDataSet);
begin
     carregahist;
end;

procedure TDM.CDSHistClienteBeforeClose(DataSet: TDataSet);
begin
     cdsitemhistcliente.close;
end;

procedure TDM.CDSHistClienteAfterScroll(DataSet: TDataSet);
begin
     carregahist;
end;

procedure TDM.CDSHistClienteAfterOpen(DataSet: TDataSet);
begin
     carregahist;
end;

procedure TDM.CDSHistClienteAfterInsert(DataSet: TDataSet);
begin
     carregahist;
end;

procedure TDM.CDSHistClienteAfterDelete(DataSet: TDataSet);
begin
     carregahist;
end;

procedure TDM.CDSHistClienteAfterCancel(DataSet: TDataSet);
begin
     carregahist;
end;

procedure TDM.CDSHistClienteAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
     carregahist;
end;

procedure TDM.CDSHistClienteAfterClose(DataSet: TDataSet);
begin
     cdscliente.close;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var arq: TextFile;
   linha: String;
begin
     if fileexists('RECHCENTER.GDB') then
         RenameFile('RECHCENTER.GDB','BANCO.GDB');
     if fileexists('c:\caminho.txt') then
     begin
          AssignFile(arq, 'C:\caminho.txt');
          Reset(arq);
          ReadLn(arq,linha);
          closefile(arq);
          sqlconnection.Params.Values['Database'] := linha;
     end;
     try
          SQLConnection.connected := true;
     except
          on E : Exception do
          begin
               Showmessage('Impossível conectar com o banco de dados!' + #13 + E.Message);

               if fileexists('c:\caminho.txt') then
                    ShellExecute(GetDesktopWindow,'open',pchar('c:\caminho.txt'),nil,nil,sw_ShowNormal);

               application.terminate;
          end;
     end;
end;

procedure TDM.CDSBairroAfterClose(DataSet: TDataSet);
begin
     cdscidade.close;
end;

procedure TDM.CDSBairroAfterInsert(DataSet: TDataSet);
begin
     cdsbairrobaicod.asinteger := MAX('BAICOD', 'TBAIRRO');
end;

procedure TDM.CDSBairroBeforeOpen(DataSet: TDataSet);
begin
     cdscidade.open;
end;

procedure TDM.CDSEstabelecimentoAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
     carregaestabelecimento;
end;

procedure TDM.CDSEstabelecimentoAfterCancel(DataSet: TDataSet);
begin
     carregaestabelecimento;
end;

procedure TDM.CDSEstabelecimentoAfterClose(DataSet: TDataSet);
begin
     cdsitemestabelecimento.close;
end;

procedure TDM.CDSEstabelecimentoAfterDelete(DataSet: TDataSet);
begin
     carregaestabelecimento;
end;

procedure TDM.CDSEstabelecimentoAfterInsert(DataSet: TDataSet);
begin
     CDSEstabelecimentoEstCOD.asinteger := MAX('ESTCOD', 'TESTABELECIMENTO');
     carregaestabelecimento;
end;

procedure TDM.CDSEstabelecimentoAfterScroll(DataSet: TDataSet);
begin
     carregaestabelecimento;
end;

procedure TDM.CDSEstabelecimentoBeforeOpen(DataSet: TDataSet);
begin
     carregaestabelecimento;
end;

procedure TDM.CDSEscritorioContabilAfterClose(DataSet: TDataSet);
begin
     cdscidade.close;
end;

procedure TDM.CDSEscritorioContabilAfterInsert(DataSet: TDataSet);
begin
     CDSEscritorioContabilESCCOD.asinteger := MAX('ESCCOD', 'TESCRITORIOCONTABIL');
end;

procedure TDM.CDSEscritorioContabilBeforeOpen(DataSet: TDataSet);
begin
     cdscidade.open;
end;

procedure TDM.CDSAtividadeAfterInsert(DataSet: TDataSet);
begin
     cdsatividadeaticod.asinteger := MAX('ATICOD', 'TATIVIDADE');
end;

procedure TDM.CDSColaSapateiroAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
     carregacolasapateiro;
end;

procedure TDM.CDSColaSapateiroAfterCancel(DataSet: TDataSet);
begin
     carregacolasapateiro;
end;

procedure TDM.CDSColaSapateiroAfterDelete(DataSet: TDataSet);
begin
     carregacolasapateiro;
end;

procedure TDM.CDSColaSapateiroAfterScroll(DataSet: TDataSet);
begin
     carregacolasapateiro;
end;

procedure TDM.CDSColaSapateiroAfterClose(DataSet: TDataSet);
begin
     cdsitemcolasapateiro.close;
end;

procedure TDM.CDSColaSapateiroAfterInsert(DataSet: TDataSet);
begin
     CDSColaSapateiroColCod.asinteger := MAX('COLCOD', 'TCOLASAPATEIRO');
     carregacolasapateiro;
end;

procedure TDM.CDSColaSapateiroBeforeOpen(DataSet: TDataSet);
begin
     carregacolasapateiro;
end;

procedure TDM.CDSGrupoCaixaAfterInsert(DataSet: TDataSet);
begin
     CDSGrupoCaixaGRUCAICOD.asinteger := MAX('GRUCAICOD', 'TGRUPOCAIXA');
end;

procedure TDM.CDSCaixaAfterClose(DataSet: TDataSet);
begin
     cdsgrupocaixa.close;
end;

procedure TDM.CDSCaixaAfterInsert(DataSet: TDataSet);
begin
     cdscaixacainumero.asinteger := MAX('CAINUMERO', 'TCAIXA');
     CDSCaixaCAIDATA.asdatetime := date;
     CDSCaixaCAIENTRADA.asfloat := 0;
     CDSCaixaCAISAIDA.asfloat := 0;
     CDSCaixaCAIBAIXADO.AsString := 'S';
end;

procedure TDM.CDSCaixaBeforeOpen(DataSet: TDataSet);
begin
     cdsgrupocaixa.open;
end;

procedure TDM.CDSContaClienteAfterClose(DataSet: TDataSet);
begin
     qcontacliente.close;
end;

procedure TDM.CDSContaClienteAfterInsert(DataSet: TDataSet);
begin
     cdscontaclienteconnumero.asinteger := MAX('CONNUMERO', 'TCONTACLIENTE');
     CDSContaClienteCONDATA.asdatetime := date;
end;

procedure TDM.CDSItemVendaAfterInsert(DataSet: TDataSet);
begin
     CDSItemVendaITESEQ.asinteger := MAX('ITESEQ', 'TITEMVENDA');
end;

procedure TDM.CDSCompraBeforeOpen(DataSet: TDataSet);
begin
     carregacompras;
end;

procedure TDM.CDSCompraAfterScroll(DataSet: TDataSet);
begin
     carregacompras;
end;

procedure TDM.CDSCompraAfterInsert(DataSet: TDataSet);
begin
     carregacompras;
     CDSCompraComNumero.asinteger := MAX('COMNUMERO', 'TCOMPRA');
     cdscompracomdata.asdatetime := date;
     dm.CDSCompraCOMLCTOCAIXA.asinteger := 0;
end;

procedure TDM.CDSCompraAfterDelete(DataSet: TDataSet);
begin
     carregacompras;
end;

procedure TDM.CDSCompraAfterCancel(DataSet: TDataSet);
begin
     carregacompras;

end;

procedure TDM.CDSCompraAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
     carregacompras;
end;

procedure TDM.CDSCompraAfterClose(DataSet: TDataSet);
begin
     cdsitemcompra.close;
end;

procedure TDM.CDSItemCompraBeforePost(DataSet: TDataSet);
begin
     CDSItemCompraITEPESOTOTAL.asfloat := CDSItemCompraITEPESOINI.asfloat - CDSItemCompraITEPESOFIN.asfloat;
end;

procedure TDM.CDSItemCompraAfterClose(DataSet: TDataSet);
begin
     qitemcompra.close;
     cdsproduto.close;
end;

procedure TDM.CDSItemCompraAfterInsert(DataSet: TDataSet);
begin
     CDSItemCompraITESEQ.asinteger := MAX('ITESEQ', 'TITEMCOMPRA');
end;

procedure TDM.CDSItemCompraBeforeOpen(DataSet: TDataSet);
begin
     cdsproduto.open;
end;

procedure TDM.CDSProdutoAfterInsert(DataSet: TDataSet);
begin
     CDSProdutoPROVALOR.asfloat := 0;
     cdsprodutoproestoque.asfloat := 0;
end;

procedure TDM.CDSParametroAfterInsert(DataSet: TDataSet);
begin
     cdsparametroparcod.asinteger := MAX('PARCOD', 'TPARAMETRO');
end;

procedure TDM.CDSMarcaAfterInsert(DataSet: TDataSet);
begin
     cdsmarcamarcod.asinteger := MAX('MARCOD', 'TMARCA');
end;

procedure TDM.CDSModeloAfterClose(DataSet: TDataSet);
begin
     cdsmarca.close;
end;

procedure TDM.CDSModeloAfterInsert(DataSet: TDataSet);
begin
     cdsmodelomodcod.asinteger := MAX('MODCOD', 'TMODELO');
end;

procedure TDM.CDSModeloBeforeOpen(DataSet: TDataSet);
begin
     cdsmarca.open;
end;

procedure TDM.CDSExcessoAfterInsert(DataSet: TDataSet);
begin
     cdsexcessoexccod.asinteger := MAX('EXCCOD', 'TEXCESSO');
end;

procedure TDM.CDSNotificacaoAfterInsert(DataSet: TDataSet);
begin
     cdsnotificacaonotcod.asinteger := MAX('NOTCOD', 'TNOTIFICACAO');
end;

procedure TDM.CDSPesagemAfterClose(DataSet: TDataSet);
begin
     cdsmarca.close;
     cdscategoria.close;
     cdsmodelo.close;
end;

procedure TDM.CDSPesagemAfterInsert(DataSet: TDataSet);
begin
     cdspesagempescod.asinteger := MAX('PESCOD', 'TPESAGEM');
     cdspesagempesdata.asdatetime := date;
     cdspesagempeshora.asdatetime := now;
     CDSPesagemPESOPERADOR.asstring := fsenha.txtusuario.text;
end;

procedure TDM.CDSPesagemBeforeOpen(DataSet: TDataSet);
begin
     cdsmarca.open;
     cdscategoria.open;
     cdsmodelo.open;
end;

procedure TDM.CDSCategoriaAfterInsert(DataSet: TDataSet);
begin
     cdscategoriacatcod.asinteger := MAX('CATCOD', 'TCATEGORIA');
end;

procedure TDM.CDSPesagemCalcFields(DataSet: TDataSet);
begin
     CDSPesagemtolerancia.asfloat := cdspesagempespesopermitido.asfloat + (cdspesagempespesopermitido.asfloat * (cdspesagemPESTOLERANCIA.asfloat / 100));
     cdspesagemexcesso.asfloat := cdspesagempespeso.asfloat - (CDSPesagemtolerancia.asfloat);
     if cdspesagemexcesso.asfloat < 0 then
          cdspesagemexcesso.asfloat := 0;
end;

procedure TDM.CDSGrupoFinAfterInsert(DataSet: TDataSet);
begin
     cdsgrupofingrucod.asinteger := MAX('GRUCOD', 'TGRUPOFIN');
end;

procedure TDM.CDSContaAfterClose(DataSet: TDataSet);
begin
     cdsbanco.close;
end;

procedure TDM.CDSContaAfterInsert(DataSet: TDataSet);
begin
     cdscontaconcod.asinteger := MAX('CONCOD', 'TCONTA');
end;

procedure TDM.CDSContaBeforeOpen(DataSet: TDataSet);
begin
     cdsbanco.open;
end;

procedure TDM.CDSEmpresaAfterClose(DataSet: TDataSet);
begin
     cdscidade.close;
end;

procedure TDM.CDSEmpresaAfterInsert(DataSet: TDataSet);
begin
     cdsempresaempcod.asinteger := MAX('EMPCOD', 'TEMPRESA');
end;

procedure TDM.CDSEmpresaBeforeOpen(DataSet: TDataSet);
begin
     cdscidade.open;
end;

procedure TDM.CDSFactoryDoctoBeforeOpen(DataSet: TDataSet);
begin
     cdscliente.open;
     carregafactory;
end;

procedure TDM.CDSFactoryDoctoAfterScroll(DataSet: TDataSet);
begin
     carregafactory;
end;

procedure TDM.CDSFactoryDoctoAfterDelete(DataSet: TDataSet);
begin
     carregafactory;
end;

procedure TDM.CDSFactoryDoctoAfterCancel(DataSet: TDataSet);
begin
     carregafactory;
end;

procedure TDM.CDSFactoryDoctoAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
     carregafactory;
end;

procedure TDM.CDSFactoryDoctoAfterClose(DataSet: TDataSet);
begin
     cdsitemfactorydocto.close;
     cdscliente.close;
end;

procedure TDM.CDSFactoryDoctoAfterInsert(DataSet: TDataSet);
begin
     CDSFactoryDoctoFACDOCCOD.asinteger := MAX('FACDOCCOD', 'TFACTORYDOCTO');
     CDSFactoryDoctoFACDOCDATA.asdatetime := date;
     CDSFactoryDoctoFACDOCTAXA.asfloat := 0;
     CDSFactoryDoctoFACDOCVALORIOF.asfloat := 0;
     carregafactory;
end;

procedure TDM.CDSItemFactoryDoctoAfterClose(DataSet: TDataSet);
begin
     CDSBanco.close;
end;

procedure TDM.CDSItemFactoryDoctoBeforeOpen(DataSet: TDataSet);
begin
     cdsbanco.open;
end;

procedure TDM.CDSFactoryDoctoProbAfterClose(DataSet: TDataSet);
begin
     cdscliente.close;
     cdsbanco.close;
end;

procedure TDM.CDSFactoryDoctoProbBeforeOpen(DataSet: TDataSet);
begin
     cdscliente.open;
     cdsbanco.open;
end;

procedure TDM.CDSContPagCalcFields(DataSet: TDataSet);
begin
     cdscontPAGtotal.asfloat := CDSContPAGPAGVALOR.asfloat + CDSContPAGPAGACRESCIMO.asfloat -
                                CDSContPAGPAGDESCONTO.asfloat - CDSContPAGPAGENTRADA.asfloat -
                                CDSContPAGPAGVALORPAGO.asfloat;
end;

procedure TDM.CDSContPagBeforePost(DataSet: TDataSet);
begin
     if CDSContPAGPAGTOTAL.asfloat <= 0 then
        CDSContPAGPAGSITUACAO.asstring := 'Fechado'
     else
        CDSContPAGPAGSITUACAO.asstring := 'Aberto';
end;

procedure TDM.CDSContPagBeforeOpen(DataSet: TDataSet);
begin
     cdscliente.open;
     cdsbanco.open;
     cdsplanopgto.open;
end;

procedure TDM.CDSContPagAfterScroll(DataSet: TDataSet);
begin
     carregacontpag
end;

procedure TDM.CDSContPagAfterInsert(DataSet: TDataSet);
begin
     cdscontPAGPAGdocumento.asinteger := MAX('PAGDOCUMENTO', 'TCONTPAG');
     CDSContPAGPAGEMISSAO.asdatetime := date;
     CDSContPAGPAGSITUACAO.asstring := 'Aberto';
     CDSContPAGPAGPARCELAS.asinteger := 1;
     carregacontPAG;
end;

procedure TDM.CDSContPagAfterDelete(DataSet: TDataSet);
begin
     carregacontpag;
end;

procedure TDM.CDSContPagAfterClose(DataSet: TDataSet);
begin
     cdscliente.close;
     cdsbanco.close;
     cdsplanopgto.close;
     dm.CDSItemContPag.close;
end;

procedure TDM.CDSContPagAfterCancel(DataSet: TDataSet);
begin
     carregacontpag;
end;

procedure TDM.CDSContPagAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
     carregacontpag
end;

procedure TDM.CDSItemContPagAfterInsert(DataSet: TDataSet);
begin
     dm.cdsitemcontpagitesituacao.asstring := 'Aberto';
end;

procedure TDM.CDSItemContPagAfterPost(DataSet: TDataSet);
begin
     cdsitemcontpag.ApplyUpdates(0);
end;

procedure TDM.CDSFactoryDoctoProbAfterInsert(DataSet: TDataSet);
begin
     CDSFactoryDoctoProbFACPRODATA.asdatetime := date;
end;

procedure TDM.CDSItemFactoryDoctoAfterPost(DataSet: TDataSet);
begin
     atualizafactorydocto;
end;

procedure TDM.CDSItemFactoryDoctoAfterDelete(DataSet: TDataSet);
begin
     atualizafactorydocto;
end;

procedure TDM.DSPCidadeBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
      {if updatekind = ukmodify then
         Rastreabilidade('alteracao', sender as tdatasetprovider);
      if updatekind = ukinsert then
         Rastreabilidade('insercao', sender as tdatasetprovider);}
end;

procedure TDM.CDSCaixaCalcFields(DataSet: TDataSet);
begin
     cdscaixaentrada.asfloat := CDSCaixaCAIENTRADA.asfloat;
     cdscaixasaida.asfloat := CDSCaixaCAISAIDA.asfloat;
end;

procedure TDM.CDSMargemAfterInsert(DataSet: TDataSet);
begin
     CDSMARGEMMarCOD.asinteger := MAX('MARCOD', 'TMARGEM');
end;

procedure TDM.CDSAliquotaAfterInsert(DataSet: TDataSet);
begin
     cdsaliquotaalicod.asinteger := MAX('ALICOD', 'TALIQUOTA');
end;

procedure TDM.CDSPlanoPgtoAfterInsert(DataSet: TDataSet);
begin
     CDSPlanoPgtoPLACOD.asinteger := MAX('PLACOD', 'TPLANOPGTO');
end;

procedure TDM.CDSDepositoAfterInsert(DataSet: TDataSet);
begin
     CDSDepositoDEPCOD.asinteger := MAX('DEPCOD', 'TDEPOSITO');
end;

procedure TDM.CDSTipoCobAfterInsert(DataSet: TDataSet);
begin
     CDSTipoCobTIPCOD.asinteger := MAX('TIPCOD', 'TTIPOCOB');
end;

procedure TDM.CDSObservacoesAfterInsert(DataSet: TDataSet);
begin
     CDSObservacoesOBSCOD.asinteger := MAX('OBSCOD', 'TOBSERVACOES');
end;

procedure TDM.CDSObservacoesCalcFields(DataSet: TDataSet);
begin
     CDSObservacoestexto.asstring := CDSObservacoesOBSTEXTO.asstring;
end;

procedure TDM.CDSGrupoProdAfterInsert(DataSet: TDataSet);
begin
     CDSGrupoProdGRUCOD.asinteger := MAX('GRUCOD', 'TGRUPOPROD');
end;

procedure TDM.CDSNotaEntCalcFields(DataSet: TDataSet);
begin
     if dm.CDSCliente.locate('CLICOD', dm.CDSNotaEntNOTFORNECEDOR.asinteger, []) then
           CDSNotaEntfornecedordados.asstring := dm.CDSClienteCLIENDERECO.asstring + ', ' + dm.CDSClienteCidade.asstring + ', ' + dm.CDSClienteCLITELCOMERCIAL.asstring + ', ' + dm.CDSClienteCLICPF.asstring;
end;

procedure TDM.CDSNotaEntAfterOpen(DataSet: TDataSet);
begin
     carreganotaent;
end;

procedure TDM.CDSNotaEntBeforeClose(DataSet: TDataSet);
begin
     cdsitemnotaent.close;
     cdsvctonotaent.close;
end;

procedure TDM.CDSNotaEntAfterInsert(DataSet: TDataSet);
begin
     CDSNotaEntNOTDATA.asdatetime := date;
     CDSNotaEntNOTDATALCTO.asdatetime := date;
     CDSNotaEntNOTCIDADE.asinteger := dm.CDSParamEmpEMPCIDADE.asinteger;
     carreganotaent;
end;

procedure TDM.CDSNotaEntAfterClose(DataSet: TDataSet);
begin
     cdscliente.close;
     cdscidade.close;
     cdsbanco.close;
     cdscfop.close;
     cdsdeposito.close;
     cdsplanopgto.close;
     cdsitemnotaent.close;
     cdsvctonotaent.close;
end;

procedure TDM.CDSNotaEntBeforeOpen(DataSet: TDataSet);
begin
     cdscliente.open;
     cdscidade.open;
     cdsbanco.open;
     cdscfop.open;
     cdsdeposito.open;
     cdsplanopgto.open;
end;

procedure TDM.CDSNotaEntAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
     carreganotaent;
end;

procedure TDM.CDSNotaEntAfterCancel(DataSet: TDataSet);
begin
     carreganotaent;
end;

procedure TDM.CDSNotaEntAfterDelete(DataSet: TDataSet);
begin
     carreganotaent;
end;

procedure TDM.CDSNotaEntAfterScroll(DataSet: TDataSet);
begin
     carreganotaent;
end;

procedure TDM.CDSItemContRecAfterInsert(DataSet: TDataSet);
begin
     dm.cdsitemcontrecitesituacao.asstring := 'Aberto';
end;

procedure TDM.CDSItemContRecAfterPost(DataSet: TDataSet);
begin
     cdsitemcontrec.ApplyUpdates(0);
end;

procedure TDM.CDSContRecAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
     carregacontrec;
end;

procedure TDM.CDSContRecAfterCancel(DataSet: TDataSet);
begin
     carregacontrec;
end;

procedure TDM.CDSContRecAfterDelete(DataSet: TDataSet);
begin
     carregacontrec;
end;

procedure TDM.CDSContRecAfterScroll(DataSet: TDataSet);
begin
     carregacontrec;    
end;

procedure TDM.CDSContRecAfterOpen(DataSet: TDataSet);
begin
     carregacontrec;    
end;

procedure TDM.CDSNotaEntBeforePost(DataSet: TDataSet);
begin
     dm.cdsnotaentnotdatastr.asstring := dm.CDSNotaEntNOTDATA.asstring;
end;

procedure TDM.CDSOutraSaidaAfterInsert(DataSet: TDataSet);
begin
     CDSOutraSaidaOUTCOD.asinteger := MAX('OUTCOD', 'TOUTRASAIDA');
     CDSOutraSaidaOUTDATA.asdatetime := date;
end;

procedure TDM.CDSOutraSaidaAfterClose(DataSet: TDataSet);
begin
     cdsproduto.close;
end;

procedure TDM.CDSOutraSaidaBeforeOpen(DataSet: TDataSet);
begin
     cdsproduto.open;
end;

procedure TDM.CDSVeiculoAfterInsert(DataSet: TDataSet);
begin
     CDSVeiculoVEICOD.asinteger := MAX('VEICOD', 'TVEICULO');

end;

procedure TDM.CDSVeiculoAfterClose(DataSet: TDataSet);
begin
     cdscliente.close;
     cdsmodelo.close;
     cdscidade.close;
end;

procedure TDM.CDSVeiculoBeforeOpen(DataSet: TDataSet);
begin
     cdscliente.open;
     cdsmodelo.open;
     cdscidade.open;
end;

procedure TDM.CDSChequeAfterClose(DataSet: TDataSet);
begin
     cdsbanco.close;
end;

procedure TDM.CDSChequeBeforeOpen(DataSet: TDataSet);
begin
     cdsbanco.open;
end;

procedure TDM.CDSChequeAfterInsert(DataSet: TDataSet);
begin
     CDSChequeCHEEMISSAO.asdatetime := date;
     CDSChequeCHEVCTO.asdatetime := date;     
end;

procedure TDM.CDSNotaFiscCalcFields(DataSet: TDataSet);
begin
     if not dm.cdscliente.Active then
          dm.cdscliente.open;
     if dm.CDSCliente.locate('CLICOD', dm.CDSNotaFiscNOTCliente.asinteger, []) then
           CDSNotaFiscClienteDados.asstring := dm.CDSClienteCLIENDERECO.asstring + ', ' + dm.CDSClienteCidade.asstring + ', ' + dm.CDSClienteCLITELCOMERCIAL.asstring + ', ' + dm.CDSClienteCLICPF.asstring;

end;

procedure TDM.CDSNotaFiscBeforeOpen(DataSet: TDataSet);
begin
     cdscliente.open;
     cdscidade.open;
     cdsbanco.open;
     cdscfop.open;
     cdsplanopgto.open;
     cdsproduto.open;
end;

procedure TDM.CDSNotaFiscBeforeClose(DataSet: TDataSet);
begin
     cdsitemnotafisc.close;
     cdsvctonotafisc.close;
end;

procedure TDM.CDSNotaFiscAfterScroll(DataSet: TDataSet);
begin
     carreganotafisc;
end;
 procedure TDM.CDSNotaFiscAfterOpen(DataSet: TDataSet);
begin
     carreganotafisc;
end;

procedure TDM.CDSNotaFiscAfterInsert(DataSet: TDataSet);
begin
     CDSNotaFiscNOTNUMERO.asinteger := MAX('NOTNUMERO', 'TNOTAFISC');
     CDSNotaFiscNOTEMISSAO.asdatetime := date;
     CDSNotaFiscNOTCIDADE.asinteger := dm.CDSParamEmpEMPCIDADE.asinteger;
     carreganotafisc;
end;

procedure TDM.CDSNotaFiscAfterDelete(DataSet: TDataSet);
begin
     carreganotaFISC;
end;

procedure TDM.CDSNotaFiscAfterClose(DataSet: TDataSet);
begin
     cdscliente.close;
     cdscidade.close;
     cdsbanco.close;
     cdscfop.close;
     cdsplanopgto.close;
     cdsitemnotafisc.close;
     cdsvctonotafisc.close;
     cdsproduto.close;
end;

procedure TDM.CDSNotaFiscAfterCancel(DataSet: TDataSet);
begin
     carreganotafisc;
end;

procedure TDM.CDSNotaFiscAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
     carreganotafisc;
end;

procedure TDM.CDSServicoAfterInsert(DataSet: TDataSet);
begin
     cdsservicosercod.asinteger := MAX('SERCOD', 'TSERVICO');
end;

procedure TDM.CDSOrdemServicoAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
     carregaordemservico;
end;

procedure TDM.CDSOrdemServicoAfterCancel(DataSet: TDataSet);
begin
     carregaordemservico;
end;

procedure TDM.CDSOrdemServicoAfterClose(DataSet: TDataSet);
begin
     cdscliente.open;
     cdsplanopgto.close;
     cdscliente.close;
     cdsveiculo.close;
     cdsordemservicoproduto.close;
     cdsordemservicoservico.close;
end;

procedure TDM.CDSOrdemServicoAfterDelete(DataSet: TDataSet);
begin
     carregaordemservico;
end;

procedure TDM.CDSOrdemServicoAfterOpen(DataSet: TDataSet);
begin
     carregaordemservico;
end;

procedure TDM.CDSOrdemServicoAfterScroll(DataSet: TDataSet);
begin
     carregaordemservico;
end;

procedure TDM.CDSOrdemServicoBeforeClose(DataSet: TDataSet);
begin
     cdsordemservicoproduto.close;
     cdsordemservicoservico.close;
end;

procedure TDM.CDSOrdemServicoAfterInsert(DataSet: TDataSet);
begin
     CDSOrdemServicoORDNUMERO.asinteger := MAX('ORDNUMERO', 'TORDEMSERVICO');
     CDSOrdemServicoORDDATAENT.asdatetime := date;
     CDSOrdemServicoORDHORAENT.asstring := copy(timetostr(now),1,5);
     carregaordemservico;
end;

procedure TDM.CDSOrdemServicoBeforeOpen(DataSet: TDataSet);
begin
     cdscliente.open;
     cdsveiculo.open;
     cdsbanco.open;
     cdsplanopgto.open;
end;

procedure TDM.CDSOrdemServicoCalcFields(DataSet: TDataSet);
begin
     if not dm.cdscliente.Active then
          dm.cdscliente.open;
     if dm.CDSCliente.locate('CLICOD', dm.CDSOrdemServicoORDCLIENTE.asinteger, []) then
           CDSOrdemServicoclientedados.asstring := dm.CDSClienteCLIENDERECO.asstring + ', ' + dm.CDSClienteCidade.asstring + ', ' + dm.CDSClienteCLITELCOMERCIAL.asstring + ', ' + dm.CDSClienteCLICPF.asstring;
end;

procedure TDM.CDSProdutoBeforePost(DataSet: TDataSet);
begin
     if dm.CDSProdutoPROPRECOUSAR.asstring <> '' then
          dm.CDSProdutoPROVALOR.asfloat := DM.CDSProduto.fieldbyname('PROPRECO'+ dm.CDSProdutoPROPRECOUSAR.asstring).asfloat;
end;

procedure TDM.CDSImovelAfterInsert(DataSet: TDataSet);
begin
     cdsimovelimocod.asinteger := MAX('IMOCOD', 'TIMOVEL');
end;

procedure TDM.CDSImovelAfterClose(DataSet: TDataSet);
begin
     cdscliente.close;
end;

procedure TDM.CDSImovelBeforeOpen(DataSet: TDataSet);
begin
     cdscliente.open;
end;

procedure TDM.CDSContratoAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
     carregacontrato;
end;

procedure TDM.CDSContratoAfterCancel(DataSet: TDataSet);
begin
     carregacontrato;
end;

procedure TDM.CDSContratoAfterDelete(DataSet: TDataSet);
begin
     carregacontrato;
end;

procedure TDM.CDSContratoAfterOpen(DataSet: TDataSet);
begin
     carregacontrato;
end;

procedure TDM.CDSContratoAfterScroll(DataSet: TDataSet);
begin
     carregacontrato;
end;

procedure TDM.CDSContratoAfterClose(DataSet: TDataSet);
begin
     cdscliente.close;
     cdsimovel.close;
end;

procedure TDM.CDSContratoBeforeOpen(DataSet: TDataSet);
begin
     cdscliente.open;
     cdsimovel.open;
     carregacontrato;
end;

procedure TDM.CDSContratoAfterInsert(DataSet: TDataSet);
begin
     CDSContratoCONCOD.asinteger := MAX('CONCOD', 'TCONTRATO');
     CDSContratoCONSITUACAO.asstring := 'Aberto';
     carregacontrato;
end;

procedure TDM.CDSCompraVendaAfterClose(DataSet: TDataSet);
begin
     cdscliente.close;
     cdsimovel.close;
end;

procedure TDM.CDSCompraVendaBeforeOpen(DataSet: TDataSet);
begin
     cdscliente.open;
     cdsimovel.open;
end;

procedure TDM.CDSCompraVendaAfterInsert(DataSet: TDataSet);
begin
     CDSCompraVendaCOMCOD.asinteger := MAX('COMCOD', 'TCOMPRAVENDA');
end;

procedure TDM.CDSImovelAfterScroll(DataSet: TDataSet);
begin
     if Fimovel <> nil then
         Fimovel.mostrafoto;
end;

procedure TDM.CDSContratoCalcFields(DataSet: TDataSet);
begin
     CDSContratototal.asfloat := CDSContratoCONVALOR.asfloat + CDSContratoCONOUTROS.asfloat
                                - CDSContratoCONENTRADA.asfloat - CDSContRecRECVALORPAGO.asfloat;
end;

procedure TDM.CDSItemContratoAfterPost(DataSet: TDataSet);
begin
     CDSItemContrato.ApplyUpdates(0);
end;

procedure TDM.CDSItemContratoBeforePost(DataSet: TDataSet);
begin
     dm.CDSItemContratoITEVALOR.asfloat := dm.CDSItemContratoITECONALUGUEL.asfloat +
                                           dm.CDSItemContratoITECONCONDOMINIO.asfloat +
                                           dm.CDSItemContratoITECONIIMPOSTO.asfloat +
                                           dm.CDSItemContratoITECONSEGURO.asfloat +
                                           dm.CDSItemContratoITECONAGUA.asfloat +
                                           dm.CDSItemContratoITECONLUZ.asfloat +
                                           dm.CDSItemContratoITECONGARAGEM.asfloat +
                                           dm.CDSItemContratoITECONOUTRO1.asfloat +
                                           dm.CDSItemContratoITECONOUTRO2.asfloat +
                                           dm.CDSItemContratoITECONOUTRO3.asfloat;
end;

procedure TDM.CDSCursoAfterInsert(DataSet: TDataSet);
begin
     cdscursocurcod.asinteger := MAX('CURCOD', 'TCURSO');
end;

procedure TDM.CDSUniversidadeAfterInsert(DataSet: TDataSet);
begin
     CDSUniversidadeUNICOD.asinteger := MAX('UNICOD', 'TUNIVERSIDADE');
end;

procedure TDM.CDSNivelAfterInsert(DataSet: TDataSet);
begin
     CDSNivelNIVCOD.asinteger := MAX('NIVCOD', 'TNIVEL');
end;

procedure TDM.CDSDiretoriaAfterInsert(DataSet: TDataSet);
begin
     CDSDiretoriaDIRCOD.asinteger := MAX('DIRCOD', 'TDIRETORIA');
end;

procedure TDM.CDSEstudanteAfterInsert(DataSet: TDataSet);
begin
     CDSEstudanteEstCod.asinteger := MAX('ESTCOD', 'TESTUDANTE');
end;

procedure TDM.CDSEstudanteAfterClose(DataSet: TDataSet);
begin
     cdscidade.close;
     cdscurso.Close;
     cdsuniversidade.close;
     cdsnivel.close;
     cdsprofissao.close;
end;

procedure TDM.CDSFamiliaBeforeOpen(DataSet: TDataSet);
begin
     carregafamilia;
end;

procedure TDM.CDSFamiliaAfterScroll(DataSet: TDataSet);
begin
     carregafamilia;
end;

procedure TDM.CDSFamiliaAfterOpen(DataSet: TDataSet);
begin
     carregafamilia;
end;

procedure TDM.CDSFamiliaBeforeClose(DataSet: TDataSet);
begin
     dm.cdsfamiliasubordinado.close;
end;

procedure TDM.CDSFamiliaAfterDelete(DataSet: TDataSet);
begin
     carregafamilia;
end;

procedure TDM.CDSFamiliaAfterInsert(DataSet: TDataSet);
begin
     CDSFamiliaFAMCOD.asinteger := MAX('FAMCOD', 'TFAMILIA');
     carregafamilia;
end;

procedure TDM.CDSFamiliaSubordinadoAfterPost(DataSet: TDataSet);
begin
     CDSFamiliaSubordinado.ApplyUpdates(0);
end;

procedure TDM.CDSFamiliaSubordinadoAfterInsert(DataSet: TDataSet);
begin
     CDSFamiliaSubordinadoFAMSUBFAMILIA.asinteger := CDSFamiliaFAMCOD.asinteger;
     CDSFamiliaSubordinadoFAMSUBCOD.asinteger := MAX('FAMSUBCOD', 'TFAMILIASUBORDINADO');
end;

procedure TDM.CDSDiasViajadosAfterClose(DataSet: TDataSet);
begin
     cdsestudante.close;
end;

procedure TDM.CDSDiasViajadosCalcFields(DataSet: TDataSet);
begin
     CDSDiasViajadosTotal.AsFloat := CDSDiasViajadosDIAVALORSEGUNDA.asfloat +
                                     CDSDiasViajadosDIAVALORTERCA.asfloat +
                                     CDSDiasViajadosDIAVALORQUARTA.asfloat +
                                     CDSDiasViajadosDIAVALORQUINTa.asfloat +
                                     CDSDiasViajadosDIAVALORSEXTA.asfloat;
end;

end.

