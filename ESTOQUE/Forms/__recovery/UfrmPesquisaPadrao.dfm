object frmPesquisaPadrao: TfrmPesquisaPadrao
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio de Pesquisa Padr'#227'o'
  ClientHeight = 486
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 936
    Height = 65
    Align = alTop
    Color = 13298927
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 140
      Height = 19
      Caption = 'Op'#231#245'es de Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblNome: TLabel
      Left = 184
      Top = 10
      Width = 42
      Height = 19
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblInicio: TLabel
      Left = 416
      Top = 10
      Width = 76
      Height = 19
      Caption = 'Data In'#237'cio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblFim: TLabel
      Left = 520
      Top = 10
      Width = 63
      Height = 19
      Caption = 'Data Fim'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cbChavePesquisa: TComboBox
      Left = 8
      Top = 35
      Width = 153
      Height = 21
      TabOrder = 0
      OnChange = cbChavePesquisaChange
      Items.Strings = (
        'C'#211'DIGO'
        'NOME'
        'CADASTRO'
        'PER'#205'ODO')
    end
    object edtNome: TEdit
      Left = 184
      Top = 35
      Width = 209
      Height = 21
      TabOrder = 1
    end
    object edtInicio: TMaskEdit
      Left = 416
      Top = 35
      Width = 89
      Height = 21
      EditMask = '!##/##/####;0;_'
      MaxLength = 10
      TabOrder = 2
      Text = ''
    end
    object edtFim: TMaskEdit
      Left = 520
      Top = 35
      Width = 89
      Height = 21
      EditMask = '!##/##/####;0;_'
      MaxLength = 10
      TabOrder = 3
      Text = ''
    end
    object btnPesquisar: TBitBtn
      Left = 631
      Top = 14
      Width = 92
      Height = 45
      Caption = '&Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnPesquisarClick
    end
    object btnImprimir: TBitBtn
      Left = 836
      Top = 14
      Width = 92
      Height = 45
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object btnTransferir: TBitBtn
      Left = 733
      Top = 14
      Width = 92
      Height = 45
      Caption = '&Transferir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 936
    Height = 356
    Align = alClient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 421
    Width = 936
    Height = 65
    Align = alBottom
    Color = 13298927
    ParentBackground = False
    TabOrder = 2
  end
  object qryPesquisaPadrao: TFDQuery
    Connection = DM.Conexao
    Left = 416
    Top = 80
  end
  object dsPesquisaPadrao: TDataSource
    DataSet = qryPesquisaPadrao
    Left = 576
    Top = 80
  end
end
