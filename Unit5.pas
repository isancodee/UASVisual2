unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
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
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ZQuery1: TZQuery;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  id : string;

implementation

uses
  Unit1;

{$R *.dfm}

procedure TForm5.bersih;
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

procedure TForm5.btn1Click(Sender: TObject);
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
  edt7.Enabled:= True;
  edt8.Enabled:= True;
end;

procedure TForm5.posisiawal;
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
  edt7.Enabled:= False;
  edt8.Enabled:= False;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
   if edt1.Text=''then
      begin
        ShowMessage('USERNAME USER TIDAK BOLEH KOSONG!');
      end else
   if edt2.Text=''then
      begin
        ShowMessage('PASSWORD USER TIDAK BOLEH KOSONG!');
      end else
   if edt3.Text=''then
      begin
        ShowMessage('LEVEL USER TIDAK BOLEH KOSONG!');
      end else
        begin
         ZQuery1.SQL.Clear;
         ZQuery1.SQL.Add('insert into siswa user(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'")');
         ZQuery1.ExecSQL;

         ZQuery1.SQL.Clear;
         ZQuery1.SQL.Add('select * from user');
         ZQuery1.Open;
        end;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
  if(edt1.Text='')or(edt2.Text='')or(edt3.Text='')or(edt4.Text='')or(edt5.Text='')or(edt6.Text='')or(edt7.Text='')or(edt8.Text='')then
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
         ZQuery1.SQL.Add('update user set username="'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'"where(id)="'+id+'"');
         ZQuery1.ExecSQL;

         ZQuery1.SQL.Clear;
         ZQuery1.SQL.Add('select * from user');
         ZQuery1.Open;
      end;

end;

procedure TForm5.btn4Click(Sender: TObject);
begin
   if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI ?',mtWarning,[mbYes,mbNo],0)= mryes then
      begin
         ZQuery1.SQL.Clear;
         ZQuery1.SQL.Add('delete from username where(id)="'+id+'"');
         ZQuery1.ExecSQL;

         ZQuery1.SQL.Clear;
         ZQuery1.SQL.Add('select * from username');
         ZQuery1.Open;
      end;
   ShowMessage('Data batal dihapus');
   posisiawal;
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
 bersih;
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
  id:=ZQuery1.Fields[0].AsString;
    edt1.Text:=ZQuery1.FieldList[1].AsString;
    edt2.Text:=ZQuery1.FieldList[2].AsString;
    edt3.Text:=ZQuery1.FieldList[3].AsString;
    edt4.Text:=ZQuery1.FieldList[4].AsString;
    edt5.Text:=ZQuery1.FieldList[5].AsString;
    edt6.Text:=ZQuery1.FieldList[6].AsString;
    edt7.Text:=ZQuery1.FieldList[7].AsString;
    edt8.Text:=ZQuery1.FieldList[8].AsString;

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
    edt7.Enabled:= True;
    edt8.Enabled:= True;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
     posisiawal;
end;

end.
