object Form1: TForm1
  Left = 282
  Top = 160
  Width = 503
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
    Left = 48
    Top = 40
    object DataSiswa1: TMenuItem
      Caption = 'Data Siswa'
      OnClick = DataSiswa1Click
    end
    object DataGuru1: TMenuItem
      Caption = 'Data Guru'
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
    Left = 128
    Top = 40
  end
end
