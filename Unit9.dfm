object Form9: TForm9
  Left = 242
  Top = 183
  Width = 499
  Height = 534
  Caption = 'Form9'
  Color = clCream
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
    Left = 16
    Top = 72
    Width = 41
    Height = 13
    Caption = 'Siswa ID'
  end
  object Label2: TLabel
    Left = 16
    Top = 104
    Width = 34
    Height = 13
    Caption = 'Poin ID'
  end
  object Label3: TLabel
    Left = 16
    Top = 136
    Width = 34
    Height = 13
    Caption = 'Wali ID'
  end
  object Label4: TLabel
    Left = 16
    Top = 168
    Width = 36
    Height = 13
    Caption = 'Ortu ID'
  end
  object Label5: TLabel
    Left = 16
    Top = 200
    Width = 39
    Height = 13
    Caption = 'Kelas ID'
  end
  object Label6: TLabel
    Left = 16
    Top = 232
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object Label7: TLabel
    Left = 16
    Top = 264
    Width = 45
    Height = 13
    Caption = 'Semester'
  end
  object Label8: TLabel
    Left = 16
    Top = 296
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label9: TLabel
    Left = 16
    Top = 328
    Width = 62
    Height = 13
    Caption = 'Tingkat kelas'
  end
  object edt1: TEdit
    Left = 120
    Top = 72
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 120
    Top = 104
    Width = 233
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 120
    Top = 136
    Width = 233
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 120
    Top = 168
    Width = 233
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 120
    Top = 200
    Width = 233
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 120
    Top = 264
    Width = 233
    Height = 21
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 120
    Top = 296
    Width = 233
    Height = 21
    TabOrder = 6
  end
  object edt8: TEdit
    Left = 120
    Top = 328
    Width = 233
    Height = 21
    TabOrder = 7
  end
  object btn1: TButton
    Left = 368
    Top = 72
    Width = 81
    Height = 33
    Caption = 'Baru'
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 368
    Top = 112
    Width = 81
    Height = 33
    Caption = 'Simpan'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 368
    Top = 152
    Width = 81
    Height = 33
    Caption = 'Edit'
    TabOrder = 10
    OnClick = btn3Click
  end
  object btn5: TButton
    Left = 368
    Top = 240
    Width = 81
    Height = 33
    Caption = 'Batal'
    TabOrder = 11
    OnClick = btn5Click
  end
  object btn4: TButton
    Left = 368
    Top = 200
    Width = 81
    Height = 33
    Caption = 'Hapus'
    TabOrder = 12
    OnClick = btn4Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 360
    Width = 441
    Height = 145
    DataSource = DataSource1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object dtp1: TDateTimePicker
    Left = 120
    Top = 232
    Width = 233
    Height = 21
    Date = 45113.460843125000000000
    Time = 45113.460843125000000000
    TabOrder = 14
  end
  object Button1: TButton
    Left = 368
    Top = 288
    Width = 81
    Height = 33
    Caption = 'PRINT'
    TabOrder = 15
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 16
    Top = 16
    Width = 433
    Height = 41
    Caption = 'SEMESTER'
    Color = clActiveCaption
    TabOrder = 16
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 64
    Top = 416
  end
  object ZQuery1: TZQuery
    Connection = Form1.ZConnection1
    Active = True
    SQL.Strings = (
      
        'select semester.idsem, semester.idsiswa,semester.idpoin,semester' +
        '.idwali, semester.idortu, semester.idkelas, semester.tanggal, se' +
        'mester.semester, semester.status, semester.tingkat_kelas'
      'from semester'
      'LEFT JOIN siswa ON semester.idsiswa = siswa.idsiswa'
      'LEFT JOIN poin ON semester.idpoin = poin.idpoin'
      'LEFT JOIN wali_kelas ON semester.idwali = wali_kelas.idwali'
      'LEFT JOIN ortu ON semester.idortu = ortu.idortu'
      'LEFT JOIN kelas ON semester.idkelas = kelas.idkelas')
    Params = <>
    Left = 152
    Top = 424
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45118.635434594900000000
    ReportOptions.LastChange = 45118.640218969900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 256
    Top = 424
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
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Top = 7.559060000000000000
          Width = 1043.150280000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DATA SEMESTER')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 64.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID SEMESTER')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 94.488250000000000000
          Top = 64.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID SISWA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 188.976500000000000000
          Top = 64.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID POIN')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 283.464750000000000000
          Top = 64.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID WALI')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 377.953000000000000000
          Top = 64.252010000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID ORANG TUA')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 495.118430000000000000
          Top = 64.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID KELAS')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 589.606680000000000000
          Top = 64.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 684.094930000000000000
          Top = 64.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'SEMESTER')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 778.583180000000000000
          Top = 64.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 873.071430000000000000
          Top = 64.252010000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TINGKAT KELAS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 162.519790000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo12: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'idsem'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."idsem"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'idsiswa'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."idsiswa"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 188.976500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'idpoin'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."idpoin"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 283.464750000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'idwali'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."idwali"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 377.953000000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'idortu'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."idortu"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 495.118430000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'idkelas'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."idkelas"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 589.606680000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 684.094930000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'semester'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."semester"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 778.583180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."status"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 873.071430000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tingkat_kelas'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tingkat_kelas"]')
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
    Left = 352
    Top = 424
  end
end
