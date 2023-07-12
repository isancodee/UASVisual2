object Form1: TForm1
  Left = 327
  Top = 144
  Width = 540
  Height = 540
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 120
    Top = 144
    object DataSiswa1: TMenuItem
      Caption = 'Data Siswa'
      OnClick = DataSiswa1Click
    end
    object DataGuru1: TMenuItem
      Caption = 'Data Orang Tua'
      OnClick = DataGuru1Click
    end
    object DataWaliKelas1: TMenuItem
      Caption = 'Data Wali Kelas'
      OnClick = DataWaliKelas1Click
    end
    object User1: TMenuItem
      Caption = 'User'
      OnClick = User1Click
    end
    object Kelas1: TMenuItem
      Caption = 'Kelas'
      OnClick = Kelas1Click
    end
    object Poin1: TMenuItem
      Caption = 'Poin'
      OnClick = Poin1Click
    end
    object Hubungan1: TMenuItem
      Caption = 'Hubungan'
      OnClick = Hubungan1Click
    end
    object Semester1: TMenuItem
      Caption = 'Semester'
      OnClick = Semester1Click
    end
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\Muhammad Al-Iksan\Documents\semester 4\Visual2\Tugas UA' +
      'S\Zeos703\libmysql.dll'
    Left = 352
    Top = 144
  end
end
