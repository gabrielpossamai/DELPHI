inherited frmCadTipoTel: TfrmCadTipoTel
  Left = 323
  Top = 205
  Caption = 'Cadastro de Tipos de Telefone'
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
        Top = 10
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 24
        Top = 50
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
        Top = 26
        Width = 134
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = cl3DLight
        DataField = 'TTECODIGO'
        DataSource = dtsManuBD
        Enabled = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 66
        Width = 394
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'TTEDESCRICAO'
        DataSource = dtsManuBD
        TabOrder = 2
      end
    end
  end
  inherited cdsManuBD: TClientDataSetUrb
    OnNewRecord = cdsManuBDNewRecord
    object cdsManuBDTTECODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TTECODIGO'
      Required = True
    end
    object cdsManuBDTTEDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TTEDESCRICAO'
      Required = True
      Size = 30
    end
  end
  inherited sqlManuBD: TSQLDataSet
    CommandText = 'SELECT * FROM TIPO_TEL ORDER BY TTEDESCRICAO'
  end
end
