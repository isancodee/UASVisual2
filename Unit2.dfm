object Form2: TForm2
  Left = 82
  Top = 192
  Width = 775
  Height = 625
  Caption = 'Form2'
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
    Left = 80
    Top = 32
    Width = 19
    Height = 14
    Caption = 'NIS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 80
    Top = 64
    Width = 27
    Height = 14
    Caption = 'NISN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 80
    Top = 96
    Width = 30
    Height = 14
    Caption = 'Nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 80
    Top = 128
    Width = 19
    Height = 14
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 80
    Top = 160
    Width = 72
    Height = 14
    Caption = 'Tempat Lahir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 80
    Top = 192
    Width = 72
    Height = 14
    Caption = 'Tanggal Lahir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 80
    Top = 224
    Width = 71
    Height = 14
    Caption = 'Jenis Kelamin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 80
    Top = 256
    Width = 37
    Height = 14
    Caption = 'Alamat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 80
    Top = 288
    Width = 47
    Height = 14
    Caption = 'Telelpon'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 80
    Top = 320
    Width = 34
    Height = 14
    Caption = 'No HP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 80
    Top = 352
    Width = 35
    Height = 14
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 408
    Width = 697
    Height = 129
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object edt1: TEdit
    Left = 240
    Top = 24
    Width = 313
    Height = 21
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 240
    Top = 57
    Width = 313
    Height = 21
    TabOrder = 2
  end
  object edt3: TEdit
    Left = 240
    Top = 88
    Width = 313
    Height = 21
    TabOrder = 3
  end
  object edt4: TEdit
    Left = 240
    Top = 120
    Width = 313
    Height = 21
    TabOrder = 4
  end
  object edt5: TEdit
    Left = 240
    Top = 152
    Width = 313
    Height = 21
    TabOrder = 5
  end
  object cbb1: TComboBox
    Left = 240
    Top = 216
    Width = 313
    Height = 21
    ItemHeight = 13
    TabOrder = 6
  end
  object edt7: TEdit
    Left = 240
    Top = 248
    Width = 313
    Height = 21
    TabOrder = 7
  end
  object edt8: TEdit
    Left = 240
    Top = 280
    Width = 313
    Height = 21
    TabOrder = 8
  end
  object edt9: TEdit
    Left = 240
    Top = 312
    Width = 313
    Height = 21
    TabOrder = 9
  end
  object edt10: TEdit
    Left = 240
    Top = 344
    Width = 313
    Height = 21
    TabOrder = 10
  end
  object btn1: TButton
    Left = 624
    Top = 56
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 11
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 624
    Top = 104
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 12
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 624
    Top = 152
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 13
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 624
    Top = 200
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 14
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 624
    Top = 248
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 15
    OnClick = btn5Click
  end
  object dtp1: TDateTimePicker
    Left = 240
    Top = 184
    Width = 313
    Height = 21
    Date = 45107.851274328710000000
    Time = 45107.851274328710000000
    TabOrder = 16
  end
  object ZQuery1: TZQuery
    Connection = Form1.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 160
    Top = 464
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 72
    Top = 456
  end
end
