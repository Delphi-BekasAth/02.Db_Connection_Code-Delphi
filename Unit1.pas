unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DmCus_U, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    CusGrid: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Button3: TButton;
    ListBox1: TListBox;
    Label7: TLabel;
    Edit5: TEdit;
    Label8: TLabel;
    Button4: TButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Button5: TButton;
    Button1: TButton;
    Label12: TLabel;
    Edit10: TEdit;
    Label13: TLabel;
    Button6: TButton;
    procedure ShowGrid;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Refr;
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Refr;
var
  id : integer;
  name, phone, str : string;
  balance : double;
  dm : TCusDm;
begin

  dm := TCusDm.Create(dm);

  CusGrid.DataSource := dm.dsCus;
  ShowGrid;

  dm.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  id : integer;
  name, phone, str : string;
  balance : double;
  dm : TCusDm;
begin

  dm := TCusDm.Create(dm);

  CusGrid.DataSource := dm.dsCus;
  ShowGrid;

  dm.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  name, phone : string;
  balance : real;
  dm : TCusDm;
begin

  name := Edit1.Text;
  phone := Edit2.Text;
  balance := StrToFloat(Edit3.Text);

  dm := TCusDm.Create(dm);

  dm.tblCus.Insert;
  dm.tblCus['NAME'] := name;
  dm.tblCus['PHONE'] := phone;
  dm.tblCus['BALANCE'] := balance;
  dm.tblCus.Post;

  dm.Free;
  Button1.Click;

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  id : integer;
  dm : TCusDm;
  name,phone,str : string;
  balance : double;
begin

  id := StrToInt(Edit4.Text);
  dm := TCusDm.Create(dm);

  with dm do
  begin

    if tblCus.Locate('ID', id, []) then
    begin
      phone := tblCus['PHONE'];
      balance := tblCus['BALANCE'];
      str := IntToStr(id) + ' ' + tblCus['NAME'] + ' ' + phone + ' ' + balance.ToString + '$';
      ListBox1.Clear;
      ListBox1.Items.Add(str);
    end
    else
    begin
      ShowMessage('Id not Found');
      ListBox1.Clear;
    end;


  end;

  dm.Free;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  id : integer;
  dm : TCusDm;

begin

  id := StrToInt(Edit5.Text);
  dm := TCusDm.Create(dm);


  with dm do
  begin

    if(tblCus.Locate('ID', id, [])) then
    begin

      Edit6.Text := tblCus['NAME'];
      Edit7.Text := tblCus['PHONE'];
      Edit8.Text := tblCus['BALANCE'];

    end
    else
    begin
      ShowMessage('Id not found');
      Edit5.Clear;
      Edit6.Clear;
      Edit7.Clear;
      Edit8.Clear;
    end;

  end;

  dm.Free;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  id : integer;
  dm : TCusDm;

begin

  id := StrToInt(Edit5.Text);
  dm := TCusDm.Create(dm);

  with dm do
  begin

    if(tblCus.Locate('ID',id,[])) then
    begin

      tblCus.Edit;
      tblCus['NAME'] :=  Edit6.Text;
      tblCus['PHONE'] := Edit7.Text;
      tblCus['BALANCE'] := Edit8.Text;
      tblCus.Post;
    end
    else
    begin
      ShowMessage('Id not found');
    end;

    Edit5.Clear;
    Edit6.Clear;
    Edit7.Clear;
    Edit8.Clear;

  end;

  dm.Free;
  Button1.Click;

end;

procedure TForm1.Button6Click(Sender: TObject);
var
  id : integer;
  dm : TCusDm;

begin

  id := StrToInt(Edit10.Text);
  dm := TCusDm.Create(dm);


  with dm do
  begin

    if(tblCus.Locate('ID', id, [])) then
    begin

      if MessageDlg('Delete ' + tblCus['NAME'] + '?', mtWarning, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo],0) = mrYes then
      begin
        tblCus.Delete;
        ShowMessage('Deleted');
      end;

    end
    else
    begin
      ShowMessage('Id not found');
    end;

  end;

  Edit10.Clear;

  dm.Free;
  Button1.Click;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  //Refr();
  Button1.Click;
end;

procedure TForm1.ShowGrid;
var
  i: Integer;
begin

  for i := 0 to CusGrid.FieldCount-1 do
    CusGrid.Columns[i].Width := 100;
end;

end.

// SQL SERVER
//create table CUSTOMER
//(
//	ID int identity(1,1),
//	NAME nvarchar(100),
//	PHONE nvarchar(15),
//	BALANCE float
//)
//
//insert into CUSTOMER (NAME, PHONE, BALANCE) VALUES ('Jax Teller','2310231023',100)
//insert into CUSTOMER (NAME, PHONE, BALANCE) VALUES ('Clay Morow','2310332211',200)
//insert into CUSTOMER (NAME, PHONE, BALANCE) VALUES ('Jemma Teller','2310112233',300)
