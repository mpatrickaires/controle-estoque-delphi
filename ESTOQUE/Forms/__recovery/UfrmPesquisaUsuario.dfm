inherited frmPesquisaUsuario: TfrmPesquisaUsuario
  Caption = 'Pesquisa de Usu'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    DataSource = dsPesquisaPadrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 473
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
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
      '  ID_USUARIO,'
      '  NOME,'
      '  TIPO,'
      '  CADASTRO'
      'FROM TBLUSUARIO'
      'ORDER BY ID_USUARIO')
    Left = 360
    Top = 176
    object qryPesquisaPadraoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesquisaPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qryPesquisaPadraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
    object qryPesquisaPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dsPesquisaPadrao: TDataSource
    Left = 520
    Top = 176
  end
end
