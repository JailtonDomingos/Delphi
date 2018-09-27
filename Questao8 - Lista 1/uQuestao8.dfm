object frQuestao8: TfrQuestao8
  Left = 0
  Top = 0
  Caption = 'Quest'#227'o 8'
  ClientHeight = 234
  ClientWidth = 546
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
    Left = 189
    Top = 91
    Width = 169
    Height = 21
    EditLabel.Width = 167
    EditLabel.Height = 13
    EditLabel.Caption = 'Digite um numero entre 100 e 999:'
    LabelPosition = lpLeft
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object btButtonSplit: TButton
    Left = 189
    Top = 118
    Width = 169
    Height = 25
    Caption = 'Split'
    TabOrder = 1
    OnClick = btButtonSplitClick
  end
end
