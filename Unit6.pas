unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  Grids, DBGrids, frxClass, frxDBSet, ExtCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Button1: TButton;
    Panel1: TPanel;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  id : string;

implementation

{$R *.dfm}

procedure TForm6.bersih;
begin
  edt1.Clear;
  edt2.Clear;
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
    bersih;
    btn1.Enabled:= false;
    btn2.Enabled:= True;
    btn3.Enabled:= False;
    btn4.Enabled:= False;
    btn5.Enabled:= True;
    edt1.Enabled:= True;
    edt2.Enabled:= True;
end;

procedure TForm6.posisiawal;
begin
    bersih;
    btn1.Enabled:= True;
    btn2.Enabled:= False;
    btn3.Enabled:= False;
    btn4.Enabled:= False;
    btn5.Enabled:= False;
    edt1.Enabled:= False;
    edt2.Enabled:= False;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
     if edt1.Text=''then
  begin
    ShowMessage('NAMA KELAS TIDAK BOLEH KOSONG!');
  end else
  if edt2.Text=''then
  begin
    ShowMessage('JURUSAN TIDAK BOLEH KOSONG!');
  end else
  begin
   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('insert into kelas values(null,"'+edt1.Text+'","'+edt2.Text+'")');
   ZQuery1.ExecSQL;

   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('select * from kelas');
   ZQuery1.Open;
  end;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
    if(edt1.Text='')or(edt2.Text='')then
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
         ZQuery1.SQL.Add('update kelas set nama="'+edt1.Text+'","'+edt2.Text+'"where(id)="'+id+'"');
         ZQuery1.ExecSQL;

         ZQuery1.SQL.Clear;
         ZQuery1.SQL.Add('select * from kelas');
         ZQuery1.Open;
      end;

end;

procedure TForm6.DBGrid1CellClick(Column: TColumn);
begin
  id:=ZQuery1.Fields[0].AsString;
    edt1.Text:=ZQuery1.FieldList[1].AsString;
    edt2.Text:=ZQuery1.FieldList[2].AsString;

    btn1.Enabled:= False;
    btn2.Enabled:= False;
    btn3.Enabled:= True;
    btn4.Enabled:= True;
    btn5.Enabled:= True;
    edt1.Enabled:= True;
    edt2.Enabled:= True;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
    if MessageDlg('Apakah Yakin Ingin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
    begin
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('delete from kelas where idkelas="'+id+'"');
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * from kelas');
    ZQuery1.Open;
    ShowMessage('DATA BERHASIL DIHAPUS');
    posisiawal;
    end else
  begin
    ShowMessage('Data Batal Dihapus');
    posisiawal;
  end;
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
 edt1.Clear;
 edt2.Clear;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
