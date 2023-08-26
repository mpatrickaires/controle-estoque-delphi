inherited ProductCRUDView: TProductCRUDView
  Caption = 'Cadastro de Produto'
  ClientHeight = 313
  ExplicitHeight = 342
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 160
    Top = 64
    Width = 67
    Height = 13
    Caption = 'ID do Produto'
    FocusControl = edtIDProduto
  end
  object Label2: TLabel [1]
    Left = 160
    Top = 112
    Width = 102
    Height = 13
    Caption = 'Descri'#231#227'o do Produto'
    FocusControl = edtProdutoDescricao
  end
  object Label3: TLabel [2]
    Left = 160
    Top = 160
    Width = 70
    Height = 13
    Caption = 'Valor de Custo'
    FocusControl = edtValorCusto
  end
  object Label4: TLabel [3]
    Left = 280
    Top = 160
    Width = 72
    Height = 13
    Caption = 'Valor de Venda'
    FocusControl = edtValorVenda
  end
  object Label5: TLabel [4]
    Left = 398
    Top = 160
    Width = 39
    Height = 13
    Caption = 'Estoque'
    FocusControl = edtEstoque
  end
  object Label6: TLabel [5]
    Left = 514
    Top = 157
    Width = 74
    Height = 13
    Caption = 'Estoque M'#237'nimo'
    FocusControl = edtEstoqueMinimo
  end
  object Label7: TLabel [6]
    Left = 624
    Top = 160
    Width = 39
    Height = 13
    Caption = 'Unidade'
  end
  object Label8: TLabel [7]
    Left = 246
    Top = 64
    Width = 44
    Height = 13
    Caption = 'Cadastro'
    FocusControl = edtCadastro
  end
  object Label9: TLabel [8]
    Left = 160
    Top = 208
    Width = 84
    Height = 13
    Caption = 'ID do Fornecedor'
    FocusControl = edtIDFornecedor
  end
  object Label10: TLabel [9]
    Left = 280
    Top = 205
    Width = 101
    Height = 13
    Caption = 'Nome Do Fornecedor'
    FocusControl = edtNomeFornecedor
  end
  inherited Panel1: TPanel
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 256
    ExplicitTop = 256
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object edtIDProduto: TDBEdit [12]
    Left = 160
    Top = 80
    Width = 67
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ID_PRODUTO'
    DataSource = dsPadrao
    TabOrder = 2
  end
  object edtProdutoDescricao: TDBEdit [13]
    Left = 160
    Top = 128
    Width = 519
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PRODUTO_DESCRICAO'
    DataSource = dsPadrao
    TabOrder = 4
  end
  object edtValorCusto: TDBEdit [14]
    Left = 160
    Top = 176
    Width = 100
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VL_CUSTO'
    DataSource = dsPadrao
    TabOrder = 5
  end
  object edtValorVenda: TDBEdit [15]
    Left = 280
    Top = 176
    Width = 100
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VL_VENDA'
    DataSource = dsPadrao
    TabOrder = 6
  end
  object edtEstoque: TDBEdit [16]
    Left = 398
    Top = 176
    Width = 99
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ESTOQUE'
    DataSource = dsPadrao
    TabOrder = 7
  end
  object edtEstoqueMinimo: TDBEdit [17]
    Left = 514
    Top = 176
    Width = 92
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ESTOQUE_MIN'
    DataSource = dsPadrao
    TabOrder = 8
  end
  object edtCadastro: TDBEdit [18]
    Left = 246
    Top = 80
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CADASTRO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 3
  end
  object edtIDFornecedor: TDBEdit [19]
    Left = 160
    Top = 224
    Width = 100
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ID_FORNECEDOR'
    DataSource = dsPadrao
    TabOrder = 10
  end
  object edtNomeFornecedor: TDBEdit [20]
    Left = 280
    Top = 224
    Width = 415
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dsPadrao
    TabOrder = 11
  end
  object cbUnidade: TDBComboBox [21]
    Left = 624
    Top = 176
    Width = 55
    Height = 21
    Style = csDropDownList
    DataField = 'UNIDADE'
    DataSource = dsPadrao
    Items.Strings = (
      'KG'
      'ML'
      'PCT'
      'P'#199
      'LT'
      'UN')
    TabOrder = 9
  end
  inherited qryPadrao: TFDQuery
    SQL.Strings = (
      'SELECT A.ID_PRODUTO, '
      '       A.PRODUTO_DESCRICAO,'
      '       A.VL_CUSTO,'
      '       A.VL_VENDA,'
      '       A.ESTOQUE,'
      '       A.ESTOQUE_MIN,'
      '       A.UNIDADE,'
      '       A.CADASTRO,'
      '       A.ID_FORNECEDOR,'
      '       B.NOME                     '
      'FROM TBLPRODUTO A, TBLFORNECEDOR B'
      'WHERE A.ID_FORNECEDOR = B.ID_FORNECEDOR')
    Left = 408
    Top = 72
    object qryPadraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPadraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object qryPadraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qryPadraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qryPadraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPadraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPadraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object qryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object qryPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object qryPadraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited dsPadrao: TDataSource
    Left = 480
    Top = 72
  end
end
