unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Grids, DBGrids, StdCtrls, frxClass, frxDBSet, ExtCtrls;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn5: TButton;
    btn4: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ZQuery1: TZQuery;
    dtp1: TDateTimePicker;
    Label9: TLabel;
    Button1: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Panel1: TPanel;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure btn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  id:string;
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  edt7.Clear;
  edt8.Clear;
end;

procedure TForm9.btn1Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= false;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  dtp1.Enabled:= True;
  edt5.Enabled:= True;
  edt7.Enabled:= True;
  edt8.Enabled:= True;
end;

procedure TForm9.posisiawal;
begin
  bersih;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;
  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
  edt4.Enabled:= False;
  dtp1.Enabled:= False;
  edt5.Enabled:= False;
  edt7.Enabled:= False;
  edt8.Enabled:= False;
end;

procedure TForm9.btn2Click(Sender: TObject);
begin
with ZQuery1 do
begin
ZQuery1.Open;
ZQuery1.Append;
ZQuery1.FieldByName('idsiswa').AsString:=edt1.Text;
ZQuery1.FieldByName('idpoin').AsString:=edt2.Text;
ZQuery1.FieldByName('idwali').AsString:=edt3.Text;
ZQuery1.FieldByName('idortu').AsString:=edt4.Text;
ZQuery1.FieldByName('idkelas').AsString:=edt5.Text;
ZQuery1.FieldByName('tanggal').AsDateTime:=dtp1.Date;
ZQuery1.FieldByName('semester').AsString:=edt6.Text;
ZQuery1.FieldByName('status').AsString:=edt7.Text;
ZQuery1.FieldByName('tingkat_kelas').AsString:=edt8.Text;
ZQuery1.post;
ShowMessage('Data Tersimpan');
btn1Click(sender);
end;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TForm9.DBGrid1CellClick(Column: TColumn);
begin
id:= ZQuery1.Fields[0].AsString;
 edt1.Text:= ZQuery1.Fields[1].AsString; 
 edt2.Text:= ZQuery1.Fields[2].AsString;
 edt3.Text:= ZQuery1.Fields[3].AsString;
 edt4.Text:= ZQuery1.Fields[4].AsString;
 edt5.Text:= ZQuery1.Fields[5].AsString;
 dtp1.Date:= ZQuery1.Fields[6].AsDateTime;
 edt6.Text:= ZQuery1.Fields[7].AsString;
 edt7.Text:= ZQuery1.Fields[8].AsString;

    btn1.Enabled:= False;
    btn2.Enabled:= False;
    btn3.Enabled:= True;
    btn4.Enabled:= True;
    btn5.Enabled:= True;
    edt1.Enabled:= True;
    edt2.Enabled:= True;
    edt3.Enabled:= True;
    edt4.Enabled:= True;
    edt5.Enabled:= True;
end;

procedure TForm9.btn3Click(Sender: TObject);
begin
  if (edt1.Text='')or(edt2.Text='')or(edt3.Text='')or(edt4.Text='')or(edt5.Text='')then
      begin
        ShowMessage('Inputan Wajib Diisi!');
      end else
      if  (edt1.Text= ZQuery1.Fields[1].AsString) and (edt2.Text= ZQuery1.Fields[2].AsString)
       and (edt3.Text= ZQuery1.Fields[3].AsString) and (edt4.Text= ZQuery1.Fields[4].AsString)
       and (edt5.Text= ZQuery1.Fields[5].AsString) and (dtp1.Date= ZQuery1.Fields[6].AsDateTime)
       and (edt6.Text= ZQuery1.Fields[7].AsString) and(edt7.Text= ZQuery1.Fields[8].AsString) then
        begin
          ShowMessage('Data Tidak Ada Perubahan!');
          posisiawal;
        end else
          begin
          ShowMessage('Data Berhasil Diupdate!');
          ZQuery1.SQL.Clear;
          ZQuery1.SQL.Add('Update semester set idsiswa="'+edt1.Text+'",idpoin="'+edt2.Text+'",idwali="'+edt3.Text+'",idortu="'+edt4.Text+'",idkelas="'+edt5.Text+'",tanggal="'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'",semester="'+edt6.Text+'",status="'+edt7.Text+'",tingkat_kelas="'+edt8.Text+'" where idsem="'+id+'"');
          ZQuery1.ExecSQL;

          ZQuery1.SQL.Clear;
          ZQuery1.SQL.Add('SELECT semester.idsem, semester.idsiswa,semester.idpoin,semester.idwali, semester.idortu, semester.idkelas, semester.tanggal, semester.semester, semester.status, semester.tingkat_kelas ' +
                          'FROM semester ' +
                          'LEFT JOIN siswa ON semester.idsiswa = siswa.idsiswa ' +
                          'LEFT JOIN siswa ON semester.idpoin = poin.idpoin ' +
                          'LEFT JOIN wali_kelas ON semester.idwali = wali_kelas.idwali ' +
                          'LEFT JOIN ortu ON semester.idortu = ortu.idortu ' +
                          'LEFT JOIN kelas ON semester.idkelas = kelas.idkelas');
          ZQuery1.Open;
          posisiawal;
          end;
end;

procedure TForm9.btn4Click(Sender: TObject);
begin
    if MessageDlg('Apakah Yakin Ingin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
      begin
      ZQuery1.SQL.Clear;
      ZQuery1.SQL.Add('delete from semester where idsem="'+id+'"');
      ZQuery1.ExecSQL;

      ZQuery1.SQL.Clear;
      ZQuery1.SQL.Add('SELECT semester.idsem, semester.idsiswa,semester.idpoin,semester.idwali, semester.idortu, semester.idkelas, semester.tanggal, semester.semester, semester.status, semester.tingkat_kelas ' +
                       'FROM semester ' +
                            'LEFT JOIN siswa ON semester.idsiswa = siswa.idsiswa ' +
                            'LEFT JOIN siswa ON semester.idpoin = poin.idpoin ' +
                            'LEFT JOIN wali_kelas ON semester.idwali = wali_kelas.idwali ' +
                            'LEFT JOIN ortu ON semester.idortu = ortu.idortu ' +
                            'LEFT JOIN kelas ON semester.idkelas = kelas.idkelas');
      ZQuery1.Open;
      ShowMessage('DATA BERHASIL DIHAPUS');
      posisiawal;
      end else
      begin
        ShowMessage('Data Batal Dihapus');
        posisiawal;
      end;
end;

procedure TForm9.btn5Click(Sender: TObject);
begin
  bersih;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
  posisiawal;
end;

end.

