inherited frmCliente: TfrmCliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 381
  ExplicitHeight = 410
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 171
    Top = 80
    Width = 58
    Height = 13
    Caption = 'ID_CLIENTE'
    FocusControl = edtIDCliente
  end
  object Label2: TLabel [1]
    Left = 171
    Top = 128
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = edtNome
  end
  object Label3: TLabel [2]
    Left = 171
    Top = 176
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = edtEndereco
  end
  object Label4: TLabel [3]
    Left = 528
    Top = 173
    Width = 43
    Height = 13
    Caption = 'NUMERO'
    FocusControl = edtNumero
  end
  object Label5: TLabel [4]
    Left = 171
    Top = 272
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = edtBairro
  end
  object Label6: TLabel [5]
    Left = 171
    Top = 224
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = edtCidade
  end
  object Label7: TLabel [6]
    Left = 643
    Top = 176
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = edtUF
  end
  object Label8: TLabel [7]
    Left = 528
    Top = 224
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = edtCEP
  end
  object Label9: TLabel [8]
    Left = 528
    Top = 272
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = edtTelefone
  end
  object Label10: TLabel [9]
    Left = 528
    Top = 125
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = edtCpf
  end
  object Label12: TLabel [10]
    Left = 323
    Top = 80
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = edtCadastro
  end
  inherited Panel1: TPanel
    TabOrder = 9
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 324
    TabOrder = 10
    ExplicitTop = 324
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object edtIDCliente: TDBEdit [13]
    Left = 171
    Top = 96
    Width = 134
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 11
  end
  object edtNome: TDBEdit [14]
    Left = 171
    Top = 144
    Width = 337
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dsPadrao
    TabOrder = 0
  end
  object edtEndereco: TDBEdit [15]
    Left = 171
    Top = 192
    Width = 337
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = dsPadrao
    TabOrder = 2
  end
  object edtNumero: TDBEdit [16]
    Left = 528
    Top = 192
    Width = 92
    Height = 21
    DataField = 'NUMERO'
    DataSource = dsPadrao
    TabOrder = 3
  end
  object edtBairro: TDBEdit [17]
    Left = 171
    Top = 288
    Width = 337
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = dsPadrao
    TabOrder = 7
  end
  object edtCidade: TDBEdit [18]
    Left = 171
    Top = 240
    Width = 337
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = dsPadrao
    TabOrder = 5
  end
  object edtUF: TDBEdit [19]
    Left = 643
    Top = 192
    Width = 30
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = dsPadrao
    TabOrder = 4
  end
  object edtCEP: TDBEdit [20]
    Left = 528
    Top = 240
    Width = 145
    Height = 21
    DataField = 'CEP'
    DataSource = dsPadrao
    TabOrder = 6
  end
  object edtTelefone: TDBEdit [21]
    Left = 528
    Top = 288
    Width = 145
    Height = 21
    DataField = 'TELEFONE'
    DataSource = dsPadrao
    TabOrder = 8
  end
  object edtCpf: TDBEdit [22]
    Left = 528
    Top = 144
    Width = 145
    Height = 21
    DataField = 'CPF'
    DataSource = dsPadrao
    TabOrder = 1
  end
  object edtCadastro: TDBEdit [23]
    Left = 323
    Top = 96
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 12
  end
  inherited qryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_TBLCLIENTE'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'SELECT '
      '     ID_CLIENTE,'
      '     NOME,'
      '     ENDERECO,'
      '     NUMERO,'
      '     BAIRRO,'
      '     CIDADE,'
      '     UF,'
      '     CEP,'
      '     TELEFONE,'
      '     CPF,'
      '     CADASTRO'
      'FROM TBLCLIENTE'
      'ORDER BY ID_CLIENTE')
    Left = 491
    Top = 64
    object qryPadraoID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qryPadraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object qryPadraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object qryPadraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object qryPadraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object qryPadraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryPadraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '#####\-###;0;_'
      Size = 16
    end
    object qryPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(##\)####-####;0;_'
      Size = 16
    end
    object qryPadraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '###\.###\.###-##;0;_'
      Size = 16
    end
    object qryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dsPadrao: TDataSource
    Left = 555
    Top = 64
  end
end
