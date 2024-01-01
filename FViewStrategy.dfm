object frmStrategy: TfrmStrategy
  Left = 0
  Top = 0
  Caption = 'Strategy'
  ClientHeight = 471
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 231
    Width = 30
    Height = 15
    Caption = 'Pre'#231'o'
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 24
    Width = 209
    Height = 121
    Caption = ' Itens '
    TabOrder = 0
  end
  object rdbArroz: TRadioButton
    Left = 24
    Top = 56
    Width = 169
    Height = 17
    Caption = 'Arroz - Farinacios  - 20%'
    TabOrder = 1
  end
  object rdbFrios: TRadioButton
    Left = 24
    Top = 79
    Width = 137
    Height = 17
    Caption = 'Queijo - Frios - 50%'
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 8
    Top = 247
    Width = 209
    Height = 23
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 276
    Width = 209
    Height = 25
    Caption = 'Calcular Valor'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object rdbFeijao: TRadioButton
    Left = 24
    Top = 102
    Width = 137
    Height = 17
    Caption = 'Feijao'
    TabOrder = 5
  end
end
