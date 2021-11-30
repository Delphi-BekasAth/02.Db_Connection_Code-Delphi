program dbWithCode;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  DmCus_U in 'DmCus_U.pas' {CusDm: TDataModule},
  clsCustomer in 'clsCustomer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TCusDm, CusDm);
  Application.Run;
end.
