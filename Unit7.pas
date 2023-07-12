unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  StdCtrls, Grids, DBGrids, frxClass, frxDBSet;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Button1: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure baru;
    procedure btn2Click(Sender: TObject);
    procedure posisiawal;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  id : string;

implementation

{$R *.dfm}

procedure TForm7.baru;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
end;

procedure TForm7.posisiawal;
begin
  baru;

  edt1.Enabled:=False;
  edt2.Enabled:=False;
  edt3.Enabled:=False;
  edt4.Enabled:=False;

  btn1.Enabled:=True;
  btn2.Enabled:=False;
  btn3.Enabled:=False;
  btn4.Enabled:=False;

end;

procedure TForm7.btn2Click(Sender: TObject);
begin
   if edt1.Text ='' then
      begin
      ShowMessage('NAMA POIN TIDAK BOLEH KOSONG!');
      end else
      if edt2.Text ='' then
      begin
      ShowMessage('BOBOT POIN TIDAK BOLEH KOSONG!');
      end else
      if edt3.Text ='' then
      begin
      ShowMessage('JENIS POIN TIDAK BOLEH KOSONG!');
      end else
      if ZQuery1.Locate('nama_poin',edt1.Text,[]) then
      begin
        ShowMessage('DATA SUDAH ADA DI SISTEM');
        edt1.SetFocus;
      end else
      begin

        ZQuery1.SQL.Clear;
        ZQuery1.SQL.Add('insert into poin values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'")');
        ZQuery1.ExecSQL;

        ZQuery1.SQL.Clear;
        ZQuery1.SQL.Add('select * from poin');
        ZQuery1.Open;

        ShowMessage('DATA BERHASIL DISIMPAN !!!');
      //simpan
end;
end ;

procedure TForm7.btn1Click(Sender: TObject);
begin
  baru;
  btn1.Enabled:= false;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
  if (edt1.Text='')or(edt1.Text='')or(edt3.Text='')or(edt4.Text='')then
     begin
      ShowMessage('DATA TIDAK ADA PERUBAHAN');
      posisiawal;
    end else
      begin
        ShowMessage('DATA BERHASIL DI UPDATE');
         ZQuery1.SQL.Clear;
         ZQuery1.SQL.Add('update poin set nama_poin="'+edt1.Text+'","'+edt2.Text+'"where(id)="'+id+'"');
         ZQuery1.ExecSQL;

         ZQuery1.SQL.Clear;
         ZQuery1.SQL.Add('select * from poin');
         ZQuery1.Open;
      end;

end;

procedure TForm7.btn4Click(Sender: TObject);
begin
     if MessageDlg('Apakah Yakin Ingin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
    begin
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('delete from poin where idpoin="'+id+'"');
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * from poin');
    ZQuery1.Open;
    ShowMessage('DATA BERHASIL DIHAPUS');
    posisiawal;
    end else
  begin
    ShowMessage('Data Batal Dihapus');
    posisiawal;
  end;
end;

procedure TForm7.btn5Click(Sender: TObject);
begin
baru;
end;

procedure TForm7.DBGrid1CellClick(Column: TColumn);
begin
  id:=ZQuery1.Fields[0].AsString;
    edt1.Text:=ZQuery1.FieldList[1].AsString;
    edt2.Text:=ZQuery1.FieldList[2].AsString;
    edt3.Text:=ZQuery1.FieldList[3].AsString;
    edt4.Text:=ZQuery1.FieldList[4].AsString;

    btn1.Enabled:= False;
    btn2.Enabled:= False;
    btn3.Enabled:= True;
    btn4.Enabled:= True;
    btn5.Enabled:= True;
    edt1.Enabled:= True;
    edt2.Enabled:= True;
    edt3.Enabled:= True;
    edt4.Enabled:= True;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
                  