object frmPesquisaPadrao: TfrmPesquisaPadrao
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio de Pesquisa Padr'#227'o'
  ClientHeight = 486
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 936
    Height = 65
    Align = alTop
    Color = 13298927
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 140
      Height = 19
      Caption = 'Op'#231#245'es de Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblNome: TLabel
      Left = 184
      Top = 10
      Width = 42
      Height = 19
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblInicio: TLabel
      Left = 416
      Top = 10
      Width = 76
      Height = 19
      Caption = 'Data In'#237'cio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblFim: TLabel
      Left = 520
      Top = 10
      Width = 63
      Height = 19
      Caption = 'Data Fim'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cbChavePesquisa: TComboBox
      Left = 8
      Top = 35
      Width = 153
      Height = 22
      Style = csOwnerDrawVariable
      TabOrder = 0
      OnChange = cbChavePesquisaChange
      Items.Strings = (
        'C'#211'DIGO'
        'NOME'
        'CADASTRO'
        'PER'#205'ODO'
        'TODOS')
    end
    object edtNome: TEdit
      Left = 184
      Top = 35
      Width = 209
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object edtInicio: TMaskEdit
      Left = 416
      Top = 35
      Width = 87
      Height = 21
      EditMask = '!##/##/####;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object edtFim: TMaskEdit
      Left = 520
      Top = 35
      Width = 87
      Height = 21
      EditMask = '!##/##/####;1;_'
      MaxLength = 10
      TabOrder = 3
      Text = '  /  /    '
    end
    object btnPesquisar: TBitBtn
      Left = 631
      Top = 14
      Width = 95
      Height = 45
      Caption = '&Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000DD000000DD0000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F6FED0C1
        FBA78BF79471F5865EF47A4EF28158F38F6AF49E7EF6C0ABF9EBE5FDFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECE5FDA588F6794DF27649
        F27649F27649F27649F27649F27649F27649F27649F27649F27649F28F6AF4D3
        C4FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7FEB096F8794DF27649F27649F27649
        F27649F27649F27649F27649F27649F27649F27649F27649F27649F27649F276
        49F29471F5E5DCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFEFEAFE906BF47649F27649F27649F27649F27649
        F27649F27649F27649F27649F27649F27649F27649F27649F27649F27649F276
        49F27649F27B4FF2D0C0F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFE7E0FD835AF37649F27649F27649F27649F27649F27649
        F27649F27649F27649F27649F27649F27649F27649F27649F27649F27649F276
        49F27649F2784AEA955970B187A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF4F0FE8760F47649F27649F27649F27649F27649F27649F27649
        F27649F27649F27649F27649F27649F27649F27649F27649F27649F27649F275
        46D8784AE696596EA05E44955970D0C0F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDFCFF9673F57649F27649F27649F27649F27649F27649F27649F27649
        F27649F27649F27649F27A4BE18B549A9458779A5B5D9458758C54977946A965
        2D1D783D47A05E4496596E784AEA7B4FF2E5DCFDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC7B5FA7649F27649F27649F27649F27649F27649F27649F27649F27649
        F27649F27649F28651AF9D5D4FA05E44A05E44A05E44A05E44A05E449E5D4B86
        4A4C7C3D2981455A784AE87649F27649F29471F5FFFFFFFFFFFFF8E9D7FAEADA
        FEF7F2E4D4EFE1D1EFE1D1EFE1D1EFE1D1EFE1D1EFE1D1EFE1D1EFE1D1EFE1D1
        EFE1D1EFB48CB1A05E44A26044DBA354EFBA55F0BC53EFBB55DEA754A26145A0
        5E448A4D597B3E3C7648E57649F27649F27649F2D3C4FBFFFFFFF4DDC3FBECDC
        FFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6
        EEF3E4DF9E5E51A05E44ECB755F0BC53F8C55FFDCB67FFCD69FECB67EAB45CA1
        60459E5D4C7C4AC27649F27649F27649F27649F28F6AF4FFFFFFF4DDC3FBECDC
        D1E1F0A8CEF1CCE1F2CCE1F2CCE1F2CCE1F2CCE1F2CCE1F2CCE1F2B0DEF4A2DD
        F5A48EA2A05E44D8A053F0BC53FCCA65FFCD69FFCD69FFCD69FFCD69FFCD69CE
        9456A05E448C54977649F27649F27649F27649F27649F2EBE5FDF4DDC3FBECDC
        2F93F21888F31895FF1895FF1895FF1895FF1895FF1895FF1895FF10BEFF0DD0
        FF827A83A05E44EDB955F8C55EFFCD69FFCD69FFCD69FFCD69FFCD69FFCD69EE
        B962A05E449458757649F27649F27649F27649F27649F2C0ABF9F4DDC3FBECDC
        2E92F21888F31895FF1895FF1895FF1895FF1895FF1895FF1895FF10BEFF0DD0
        FF916B69A05E44F0BC54FDCA66FFCD69FFCD69FFCD69FFCD69FFCD69FFCD69FB
        C867A05E449A5B5D7649F27649F27649F27649F27649F29E7EF6F4DDC3FBECDC
        2E92F21888F31895FF1895FF1895FF1895FF1895FF1895FF1895FF10BEFF0DD0
        FF817B85A05E44EDB856FECC68FFCD69FFCD69FFCD69FFCD69FFCD69FFCD69ED
        B862A05E449458777649F27649F27649F27649F27649F28F6AF4F4DDC3FBECDC
        A9CEF17AB8F2A8D1F4A8D1F4A8D1F4A8D1F4A8D1F4A8D1F4A8D1F480D1F76ED1
        F89692A7A05E44D59C52FCCA65FFCD69FFCD69FFCD69FFCF72FED791FFD27BCA
        9055A05E448B549A7649F27649F27649F27649F27649F28158F3F4DDC3FBECDC
        FCF3E3FBF3DFFBF3DFFBF3DFFBF3DFFBF3DFFBF3DFFBF3DFFBF3DFFBF3DFFBF3
        DFF3E6D59F6054A05E44E2AC59FFCD69FFCD69FED37FFDE4C3FFCE6EE3AD5EA1
        5F449D5D4F7A4BE17649F27649F27649F27649F27649F27A4EF2F4DDC3FBECDA
        EEE6ABEDE5A5EDE5A5EDE5A5EDE5A5EDE5A5EDE5A5EDE5A5EDE5A5EDE5A5EDE5
        A5EDE5A5D0B397A05E44A05E44C58952E7B160F5C165E9B566C88D54A05E44A0
        5E448651AF7649F27649F27649F27649F27649F27649F2865EF4F4DDC3FBECDC
        FAF2DBF9F0D7F9F0D7F9F0D7F9F0D7F9F0D7F9F0D7F9F0D7F9F0D7F9F0D7F9F0
        D7F9F0D7F9F0D7CFB1A89F6053A05E44A05E44A05E44A05E44A05E449D5D5185
        51B37649F27649F27649F27649F27649F27649F27649F29471F5F4DDC3FBECDA
        F0E8B3EFE7AEEFE7AEEFE7AEEFE7AEEFE7AEEFE7AEEFE7AEEFE7AEEFE7AEEFE7
        AEEFE7AEEFE7AEEFE7AEE9DDA8C19C8CAA767EA16667AB777FC59EA1D2BBE076
        49F27649F27649F27649F27649F27649F27649F27649F2A78BF7F4DDC3FBECDC
        FFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6
        EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EED9C6EF76
        49F27649F27649F27649F27649F27649F27649F27649F2D0C1FBF4DDC3FBECDC
        FBDEA8F9D48BFFE3AFFFE3AFFFE3AFFFE3AFFFE3AFFFE7BCFFF6EEFFF6EDEDE4
        A4E9E196E9E196E9E196E9E196E9E196E9E196E9E196F9F0D4FFF6EED9C6EF76
        49F27649F27649F27649F27649F27649F27649F2794DF2F8F6FEF4DDC3FBECDC
        F4C566F3C058FFCD69FFCD69FFCD69FFCD69FFCD69FFD175FFF6EEFFF6EEFEF5
        EAFEF5E8FEF5E8FEF5E8FEF5E8FEF5E8FEF5E8FEF5E8FFF6EEFFF6EED9C6EF76
        49F27649F27649F27649F27649F27649F27649F2A588F6FFFFFFF4DDC3FBECDC
        F4C566F3C058FFCD69FFCD69FFCD69FFCD69FFCD69FFD175FFF6EEFFF6EDEEE5
        A8EBE39CEBE39CEBE39CEBE39CEBE39CEBE39CEBE39CF9F0D5FFF6EED9C6EF76
        49F27649F27649F27649F27649F27649F2794DF2ECE5FDFFFFFFF4DDC3FBECDC
        F4C566F3C058FFCD69FFCD69FFCD69FFCD69FFCD69FFD175FFF6EEFFF6EEFCF3
        E2FBF2DCFBF2DCFBF2DCFBF2DCFBF2DCFBF2DCFBF2DCFEF5EBFFF6EED9C6EF76
        49F27649F27649F27649F27649F27649F2B096F8FFFFFFFFFFFFF4DDC3FBECDC
        F4C566F3C058FFCD69FFCD69FFCD69FFCD69FFCD69FFD175FFF6EEFFF6EDF0E7
        B0EEE5A8EEE5A8EEE5A8EEE5A8EEE5A8EEE5A8EEE5A8F9F1D7FFF6EED9C6EF76
        49F27649F27649F27649F27649F2906BF4F9F7FEFFFFFFFFFFFFF4DDC3FBECDC
        F4C567F3C058FFCD69FFCD69FFCD69FFCD69FFCD69FFD177FFF6EEFFF6EEF9F1
        D7F8EFD1F8EFD1F8EFD1F8EFD1F8EFD1F8EFD1F8EFD1FDF5E8FFF6EED9C6EF76
        49F27649F27649F27649F2835AF3EFEAFEFFFFFFFFFFFFFFFFFFF4DDC3FBECDC
        FEEFDBFDE8C5FFF0D9FFF0D9FFF0D9FFF0D9FFF0D9FFF2E0FFF6EEFFF6EDF2EA
        BBF1E8B4F1E8B4F1E8B4F1E8B4F1E8B4F1E8B4F1E8B4FAF1DBFFF6EED9C6EF76
        49F27649F27649F28760F4E7E0FDFFFFFFFFFFFFFFFFFFFFFFFFF4DDC3FBECDC
        FFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6
        EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EEFFF6EED9C6EF76
        49F27649F29673F5F4F0FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF895846A67B6C
        B99487B99487B99487B99487B99487AF7E6CA97463A36C63A06962A06962A069
        62A06962A06962A06962A06962A06962A06962A06962A06962A069629F6C7F83
        5AF3C7B5FAFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF632B1A723624
        7D3F327644367C3D297C452A7C3D2997563DA05E44A05E44A05E44A05E44A05E
        44A05E44A05E44A05E44A05E44A05E44A05E44A05E44A05E44A05E449B5E4CF9
        F7FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF632B1A773D3E
        854E7448749075513A7B7B2F7C3D2997563DA05E44A05E44A05E44A05E44A05E
        44A05E44A05E44A05E44A05E44A05E44A05E44A05E44A05E44A05E44A0644DFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF652D1C703522
        7C3D297C3D297C3D297C3D297C3D2997563DA05E44A05E44A05E44A05E44A05E
        44A05E44A05E44A05E44A05E44A05E44A05E44A05E44A05E44A05E44A36A54FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 4
      OnClick = btnPesquisarClick
    end
    object btnImprimir: TBitBtn
      Left = 836
      Top = 14
      Width = 95
      Height = 45
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000EC000000EC0000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FDFFA8EEFF67E2
        FF2BCDFF02A7FF00A5FF00A4FF02A7FF0CAFFF2ABDFF70D5FFE8FAFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FAFF69E2FF0BD0FF00CEFF00C5
        FF00A5FF00A3FF00A3FF00A3FF00A3FF00A3FF00A3FF00A3FF00A4FF29BDFFC0
        EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF8FEFF7EE6FF0BD0FF00CEFF00CEFF00C5FF00A5
        FF00A3FF00A3FF00A3FF00A3FF00A3FF00A3FF00A3FF00A3FF00A3FF00A3FF00
        A4FF39C2FFF1FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFEAFBFF3EDAFF00CEFF00CEFF00CEFF00C6FF00A6FF00A3
        FF00A3FF00A3FF00A3FF00A3FF00A3FF00A3FF00A3FF00A3FF00A3FF00A3FF00
        A3FF00A3FF0DB0FFD1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD1F6FF1CD3FF00CEFF00CEFF00CEFF15D0FF7ED2FF7ED0FF7ED0
        FF7ED0FF7ED0FF7ED0FFB8DEF4B9DEF4B9DEF4B9DEF4B9DEF4B9DEF427B1FD00
        A3FF00A3FF00A3FF03A8FFADE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE7FAFF1DD4FF00CEFF00CEFF00CEFF00CEFF2CCBFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF5EDE9F5EDE9F5EDE9F5EDE9F5EDE9F5EDE94EBDFB00
        A3FF00A3FF00A3FF00A3FF03A8FFCCF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F7FDFF38D9FF00CEFF00CEFF00CEFF00CEFF00C0FF2CB3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF5EDE9F5EDE9F5EDE9F5EDE9F5EDE9F5EDE94EBDFB00
        A3FF00A3FF00A3FF00A3FF00A3FF0DB0FFF1FBFFFFFFFFFFFFFFFFFFFFFFFFFF
        75E4FF00CEFF00CEFF00CEFF00CEFF00BFFF00A3FF2CB3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF5EDE9F5EDE9F5EDE9F5EDE9F5EDE9F5EDE94EBDFB00
        A3FF00A3FF00A3FF00A3FF00A3FF00A3FF38C1FFFFFFFFFFFFFFFFFFFFDAF8FF
        05CFFF00CEFF00CEFF00CEFF00BFFF00A3FF00A3FF2CB3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF5EDE9F5EDE9F5EDE9F5EDE9F5EDE9F5EDE94EBDFB00
        A3FF00A3FF00A3FF00A3FF00A3FF00A3FF00A4FFC0EDFFFFFFFFFFFFFF63E1FF
        00CEFF00CEFF00CEFF12B3E82E8CC3308CC1377EA75F89A1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF5EDE9F5EDE9F5EDE9F5EDE9F5EDE9F5EDE9777F833E
        5C6B3E718E3C72911B8FCF00A3FF00A3FF00A3FF28BBFFFFFFFFF3FDFF0BD0FF
        00CEFF00CEFF20B2D5766A66786963786963645851706862FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF5EDE9F5EDE9F5EDE9F5EDE9F5EDE9F5EDE96C68643E
        3732524941524941534A412D80AD00A3FF00A3FF00A4FFE8FAFFA7EEFF00CEFF
        00CEFF00CEFF508B98786963786963786963645851706862FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF5EDE9F5EDE9F5EDE9F5EDE9F5EDE9F5EDE96C68643E
        3732524941524941524941515B5F00A3FF00A3FF00A3FF71D5FF65E1FF00CEFF
        00CEFF00CEFF56858F7869637869637869636F615A736760B2ABA7B2ABA7B2AB
        A7B2ABA7B2ABA7B2ABA7C9C3BFC8C3BFC8C3BFC8C3BFC8C3BFC8C3BF5C565048
        413A52494152494152494153565700A3FF00A3FF00A3FF2ABDFF35D8FF00CEFF
        00CEFF00CEFF56858F7869636E615C6A5D586A5D586A5D586A5D586A5D586A5D
        586A5D586A5D586A5D5848403A47403A47403A47403A47403A47403A47403A47
        403A47403A4E443F52494153565700A3FF00A3FF00A3FF0CAEFF14D2FF00CEFF
        00CEFF00CEFF56858F7869636E615B695C58695C58695C58695C58695C58695C
        58695C58695C58695C58453E39463E38463E38463E38463E38463E38463E3846
        3E38463E384D443E52494153565700A3FF00A3FF00A3FF02A7FF06CFFF00CEFF
        00CEFF00CEFF56858F7869637A6C63877B647869638478637C6E637869637869
        6378696378696378696352494152494152494152494152494152494152494152
        494152494152494152494153565700A3FF00A3FF00A3FF00A4FF06CFFF00CEFF
        00CEFF00CEFF56858F786963B0AB63DBE0648A7F64DBE064B1AE637869637869
        6378696378696378696352494152494152494152494152494152494152494152
        494152494152494152494153565700A3FF00A3FF00A3FF00A4FF14D2FF00CEFF
        00CEFF00CEFF56858F7869638C8163A9A4637A6B63A9A4638B80647869637869
        6378696378696378696352494152494152494152494152494152494152494152
        494152494152494152494153565700A3FF00A3FF00A3FF02A7FF35D8FF00CEFF
        00CEFF00CEFF56858F7869637869637869637768627768627768627768627768
        6277686277686277686250484051474051474051474051474051474051474052
        494152494152494152494153565700A3FF00A3FF00A3FF0CAEFF64E1FF00CEFF
        00CEFF00CEFF5487927869637869637869636458515249415249415249415249
        415249415249415249412B27232B27232B27232B27232B27232B27232B27233E
        373252494152494152494152585900A3FF00A3FF00A3FF39C6FFA6EEFF00CEFF
        00CEFF00CEFF34A2BB7869637869637869636458515249415249415249415249
        415249415249415249412B27232B27232B27232B27232B27232B27232B27233E
        3732524941524941524941406E8800A3FF00A3FF00B8FFA8EEFFF1FCFF0AD0FF
        00CEFF00CEFF01CDFE32A4BE4F8C99508B9751696A5249415249415249415249
        415249415249415249412B27232B27232B27232B27232B27232B27232B27233E
        3B38525A5D515B603F6F8A02A3FD00A3FF00B8FF0BD0FFF2FCFFFFFFFF62E1FF
        00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF2A899D5249415249415249415249
        415249415249415249412B27232B27232B27232B27232B27232B27232B27232A
        4C5E00A3FF00A3FF00A3FF00A3FF00B8FF00CEFF69E2FFFFFFFFFFFFFFD9F8FF
        04CFFF00CEFF00CEFF00CEFF00CEFF00CEFF2A899D5249415249415A50495E53
        4D5E534D5E534D5E534D463E38453E39453E39453E39413A362B27232B27232A
        4C5E00A3FF00A3FF00A3FF00B8FF00CEFF0CD0FFE7FAFFFFFFFFFFFFFFFFFFFF
        73E4FF00CEFF00CEFF00CEFF00CEFF00CEFF2A899D524941574E46665A55665A
        55665A55665A55665A55403A344039334039334039334039333C36312B27232A
        4C5E00A3FF00A3FF00B9FF00CEFF00CEFF7EE6FFFFFFFFFFFFFFFFFFFFFFFFFF
        F7FDFF2FD7FF00CEFF00CEFF00CEFF00CEFF2A899D524941594F47665A55665A
        55665A55665A55665A55403A344039334039334039334039333F38332B27232A
        4C5E00A3FF00B9FF00CEFF00CEFF33D8FFF6FDFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFDAF8FF15D2FF00CEFF00CEFF00CEFF2A899D524941594F47665A55665A
        55665A55665A55665A55403A344039334039334039334039333F38332B27232A
        4C5E00B9FF00CEFF00CEFF1CD3FFE7FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCEF6FF15D2FF00CEFF00CEFF14AED1278EA431869745767F4576
        7F45767F45767F45767F434B4B434C4B434C4B434C4B434C4B35575C295D6719
        87A700CEFF00CEFF1CD3FFD1F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFDAF8FF2CD6FF00CEFF00CEFF00CEFF00CEFF00CEFF00CE
        FF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00
        CEFF00CEFF38D9FFE6FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF6FDFF73E4FF04CFFF00CEFF00CEFF00CEFF00CE
        FF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF05
        CFFF75E4FFF7FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9F8FF62E1FF0AD0FF00CEFF00CE
        FF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF0AD0FF63E1FFDA
        F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FCFFA6EEFF64E1
        FF35D8FF15D2FF05CFFF05CFFF15D2FF35D8FF65E1FFA7EEFFF2FCFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 5
      OnClick = btnImprimirClick
    end
    object btnTransferir: TBitBtn
      Left = 733
      Top = 14
      Width = 95
      Height = 45
      Caption = '&Transferir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000EC000000EC0000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF7EF9ACA9767AF
        6351A14D489B4446984254B1505FB65B76C07397D095C5E4C3F7FCF7FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3E8D265AE624698424698424698
        4246984246984246984250AF4C50AF4C50AF4C50AF4C50AF4C58B35496CF94E8
        F5E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF5FAF571B46E4698424698424698424698424698
        4246984246984246984250AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C54
        B150A4D5A2FBFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFE4F2E454A3504698424698424698424698424698424698
        4246984246984246984250AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
        AF4C50AF4C78C175EFF8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC7E2C5499C454698424698424698424698424698424698424698
        4246984246984246984250AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
        AF4C50AF4C50AF4C65B861E1F2E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFDFF0DF499C454698424698424698424698424698424698424698424698
        4246984246984246984250AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
        AF4C50AF4C50AF4C50AF4C65B861EFF8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F8FBF753A24F4698424698424698424698424698424698424698424698424698
        4246984246984246984250AF4C50AF4C51AF4D92C98F62B65F50AF4C50AF4C50
        AF4C50AF4C50AF4C50AF4C50AF4C78C175FAFDFAFFFFFFFFFFFFFFFFFFFFFFFF
        71B46E4698424698424698424698424698424698424698424698424698424698
        4246984246984246984250AF4C50AF4C97CB95DEDEDEDFE1DF88C58650AF4C50
        AF4C50AF4C50AF4C50AF4C50AF4C50AF4CA4D5A2FFFFFFFFFFFFFFFFFFCFE6CE
        4798424698424698424698424698424698424698424698424698424698424698
        4246984246984246984250AF4C50AF4CA6D1A5DEDEDEDEDEDEDFDFDFB2D4B050
        AF4C50AF4C50AF4C50AF4C50AF4C50AF4C55B151E8F5E8FFFFFFFFFFFF65AD61
        4698424698424698424698424698424698424698424698424698424698424698
        4246984246984246984250AF4C50AF4CA6D1A5DEDEDEDEDEDEDEDEDEDEDEDECF
        DECE57B25350AF4C50AF4C50AF4C50AF4C50AF4C96CF94FFFFFFEFF7EF489A43
        46984246984246984246984262A65EDEE0DEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
        DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
        DEDEDDE1DC62B65F50AF4C50AF4C50AF4C50AF4C58B254F7FBF797C895469842
        46984246984246984246984283B880F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F486C68350AF4C50AF4C50AF4C50AF4C50AF4CC5E4C365AE62469842
        469842469842469842469842489944A6CDA4C1DDC0C1DDC0C1DDC0C1DDC0C1DD
        C0C1DDC0C1DDC0C1DDC0C5E4C3C5E4C3D8EDD7FFFFFFFFFFFFFFFFFFFFFFFFFD
        FEFDA3D5A150AF4C50AF4C50AF4C50AF4C50AF4C50AF4C97CF944FA04B469842
        4698424698424698424698424698424698424698424698424698424698424698
        4246984246984246984250AF4C50AF4C8ACA88FFFFFFFFFFFFFFFFFFF2F9F281
        C57E50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C76C173499B44469842
        4698424698424698424698424698424698424698424698424698424698424698
        4246984246984246984250AF4C50AF4C8ACA88FFFFFFFFFFFFDDF0DD67B96350
        AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C5FB65B469842469842
        4698424698424698424698424698424698424698424698424698424698424698
        4246984246984246984250AF4C50AF4C6BBB67F1F9F1B9DFB755B25250AF4C50
        AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C55B151469842469842
        469842469842469842469842469842469842469842469842519D4DCDDBCDE0E1
        E076B07346984246984250AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
        AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C55B151499B44469842
        46984246984246984246984246984246984246984268A965DCE0DCDEDEDEDEDE
        DEA2C6A046984246984250AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
        AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C5FB65B4FA04B469842
        4698424698424698424698424698424698428FBD8DDFE0DFDEDEDEDEDEDEDEDE
        DEA2C6A046984246984250AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
        AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C76C17365AD61469842
        469842469842469842469842469842BCD3BBDEDEDEDEDEDEDEDEDEDEDEDEDEDE
        DEDCE0DCD4DED4D4DED4D6E0D5D6E0D5D6E0D5D6E0D5D6E0D5D6E0D5D6E0D5D6
        E0D5C4DAC354B15050AF4C50AF4C50AF4C50AF4C50AF4C96CF9496C995469842
        46984246984246984246984286B983E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
        E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
        E9E9E9E9E98FC98C50AF4C50AF4C50AF4C50AF4C50AF4CC4E4C3ECF5EC469942
        469842469842469842469842519E4DD6E8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE4F3E45FB65B50AF4C50AF4C50AF4C50AF4C58B254F7FBF7FFFFFF66AE63
        4698424698424698424698424698424B9B47AFD3ADFFFFFFFFFFFFFFFFFFFFFF
        FF84BA8146984246984250AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
        AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C95CF93FFFFFFFFFFFFDDEDDB
        46984246984246984246984246984246984246984289BD86F8FBF8FFFFFFFFFF
        FF84BA8146984246984250AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
        AF4C50AF4C50AF4C50AF4C50AF4C50AF4C54B150E7F4E6FFFFFFFFFFFFFFFFFF
        75B6724698424698424698424698424698424698424698426BAD68E9F2E8FFFF
        FF76B37346984246984250AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
        AF4C50AF4C50AF4C50AF4C50AF4C50AF4CA2D5A0FFFFFFFFFFFFFFFFFFFFFFFF
        F4F9F34E9F4B469842469842469842469842469842469842469842519E4D75B2
        7246984246984246984250AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
        AF4C50AF4C50AF4C50AF4C50AF4C77C174FAFDFAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCFE6CE489B444698424698424698424698424698424698424698424698
        4246984246984246984250AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
        AF4C50AF4C50AF4C50AF4C65B861EFF8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC1E0BF489B444698424698424698424698424698424698424698
        4246984246984246984250AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
        AF4C50AF4C50AF4C64B860E1F1E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFCFE6CE4E9E494698424698424698424698424698424698
        4246984246984246984250AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
        AF4C50AF4C78C175EFF8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF2F8F275B6724698424698424698424698424698
        4246984246984246984250AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C53
        B150A2D4A0FAFDFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDEDDB66AE634699424698424698
        4246984246984246984250AF4C50AF4C50AF4C50AF4C50AF4C57B25395CE92E6
        F4E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEF7ED96C99565AD
        614FA04B489A4547984253B1505EB65B75C07295CF93C3E3C1F6FBF6FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 6
      OnClick = btnTransferirClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 936
    Height = 356
    Align = alClient
    DataSource = dsPesquisaPadrao
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object Panel2: TPanel
    Left = 0
    Top = 421
    Width = 936
    Height = 65
    Align = alBottom
    Color = 13298927
    ParentBackground = False
    TabOrder = 2
  end
  object qryPesquisaPadrao: TFDQuery
    Connection = DM.Conexao
    Left = 416
    Top = 80
  end
  object dsPesquisaPadrao: TDataSource
    DataSet = qryPesquisaPadrao
    Left = 576
    Top = 80
  end
  object frxReport: TfrxReport
    Version = '6.9.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44281.757615891210000000
    ReportOptions.LastChange = 44281.757615891210000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 752
    Top = 176
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDB: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = qryPesquisaPadrao
    BCDToCurrency = False
    Left = 752
    Top = 104
  end
end
