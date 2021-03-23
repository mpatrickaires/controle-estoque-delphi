inherited frmUsuario: TfrmUsuario
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 342
  ExplicitHeight = 371
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 120
    Top = 88
    Width = 63
    Height = 13
    Caption = 'ID_USUARIO'
    FocusControl = edtID
  end
  object Label2: TLabel [1]
    Left = 120
    Top = 128
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = edtNome
  end
  object Label3: TLabel [2]
    Left = 120
    Top = 168
    Width = 33
    Height = 13
    Caption = 'SENHA'
    FocusControl = edtSenha
  end
  object Label4: TLabel [3]
    Left = 341
    Top = 168
    Width = 24
    Height = 13
    Caption = 'TIPO'
  end
  object Label5: TLabel [4]
    Left = 562
    Top = 168
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
    Top = 285
    ExplicitTop = 285
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object edtID: TDBEdit [7]
    Left = 120
    Top = 104
    Width = 134
    Height = 21
    DataField = 'ID_USUARIO'
    DataSource = dsPadrao
    TabOrder = 2
  end
  object edtNome: TDBEdit [8]
    Left = 120
    Top = 144
    Width = 576
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dsPadrao
    TabOrder = 3
  end
  object edtSenha: TDBEdit [9]
    Left = 120
    Top = 184
    Width = 200
    Height = 21
    DataField = 'SENHA'
    DataSource = dsPadrao
    PasswordChar = '*'
    TabOrder = 4
  end
  object edtCadastro: TDBEdit [10]
    Left = 562
    Top = 184
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 6
  end
  object cbTipo: TDBComboBox [11]
    Left = 341
    Top = 184
    Width = 207
    Height = 21
    DataField = 'TIPO'
    DataSource = dsPadrao
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO')
    TabOrder = 5
  end
  inherited qryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_TBLUSUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'SELECT * FROM TBLUSUARIO'
      'ORDER BY ID_USUARIO')
    Left = 664
    Top = 72
    object qryPadraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qryPadraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object qryPadraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
    object qryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dsPadrao: TDataSource
    Left = 728
    Top = 72
  end
end
