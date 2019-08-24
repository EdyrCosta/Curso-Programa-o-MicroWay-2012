inherited frmConvenios: TfrmConvenios
  Caption = 'Conv'#234'nios'
  OnActivate = FormActivate
  ExplicitLeft = -311
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
          FieldName = 'NOME_CONVENIO'
          Title.Caption = 'Conv'#234'nio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_CONVENIO'
          Title.Caption = 'C'#243'digo'
          Width = 64
          Visible = True
        end>
    end
  end
  inherited gbxCadastro: TGroupBox
    object lblDescricao: TLabel
      Left = 32
      Top = 115
      Width = 55
      Height = 13
      Caption = 'Descri'#231#227'o'
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
    object dbeCodigo: TDBEdit
      Left = 102
      Top = 32
      Width = 121
      Height = 21
      DataField = 'CODIGO_CONVENIO'
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
      DataField = 'NOME_CONVENIO'
      DataSource = dsGenerico
      TabOrder = 1
    end
    object dbmMemo: TDBMemo
      Left = 102
      Top = 112
      Width = 185
      Height = 89
      DataField = 'DESCRICAO_CONVENIO'
      DataSource = dsGenerico
      TabOrder = 2
    end
  end
  inherited dsGenerico: TDataSource
    DataSet = dmPrincipal.cdsConvenios
  end
end
