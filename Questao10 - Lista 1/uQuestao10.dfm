object frQuestao10: TfrQuestao10
  Left = 0
  Top = 0
  Caption = 'Quest'#227'o 10'
  ClientHeight = 280
  ClientWidth = 302
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edNotaJuiz: TLabeledEdit
    Left = 90
    Top = 111
    Width = 121
    Height = 21
    EditLabel.Width = 36
    EditLabel.Height = 13
    EditLabel.Caption = 'Nota 1:'
    LabelPosition = lpLeft
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object btCalcularNota: TButton
    Left = 57
    Top = 138
    Width = 91
    Height = 30
    Caption = 'Calcular Nota'
    TabOrder = 2
    OnClick = btCalcularNotaClick
  end
  object btProximaNota: TButton
    Left = 154
    Top = 138
    Width = 91
    Height = 30
    Caption = 'Proxima Nota'
    TabOrder = 1
    OnClick = btProximaNotaClick
  end
end
