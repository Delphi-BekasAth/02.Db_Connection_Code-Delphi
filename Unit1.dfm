object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 628
  ClientWidth = 947
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 45
    Top = 208
    Width = 124
    Height = 18
    Caption = 'Add new Customer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 251
    Width = 31
    Height = 13
    Caption = 'Name:'
  end
  object Label3: TLabel
    Left = 45
    Top = 285
    Width = 34
    Height = 13
    Caption = 'Phone:'
  end
  object Label4: TLabel
    Left = 626
    Top = 334
    Width = 41
    Height = 13
    Caption = 'Balance:'
  end
  object Label5: TLabel
    Left = 48
    Top = 416
    Width = 67
    Height = 18
    Caption = 'Find By Id'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 45
    Top = 458
    Width = 14
    Height = 13
    Caption = 'Id:'
  end
  object Label7: TLabel
    Left = 481
    Top = 208
    Width = 64
    Height = 18
    Caption = 'Edit By Id'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 461
    Top = 275
    Width = 14
    Height = 13
    Caption = 'Id:'
  end
  object Label9: TLabel
    Left = 636
    Top = 251
    Width = 31
    Height = 13
    Caption = 'Name:'
  end
  object Label10: TLabel
    Left = 633
    Top = 291
    Width = 34
    Height = 13
    Caption = 'Phone:'
  end
  object Label11: TLabel
    Left = 38
    Top = 315
    Width = 41
    Height = 13
    Caption = 'Balance:'
  end
  object Label12: TLabel
    Left = 626
    Top = 460
    Width = 82
    Height = 18
    Caption = 'Delete By Id'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 590
    Top = 518
    Width = 14
    Height = 13
    Caption = 'Id:'
  end
  object CusGrid: TDBGrid
    Left = 233
    Top = 32
    Width = 449
    Height = 137
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 90
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 90
    Top = 282
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 90
    Top = 315
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button2: TButton
    Left = 233
    Top = 288
    Width = 104
    Height = 48
    Caption = 'Insert'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Edit4: TEdit
    Left = 90
    Top = 455
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Button3: TButton
    Left = 233
    Top = 453
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 6
    OnClick = Button3Click
  end
  object ListBox1: TListBox
    Left = 48
    Top = 507
    Width = 209
    Height = 78
    ItemHeight = 13
    TabOrder = 7
  end
  object Edit5: TEdit
    Left = 481
    Top = 272
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Button4: TButton
    Left = 504
    Top = 310
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Edit6: TEdit
    Left = 688
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Edit7: TEdit
    Left = 688
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object Edit8: TEdit
    Left = 688
    Top = 331
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object Button5: TButton
    Left = 832
    Top = 295
    Width = 99
    Height = 56
    Caption = 'Edit'
    TabOrder = 13
    OnClick = Button5Click
  end
  object Button1: TButton
    Left = 72
    Top = 64
    Width = 139
    Height = 57
    Caption = 'Button1'
    TabOrder = 14
    Visible = False
    OnClick = Button1Click
  end
  object Edit10: TEdit
    Left = 610
    Top = 515
    Width = 121
    Height = 21
    TabOrder = 15
  end
  object Button6: TButton
    Left = 626
    Top = 560
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 16
    OnClick = Button6Click
  end
end
