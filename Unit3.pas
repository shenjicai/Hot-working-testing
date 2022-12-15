unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, ExtCtrls, sPanel, sSkinManager, sGroupBox;

type
  TForm3 = class(TForm)
    spnl1: TsPanel;
    lbl1: TLabel;
    grp1: TsGroupBox;
    lbl2: TLabel;
    shp1: TShape;
    lbl3: TLabel;
    shp2: TShape;
    lbl4: TLabel;
    shp3: TShape;
    lbl5: TLabel;
    shp4: TShape;
    btn6: TsButton;
    btn3: TsButton;
    btn2: TsButton;
    btn1: TsButton;
    btn4: TsButton;
    btn5: TsButton;
    btn8: TsButton;
    btn10: TsButton;
    btn12: TsButton;
    btn11: TsButton;
    btn9: TsButton;
    btn7: TsButton;
    shp5: TShape;
    lbl6: TLabel;
    lbl7: TLabel;
    shp6: TShape;
    lbl8: TLabel;
    shp7: TShape;
    lbl9: TLabel;
    shp8: TShape;
    lbl10: TLabel;
    shp9: TShape;
    lbl11: TLabel;
    shp10: TShape;
    lbl12: TLabel;
    shp11: TShape;
    lbl13: TLabel;
    shp12: TShape;
    ContrTmr1: TTimer;
    tmr1: TTimer;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ContrTmr1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  hd6654: ulong; //定义全局变量
  bit: array[0..11] of ULONG;
  bitIn: array[0..31] of ULONG;
function AC6654_OpenDevice(DeviceNum: ulong): ulong; stdcall; external 'AC6654.dll';

//----------------------------------------------------------------
//closed the device
function AC6654_CloseDevice(DeviceNum: ulong): ulong; stdcall; external 'AC6654.dll';




//------------------------------------------------------------------------------------------
//开关量控制函数


//write data to DIO
//ionum=0-3
function AC6654_DO(hd, port0, port1, port2, port3: ulong): ulong; stdcall; external 'AC6654.dll';


//read data from DIO
//ionum=0-3
//data return by func
function AC6654_DI(hd: ulong; port0, port1, port2, port3: plongint): ulong; stdcall; external 'AC6654.dll';


//set DIO Mode
//bit0-bit3 to: Port0-Port3's mode
//bit=0: DI / bit=1:DO
function AC6654_SN(hd, sn: ulong): ulong; stdcall; external 'AC6654.dll';
//------------------------------------------------------------------------------------------

