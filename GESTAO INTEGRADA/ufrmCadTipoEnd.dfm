inherited frmCadTipoEnd: TfrmCadTipoEnd
  Left = 339
  Top = 214
  Caption = 'Cadastro de Tipos de Endere'#231'os'
  ClientHeight = 181
  ClientWidth = 462
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcManutencaoBD: TPageControl
    Width = 450
    Height = 170
    inherited tbsCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 24
        Top = 9
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 24
        Top = 49
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      inherited ToolBar1: TToolBar
        Left = 52
        Top = 103
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 25
        Width = 134
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = cl3DLight
        DataField = 'TENCODIGO'
        DataSource = dtsManuBD
        Enabled = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 65
        Width = 394
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'TENDESCRICAO'
        DataSource = dtsManuBD
        TabOrder = 2
      end
    end
  end
  inherited cdsManuBD: TClientDataSetUrb
    OnNewRecord = cdsManuBDNewRecord
    object cdsManuBDTENCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TENCODIGO'
      Required = True
    end
    object cdsManuBDTENDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TENDESCRICAO'
      Required = True
      Size = 30
    end
  end
  inherited sqlManuBD: TSQLDataSet
    CommandText = 'SELECT * FROM TIPO_ENDERECO ORDER BY TENDESCRICAO'
  end
end
