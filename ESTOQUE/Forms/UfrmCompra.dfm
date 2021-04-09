inherited frmCompra: TfrmCompra
  Caption = 'Cadastro de Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    TabOrder = 3
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
    inherited btnItem: TBitBtn
      OnClick = btnItemClick
    end
    inherited btnOk: TBitBtn
      OnClick = btnOkClick
    end
  end
  inherited Panel3: TPanel
    Height = 136
    TabOrder = 1
    ExplicitHeight = 136
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 60
      Height = 13
      Caption = 'ID_COMPRA'
      FocusControl = edtIDCompra
    end
    object Label2: TLabel
      Left = 24
      Top = 48
      Width = 86
      Height = 13
      Caption = 'ID_FORNECEDOR'
      FocusControl = edtIDFornecedor
    end
    object Label3: TLabel
      Left = 24
      Top = 88
      Width = 86
      Height = 13
      Caption = 'ID_FORMA_PGTO'
      FocusControl = edtIDFormaPgto
    end
    object Label4: TLabel
      Left = 164
      Top = 8
      Width = 55
      Height = 13
      Caption = 'CADASTRO'
      FocusControl = edtCadastro
    end
    object Label5: TLabel
      Left = 164
      Top = 48
      Width = 29
      Height = 13
      Caption = 'NOME'
      FocusControl = edtNomeFornecedor
    end
    object Label6: TLabel
      Left = 164
      Top = 88
      Width = 59
      Height = 13
      Caption = 'DESCRICAO'
      FocusControl = edtDescricao
    end
    object Label7: TLabel
      Left = 304
      Top = 8
      Width = 46
      Height = 13
      Caption = 'USUARIO'
      FocusControl = edtUsuario
    end
    object Label8: TLabel
      Left = 630
      Top = 8
      Width = 33
      Height = 13
      Caption = 'VALOR'
      FocusControl = edtValor
    end
    object edtIDCompra: TDBEdit
      Left = 24
      Top = 24
      Width = 134
      Height = 21
      DataField = 'ID_COMPRA'
      DataSource = dsPadrao
      Enabled = False
      TabOrder = 0
    end
    object edtIDFornecedor: TDBEdit
      Left = 24
      Top = 64
      Width = 134
      Height = 21
      DataField = 'ID_FORNECEDOR'
      DataSource = dsPadrao
      TabOrder = 4
    end
    object edtIDFormaPgto: TDBEdit
      Left = 24
      Top = 104
      Width = 134
      Height = 21
      DataField = 'ID_FORMA_PGTO'
      DataSource = dsPadrao
      TabOrder = 6
    end
    object edtCadastro: TDBEdit
      Left = 164
      Top = 24
      Width = 134
      Height = 21
      DataField = 'CADASTRO'
      DataSource = dsPadrao
      Enabled = False
      TabOrder = 1
    end
    object edtNomeFornecedor: TDBEdit
      Left = 164
      Top = 64
      Width = 638
      Height = 21
      DataField = 'NOME'
      DataSource = dsPadrao
      TabOrder = 5
    end
    object edtDescricao: TDBEdit
      Left = 164
      Top = 104
      Width = 638
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = dsPadrao
      TabOrder = 7
    end
    object edtUsuario: TDBEdit
      Left = 304
      Top = 24
      Width = 320
      Height = 21
      DataField = 'USUARIO'
      DataSource = dsPadrao
      TabOrder = 2
    end
    object edtValor: TDBEdit
      Left = 630
      Top = 24
      Width = 172
      Height = 21
      DataField = 'SUBTOTAL'
      DataSource = dsPadraoItem
      TabOrder = 3
    end
  end
  inherited Panel4: TPanel
    TabOrder = 2
    object Label9: TLabel
      Left = 24
      Top = 16
      Width = 66
      Height = 13
      Caption = 'ID_PRODUTO'
      FocusControl = edtIDProduto
    end
    object Label10: TLabel
      Left = 164
      Top = 16
      Width = 27
      Height = 13
      Caption = 'QTDE'
      FocusControl = edtQuantidade
    end
    object Label11: TLabel
      Left = 304
      Top = 16
      Width = 51
      Height = 13
      Caption = 'VL_CUSTO'
      FocusControl = edtValorCusto
    end
    object Label12: TLabel
      Left = 444
      Top = 16
      Width = 55
      Height = 13
      Caption = 'DESCONTO'
      FocusControl = edtDesconto
    end
    object Label13: TLabel
      Left = 584
      Top = 16
      Width = 62
      Height = 13
      Caption = 'TOTAL_ITEM'
      FocusControl = edtTotalItem
    end
    object edtIDProduto: TDBEdit
      Left = 24
      Top = 32
      Width = 134
      Height = 21
      DataField = 'ID_PRODUTO'
      DataSource = dsPadraoItem
      TabOrder = 0
      OnExit = edtIDProdutoExit
    end
    object edtQuantidade: TDBEdit
      Left = 164
      Top = 32
      Width = 134
      Height = 21
      DataField = 'QTDE'
      DataSource = dsPadraoItem
      TabOrder = 1
    end
    object edtValorCusto: TDBEdit
      Left = 304
      Top = 32
      Width = 134
      Height = 21
      DataField = 'VL_CUSTO'
      DataSource = dsPadraoItem
      TabOrder = 2
    end
    object edtDesconto: TDBEdit
      Left = 444
      Top = 32
      Width = 134
      Height = 21
      DataField = 'DESCONTO'
      DataSource = dsPadraoItem
      TabOrder = 3
    end
    object edtTotalItem: TDBEdit
      Left = 584
      Top = 32
      Width = 218
      Height = 21
      DataField = 'TOTAL_ITEM'
      DataSource = dsPadraoItem
      TabOrder = 4
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 193
    Height = 201
    DataSource = dsPadraoItem
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_SEQUENCIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_COMPRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_CUSTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCONTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_ITEM'
        Visible = True
      end>
  end
  inherited qryPadrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_TBLCOMPRA'
    UpdateOptions.AutoIncFields = 'ID_COMPRA'
    SQL.Strings = (
      'SELECT A.ID_COMPRA,'
      '       A.ID_FORNECEDOR,'
      '       B.NOME,'
      '       A.ID_FORMA_PGTO,'
      '       C.DESCRICAO,'
      '       A.USUARIO,'
      '       A.VALOR,'
      '       A.CADASTRO'
      'FROM TBLCOMPRA A, TBLFORNECEDOR B, TBLFORMA_PGTO C'
      'WHERE A.ID_FORNECEDOR = B.ID_FORNECEDOR'
      'AND A.ID_FORMA_PGTO = C.ID_FORMA_PGTO'
      'ORDER BY A.ID_COMPRA')
    Left = 264
    Top = 232
    object qryPadraoID_COMPRA: TFDAutoIncField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
    object qryPadraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object qryPadraoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryPadraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object qryPadraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object qryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dsPadrao: TDataSource
    Left = 264
    Top = 312
  end
  inherited qryPadraoItem: TFDQuery
    Active = True
    IndexFieldNames = 'ID_COMPRA'
    AggregatesActive = True
    MasterFields = 'ID_COMPRA'
    DetailFields = 'ID_COMPRA'
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT A.ID_SEQUENCIA,'
      '       A.ID_COMPRA,'
      '       A.ID_PRODUTO,'
      '       A.QTDE,'
      '       A.VL_CUSTO,'
      '       A.DESCONTO,'
      '       A.TOTAL_ITEM '
      'FROM TBLITEM_COMPRA A'
      'WHERE A.ID_COMPRA = :pId_Compra')
    Left = 360
    Top = 232
    ParamData = <
      item
        Name = 'PID_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPadraoItemID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPadraoItemID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPadraoItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryPadraoItemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPadraoItemVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qryPadraoItemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qryPadraoItemTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qryPadraoItemDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = qryProduto
      LookupKeyFields = 'ID_PRODUTO'
      LookupResultField = 'PRODUTO_DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 100
      Lookup = True
    end
    object qryPadraoItemSUBTOTAL: TAggregateField
      FieldName = 'SUBTOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_ITEM)'
    end
  end
  inherited dsPadraoItem: TDataSource
    Left = 360
    Top = 312
  end
  object qryProduto: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT ID_PRODUTO,'
      '       PRODUTO_DESCRICAO,'
      '       ESTOQUE,'
      '       ESTOQUE_MIN,'
      '       VL_CUSTO'
      'FROM TBLPRODUTO'
      'ORDER BY ID_PRODUTO')
    Left = 456
    Top = 232
  end
end
