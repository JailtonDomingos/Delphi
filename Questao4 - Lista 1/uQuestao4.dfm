object frQuestao4: TfrQuestao4
  Left = 0
  Top = 0
  Caption = 'Quest'#227'o 4'
  ClientHeight = 242
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edLabeledEdit1: TLabeledEdit
    Left = 175
    Top = 41
    Width = 121
    Height = 21
    EditLabel.Width = 87
    EditLabel.Height = 13
    EditLabel.Caption = 'Digite um numero:'
    LabelPosition = lpLeft
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object edLabeledEdit2: TLabeledEdit
    Left = 175
    Top = 99
    Width = 121
    Height = 21
    EditLabel.Width = 137
    EditLabel.Height = 13
    EditLabel.Caption = 'Digite os n'#250'meros desejados'
    Enabled = False
    LabelPosition = lpLeft
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object btButton1: TButton
    Left = 198
    Top = 68
    Width = 75
    Height = 25
    Caption = 'Confirma'
    TabOrder = 1
    OnClick = btButton1Click
  end
  object btButton2: TButton
    Left = 198
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Gravar'
    Enabled = False
    TabOrder = 3
    OnClick = btButton2Click
  end
end
