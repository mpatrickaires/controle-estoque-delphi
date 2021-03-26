inherited frmPesquisaFornecedor: TfrmPesquisaFornecedor
  Caption = 'Pesquisa de Fornecedores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end>
  end
  inherited qryPesquisaPadrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '     ID_FORNECEDOR,'
      '     NOME,'
      '     ENDERECO,'
      '     NUMERO,'
      '     BAIRRO,'
      '     CIDADE,'
      '     UF,'
      '     CEP,'
      '     TELEFONE,'
      '     CNPJ,'
      '     EMAIL,'
      '     CADASTRO'
      'FROM TBLFORNECEDOR'
      'ORDER BY ID_FORNECEDOR')
    object qryPesquisaPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesquisaPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qryPesquisaPadraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object qryPesquisaPadraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object qryPesquisaPadraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object qryPesquisaPadraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object qryPesquisaPadraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryPesquisaPadraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 16
    end
    object qryPesquisaPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 16
    end
    object qryPesquisaPadraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      Size = 14
    end
    object qryPesquisaPadraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object qryPesquisaPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
