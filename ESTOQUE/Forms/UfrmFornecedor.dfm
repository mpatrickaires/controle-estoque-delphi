inherited frmFornecedor: TfrmFornecedor
  Caption = 'Cadastro de Fornecedor'
  ClientHeight = 446
  ExplicitHeight = 475
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 112
    Top = 88
    Width = 86
    Height = 13
    Caption = 'ID_FORNECEDOR'
    FocusControl = edtIDFornecedor
  end
  object Label2: TLabel [1]
    Left = 112
    Top = 136
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = edtNome
  end
  object Label3: TLabel [2]
    Left = 112
    Top = 229
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = edtEndereco
  end
  object Label4: TLabel [3]
    Left = 547
    Top = 229
    Width = 43
    Height = 13
    Caption = 'NUMERO'
    FocusControl = edtNumero
  end
  object Label5: TLabel [4]
    Left = 112
    Top = 280
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = edtBairro
  end
  object Label6: TLabel [5]
    Left = 112
    Top = 325
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = edtCidade
  end
  object Label7: TLabel [6]
    Left = 347
    Top = 328
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = edtUF
  end
  object Label8: TLabel [7]
    Left = 458
    Top = 280
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = edtCEP
  end
  object Label9: TLabel [8]
    Left = 400
    Top = 328
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = edtTelefone
  end
  object Label10: TLabel [9]
    Left = 112
    Top = 182
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = edtCNPJ
  end
  object Label11: TLabel [10]
    Left = 282
    Top = 182
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = edtEmail
  end
  object Label12: TLabel [11]
    Left = 264
    Top = 88
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = edtCadastro
  end
  inherited Panel1: TPanel
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 389
    ExplicitTop = 389
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object edtIDFornecedor: TDBEdit [14]
    Left = 112
    Top = 104
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ID_FORNECEDOR'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 2
  end
  object edtNome: TDBEdit [15]
    Left = 112
    Top = 152
    Width = 500
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dsPadrao
    TabOrder = 4
  end
  object edtEndereco: TDBEdit [16]
    Left = 112
    Top = 245
    Width = 417
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = dsPadrao
    TabOrder = 7
  end
  object edtNumero: TDBEdit [17]
    Left = 547
    Top = 245
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NUMERO'
    DataSource = dsPadrao
    TabOrder = 8
  end
  object edtBairro: TDBEdit [18]
    Left = 112
    Top = 296
    Width = 329
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = dsPadrao
    TabOrder = 9
  end
  object edtCidade: TDBEdit [19]
    Left = 112
    Top = 344
    Width = 220
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = dsPadrao
    TabOrder = 11
  end
  object edtUF: TDBEdit [20]
    Left = 347
    Top = 344
    Width = 30
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = dsPadrao
    TabOrder = 12
  end
  object edtCEP: TDBEdit [21]
    Left = 458
    Top = 296
    Width = 154
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEP'
    DataSource = dsPadrao
    TabOrder = 10
  end
  object edtTelefone: TDBEdit [22]
    Left = 400
    Top = 344
    Width = 212
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFONE'
    DataSource = dsPadrao
    TabOrder = 13
  end
  object edtCNPJ: TDBEdit [23]
    Left = 112
    Top = 198
    Width = 154
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CNPJ'
    DataSource = dsPadrao
    TabOrder = 5
  end
  object edtEmail: TDBEdit [24]
    Left = 282
    Top = 198
    Width = 330
    Height = 21
    CharCase = ecLowerCase
    DataField = 'EMAIL'
    DataSource = dsPadrao
    TabOrder = 6
  end
  object edtCadastro: TDBEdit [25]
    Left = 264
    Top = 104
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CADASTRO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 3
  end
  inherited qryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_TBLFORNECEDOR'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'SELECT * FROM TBLFORNECEDOR'
      'ORDER BY ID_FORNECEDOR')
    object qryPadraoID_FORNECEDOR: TFDAutoIncField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
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
      EditMask = '#####-###;0;_'
      Size = 16
    end
    object qryPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '(##)####-####;0;_'
      Size = 16
    end
    object qryPadraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '##.###.###/####-##;0;_'
    end
    object qryPadraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object qryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
