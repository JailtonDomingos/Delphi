object frQuestao6: TfrQuestao6
  Left = 0
  Top = 0
  Caption = 'Quest'#227'o 6'
  ClientHeight = 125
  ClientWidth = 260
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
    Left = 104
    Top = 24
    Width = 121
    Height = 21
    EditLabel.Width = 50
    EditLabel.Height = 13
    EditLabel.Caption = 'Sal'#225'rio/hr:'
    LabelPosition = lpLeft
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object edLabeledEdit2: TLabeledEdit
    Left = 104
    Top = 51
    Width = 121
    Height = 21
    EditLabel.Width = 92
    EditLabel.Height = 13
    EditLabel.Caption = 'Horas trabalhadas:'
    LabelPosition = lpLeft
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object btCalcularSalario: TButton
    Left = 104
    Top = 78
    Width = 121
    Height = 25
    Caption = 'Calcular Sal'#225'rio'
    TabOrder = 2
    OnClick = btCalcularSalarioClick
  end
end
