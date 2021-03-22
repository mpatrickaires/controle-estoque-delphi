inherited frmFormaPgto: TfrmFormaPgto
  Caption = 'Cadastro de Formas de Pagamento'
  ClientHeight = 220
  ExplicitHeight = 249
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 96
    Top = 64
    Width = 86
    Height = 13
    Caption = 'ID_FORMA_PGTO'
    FocusControl = edtIDFormaPgto
  end
  object Label2: TLabel [1]
    Left = 96
    Top = 112
    Width = 59
    Height = 13
    Caption = 'DESCRICAO'
    FocusControl = edtDescricao
  end
  object Label3: TLabel [2]
    Left = 248
    Top = 64
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = edtCadastro
  end
  inherited Panel2: TPanel
    Top = 163
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object edtIDFormaPgto: TDBEdit [5]
    Left = 96
    Top = 80
    Width = 134
    Height = 21
    DataField = 'ID_FORMA_PGTO'
    DataSource = dsPadrao
    TabOrder = 2
  end
  object edtDescricao: TDBEdit [6]
    Left = 96
    Top = 128
    Width = 500
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dsPadrao
    TabOrder = 3
  end
  object edtCadastro: TDBEdit [7]
    Left = 248
    Top = 80
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 4
  end
  inherited qryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_TBLFORMA_PGTO'
    UpdateOptions.AutoIncFields = 'ID_FORMA_PGTO'
    SQL.Strings = (
      'SELECT'
      '  ID_FORMA_PGTO,'
      '  DESCRICAO,'
      '  CADASTRO'
      'FROM TBLFORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO')
    Left = 624
    Top = 72
    object qryPadraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object qryPadraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object qryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dsPadrao: TDataSource
    Left = 688
    Top = 72
  end
end