function AC6654_IRQ(hd: ulong): ulong; stdcall; external 'AC6654.dll';
function bittointL(): ulong;
function bittointH(): ulong;
function HexToBit(s: string): string;
procedure TestBegin();
implementation
uses
  rechuli;
{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
var DOPort0, DOPort1, DOPort2, DOPort3: ULONG;
  ResultLow, ResultHigh: ULONG;
begin
  if btn1.Caption = '输送带电机停' then
  begin
    btn1.Caption := '输送带电机转';
    bit[10] := 0;
  end
  else begin
    btn1.Caption := '输送带电机停';
    bit[10] := 1;
  end;
  ResultLow := bittointL();
  DOPort0 := ResultLow;
  ResultHigh := bittointH();
  DOPort1 := ResultHigh; //+ResultLow;
  AC6654_DO(hd6654, DOPort0, DOPort1, DOPort2, DOPort3);
end;

procedure TForm3.btn2Click(Sender: TObject);
var DOPort0, DOPort1, DOPort2, DOPort3: ULONG;
  ResultLow, ResultHigh: ULONG;
begin
  if btn2.Caption = '输送带离合开' then
  begin
    btn2.Caption := '输送带离合闭';
    bit[9] := 0;
  end
  else begin
    btn2.Caption := '输送带离合开';
    bit[9] := 1;
  end;
  ResultLow := bittointL();
  DOPort0 := ResultLow;
  ResultHigh := bittointH();
  DOPort1 := ResultHigh; //+ResultLow ;
  AC6654_DO(hd6654, DOPort0, DOPort1, DOPort2, DOPort3);
end;

procedure TForm3.btn3Click(Sender: TObject);
var DOPort0, DOPort1, DOPort2, DOPort3: ULONG;
  ResultLow, ResultHigh: ULONG;
begin
  if btn3.Caption = '检测探头上位' then
  begin
    if bit[6] = 0 then
    begin
      btn3.Caption := '检测探头下位';
      bit[7] := 0;
    end
    else begin
      Application.MessageBox('定位汽缸位置不对', '警告', 0);
    end;
  end
  else begin
    btn3.Caption := '检测探头上位';
    bit[7] := 1;
  end;
  ResultLow := bittointL();
  DOPort0 := ResultLow;
  ResultHigh := bittointH();
  DOPort1 := ResultHigh; //+ResultLow;
  AC6654_DO(hd6654, DOPort0, DOPort1, DOPort2, DOPort3);
  if not ContrTmr1.Enabled then
    ContrTmr1.Enabled := True;
end;

procedure TForm3.btn6Click(Sender: TObject);
var DOPort0, DOPort1, DOPort2, DOPort3: ULONG;
  ResultLow, ResultHigh: ULONG;
begin
  if btn6.Caption = '分拣汽缸前位' then
  begin
    btn6.Caption := '分拣汽缸后位';
    bit[2] := 0;
  end
  else begin
    btn6.Caption := '分拣汽缸前位';
    bit[2] := 1;
  end;
  ResultLow := bittointL();
  DOPort0 := ResultLow;
  ResultHigh := bittointH();
  DOPort1 := ResultHigh; //+ResultLow;
  AC6654_DO(hd6654, DOPort0, DOPort1, DOPort2, DOPort3);
  if not ContrTmr1.Enabled then
    ContrTmr1.Enabled := True;
end;

procedure TForm3.btn4Click(Sender: TObject);
var DOPort0, DOPort1, DOPort2, DOPort3: ULONG;
  ResultLow, ResultHigh: ULONG;
begin
  if btn4.Caption = '检测定位上位' then
  begin
    btn4.Caption := '检测定位下位';
    bit[6] := 0;
  end
  else begin
    btn4.Caption := '检测定位上位';
    bit[6] := 1;
  end;
  ResultLow := bittointL();
  DOPort0 := ResultLow;
  ResultHigh := bittointH();
  DOPort1 := ResultHigh; //+ResultLow;
  AC6654_DO(hd6654, DOPort0, DOPort1, DOPort2, DOPort3);
  if not ContrTmr1.Enabled then
    ContrTmr1.Enabled := True;
end;

procedure TForm3.btn5Click(Sender: TObject);
var DOPort0, DOPort1, DOPort2, DOPort3: ULONG;
  ResultLow, ResultHigh: ULONG;
begin
  if btn5.Caption = '分拣定位上位' then
  begin
    btn5.Caption := '分拣定位下位';
    bit[3] := 0;
  end
  else begin
    btn5.Caption := '分拣定位上位';
    bit[3] := 1;
  end;
  ResultLow := bittointL();
  DOPort0 := ResultLow;
  ResultHigh := bittointH();
  DOPort1 := ResultHigh; //+ResultLow;
  AC6654_DO(hd6654, DOPort0, DOPort1, DOPort2, DOPort3);
  if not ContrTmr1.Enabled then
    ContrTmr1.Enabled := True;
end;

procedure TForm3.btn8Click(Sender: TObject);
var DOPort0, DOPort1, DOPort2, DOPort3: ULONG;
  ResultLow, ResultHigh: ULONG;
begin
  if btn8.Caption = '手指汽缸上位' then
  begin
    btn8.Caption := '手指汽缸下位';
    bit[4] := 0;
  end
  else begin
    btn8.Caption := '手指汽缸上位';
    bit[4] := 1;
  end;
  ResultLow := bittointL();
  DOPort0 := ResultLow;
  ResultHigh := bittointH();
  DOPort1 := ResultHigh; //+ResultLow;
  AC6654_DO(hd6654, DOPort0, DOPort1, DOPort2, DOPort3);
  if not ContrTmr1.Enabled then
    ContrTmr1.Enabled := True;
end;

procedure TForm3.btn10Click(Sender: TObject);
var DOPort0, DOPort1, DOPort2, DOPort3: ULONG;
  ResultLow, ResultHigh: ULONG;
begin
  if btn10.Caption = '手指汽缸放松' then
  begin
    btn10.Caption := '手指汽缸夹紧';
    bit[5] := 0;
  end
  else begin
    btn10.Caption := '手指汽缸放松';
    bit[5] := 1;
  end;
  ResultLow := bittointL();
  DOPort0 := ResultLow;
  ResultHigh := bittointH();
  DOPort1 := ResultHigh; //+ResultLow;
  AC6654_DO(hd6654, DOPort0, DOPort1, DOPort2, DOPort3);
  if not ContrTmr1.Enabled then
    ContrTmr1.Enabled := True;
end;

procedure TForm3.btn7Click(Sender: TObject);
var DOPort0, DOPort1, DOPort2, DOPort3: ULONG;
  ResultLow, ResultHigh: ULONG;
begin
  if btn7.Caption = '前限制汽缸上位' then
  begin
    btn7.Caption := '前限制汽缸下位';
    bit[0] := 1;
  end
  else begin
    btn7.Caption := '前限制汽缸上位';
    bit[0] := 0;
  end;
  ResultLow := bittointL();
  DOPort0 := ResultLow;
  ResultHigh := bittointH();
  DOPort1 := ResultHigh; //+ResultLow;
  AC6654_DO(hd6654, DOPort0, DOPort1, DOPort2, DOPort3);
end;

procedure TForm3.btn9Click(Sender: TObject);
var DOPort0, DOPort1, DOPort2, DOPort3: ULONG;
  ResultLow, ResultHigh: ULONG;
begin
  if btn9.Caption = '后限制汽缸上位' then
  begin
    btn9.Caption := '后限制汽缸下位';
    bit[1] := 0;
  end
  else begin
    btn9.Caption := '后限制汽缸上位';
    bit[1] := 1;
  end;
  ResultLow := bittointL();
  DOPort0 := ResultLow;
  ResultHigh := bittointH();
  DOPort1 := ResultHigh; //+ResultLow;
  AC6654_DO(hd6654, DOPort0, DOPort1, DOPort2, DOPort3);
end;

procedure TForm3.btn11Click(Sender: TObject);
var
  DOPort0, DOPort1, DOPort2, DOPort3: ULONG;
  ResultLow, ResultHigh: ULONG;
begin
  if btn11.Caption = '报警发音' then
  begin
    btn11.Caption := '报警关闭';
    bit[8] := 1;
  end
  else begin
    btn11.Caption := '报警发音';
    bit[8] := 0;
  end;
  ResultLow := bittointL();
  DOPort0 := ResultLow;
  ResultHigh := bittointH();
  DOPort1 := ResultHigh; //+ResultLow;
  AC6654_DO(hd6654, DOPort0, DOPort1, DOPort2, DOPort3);
end;

procedure TForm3.btn12Click(Sender: TObject);
begin
  ContrTmr1.Enabled := False;
  Form3.hide;
  Form1.Show;
end;

procedure TForm3.FormCreate(Sender: TObject);
var i: integer;
  ResultLow, ResultHigh: Ulong;
  DOPort0, DOPort1, DOPort2, DOPort3: ULONG;
begin
  hd6654 := AC6654_OpenDevice(0);
 // if hd6654 = $FFFFFFFF then
 //   Application.MessageBox('提示', '运动控制板卡有误，请检查！', 0);
  DOPort2 := $5A;
  DOPort3 := $A5;
  for i := 0 to 11 do
  begin
    bit[i] := 1;
  end;
  ResultLow := bittointL();
  DOPort0 := ResultLow;
  ResultHigh := bittointH();
  DOPort1 := ResultHigh; //+ResultLow;
  AC6654_DO(hd6654, DOPort0, DOPort1, DOPort2, DOPort3);
  TestBegin();
end;

function bittointL(): ulong;
var i: Integer;
begin
  result := 0;
  for i := 0 to 7 do
  begin
    result := result + bit[i] shl i;
  end;
end;

function bittointH(): ulong;
var i: Integer;
begin
  result := 0;
  for i := 8 to 11 do
  begin
    result := result + bit[i] shl (i - 8);
  end;
end;

procedure TForm3.ContrTmr1Timer(Sender: TObject);
var
  DIPort0, DIPort1, DIPort2, DIPort3: ulong;
  HexStr: array[0..2] of string;
  BitStr: array[0..2] of string;
  BitStrAll: string;
  BitStrAllR: string;
  i, j: Integer;
  DOPort0, DOPort1, DOPort2, DOPort3: ULONG;
  ResultLow, ResultHigh: ULONG;
  BitStrLen: array[0..2] of ULONG;
begin
  AC6654_DI(hd6654, @DIPort0, @DIPort1, @DIPort2, @DIPort3);
  HexStr[0] := '$' + inttohex(DIPort0, 1);
  HexStr[1] := '$' + inttohex(DIPort1, 1);
  HexStr[2] := '$' + inttohex(DIPort2, 1);
  BitStr[0] := HexToBit(HexStr[0]);
  BitStr[1] := HexToBit(HexStr[1]);
  BitStr[2] := HexToBit(HexStr[2]);
  for j := 0 to 2 do
  begin
    BitStrLen[j] := Length(BitStr[j]);
    if (BitStrLen[j] > 0) and (BitStrLen[j] < 8) then
    begin
      for i := 1 to 8 - Length(BitStr[j]) do
        BitStr[j] := '0' + BitStr[j];
    end;
  end;
  BitStrAll := BitStr[2] + BitStr[1] + BitStr[0];
  for j := 1 to length(BitStrAll) do
  begin
    if BitStrAll[j] = '1' then
    begin
      bitIn[length(BitStrAll) - j] := 1;
    end
    else begin
      bitIn[length(BitStrAll) - j] := 0;
    end;
  end;
  if bitIn[14] = 1 then
  begin
    shp1.Brush.Color := clRed;
  end
  else begin
    shp1.Brush.Color := clGreen;
  end;

  if bitIn[15] = 1 then
  begin
    shp2.Brush.Color := clRed;
  end
  else begin
    shp2.Brush.Color := clGreen;
  end;
  if bitIn[12] = 1 then
  begin
    shp5.Brush.Color := clRed;
  end
  else begin
    shp5.Brush.Color := clGreen;
  end;
  if bitIn[13] = 1 then
  begin
    shp6.Brush.Color := clRed;
  end
  else begin
    shp6.Brush.Color := clGreen;
  end;
  if bitIn[8] = 1 then
  begin
    shp9.Brush.Color := clRed;
  end
  else begin
    shp9.Brush.Color := clGreen;
  end;
  if bitIn[9] = 1 then
  begin
    shp10.Brush.Color := clRed;
  end
  else begin
    shp10.Brush.Color := clGreen;
  end;
  if bitIn[6] = 1 then
  begin
    shp7.Brush.Color := clRed;
  end
  else begin
    shp7.Brush.Color := clGreen;
  end;
  if bitIn[7] = 1 then
  begin
    shp8.Brush.Color := clRed;
  end
  else begin
    shp8.Brush.Color := clGreen;
  end;
  if bitIn[5] = 1 then
  begin
    shp3.Brush.Color := clRed;
  end
  else begin
    shp3.Brush.Color := clGreen;
  end;
  if bitIn[4] = 1 then
  begin
    shp4.Brush.Color := clRed;
  end
  else begin
    shp4.Brush.Color := clGreen;
  end;
  if bitIn[10] = 1 then
  begin
    shp11.Brush.Color := clRed;
    shp12.brush.color := clgreen;
  end
  else begin
    shp12.Brush.Color := clred;
    shp11.brush.color := clgreen;
  end;
end;

function HexToBit(s: string): string;
var i: Integer;
  s2: string;
begin
  i := StrToInt(s);
  while i <> 0 do
  begin
    if i = (i div 2) * 2 then
      s2 := '0' + s2
    else
      s2 := '1' + s2;
    i := i div 2;
  end;
  Result := s2;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  if bitIn[2] = 0 then
  begin
    btn1.Enabled := False;
    btn2.Enabled := False;
    btn3.Enabled := False;
    btn4.Enabled := False;
    btn5.Enabled := False;
    btn6.Enabled := False;
    btn7.Enabled := False;
    btn8.Enabled := False;
    btn9.Enabled := False;
    btn10.Enabled := False;
    btn11.Enabled := False;
    //btn12.Enabled := False;
  { TestBegin ();
   if bitin[2]=0 then
   begin
     Application.MessageBox('电源没有打开！','警告！',0);
     form3.Hide ;
   end;}
  end;


end;

procedure TestBegin();
var DIPort0, DIPort1, DIPort2, DIPort3: ulong;
  HexStr: array[0..2] of string;
  BitStr: array[0..2] of string;
  BitStrAll: string;
  BitStrAllR: string;
  i, j: Integer;
  BitStrLen: array[0..2] of ULONG;
begin
  AC6654_DI(hd6654, @DIPort0, @DIPort1, @DIPort2, @DIPort3);
  HexStr[0] := '$' + inttohex(DIPort0, 1);
  HexStr[1] := '$' + inttohex(DIPort1, 1);
  HexStr[2] := '$' + inttohex(DIPort2, 1);
  BitStr[0] := HexToBit(HexStr[0]);
  BitStr[1] := HexToBit(HexStr[1]);
  BitStr[2] := HexToBit(HexStr[2]);
  for j := 0 to 2 do
  begin
    BitStrLen[j] := Length(BitStr[j]);
    if (BitStrLen[j] < 8) then
    begin
      for i := 1 to 8 - Length(BitStr[j]) do
        BitStr[j] := '0' + BitStr[j];
    end;
  end;
  BitStrAll := BitStr[2] + BitStr[1] + BitStr[0];
  for j := 1 to length(BitStrAll) do
  begin
    if BitStrAll[j] = '1' then
    begin
      bitIn[length(BitStrAll) - j] := 1;
    end
    else begin
      bitIn[length(BitStrAll) - j] := 0;
    end;
  end;
 // result := 0;
end;

procedure TForm3.tmr1Timer(Sender: TObject);
begin
  tmr1.Enabled := False;
  TestBegin();
  if bitIn[2] = 0 then
  begin
    btn1.Enabled := False;
    btn2.Enabled := False;
    btn3.Enabled := False;
    btn4.Enabled := False;
    btn5.Enabled := False;
    btn6.Enabled := False;
    btn7.Enabled := False;
    btn8.Enabled := False;
    btn9.Enabled := False;
    btn10.Enabled := False;
    btn11.Enabled := False;
    //btn12.Enabled := False;
  end
  else begin
    btn1.Enabled := True;
    btn2.Enabled := True;
    btn3.Enabled := True;
    btn4.Enabled := True;
    btn5.Enabled := True;
    btn6.Enabled := True;
    btn7.Enabled := True;
    btn8.Enabled := True;
    btn9.Enabled := True;
    btn10.Enabled := True;
    btn11.Enabled := True;
    //btn12.Enabled := False;
  end;
end;

end.

