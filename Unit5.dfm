object Form5: TForm5
  Left = 263
  Top = 183
  Width = 494
  Height = 590
  Caption = 'Form5'
  Color = clGray
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
    Left = 8
    Top = 64
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 8
    Top = 96
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 8
    Top = 128
    Width = 25
    Height = 13
    Caption = 'Level'
  end
  object Label4: TLabel
    Left = 8
    Top = 160
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label5: TLabel
    Left = 8
    Top = 192
    Width = 52
    Height = 13
    Caption = 'Created at'
  end
  object Label6: TLabel
    Left = 8
    Top = 224
    Width = 63
    Height = 13
    Caption = 'Created user'
  end
  object Label7: TLabel
    Left = 8
    Top = 256
    Width = 48
    Height = 13
    Caption = 'Update at'
  end
  object Label8: TLabel
    Left = 8
    Top = 288
    Width = 70
    Height = 13
    Caption = 'Update user id'
  end
  object edt1: TEdit
    Left = 112
    Top = 64
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 112
    Top = 96
    Width = 233
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 112
    Top = 128
    Width = 233
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 112
    Top = 160
    Width = 233
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 112
    Top = 192
    Width = 233
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 112
    Top = 224
    Width = 233
    Height = 21
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 112
    Top = 256
    Width = 233
    Height = 21
    TabOrder = 6
  end
  object edt8: TEdit
    Left = 112
    Top = 288
    Width = 233
    Height = 21
    TabOrder = 7
  end
  object btn1: TButton
    Left = 376
    Top = 64
    Width = 81
    Height = 41
    Caption = 'Baru'
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 376
    Top = 112
    Width = 81
    Height = 41
    Caption = 'Simpan'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 376
    Top = 160
    Width = 81
    Height = 41
    Caption = 'Edit'
    TabOrder = 10
    OnClick = btn3Click
  end
  object btn5: TButton
    Left = 376
    Top = 264
    Width = 81
    Height = 41
    Caption = 'Batal'
    TabOrder = 11
    OnClick = btn5Click
  end
  object btn4: TButton
    Left = 376
    Top = 208
    Width = 81
    Height = 41
    Caption = 'Hapus'
    TabOrder = 12
    OnClick = btn4Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 328
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
  object Panel1: TPanel
    Left = 16
    Top = 8
    Width = 329
    Height = 41
    Caption = 'FORM USER'
    Color = clActiveCaption
    TabOrder = 14
  end
  object Button1: TButton
    Left = 376
    Top = 8
    Width = 81
    Height = 41
    Caption = 'PRINT'
    TabOrder = 15
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 48
    Top = 432
  end
  object ZQuery1: TZQuery
    Connection = Form1.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 184
    Top = 400
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45119.341168981500000000
    ReportOptions.LastChange = 45119.345333981480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 264
    Top = 400
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Top = 15.118120000000000000
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'DATA USER')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID USER')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 75.590600000000000000
          Top = 86.929190000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'USERNAME')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 204.094620000000000000
          Top = 86.929190000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PASSWORD')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 328.819110000000000000
          Top = 86.929190000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'LEVEL')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 445.984540000000000000
          Top = 86.929190000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 574.488560000000000000
          Top = 86.929190000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CREATED AT')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 676.535870000000000000
          Top = 86.929190000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CREATED USER')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 801.260360000000000000
          Top = 86.929190000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'UPDATE AT')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 925.984850000000000000
          Top = 86.929190000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'UPDATE USER')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo11: TfrxMemoView
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'iduser'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."iduser"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 71.811070000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'username'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."username"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 200.315090000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'password'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."password"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 325.039580000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'level'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."level"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 442.205010000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."status"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 570.709030000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'created_at'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."created_at"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 672.756340000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'created_user'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."created_user"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 797.480830000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'update_at'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."update_at"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 922.205320000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'upadate_userid'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."upadate_userid"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 320
    Top = 400
  end
end
