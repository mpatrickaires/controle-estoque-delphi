object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 155
  Width = 296
  object FDConnection: TFDConnection
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
    Connection = FDConnection
    Left = 120
    Top = 24
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 232
    Top = 24
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 120
    Top = 88
  end
end
