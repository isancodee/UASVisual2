object Form4: TForm4
  Left = 311
  Top = 206
  Width = 535
  Height = 558
  Caption = 'Form4'
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
    Left = 24
    Top = 24
    Width = 19
    Height = 14
    Caption = 'NIP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 56
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
  object Label3: TLabel
    Left = 24
    Top = 88
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
  object Label4: TLabel
    Left = 24
    Top = 120
    Width = 58
    Height = 14
    Caption = 'Pendidikan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 152
    Width = 45
    Height = 14
    Caption = 'Telepon'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 184
    Width = 78
    Height = 14
    Caption = 'Mata Pelajaran'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 24
    Top = 216
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
  object Label8: TLabel
    Left = 24
    Top = 248
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
    Left = 16
    Top = 356
    Width = 489
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
    Left = 184
    Top = 16
    Width = 313
    Height = 21
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 184
    Top = 49
    Width = 313
    Height = 21
    TabOrder = 2
  end
  object edt3: TEdit
    Left = 184
    Top = 112
    Width = 313
    Height = 21
    TabOrder = 3
  end
  object edt4: TEdit
    Left = 184
    Top = 144
    Width = 313
    Height = 21
    TabOrder = 4
  end
  object edt5: TEdit
    Left = 184
    Top = 176
    Width = 313
    Height = 21
    TabOrder = 5
  end
  object edt6: TEdit
    Left = 184
    Top = 208
    Width = 313
    Height = 21
    TabOrder = 6
  end
  object cbb1: TComboBox
    Left = 184
    Top = 80
    Width = 313
    Height = 21
    ItemHeight = 13
    TabOrder = 7
  end
  object edt7: TEdit
    Left = 184
    Top = 240
    Width = 313
    Height = 21
    TabOrder = 8
  end
  object btn1: TButton
    Left = 24
    Top = 288
    Width = 81
    Height = 41
    Caption = 'BARU'
    TabOrder = 9
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 120
    Top = 288
    Width = 81
    Height = 41
    Caption = 'SIMPAN'
    TabOrder = 10
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 216
    Top = 288
    Width = 81
    Height = 41
    Caption = 'EDIT'
    TabOrder = 11
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 312
    Top = 288
    Width = 81
    Height = 41
    Caption = 'HAPUS'
    TabOrder = 12
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 416
    Top = 288
    Width = 81
    Height = 41
    Caption = 'BATAL'
    TabOrder = 13
    OnClick = btn5Click
  end
  object ZQuery1: TZQuery
    Connection = Form1.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from wali_kelas')
    Params = <>
    Left = 120
    Top = 416
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 48
    Top = 416
  end
end
