program EDDY;

uses
  Forms,
  rechuli in 'rechuli.pas' {Form1},
  canshujiesuo in 'canshujiesuo.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

