unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  Grids, DBGrids, frxClass, frxDBSet, ExtCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    cbb1: TComboBox;
    edt7: TEdit;
    edt8: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Button1: TButton;
    Panel1: TPanel;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure posisiawal;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  id : string;

implementation

{$R *.dfm}

procedure TForm3.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.Text:='---Pilih Kelamin---';
edt7.Clear;
edt8.Clear;
end;

procedure TForm3.btn1Click(Sender: TObject);
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
    edt6.Enabled:= True;
    cbb1.Enabled:= True;
    edt7.Enabled:= True;
    edt8.Enabled:= True;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
    if edt1.Text=''then
  begin
    ShowMessage('NIK ORANG TUA TIDAK BOLEH KOSONG!');
  end else
  if edt2.Text=''then
  begin
    ShowMessage('NAMA ORANG TUA TIDAK BOLEH KOSONG!');
  end else
  if edt5.Text=''then
  begin
    ShowMessage('NO TELPON ORANG TUA TIDAK BOLEH KOSONG!');
  end else
  begin
   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('insert into ortu values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+cbb1.Text+'","'+edt7.Text+'","'+edt8.Text+'")');
   ZQuery1.ExecSQL;

   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('select * from ortu');
   ZQuery1.Open;
  end;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
 if (edt1.Text='')or(edt2.Text='')or(edt3.Text='')or(edt4.Text='')or(edt5.Text='') or (cbb1.Text='') or (cbb1.Text='---PILIH KELAMIN---')or(edt7.Text='')or(edt8.Text='') then
     begin
       ShowMessage('Inputan Wajib Diisi!');
     end else
       if (edt1.Text= ZQuery1.Fields[1].AsString) and (edt2.Text= ZQuery1.Fields[2].AsString)
       and (edt3.Text= ZQuery1.Fields[3].AsString) and (edt4.Text= ZQuery1.Fields[4].AsString)
       and (edt5.Text= ZQuery1.Fields[5].AsString) and (edt6.Text= ZQuery1.Fields[6].AsString)
       and (cbb1.Text= ZQuery1.Fields[7].AsString) and (edt7.Text= ZQuery1.Fields[8].AsString)
       and (edt8.Text= ZQuery1.Fields[9].AsString)then
         begin
           ShowMessage('Data Tidak Ada Perubahan!');
           posisiawal;
         end else
           begin
           ShowMessage('Data Berhasil Diupdate!');
           ZQuery1.SQL.Clear;
           ZQuery1.SQL.Add('Update ortu set nik="'+edt1.Text+'",nama="'+edt2.Text+'",pendidikan="'+edt3.Text+'",pekerjaan_ayah="'+edt4.Text+'",telp="'+edt5.Text+'",alamat="'+edt6.Text+'",jk="'+cbb1.Text+'",agama="'+edt7.Text+'",is_active="'+edt8.Text+'" where idortu="'+id+'"');
           ZQuery1.ExecSQL;

           ZQuery1.SQL.Clear;
           ZQuery1.SQL.Add('select * from ortu');
           ZQuery1.Open;
           posisiawal;

          end;

end;

procedure TForm3.btn4Click(Sender: TObject);
begin
  if MessageDlg('Apakah Yakin Ingin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
    begin
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('delete from ortu where idortu="'+id+'"');
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * from ortu');
    ZQuery1.Open;
    ShowMessage('DATA BERHASIL DIHAPUS');
    posisiawal;
    end else
  begin
    ShowMessage('Data Batal Dihapus');
    posisiawal;
  end;


end;

procedure TForm3.posisiawal;
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
edt6.Enabled:= False;
cbb1.Enabled:= False;
edt7.Enabled:= False;
edt8.Enabled:= False;

end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
id:=ZQuery1.Fields[0].AsString;
    edt1.Text:=ZQuery1.FieldList[1].AsString;
    edt2.Text:=ZQuery1.FieldList[2].AsString;
    edt3.Text:=ZQuery1.FieldList[3].AsString;
    edt4.Text:=ZQuery1.FieldList[4].AsString;
    edt5.Text:=ZQuery1.FieldList[5].AsString;
    edt6.Text:=ZQuery1.FieldList[6].AsString;
    cbb1.Text:=ZQuery1.FieldList[7].AsString;
    edt7.Text:=ZQuery1.FieldList[8].AsString;
    edt8.Text:=ZQuery1.FieldList[9].AsString;

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
    edt6.Enabled:= True;
    cbb1.Enabled:= True;
    edt7.Enabled:= True;
    edt8.Enabled:= True;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
bersih;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
