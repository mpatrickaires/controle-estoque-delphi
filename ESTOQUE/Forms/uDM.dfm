object DM: TDM
  OldCreateOrder = False
  Height = 318
  Width = 560
  object Conexao: TFDConnection
    Params.Strings = (
      
        'Database=M:\aprendizado-delphi\sistema-estoque-delphi_udemy\ESTO' +
        'QUE\EXE\BANCO\ESTOQUE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=localhost'
      'Protocol=TCPIP'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object Transacao: TFDTransaction
    Connection = Conexao
    Left = 120
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 232
    Top = 24
  end
end
