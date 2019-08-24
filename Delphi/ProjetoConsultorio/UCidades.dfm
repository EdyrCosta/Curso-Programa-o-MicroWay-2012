inherited frmCidades: TfrmCidades
  Caption = 'Cidades'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited tbCadastro: TToolBar
    inherited dbnCadstro: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited gbxConsulta: TGroupBox
    inherited dbgConsulta: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME_CIDADE'
          Title.Caption = 'Cidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTADO_CIDADE'
          Title.Caption = 'Estado'
          Visible = True
        end>
    end
  end
  inherited gbxCadastro: TGroupBox
    object lblCodigo: TLabel
      Left = 49
      Top = 35
      Width = 38
      Height = 13
      Caption = 'Codigo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNome: TLabel
      Left = 55
      Top = 75
      Width = 32
      Height = 13
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblEstado: TLabel
      Left = 49
      Top = 115
      Width = 38
      Height = 13
      Caption = 'Estado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeCodigo: TDBEdit
      Left = 102
      Top = 32
      Width = 121
      Height = 21
      DataField = 'CODIGO_CIDADE'
      DataSource = dsGenerico
      ReadOnly = True
      TabOrder = 0
    end
    object dbeNome: TDBEdit
      Left = 102
      Top = 72
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME_CIDADE'
      DataSource = dsGenerico
      TabOrder = 1
    end
    object dblEstado: TDBLookupComboBox
      Left = 102
      Top = 112
      Width = 145
      Height = 21
      DataField = 'ESTADO_CIDADE'
      DataSource = dsGenerico
      KeyField = 'CODIGO_ESTADO'
      ListField = 'NOME_ESTADO'
      ListSource = dsEstado
      TabOrder = 2
    end
  end
  inherited dsGenerico: TDataSource
    DataSet = dmPrincipal.cdsCidades
  end
  object dsEstado: TDataSource
    DataSet = dmPrincipal.cdsEstados
    Left = 328
    Top = 200
  end
end
