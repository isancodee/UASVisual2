object Form5: TForm5
  Left = 198
  Top = 233
  Width = 500
  Height = 546
  Caption = 'Form5'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 25
    Height = 13
    Caption = 'Level'
  end
  object Label4: TLabel
    Left = 16
    Top = 112
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label5: TLabel
    Left = 16
    Top = 144
    Width = 52
    Height = 13
    Caption = 'Created at'
  end
  object Label6: TLabel
    Left = 16
    Top = 176
    Width = 63
    Height = 13
    Caption = 'Created user'
  end
  object Label7: TLabel
    Left = 16
    Top = 208
    Width = 48
    Height = 13
    Caption = 'Update at'
  end
  object Label8: TLabel
    Left = 16
    Top = 240
    Width = 70
    Height = 13
    Caption = 'Update user id'
  end
  object edt1: TEdit
    Left = 120
    Top = 16
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 120
    Top = 48
    Width = 233
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 120
    Top = 80
    Width = 233
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 120
    Top = 112
    Width = 233
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 120
    Top = 144
    Width = 233
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 120
    Top = 176
    Width = 233
    Height = 21
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 120
    Top = 208
    Width = 233
    Height = 21
    TabOrder = 6
  end
  object edt8: TEdit
    Left = 120
    Top = 240
    Width = 233
    Height = 21
    TabOrder = 7
  end
  object btn1: TButton
    Left = 384
    Top = 16
    Width = 81
    Height = 41
    Caption = 'Baru'
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 384
    Top = 64
    Width = 81
    Height = 41
    Caption = 'Simpan'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 384
    Top = 112
    Width = 81
    Height = 41
    Caption = 'Edit'
    TabOrder = 10
    OnClick = btn3Click
  end
  object btn5: TButton
    Left = 384
    Top = 216
    Width = 81
    Height = 41
    Caption = 'Batal'
    TabOrder = 11
    OnClick = btn5Click
  end
  object btn4: TButton
    Left = 384
    Top = 160
    Width = 81
    Height = 41
    Caption = 'Hapus'
    TabOrder = 12
    OnClick = btn4Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 280
    Width = 441
    Height = 208
    DataSource = DataSource1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 56
    Top = 384
  end
  object ZQuery1: TZQuery
    Connection = Form1.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 192
    Top = 352
  end
end
