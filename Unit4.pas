unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  Grids, DBGrids;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    cbb1: TComboBox;
    edt7: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  id : string;

implementation

{$R *.dfm}

procedure TForm4.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  cbb1.Text:='---Pilih Kelamin---';
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  edt7.Clear;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
   bersih;

    btn1.Enabled:= false;
    btn2.Enabled:= True;
    btn3.Enabled:= False;
    btn4.Enabled:= False;
    btn5.Enabled:= True;
    edt1.Enabled:= True;
    edt2.Enabled:= True;
    cbb1.Enabled:= True;
    edt3.Enabled:= True;
    edt4.Enabled:= True;
    edt5.Enabled:= True;
    edt6.Enabled:= True;
    edt7.Enabled:= True;
end;

procedure TForm4.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
edt1.Enabled:= False;
edt2.Enabled:= False;
cbb1.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
edt6.Enabled:= False;
edt7.Enabled:= False;

end;

procedure TForm4.FormShow(Sender: TObject);
begin
 posisiawal;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
  if edt1.Text=''then
    begin
      ShowMessage('NIP WALI KELAS TIDAK BOLEH KOSONG!');
    end else
  if edt2.Text=''then
    begin
      ShowMessage('NAMA WALI KELAS TIDAK BOLEH KOSONG!');
    end else
  if edt3.Text=''then
    begin
      ShowMessage('PENDIDIKAN WALI KELAS TIDAK BOLEH KOSONG!');
    end else
      begin
       ZQuery1.SQL.Clear;
       ZQuery1.SQL.Add('insert into wali_kelas values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'")');
       ZQuery1.ExecSQL;

       ZQuery1.SQL.Clear;
       ZQuery1.SQL.Add('select * from wali_kelas');
       ZQuery1.Open;
      end;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
   if(edt1.Text='')or(edt2.Text='')or(cbb1.Text='')or(edt3.Text='')or(edt4.Text='')or(edt5.Text='')or(edt6.Text='')or(edt7.Text='')then
  begin
    ShowMessage('INPUTAN WAJIB DI ISI');
  end else
    if edt1.Text = ZQuery1.Fields[1].AsString then
    begin
      ShowMessage('DATA TIDAK ADA PERUBAHAN');
      posisiawal;
    end else
      begin
        ShowMessage('DATA BERHASIL DI UPDATE');
         ZQuery1.SQL.Clear;
         ZQuery1.SQL.Add('update wali_kelas set nip="'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt5.Text+'","'+edt7.Text+'"where(id)="'+id+'"');
         ZQuery1.ExecSQL;

         ZQuery1.SQL.Clear;
         ZQuery1.SQL.Add('select * wali_kelas');
         ZQuery1.Open;
      end;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
    if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI ?',mtWarning,[mbYes,mbNo],0)= mryes then
  begin
     ZQuery1.SQL.Clear;
     ZQuery1.SQL.Add('delete from wali_kelas where(id)="'+id+'"');
     ZQuery1.ExecSQL;

     ZQuery1.SQL.Clear;
     ZQuery1.SQL.Add('select * from wali_kelas');
     ZQuery1.Open;
  end;
   ShowMessage('Data batal dihapus');
   posisiawal;
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
   bersih;
end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
  id:=ZQuery1.Fields[0].AsString;
    edt1.Text:=ZQuery1.FieldList[1].AsString;
    edt2.Text:=ZQuery1.FieldList[2].AsString;
    cbb1.Text:=ZQuery1.FieldList[3].AsString;
    edt3.Text:=ZQuery1.FieldList[4].AsString;
    edt4.Text:=ZQuery1.FieldList[5].AsString;
    edt5.Text:=ZQuery1.FieldList[6].AsString;
    edt6.Text:=ZQuery1.FieldList[7].AsString;
    edt7.Text:=ZQuery1.FieldList[8].AsString;


    btn1.Enabled:= False;
    btn2.Enabled:= False;
    btn3.Enabled:= True;
    btn4.Enabled:= True;
    btn5.Enabled:= True;
    edt1.Enabled:= True;
    edt2.Enabled:= True;
    cbb1.Enabled:= True;
    edt3.Enabled:= True;
    edt4.Enabled:= True;
    edt5.Enabled:= True;
    edt6.Enabled:= True;
    edt7.Enabled:= True;
end;

end.
