object frQuestao1: TfrQuestao1
  Left = 0
  Top = 0
  Caption = 'Quest'#227'o 1'
  ClientHeight = 205
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbLabel1: TLabel
    Left = 122
    Top = 49
    Width = 46
    Height = 13
    Caption = 'Numero 1'
  end
  object lbLabel2: TLabel
    Left = 122
    Top = 77
    Width = 46
    Height = 13
    Caption = 'Numero 2'
  end
  object lbLabel3: TLabel
    Left = 122
    Top = 104
    Width = 46
    Height = 13
    Caption = 'Numero 3'
  end
  object btButtonVerificar: TButton
    Left = 202
    Top = 134
    Width = 65
    Height = 25
    Caption = 'Verificar'
    TabOrder = 3
    OnClick = btButtonVerificarClick
  end
  object edEdit1: TEdit
    Left = 174
    Top = 46
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object edEdit2: TEdit
    Left = 174
    Top = 73
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object edEdit3: TEdit
    Left = 174
    Top = 100
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
end