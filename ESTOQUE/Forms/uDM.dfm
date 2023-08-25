object DM: TDM
  OldCreateOrder = False
  Height = 230
  Width = 336
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=WIN1252'
      
        'Database=C:\Sidemar\Estudos\delphi\controle-estoque-delphi\compi' +
        'le\DATA\DATABASE.FDB'
      'DriverID=FB')
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object Transacao: TFDTransaction
    Connection = Conexao
    Left = 120
    Top = 24
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 232
    Top = 24
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 40
    Top = 120
  end
end
