object Form1: TForm1
  Left = 424
  Top = 122
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1040#1085#1072#1083#1080#1079#1072#1090#1086#1088
  ClientHeight = 335
  ClientWidth = 977
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 29
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 241
    Height = 201
    Caption = #1041#1083#1086#1082' '#1087#1077#1088#1077#1084#1077#1085#1085#1099#1093
    TabOrder = 0
    object Memo1: TMemo
      Left = 2
      Top = 31
      Width = 237
      Height = 168
      Align = alClient
      Lines.Strings = (
        'Memo1'
        'a'
        'b1'
        'c_2')
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 216
    Width = 961
    Height = 105
    Caption = #1042#1099#1088#1072#1078#1077#1085#1080#1077
    TabOrder = 1
    object Edit1: TEdit
      Left = 8
      Top = 40
      Width = 945
      Height = 37
      TabOrder = 0
      Text = 'if a then $$$'
    end
  end
  object GroupBox3: TGroupBox
    Left = 256
    Top = 8
    Width = 329
    Height = 201
    Caption = #1041#1083#1086#1082' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103
    TabOrder = 2
    object Button1: TButton
      Left = 80
      Top = 48
      Width = 153
      Height = 49
      Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 80
      Top = 120
      Width = 153
      Height = 49
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 600
    Top = 8
    Width = 369
    Height = 201
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
    TabOrder = 3
    object Label1: TLabel
      Left = 120
      Top = 80
      Width = 123
      Height = 29
      Caption = #1054#1078#1080#1076#1072#1085#1080#1077
    end
  end
end
