object Form2: TForm2
  Left = 299
  Top = 197
  Width = 426
  Height = 207
  BorderIcons = []
  Caption = #35831#36755#20837#23494#30721
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = Form2Close
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object slbl1: TsLabel
    Left = 100
    Top = 16
    Width = 195
    Height = 20
    AutoSize = False
    Caption = #35831#36755#20837#21442#25968#35299#38145#23494#30721
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
  end
  object edt1: TsEdit
    Left = 96
    Top = 56
    Width = 193
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PasswordChar = '#'
    TabOrder = 0
    OnClick = btn1Click
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
  end
  object btnsbtn1: TBitBtn
    Left = 88
    Top = 104
    Width = 89
    Height = 25
    Caption = #30830'  '#23450
    TabOrder = 1
    WordWrap = True
    OnClick = btnsbtn1Click
    Kind = bkYes
  end
  object btnsbtn2: TBitBtn
    Left = 208
    Top = 104
    Width = 89
    Height = 25
    Caption = #21462' '#28040
    TabOrder = 2
    WordWrap = True
    OnClick = btnsbtn2Click
    Kind = bkCancel
  end
end
