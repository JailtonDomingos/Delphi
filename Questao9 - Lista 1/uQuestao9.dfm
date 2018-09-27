object frQuestao9: TfrQuestao9
  Left = 0
  Top = 0
  Caption = 'Quest'#227'o 9'
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
    Left = 147
    Top = 89
    Width = 211
    Height = 21
    EditLabel.Width = 126
    EditLabel.Height = 13
    EditLabel.Caption = 'Digite a palavra desejada:'
    LabelPosition = lpLeft
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object btInverter: TButton
    Left = 211
    Top = 116
    Width = 75
    Height = 25
    Caption = 'Inverter'
    TabOrder = 1
    OnClick = btInverterClick
  end
end
