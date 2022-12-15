unit canshujiesuo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, sEdit, sLabel, Buttons, ExtCtrls, jpeg;

type
  TForm2 = class(TForm)
    slbl1: TsLabel;
    edt1: TsEdit;
    btnsbtn1: TBitBtn;
    btnsbtn2: TBitBtn;
    procedure btnsbtn1Click(Sender: TObject);
    procedure btnsbtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Form2Close(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure lbl1Click(Sender: TObject);
    procedure lbl2Click(Sender: TObject);
    procedure lbl3Click(Sender: TObject);
    procedure lbl4Click(Sender: TObject);
    procedure lbl5Click(Sender: TObject);
    procedure lbl6Click(Sender: TObject);
    procedure lbl7Click(Sender: TObject);
    procedure lbl8Click(Sender: TObject);
    procedure lbl9Click(Sender: TObject);
    procedure lbl10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  InputNum :string;

implementation
uses rechuli;
{$R *.dfm}

procedure TForm2.btnsbtn1Click(Sender: TObject);
begin
  if edt1.Text ='03199' then
  begin
    edt1.Text :='';
    Form2.Hide  ;
    form1.rzspnr1.Enabled :=True ;
    form1.rzspnr2.Enabled :=True ;
    form1.rzspnr3.Enabled :=True ;
    form1.rzspnr4.Enabled :=True ;
    form1.rzspnr5.Enabled :=True ;
    form1.rzspnr6.Enabled :=True ;
    form1.rzspnr7.Enabled :=True ;
    form1.rzspnr8.Enabled :=True ;
    form1.rzspnr9.Enabled :=True ;
    form1.rzspnr10.Enabled :=True ;
    ///////////////////////////////////
    form1.rzspnr11.Enabled :=True ;
    form1.rzspnr12.Enabled :=True ;
    form1.rzspnr13.Enabled :=True ;
    form1.rzspnr14.Enabled :=True ;
    form1.rzspnr15.Enabled :=True ;
    form1.rzspnr16.Enabled :=True ;
    form1.rzspnr17.Enabled :=True ;
    form1.rzspnr18.Enabled :=True ;
    form1.rzspnr19.Enabled :=True ;
    form1.rzspnr20.Enabled :=True ;
    Form1.edt1.Enabled :=True ;
    Form1.btn4.Enabled :=true ;
    Form1.btn1.Enabled :=True ;
   // Form1.grp4.Enabled :=True;
    Form1.chkschckbx1.Checked:=False ;
  end
  else begin
    Application.MessageBox('密码错误，请重新输入！','提示！',0);
    edt1.Text :='';
  end;
end;

procedure TForm2.btnsbtn2Click(Sender: TObject);
begin
  edt1.Text :='';
  Form2.Close  ;
  Form1.chkschckbx1.Checked :=True ;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
 Form2.edt1.Text :='';
end;

procedure TForm2.Form2Close(Sender: TObject; var Action: TCloseAction);
begin
   Form1.chkschckbx1.Checked :=True ;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
   form2.edt1.SetFocus ;
end;
procedure TForm2.btn1Click(Sender: TObject);
begin
   WinExec('osk.exe',SW_SHOW ) ;
end;
procedure TForm2.lbl1Click(Sender: TObject);
begin
  InputNum := '1';
  edt1.Text := edt1.Text + InputNum;
end;

procedure TForm2.lbl2Click(Sender: TObject);
begin
  InputNum := '2';
  edt1.Text := edt1.Text + InputNum;
end;

procedure TForm2.lbl3Click(Sender: TObject);
begin
  InputNum := '3';
  edt1.Text := edt1.Text + InputNum;
end;

procedure TForm2.lbl4Click(Sender: TObject);
begin
  InputNum := '4';
  edt1.Text := edt1.Text + InputNum;
end;

procedure TForm2.lbl5Click(Sender: TObject);
begin
  InputNum := '5';
  edt1.Text := edt1.Text + InputNum;
end;

procedure TForm2.lbl6Click(Sender: TObject);
begin
  InputNum := '6';
  edt1.Text := edt1.Text + InputNum;
end;

procedure TForm2.lbl7Click(Sender: TObject);
begin
  InputNum := '7';
  edt1.Text := edt1.Text + InputNum;
end;

procedure TForm2.lbl8Click(Sender: TObject);
begin
  InputNum := '8';
  edt1.Text := edt1.Text + InputNum;
end;

procedure TForm2.lbl9Click(Sender: TObject);
begin
  InputNum := '9';
  edt1.Text := edt1.Text + InputNum;
end;

procedure TForm2.lbl10Click(Sender: TObject);
begin
  InputNum := '0';
  edt1.Text := edt1.Text + InputNum;
end;

end.
