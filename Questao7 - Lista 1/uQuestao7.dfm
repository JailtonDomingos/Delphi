object frQuestao7: TfrQuestao7
  Left = 0
  Top = 0
  Caption = 'Quest'#227'o 7'
  ClientHeight = 240
  ClientWidth = 524
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
    Left = 202
    Top = 110
    Width = 121
    Height = 21
    EditLabel.Width = 42
    EditLabel.Height = 13
    EditLabel.Caption = 'Salario/h'
    LabelPosition = lpLeft
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object edLabeledEdit2: TLabeledEdit
    Left = 202
    Top = 77
    Width = 121
    Height = 21
    EditLabel.Width = 90
    EditLabel.Height = 13
    EditLabel.Caption = 'Horas Trabalhadas'
    LabelPosition = lpLeft
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object btCalcular: TButton
    Left = 225
    Top = 137
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btCalcularClick
  end
end
