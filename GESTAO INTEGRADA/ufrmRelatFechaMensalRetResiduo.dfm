inherited frmRelatFechaMensalRetResiduo: TfrmRelatFechaMensalRetResiduo
  Left = 458
  Top = 218
  Caption = 'Relat'#243'rio de Fechamento Mensal de Retirada de Res'#237'duo'
  ClientHeight = 398
  ExplicitWidth = 320
  ExplicitHeight = 436
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnProximo: TSpeedButton
    Top = 377
    ExplicitTop = 377
  end
  inherited btnFinalizar: TSpeedButton
    Top = 377
    ExplicitTop = 377
  end
  inherited btnAnterior: TSpeedButton
    Top = 377
    ExplicitTop = 377
  end
  inherited pgcMain: TPageControl
    Height = 363
    ExplicitHeight = 363
    inherited tbsOpcoes: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    inherited tbsEmpGeradora: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inherited gbxEmpresaGeradora: TGroupBox
        Height = 353
        ExplicitHeight = 353
      end
    end
    inherited tbsEmpReceptora: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inherited gbxEmpresaReceptora: TGroupBox
        Height = 353
        ExplicitHeight = 353
      end
    end
    inherited tbsSituacao: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inherited gbxSituacaoManifesto: TGroupBox
        Height = 353
        ExplicitHeight = 353
      end
    end
    inherited tbsResiduo: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inherited gbxResiduo: TGroupBox
        Height = 353
        ExplicitHeight = 353
      end
    end
  end
  inherited cdsProtocEmpresa: TClientDataSetUrb
    RemoteServer = frmPrincipal.SharedConnection
  end
  inherited cdsRazaoSocial: TClientDataSetUrb
    RemoteServer = frmPrincipal.SharedConnection
  end
  inherited cdsProtocManif: TClientDataSetUrb
    RemoteServer = frmPrincipal.SharedConnection
  end
end
