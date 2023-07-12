unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  DBGrids, StdCtrls, ExtCtrls, frxClass, frxDBSet;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    DBGrid1: TDBGrid;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Button1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure btn2Click(Sender: TObject);
    procedure posisiawal;
    procedure btn3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  id : string;

implementation

{$R *.dfm}

procedure TForm8.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.clear;
edt4.Clear;
edt5.Clear;
end;

procedure TForm8.btn1Click(Sender: TObject);
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
  edt5.Enabled:= True;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin                                                                                     
    with ZQuery1 do
begin
ZQuery1.Open;
ZQuery1.Append;
ZQuery1.FieldByName('idsiswa').AsString:=edt1.Text;
ZQuery1.FieldByName('idortu').AsString:=edt2.Text;
ZQuery1.FieldByName('status_hub_anak').AsString:=edt3.Text;
ZQuery1.FieldByName('keterangan').AsString:=edt4.Text;
ZQuery1.FieldByName('status_ortu').AsString:=edt5.Text;
ZQuery1.post;
ShowMessage('Data Tersimpan');
btn1Click(sender);
end;
end;

procedure TForm8.posisiawal;
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
  edt5.Enabled:= False;
end;

procedure TForm8.btn3Click(Sender: TObject);
begin
    if (edt1.Text='')or(edt2.Text='')or(edt3.Text='')or(edt4.Text='')or(edt5.Text='')then
      begin
        ShowMessage('Inputan Wajib Diisi!');
      end else
      if  (edt1.Text= ZQuery1.Fields[1].AsString) and (edt2.Text= ZQuery1.Fields[2].AsString)
      and (edt3.Text= ZQuery1.Fields[5].AsString)and (edt4.Text= ZQuery1.Fields[6].AsString)
      and (edt5.Text= ZQuery1.Fields[7].AsString) then
        begin
          ShowMessage('Data Tidak Ada Perubahan!');
          posisiawal;
        end else
          begin
          ShowMessage('Data Berhasil Diupdate!');
          ZQuery1.SQL.Clear;
          ZQuery1.SQL.Add('Update hubungan set idsiswa="'+edt1.Text+'",idortu="'+edt2.Text+'",status_hub_anak="'+edt3.Text+'",keterangan="'+edt4.Text+'",status_ortu="'+edt5.Text+'" where idhub="'+id+'"');
          ZQuery1.ExecSQL;

          ZQuery1.SQL.Clear;
          ZQuery1.SQL.Add('SELECT hubungan.idhub, hubungan.idsiswa,hubungan.idortu, siswa.nama_siswa, ortu.nama, hubungan.status_hub_anak, hubungan.keterangan, hubungan.status_ortu ' +
                          'FROM hubungan ' +
                          'LEFT JOIN siswa ON hubungan.idsiswa = siswa.idsiswa ' +
                          'LEFT JOIN ortu ON hubungan.idortu = ortu.idortu');
          ZQuery1.Open;
          posisiawal;
          end;
      end;

procedure TForm8.DBGrid1CellClick(Column: TColumn);
begin
  id:= ZQuery1.Fields[0].AsString;
 edt1.Text:= ZQuery1.Fields[1].AsString; 
 edt2.Text:= ZQuery1.Fields[2].AsString; 
 edt3.Text:= ZQuery1.Fields[5].AsString; 
 edt4.Text:= ZQuery1.Fields[6].AsString; 
 edt5.Text:= ZQuery1.Fields[7].AsString;

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

procedure TForm8.FormShow(Sender: TObject);
begin
 posisiawal;
end;

procedure TForm8.btn5Click(Sender: TObject);
begin
 bersih;
end;

procedure TForm8.Button1Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
    if MessageDlg('Apakah Yakin Ingin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
      begin
      ZQuery1.SQL.Clear;
      ZQuery1.SQL.Add('delete from hubungan where idhub="'+id+'"');
      ZQuery1.ExecSQL;

      ZQuery1.SQL.Clear;
      ZQuery1.SQL.Add('SELECT hubungan.idhub, hubungan.idsiswa,hubungan.idortu, siswa.nama_siswa, ortu.nama, hubungan.status_hub_anak, hubungan.keterangan, hubungan.status_ortu ' +
                          'FROM hubungan ' +
                          'LEFT JOIN siswa ON hubungan.idsiswa = siswa.idsiswa ' +
                          'LEFT JOIN ortu ON hubungan.idortu = ortu.idortu');
      ZQuery1.Open;
      ShowMessage('DATA BERHASIL DIHAPUS');
      posisiawal;
      end else
      begin
        ShowMessage('Data Batal Dihapus');
        posisiawal;
      end;
end;

end.
