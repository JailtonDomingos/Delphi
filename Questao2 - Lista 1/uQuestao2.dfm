object frQuestao2: TfrQuestao2
  Left = 0
  Top = 0
  Caption = 'Quest'#227'o 2'
  ClientHeight = 159
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbLabel2: TLabel
    Left = 35
    Top = 59
    Width = 81
    Height = 13
    Caption = 'Segundo n'#250'mero'
  end
  object lbLabe1: TLabel
    Left = 35
    Top = 32
    Width = 78
    Height = 13
    Caption = 'Primeiro Numero'
  end
  object edEdit1: TEdit
    Left = 119
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object edEdit2: TEdit
    Left = 119
    Top = 54
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object edLabeledEdit1: TLabeledEdit
    Left = 119
    Top = 81
    Width = 121
    Height = 21
    EditLabel.Width = 78
    EditLabel.Height = 13
    EditLabel.Caption = 'Terceiro n'#250'mero'
    LabelPosition = lpLeft
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object btButton1: TButton
    Left = 119
    Top = 116
    Width = 75
    Height = 25
    Caption = 'Ordenar'
    TabOrder = 3
    OnClick = btButton1Click
  end
end
