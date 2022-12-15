unit rechuli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, StdCtrls, RzSpnEdt, sSkinManager, sPanel,
  sGroupBox, sCheckBox, sLabel, sButton, SPComm, sEdit, acPNG, RzLabel,
  RzButton, Buttons;

type
  TForm1 = class(TForm)
    img1: TImage;
    grp1: TsGroupBox;
    rzspnr1: TRzSpinner;
    rzspnr4: TRzSpinner;
    rzspnr5: TRzSpinner;
    rzspnr2: TRzSpinner;
    rzspnr3: TRzSpinner;
    rzspnr6: TRzSpinner;
    grp2: TsGroupBox;
    rzspnr7: TRzSpinner;
    rzspnr8: TRzSpinner;
    rzspnr10: TRzSpinner;
    rzspnr9: TRzSpinner;
    grp3: TsGroupBox;
    shp1: TShape;
    cm1: TComm;
    tmr1: TTimer;
    lbl11: TLabel;
    lbl12: TLabel;
    img2: TImage;
    lbl14: TLabel;
    btn3: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    img3: TImage;
    lbl13: TsLabel;
    lbl15: TsLabel;
    grp6: TsGroupBox;
    grp7: TsGroupBox;
    shp2: TShape;
    cm2: TComm;
    rzspnr17: TRzSpinner;
    rzspnr18: TRzSpinner;
    rzspnr19: TRzSpinner;
    rzspnr20: TRzSpinner;
    edt1: TEdit;
    lblslbl1: TsLabel;
    edt2: TsEdit;
    edt3: TsEdit;
    lblslbl2: TsLabel;
    lblslbl3: TsLabel;
    edt4: TsEdit;
    lbl26: TsLabel;
    edt10: TsEdit;
    lbl27: TsLabel;
    edt11: TsEdit;
    lbl28: TsLabel;
    edt12: TsEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl29: TRzLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    grp4: TsGroupBox;
    lbl16: TLabel;
    rzspnr11: TRzSpinner;
    lbl17: TLabel;
    rzspnr12: TRzSpinner;
    lbl18: TLabel;
    rzspnr13: TRzSpinner;
    lbl19: TLabel;
    rzspnr16: TRzSpinner;
    lbl20: TLabel;
    rzspnr15: TRzSpinner;
    lbl21: TLabel;
    rzspnr14: TRzSpinner;
    chkschckbx1: TCheckBox;
    btnsbtn1: TBitBtn;
    btnsbtn2: TBitBtn;
    btnsbtn5: TBitBtn;
    btnsbtn3: TBitBtn;
    btn4: TBitBtn;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn8: TBitBtn;
    lbl30: TLabel;
    edt5: TEdit;
    edt6: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure rzspnr1Change(Sender: TObject);
    procedure rzspnr3Change(Sender: TObject);
    procedure btnsbtn1Click(Sender: TObject);
    procedure rzspnr7Change(Sender: TObject);
    procedure rzspnr8Change(Sender: TObject);
    procedure rzspnr9Change(Sender: TObject);
    procedure rzspnr10Change(Sender: TObject);
    procedure btnsbtn3Click(Sender: TObject);
    procedure chkschckbx1Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure btnsbtn5Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnsbtn2Click(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
    procedure grp4MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure rzspnr4Change(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure Form1dbclick(Sender: TObject);
    procedure Form1Close(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure rzspnr11Change(Sender: TObject);
    procedure rzspnr13Change(Sender: TObject);
    procedure rzspnr14Change(Sender: TObject);
    procedure rzspnr17Change(Sender: TObject);
    procedure rzspnr18Change(Sender: TObject);
    procedure rzspnr19Change(Sender: TObject);
    procedure rzspnr20Change(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure rzspnr2Change(Sender: TObject);
    procedure rzspnr6Change(Sender: TObject);
    procedure rzspnr5Change(Sender: TObject);
    procedure rzspnr12Change(Sender: TObject);
    procedure rzspnr15Change(Sender: TObject);
    procedure rzspnr16Change(Sender: TObject);
    procedure edt2DblClick(Sender: TObject);
    procedure edt10DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function AC6111_CreateDevice(CardNo: ULONG; ErrorOf6111: PULONG): ULONG; stdcall; external 'ac6111.dll';

function AC6111_CloseDevice(hDevice: ULONG): Integer; stdcall; external 'ac6111.dll';

//function AC6111_INI(hDevice: ULONG; initword: PAC6111_INI_BYTE): Integer; stdcall; external 'ac6111.dll';

function AC6111_ADState(hDevice: ULONG): Integer; stdcall; external 'ac6111.dll';

//function AC6111_RUN(hDevice: ULONG): Integer; stdcall; external 'ac6111.dll';

function AC6111_AD(hDevice: ULONG; stch: ULONG; endch: ULONG; gain: ULONG; sammode: ULONG; trsl: ULONG; clksl: ULONG; trpol: ULONG; clkpol: ULONG; tdata: ULONG): Integer; stdcall; external 'ac6111.dll';
 //ByVal HANDLE As Long, ByVal stch As Long, ByVal endch As Long, ByVal gain As Long, ByVal sammode As Long, ByVal trsl As Long, ByVal clksl As Long, ByVal trpol As Long, ByVal clkpol As Long, ByVal tdata As Long)

function AC6111_STOP(hDevice: ULONG): Integer; stdcall; external 'ac6111.dll';

//function AC6111_AD_MODE(hDevice: ULONG; DaMode: ULONG): Integer; stdcall; external 'ac6111.dll';

//function AC6111_AD_TIMER(hDevice: ULONG; DaMode: ULONG): Integer; stdcall; external 'ac6111.dll';

function AC6111_READ_KFIFO(hDevice: ULONG; fifo_data: PULONG; Length: ULONG): Integer; stdcall; external 'ac6111.dll';
 //ByVal hDevice As Long, fifo_data As Long, ByVal length As Long
//function AC6111_READ_HARD_FIFO(hDevice: ULONG; Buffer: PULONG; Length: ULONG): Integer; stdcall; external 'ac6111.dll';

function AC6111_IO_MODE(hDevice: ULONG; IOMode: ULONG): Integer; stdcall; external 'ac6111.dll';

function AC6111_DI(hDevice: ULONG; DIData: PULONG): Integer; stdcall; external 'ac6111.dll';

function AC6111_DO(hDevice: ULONG; DOData: ULONG): Integer; stdcall; external 'ac6111.dll';

function AC6111_RCOUNTER(hDevice: ULONG; CounterData: PULONG): Integer; stdcall; external 'ac6111.dll';

function AC6111_WCOUNTER(hDevice: ULONG; CounterData: ULONG): Integer; stdcall; external 'ac6111.dll';

function AC6111_RTIMER(hDevice: ULONG; TimerData: PULONG): Integer; stdcall; external 'ac6111.dll';

//function AC6111_DA0(hDevice: ULONG; Length: ULONG): Integer; stdcall; external 'ac6111.dll';

//function AC6111_DA1(hDevice: ULONG; Length: ULONG): Integer; stdcall; external 'ac6111.dll';

function AC6111_DA_MODE(hDevice: ULONG; DaMode: ULONG): Integer; stdcall; external 'ac6111.dll';

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

function BackDraw(): Integer;

function LimitDraw(): Integer;

function EmptyDirectory(TheDirectory: string): Boolean;

function bittointL(): ulong;

function bittointH(): ulong;
//function HexToBit(s: string): string;

procedure TestBegin(); //: integer;

procedure DOUT();

function BackDrawB(): Integer;

function LimitDrawB(): Integer;
{type
  AC6111_INI_BYTE = record
    ad_mode: ULONG;
    start_end_chn: ULONG;
    ad_timer: ULONG;
    da_mode: ULONG;
    kFifo_Notify_Length: ULONG;
    Irq_Enable: ULONG;
    Event_Enable: ULONG;
    Event: ULONG;
    EventFifoFull: ULONG;
  end;

  PAC6111_INI_BYTE = ^AC6111_INI_BYTE;

type
  AC6111_STATEx = record
    HardwareState: ULONG;
    Irq_Enable: ULONG;
    Event_Enable: ULONG;
    SoftFifoCapacity: ULONG;
    SoftFifoItemForRead: ULONG;
    SoftFifoItemForWrite: ULONG;
  end;

  PAC6111_STATEx = ^AC6111_STATEx; }

type
  CanShu = record
    YqCs: array[1..2, 1..6] of Integer;
    JcCs: array[1..2, 1..4] of Integer;
    PutDelay: Integer;
  end;

var
  Form1: TForm1;
  fn1: file of CanShu;
  fn2: CanShu;
  fileN: string;
  hDevice: ULONG;
  ErrorOf6111: ULONG;
  Tiao, Jian: Boolean;
  Zero: array[1..2] of Boolean;
  ZeroHexX, ZeroHexY: array[1..2, 1..7] of Byte;
  DX, DY: array[1..2] of Integer; //调零后补偿
  YanShi, DingShi: Integer; //延时与定时
  StartTime: Integer; //自动检测时接收到检测指令后开始计时的时间
  TranHex: array[1..2, 1..7] of Byte;
  StartTmEn: Boolean; //自动开始计时标志
  ReadStart: Boolean; //读输入信号标志
  TestSum,TestSum1, OkSum,OkSum1, BadSum,BadSum1: Integer; //检测结果统计
  XZEn, XFEn, YZEn, YFEn: array[1..2] of Boolean;
  xxxxx, yyyyy: array[1..2] of Integer;
  hd6654: ulong; //定义全局变量
  bit: array[0..11] of ULONG;
  bitIn: array[0..31] of ULONG;
  First: Boolean; //第一次进工件
  BadState: Boolean; //坏工件判断
  ForeTest: Boolean; //前面有工件检测，然后才放行上游工件
  TestOver: Boolean; //检测结束标志
  TestTimes: Boolean; //检测中
  NextFull: Boolean; //下游满料标志
  nextFullSng: Integer; //下游满料延时
  BadDelay: Integer; //坏工件放料延时
  FullSng: Integer; //满料报警次数
  Alarm: Boolean; //废件满料提醒
  DoorOpen: Boolean; //门打开警告
  TestNum: array[0..1] of LongInt; //检测数量增加，判断是否需要释放工件
  PutDelay: Integer; //放料延时
  AlarmNum: Integer; //不合格满料后开始检测不合格满料传感器的感应次数，防止偶尔失效
  DoorOpNum: Integer; //维修门打开后开始检测门传感器失效的感应次数，防止偶尔失效
  NextFullNum: Integer; //下游满料传感器触发开始计数，防止偶尔挡住启动输送带停止程序
  FirstPut: Boolean; //第一个工件第一次放行
  NextFullAlarmCal: Integer; //后面满料警告窗口出现开始计时，10秒后提示框消失
  NextFullAlarm: Boolean; // 后面满料警告窗口提示后，启动计时标志
  BadAlarm: Boolean; //不合格满料警告窗口提示后，启动计时标志
  BadAlarmCal: Integer; //不合格品满料警告窗口出现后开始计时，10秒后提示框消失
  DoorOpenAlarm: Boolean; //维修门打开警告窗口提示后，启动计时标志
  DoorOpenAlarmCal: Integer; //维修门打开警告开始计时，10秒后提示框消失
  NoPart: Boolean; //上游没有料标志
  NoPartCal: Integer; // 上游没有料开始计时，10秒后辊道停止
  NoPartAlarm: Boolean; //上游无料警示窗口提示；
  NoPartAlarmCal: Integer; //上游无料警示窗口出现后开始计时，10秒后窗口消失
  AlarmNopartCal: Integer; //无料提示窗口延时未到，但开始有料计时
  HndNextFull, HndDoorOpen, HndForeNoPart: HWND; //警告窗口的句柄
  x, y: array[1..2] of Integer;
  JianBeginNum: LongInt; //检测传感器触发开始计时
  JianDuraNum: LongInt; //检测持续时间
  JianBegin: Boolean; //延时标记
  JianDura: Boolean; //开始检测标记
  JianOver: Boolean; //检测结束标记

implementation

uses
  canshujiesuo, unit3;
{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  val, val2, i: integer;
  Do_Data: Word;
begin
  if not directoryexists('D:\参数') then
    mkdir('D:\参数');
  if not directoryexists('D:\报告') then
    MkDir('D:\报告');
  if not directoryexists('D:\报告\合格') then
    MkDir('D:\报告\合格');
  if not directoryexists('D:\报告\不合格') then
    MkDir('D:\报告\不合格');
  Self.DoubleBuffered := True;
  Self.Width := 1360;
  Self.Height := 768;
  lbl30.Caption :='仪器启动... ...' ;
  shp1.Brush.Color := clYellow;
  shp2.Brush.Color := clYellow;
  Do_Data := $FF00;
  chkschckbx1.Checked := True;
 // chk1.Checked := True;
  form1.rzspnr1.Enabled := False;
  form1.rzspnr2.Enabled := False;
  form1.rzspnr3.Enabled := False;
  form1.rzspnr4.Enabled := False;
  form1.rzspnr5.Enabled := False;
  form1.rzspnr6.Enabled := False;
  form1.rzspnr7.Enabled := False;
  form1.rzspnr8.Enabled := False;
  form1.rzspnr9.Enabled := False;
  form1.rzspnr10.Enabled := False;
  //Form1.edt1.Enabled := False;
 // Form1.btn4.Enabled := False;
//  Form1.btn1.Enabled := False;
  //////////////////////////////////
  form1.rzspnr11.Enabled := False;
  form1.rzspnr14.Enabled := False;
  form1.rzspnr15.Enabled := False;
  form1.rzspnr16.Enabled := False;
  form1.rzspnr13.Enabled := False;
  form1.rzspnr12.Enabled := False;
  form1.rzspnr17.Enabled := False;
  form1.rzspnr18.Enabled := False;
  form1.rzspnr19.Enabled := False;
  form1.rzspnr20.Enabled := False;
 // Form1.edt6.Enabled := False;
 // Form1.btn11.Enabled := False;
//  Form1.btn12.Enabled := False;
  edt1.Text := 'Default';
 // edt6.Text := 'Default';
  chdir('D:\参数\');
  fileN := edt1.Text + '.par';
  AssignFile(fn1, fileN);
  if FileExists(filen) then
  begin
    Reset(fn1);
    read(fn1, fn2);
  end;
  if not FileExists(filen) then
  begin
    Rewrite(fn1);
    Reset(fn1);
    Write(fn1, fn2);
  end;
  CloseFile(fn1);
  rzspnr1.Value := fn2.YqCs[1][1];
  rzspnr2.Value := fn2.YqCs[1][2];
  rzspnr3.Value := fn2.YqCs[1][3];
  rzspnr4.Value := fn2.YqCs[1][4];
  rzspnr5.Value := fn2.YqCs[1][5];
  rzspnr6.Value := fn2.YqCs[1][6];
  rzspnr7.Value := fn2.JcCs[1][1];
  rzspnr8.Value := fn2.JcCs[1][2];
  rzspnr9.Value := fn2.JcCs[1][3];
  rzspnr10.Value := fn2.JcCs[1][4];
  ///////////////////////////////////////
  rzspnr11.Value := fn2.YqCs[2][1];
  rzspnr12.Value := fn2.YqCs[2][2];
  rzspnr13.Value := fn2.YqCs[2][3];
  rzspnr14.Value := fn2.YqCs[2][4];
  rzspnr15.Value := fn2.YqCs[2][5];
  rzspnr16.Value := fn2.YqCs[2][6];
  rzspnr17.Value := fn2.JcCs[2][1];
  rzspnr18.Value := fn2.JcCs[2][2];
  rzspnr19.Value := fn2.JcCs[2][3];
  rzspnr20.Value := fn2.JcCs[2][4];
  TranHex[1][1] := $AA;
  TranHex[1][2] := $05;
  TranHex[1][3] := $03;
  ZeroHexX[1][1] := $AA;
  ZeroHexY[1][1] := $AA;
  ZeroHexX[1][2] := $04;
  ZeroHexY[1][2] := $04;
  ZeroHexX[1][3] := $05;
  ZeroHexY[1][3] := $05;
  ////////////////////////////////////////
  TranHex[2][1] := $AA;
  TranHex[2][2] := $05;
  TranHex[2][3] := $03;
  ZeroHexX[2][1] := $AA;
  ZeroHexY[2][1] := $AA;
  ZeroHexX[2][2] := $04;
  ZeroHexY[2][2] := $04;
  ZeroHexX[2][3] := $05;
  ZeroHexY[2][3] := $05;

  BackDraw();
  BackDrawB();
  LimitDraw();
  LimitDrawB();

  hDevice := AC6111_CreateDevice(0, @ErrorOf6111);
  Sleep(100);
  AC6111_IO_MODE(hDevice, 2);
  Sleep(100);
  AC6111_DO(hDevice, Do_Data);
 // hd6654 := AC6654_OpenDevice(0);
 // if hd6654 = $FFFFFFFF then
 //   Application.MessageBox('提示', '运动控制板卡有误，请检查！', 0);
 // tmr2.Enabled := True;
 // tmr2.Interval := 1000;
end;

function BackDraw(): Integer;
var
  w, h: integer;
begin
  w := Form1.img1.width;
  h := Form1.img1.height;
  Form1.img1.Picture := nil;
  with Form1.img1.Canvas do
  begin
    Brush.Color := clBlack;
    floodfill(1, 2, clBlack, fsborder);
    pen.Color := RGB(180, 180, 180);
    pen.Style := psDot;
    MoveTo(0, Round(h / 2));
    LineTo(w, Round(h / 2));
    MoveTo(Round(w / 2), 0);
    LineTo(Round(w / 2), h);
    Result := 0;
  end;
end;

function BackDrawB(): Integer;
var
  w, h: integer;
begin
  w := Form1.img3.width;
  h := Form1.img3.height;
  Form1.img3.Picture := nil;
  with Form1.img3.Canvas do
  begin
    Brush.Color := clBlack;
    floodfill(1, 2, clBlack, fsborder);
    pen.Color := RGB(180, 180, 180);
    pen.Style := psDot;
    MoveTo(0, Round(h / 2));
    LineTo(w, Round(h / 2));
    MoveTo(Round(w / 2), 0);
    LineTo(Round(w / 2), h);
    Result := 0;
  end;
end;

procedure TForm1.rzspnr11Change(Sender: TObject);
var
  val2: Integer;
begin
  case rzspnr13.Value of
    1:
      begin
        TranHex[2][4] := $00;
        TranHex[2][5] := $00;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$B3') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    2:
      begin
        TranHex[2][4] := $01;
        TranHex[2][5] := $10;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$C4') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    3:
      begin
        TranHex[2][4] := $02;
        TranHex[2][5] := $21;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$D6') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    4:
      begin
        TranHex[2][4] := $03;
        TranHex[2][5] := $31;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$E7') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    5:
      begin
        TranHex[2][4] := $04;
        TranHex[2][5] := $42;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$F9') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    6:
      begin
        TranHex[2][4] := $05;
        TranHex[2][5] := $52;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$0A') + rzspnr1.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    7:
      begin
        TranHex[2][4] := $06;
        TranHex[2][5] := $63;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$1C') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));

      end;
    8:
      begin
        TranHex[2][4] := $07;
        TranHex[2][5] := $73;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$2D') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
  end;
  fn2.YqCs[2][1] := rzspnr11.Value;
  cm2.WriteCommData(@tranhex[2], 7);
end;

procedure TForm1.rzspnr1Change(Sender: TObject);
var
  val: Integer;
begin
  case rzspnr3.Value of
    1:
      begin
        TranHex[1][4] := $00;
        TranHex[1][5] := $00;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$B3') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    2:
      begin
        TranHex[1][4] := $01;
        TranHex[1][5] := $10;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$C4') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    3:
      begin
        TranHex[1][4] := $02;
        TranHex[1][5] := $21;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$D6') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    4:
      begin
        TranHex[1][4] := $03;
        TranHex[1][5] := $31;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$E7') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    5:
      begin
        TranHex[1][4] := $04;
        TranHex[1][5] := $42;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$F9') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    6:
      begin
        TranHex[1][4] := $05;
        TranHex[1][5] := $52;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$0A') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    7:
      begin
        TranHex[1][4] := $06;
        TranHex[1][5] := $63;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$1C') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));

      end;
    8:
      begin
        TranHex[1][4] := $07;
        TranHex[1][5] := $73;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$2D') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
  end;
  fn2.YqCs[1][1] := rzspnr1.Value;
  cm1.WriteCommData(@tranhex[1], 7);
end;

procedure TForm1.rzspnr3Change(Sender: TObject);
var
  val, val2: Integer;
begin
  case rzspnr3.Value of
    1:
      begin
        TranHex[1][4] := $00;
        TranHex[1][5] := $00;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$B3') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    2:
      begin
        TranHex[1][4] := $01;
        TranHex[1][5] := $10;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$C4') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    3:
      begin
        TranHex[1][4] := $02;
        TranHex[1][5] := $21;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$D6') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    4:
      begin
        TranHex[1][4] := $03;
        TranHex[1][5] := $31;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$E7') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    5:
      begin
        TranHex[1][4] := $04;
        TranHex[1][5] := $42;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$F9') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    6:
      begin
        TranHex[1][4] := $05;
        TranHex[1][5] := $52;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$0A') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    7:
      begin
        TranHex[1][4] := $06;
        TranHex[1][5] := $63;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$1C') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));

      end;
    8:
      begin
        TranHex[1][4] := $07;
        TranHex[1][5] := $73;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$2D') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
  end;
  fn2.YqCs[1][3] := rzspnr3.Value;
  cm1.WriteCommData(@tranhex[1], 7);
end;

procedure TForm1.btnsbtn1Click(Sender: TObject);
var
  val, val2: Integer;
begin
  cm1.StartComm ;
  Sleep(10);
  cm2.StartComm ;
  Sleep(10);
   case rzspnr3.Value of
    1:
      begin
        TranHex[1][4] := $00;
        TranHex[1][5] := $00;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$B3') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    2:
      begin
        TranHex[1][4] := $01;
        TranHex[1][5] := $10;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$C4') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    3:
      begin
        TranHex[1][4] := $02;
        TranHex[1][5] := $21;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$D6') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    4:
      begin
        TranHex[1][4] := $03;
        TranHex[1][5] := $31;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$E7') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    5:
      begin
        TranHex[1][4] := $04;
        TranHex[1][5] := $42;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$F9') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    6:
      begin
        TranHex[1][4] := $05;
        TranHex[1][5] := $52;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$0A') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    7:
      begin
        TranHex[1][4] := $06;
        TranHex[1][5] := $63;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$1C') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));

      end;
    8:
      begin
        TranHex[1][4] := $07;
        TranHex[1][5] := $73;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$2D') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
  end;
  ///////////////////////////////////////////////////////////////
  case rzspnr13.Value of
    1:
      begin
        TranHex[2][4] := $00;
        TranHex[2][5] := $00;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$B3') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    2:
      begin
        TranHex[2][4] := $01;
        TranHex[2][5] := $10;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$C4') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    3:
      begin
        TranHex[2][4] := $02;
        TranHex[2][5] := $21;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$D6') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    4:
      begin
        TranHex[2][4] := $03;
        TranHex[2][5] := $31;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$E7') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    5:
      begin
        TranHex[2][4] := $04;
        TranHex[2][5] := $42;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$F9') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    6:
      begin
        TranHex[2][4] := $05;
        TranHex[2][5] := $52;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$0A') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    7:
      begin
        TranHex[2][4] := $06;
        TranHex[2][5] := $63;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$1C') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));

      end;
    8:
      begin
        TranHex[2][4] := $07;
        TranHex[2][5] := $73;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$2D') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
  end;
  cm1.WriteCommData(@Tranhex[1], 7);
  Sleep(10);
  cm2.WriteCommData(@Tranhex[2], 7);
  Sleep(10);
  lbl30.Caption :='仪器调试中... ...' ;
  btnsbtn1.Enabled := False;
  btnsbtn2.Enabled := False;
  btn1.Enabled :=True ;
  btn4.Enabled :=True;
  btn2.Enabled := True;
  btn8.Enabled :=True;
  DX[1] := 0;
  DY[1] := 0;
  Tiao := True;
  Jian := False;
  AC6111_AD(hDevice, 0, 15, 2, 0, 0, 0, 0, 0, 10);
  tmr1.Enabled := True;
  tmr1.Interval := 40;
end;

function LimitDraw(): Integer;
begin
 // Form1.img1.Picture  :=nil;
  with Form1.img1.Canvas do
  begin
    Pen.Color := clRed;
    Pen.Style := psSolid;
    MoveTo(165 + form1.rzspnr7.value, 165 - form1.rzspnr9.value);
    LineTo(165 + form1.rzspnr7.value, 165 - form1.rzspnr10.value);
    MoveTo(165 + form1.rzspnr7.value, 165 - form1.rzspnr10.value);
    LineTo(165 + form1.rzspnr8.value, 165 - form1.rzspnr10.value);
    MoveTo(165 + form1.rzspnr8.value, 165 - form1.rzspnr10.value);
    LineTo(165 + form1.rzspnr8.value, 165 - form1.rzspnr9.value);
    MoveTo(165 + form1.rzspnr8.value, 165 - form1.rzspnr9.value);
    LineTo(165 + form1.rzspnr7.value, 165 - form1.rzspnr9.value);
  // Rectangle(300+form1.rzspnr7.value,300-form1.rzspnr9.value,300+form1.rzspnr8.value,300-form1.rzspnr10.value);
    result := 0;
  end;
end;

function LimitDrawB(): Integer;
begin
//  Form1.img3.Picture  :=nil;
  with Form1.img3.Canvas do
  begin
    Pen.Color := clRed;
    Pen.Style := psSolid;
    MoveTo(165 + form1.rzspnr17.value, 165 - form1.rzspnr19.value);
    LineTo(165 + form1.rzspnr17.value, 165 - form1.rzspnr20.value);
    MoveTo(165 + form1.rzspnr17.value, 165 - form1.rzspnr20.value);
    LineTo(165 + form1.rzspnr18.value, 165 - form1.rzspnr20.value);
    MoveTo(165 + form1.rzspnr18.value, 165 - form1.rzspnr20.value);
    LineTo(165 + form1.rzspnr18.value, 165 - form1.rzspnr19.value);
    MoveTo(165 + form1.rzspnr18.value, 165 - form1.rzspnr19.value);
    LineTo(165 + form1.rzspnr17.value, 165 - form1.rzspnr19.value);
  // Rectangle(300+form1.rzspnr7.value,300-form1.rzspnr9.value,300+form1.rzspnr8.value,300-form1.rzspnr10.value);
    result := 0;
  end;
end;

procedure TForm1.rzspnr7Change(Sender: TObject);
begin
  BackDraw();
  LimitDraw();
end;

procedure TForm1.rzspnr8Change(Sender: TObject);
begin
  BackDraw();
  LimitDraw();
end;

procedure TForm1.rzspnr9Change(Sender: TObject);
begin
  BackDraw();
  LimitDraw();
end;

procedure TForm1.rzspnr10Change(Sender: TObject);
begin
  BackDraw();
  LimitDraw();
end;

procedure TForm1.btnsbtn3Click(Sender: TObject);
begin
  fn2.YqCs[1][1] := rzspnr1.Value;
  fn2.YqCs[1][2] := rzspnr2.Value;
  fn2.YqCs[1][3] := rzspnr3.Value;
  fn2.YqCs[1][4] := rzspnr4.Value;
  fn2.YqCs[1][5] := rzspnr5.Value;
  fn2.YqCs[1][6] := rzspnr6.Value;
  fn2.JcCs[1][1] := rzspnr7.Value;
  fn2.JcCs[1][2] := rzspnr8.Value;
  fn2.JcCs[1][3] := rzspnr9.Value;
  fn2.JcCs[1][4] := rzspnr10.Value;
  /////////////////////////////////////////
  fn2.YqCs[2][1] := rzspnr11.Value;
  fn2.YqCs[2][2] := rzspnr12.Value;
  fn2.YqCs[2][3] := rzspnr13.Value;
  fn2.YqCs[2][4] := rzspnr14.Value;
  fn2.YqCs[2][5] := rzspnr15.Value;
  fn2.YqCs[2][6] := rzspnr16.Value;
  fn2.JcCs[2][1] := rzspnr17.Value;
  fn2.JcCs[2][2] := rzspnr18.Value;
  fn2.JcCs[2][3] := rzspnr19.Value;
  fn2.JcCs[2][4] := rzspnr20.Value;
  chdir('d:\参数\');
  fileN := edt1.Text + '.par';
  AssignFile(fn1, fileN);
  if FileExists(filen) then
  begin
    Reset(fn1);
    write(fn1, fn2);
  end;
  if not FileExists(filen) then
  begin
    Rewrite(fn1);
    Reset(fn1);
    Write(fn1, fn2);
  end;
  CloseFile(fn1);
  AC6111_STOP(hDevice);
  cm1.StopComm;
  cm2.StopComm;
  Form1.Close;
  Form3.Close;
end;

procedure TForm1.chkschckbx1Click(Sender: TObject);
begin
  if not chkschckbx1.Checked then
  begin
    form2.show;
  end
  else
  begin
    form1.rzspnr1.Enabled := False;
    form1.rzspnr2.Enabled := False;
    form1.rzspnr3.Enabled := False;
    form1.rzspnr4.Enabled := False;
    form1.rzspnr5.Enabled := False;
    form1.rzspnr6.Enabled := False;
    form1.rzspnr7.Enabled := False;
    form1.rzspnr8.Enabled := False;
    form1.rzspnr9.Enabled := False;
    form1.rzspnr10.Enabled := False;
    ///////////////////////////////////////
    form1.rzspnr11.Enabled := False;
    form1.rzspnr12.Enabled := False;
    form1.rzspnr13.Enabled := False;
    form1.rzspnr14.Enabled := False;
    form1.rzspnr15.Enabled := False;
    form1.rzspnr16.Enabled := False;
    form1.rzspnr17.Enabled := False;
    form1.rzspnr18.Enabled := False;
    form1.rzspnr19.Enabled := False;
    form1.rzspnr20.Enabled := False;

//    Form1.edt1.Enabled := False;
//    Form1.btn4.Enabled := False;
//    Form1.btn1.Enabled := False;
    //grp4.Enabled := False;
  end;
end;

procedure TForm1.tmr1Timer(Sender: TObject);
var
  AD_Data: array[0..600000]of integer;
  Di_Data: LongInt;
  i, len,len1: integer;
 // x, y: Integer;
  xx, yy, xxx, yyy: array[1..2] of Real;
  xxxx, yyyy, xxxxx, yyyyy, xfinal, yfinal: array[1..2] of Integer;
  PhSaTm: array[1..2] of string; //图像保存时间
label
  flag;
begin
  if Jian then
  begin
    AC6111_DI(hDevice, @Di_Data);//读取IO端口信号

    len := AC6111_adState(hDevice);
    if len < 0 then //溢出
    begin
      Tmr1.Enabled := False;
      AC6111_STOP(hDevice); //停止采样
      Application.MessageBox('采样溢出', '提示！', 0);
    end;
    if len > 256 then
      AC6111_READ_KFIFO(hDevice, @AD_Data[0], len);
    xfinal[1] := AD_Data[0] shr 4;
    yfinal[1] := AD_Data[1] shr 4;

    xfinal[2] := AD_Data[6] shr 4;
    yfinal[2] := AD_Data[7] shr 4;
    if (Abs(xfinal[1] - x[1]) > 20) or (Abs(yfinal[1] - y[1]) > 20) then
    begin
      x[1] := xfinal[1];
      y[1] := yfinal[1];
    end;

    if (Abs(xfinal[2] - x[2]) > 20) or (Abs(yfinal[2] - y[2]) > 20) then
    begin
      x[2] := xfinal[2];
      y[2] := yfinal[2];
    end;

    xx[1] := (x[1] - 2048) * (165 + rzspnr2.Value) div 2048;
    yy[1] := (y[1] - 2048) * (165 + rzspnr2.Value) div 2048;
    xxx[1] := (xx[1] * cos(rzspnr4.Value * pi / 180) - yy[1] * sin(rzspnr4.Value * pi / 180));
    yyy[1] := (xx[1] * sin(rzspnr4.Value * pi / 180) + yy[1] * cos(rzspnr4.Value * pi / 180));

    /////////////////////////////////////////////////////////////////////////////////////////////////
    xx[2] := (x[2] - 2048) * (165 + rzspnr12.Value) div 2048;
    yy[2] := (y[2] - 2048) * (165 + rzspnr12.Value) div 2048;
    xxx[2] := (xx[2] * cos(rzspnr14.Value * pi / 180) - yy[2] * sin(rzspnr14.Value * pi / 180));
    yyy[2] := (xx[2] * sin(rzspnr14.Value * pi / 180) + yy[2] * cos(rzspnr14.Value * pi / 180));

    //////////////////channel 1///////////////////////////////////////////////////////////////////////////////
    if (xxx[1] >= 0) and (DX[1] >= 0) then
    begin
      xxxx[1] := Round(xxx[1]) - DX[1];
      if Abs(Abs(xxxx[1]) - abs(xxxxx[1])) > 20 then
        xxxxx[1] := xxxx[1];
    end;
    if (xxx[1] >= 0) and (DX[1] <= 0) then
    begin
      xxxx[1] := Round(xxx[1]) + DX[1];
      if abs(Abs(xxxx[1]) - abs(xxxxx[1])) > 20 then
        xxxxx[1] := xxxx[1];
    end;
    if (xxx[1] <= 0) and (DX[1] >= 0) then
    begin
      xxxx[1] := Round(xxx[1]) + DX[1];
      if abs(Abs(xxxx[1]) - abs(xxxxx[1])) > 20 then
        xxxxx[1] := xxxx[1];
    end;
    if (xxx[1] <= 0) and (DX[1] <= 0) then
    begin
      xxxx[1] := Round(xxx[1]) - DX[1];
      if abs(Abs(xxxx[1]) - abs(xxxxx[1])) > 20 then
        xxxxx[1] := xxxx[1];
    end;
    if (yyy[1] >= 0) and (DY[1] >= 0) then
    begin
      yyyy[1] := Round(yyy[1]) - DY[1];
      if abs(Abs(yyyy[1]) - abs(yyyyy[1])) > 20 then
        yyyyy[1] := yyyy[1];
    end;
    if (yyy[1] >= 0) and (DY[1] < 0) then
    begin
      yyyy[1] := Round(yyy[1]) + DY[1];
      if abs(Abs(yyyy[1]) - abs(yyyyy[1])) > 20 then
        yyyyy[1] := yyyy[1];
    end;
    if (yyy[1] <= 0) and (DY[1] >= 0) then
    begin
      yyyy[1] := Round(yyy[1]) + DY[1];
      if abs(Abs(yyyy[1]) - abs(yyyyy[1])) > 20 then
        yyyyy[1] := yyyy[1];
    end;
    if (yyy[1] <= 0) and (DY[1] < 0) then
    begin
      yyyy[1] := Round(yyy[1]) - DY[1];
      if abs(Abs(yyyy[1]) - abs(yyyyy[1])) > 20 then
        yyyyy[1] := yyyy[1];
    end;

    //////////////channel 2/////////////////////////////////////////////////////////
    if (xxx[2] >= 0) and (DX[2] >= 0) then
    begin
      xxxx[2] := Round(xxx[2]) - DX[2];
      if Abs(Abs(xxxx[2]) - abs(xxxxx[2])) > 20 then
        xxxxx[2] := xxxx[2];
    end;
    if (xxx[2] >= 0) and (DX[2] <= 0) then
    begin
      xxxx[2] := Round(xxx[2]) + DX[2];
      if abs(Abs(xxxx[2]) - abs(xxxxx[2])) > 20 then
        xxxxx[2] := xxxx[2];
    end;
    if (xxx[2] <= 0) and (DX[2] >= 0) then
    begin
      xxxx[2] := Round(xxx[2]) + DX[2];
      if abs(Abs(xxxx[2]) - abs(xxxxx[2])) > 20 then
        xxxxx[2] := xxxx[2];
    end;
    if (xxx[2] <= 0) and (DX[2] <= 0) then
    begin
      xxxx[2] := Round(xxx[2]) - DX[2];
      if abs(Abs(xxxx[2]) - abs(xxxxx[2])) > 20 then
        xxxxx[2] := xxxx[2];
    end;
    if (yyy[2] >= 0) and (DY[2] >= 0) then
    begin
      yyyy[2] := Round(yyy[2]) - DY[2];
      if abs(Abs(yyyy[2]) - abs(yyyyy[2])) > 20 then
        yyyyy[2] := yyyy[2];
    end;
    if (yyy[2] >= 0) and (DY[2] < 0) then
    begin
      yyyy[2] := Round(yyy[2]) + DY[2];
      if abs(Abs(yyyy[2]) - abs(yyyyy[2])) > 20 then
        yyyyy[2] := yyyy[2];
    end;
    if (yyy[2] <= 0) and (DY[2] >= 0) then
    begin
      yyyy[2] := Round(yyy[2]) + DY[2];
      if abs(Abs(yyyy[2]) - abs(yyyyy[2])) > 20 then
        yyyyy[2] := yyyy[2];
    end;
    if (yyy[2] <= 0) and (DY[2] < 0) then
    begin
      yyyy[2] := Round(yyy[2]) - DY[2];
      if abs(Abs(yyyy[2]) - abs(yyyyy[2])) > 20 then
        yyyyy[2] := yyyy[2];
    end;

    /////////////////////////////////////////////////////////////////////////////////
    if xxxxx[1] <= -165 then
      xxxxx[1] := -165;
    if xxxxx[1] >= 165 then
      xxxxx[1] := 165;
    if yyyyy[1] <= -165 then
      yyyyy[1] := -165;
    if yyyyy[1] >= 165 then
      yyyyy[1] := 165;

    ///////////////////////////////////////////////
    if xxxxx[2] <= -165 then
      xxxxx[2] := -165;
    if xxxxx[2] >= 165 then
      xxxxx[2] := 165;
    if yyyyy[2] <= -165 then
      yyyyy[2] := -165;
    if yyyyy[2] >= 165 then
      yyyyy[2] := 165;

    if (Di_Data = 65535) or (Di_Data = 32767) or (Di_Data = 57343) then //复位
    begin
      shp1.Brush.Color := clYellow;
      shp2.Brush.Color := clYellow;
      JianOver := True;
      JianBegin := True;
      JianDura := True;
      AC6111_DO(hDevice, 65535);
    end;


    if (Di_Data = 65534) and JianOver then    //上花键检测判断
    begin
      if JianBegin then                       //检测开始计时
      begin
        JianBeginNum := GetTickCount();
        JianBegin := False;
      end;
      edt5.Text := IntToStr(GetTickCount - JianBeginNum);
      if (GetTickCount - JianBeginNum) >= (rzspnr5.Value * 100) then //花键延时判断(上)
      begin
        if JianDura then
        begin
          JianDuraNum := GetTickCount();
          JianDura := False;
        end;
        BackDrawB();
        LimitDrawB();
        BackDraw();
        LimitDraw();
        with Form1.img1.Canvas do
        begin
          Pen.Color := clGreen;
          Brush.Color := clGreen;
          Rectangle(165 + xxxxx[1] - 5, 165 - yyyyy[1] - 5, 165 + xxxxx[1] + 5, 165 - yyyyy[1] + 5);
        end;
        with Form1.img3.Canvas do
        begin
          Pen.Color := clGreen;
          Brush.Color := clGreen;
          Rectangle(165 + xxxxx[2] - 5, 165 - yyyyy[2] - 5, 165 + xxxxx[2] + 5, 165 - yyyyy[2] + 5);
        end;

        edt6.Text := IntToStr(GetTickCount - JianDuraNum);
        if (GetTickCount - JianDuraNum) >= (rzspnr6.Value * 100) then //花键定时判断(上)
        begin
          JianOver := False;
          if (xxxx[1] < rzspnr7.Value) or (xxxx[1] > rzspnr8.Value) or (yyyy[1] > rzspnr9.Value) or (yyyy[1] < rzspnr10.Value) then
          begin
            AC6111_DO(hDevice, 32767);
            shp1.Brush.Color := clRed;
            TestSum := TestSum + 1;
            edt2.Text := IntToStr(TestSum);
            BadSum := BadSum + 1;
            edt3.Text := IntToStr(OkSum);
            edt4.Text := format('%2f', [OkSum / testsum * 100]) + '%';
            PhSaTm[1] := FormatDateTime('yyyymmddhhmmss', now);
            img1.Picture.SaveToFile('D:\报告\不合格\' + PhSaTm[1] + '.BMP');
          end
          else
          begin
            AC6111_DO(hDevice, 57343);
            shp1.Brush.Color := clGreen;
            TestSum := TestSum + 1;
            edt2.Text := IntToStr(TestSum);
            OkSum := OkSum + 1;
            edt3.Text := IntToStr(OkSum);
            edt4.Text := format('%2f', [OkSum / testsum * 100]) + '%';
            PhSaTm[1] := FormatDateTime('yyyymmddhhmmss', now);
            img1.Picture.SaveToFile('D:\报告\合格\' + PhSaTm[1] + '.BMP');
          end;
        end;
      end;
    end;

    if (Di_Data = 65533) and JianOver then //下齿盘检测
    begin
      if JianBegin then
      begin
        JianBeginNum := GetTickCount();
        JianBegin := False;
      end;

      if (GetTickCount - JianBeginNum) >= (rzspnr15.Value * 100) then //下齿盘延时检测
      begin
        if JianDura then
        begin
          JianDuraNum := GetTickCount();
          JianDura := False;
        end;
        BackDrawB();
        LimitDrawB();
        BackDraw();
        LimitDraw();
        with Form1.img1.Canvas do
        begin
          Pen.Color := clGreen;
          Brush.Color := clGreen;
          Rectangle(165 + xxxxx[1] - 5, 165 - yyyyy[1] - 5, 165 + xxxxx[1] + 5, 165 - yyyyy[1] + 5);
        end;
        with Form1.img3.Canvas do
        begin
          Pen.Color := clGreen;
          Brush.Color := clGreen;
          Rectangle(165 + xxxxx[2] - 5, 165 - yyyyy[2] - 5, 165 + xxxxx[2] + 5, 165 - yyyyy[2] + 5);
        end;

        if (GetTickCount - JianDuraNum) >= (rzspnr16.Value * 100) then
        begin
          JianOver := False;
          if (xxxx[2] < rzspnr17.Value) or (xxxx[2] > rzspnr18.Value) or (yyyy[2] > rzspnr19.Value) or (yyyy[2] < rzspnr20.Value) then
          begin
            AC6111_DO(hDevice, 32767);
            shp2.Brush.Color := clRed;
            TestSum1 := TestSum1 + 1;
            edt10.Text := IntToStr(TestSum1);
            BadSum1 := BadSum1 + 1;
            edt11.Text := IntToStr(OkSum1);
            edt12.Text := format('%2f', [OkSum1 / testsum1 * 100]) + '%';
            PhSaTm[1] := FormatDateTime('yyyymmddhhmmss', now);
            img1.Picture.SaveToFile('D:\报告\不合格\' + PhSaTm[1] + '.BMP');
          end
          else
          begin
            AC6111_DO(hDevice, 57343);
            shp2.Brush.Color := clGreen;
            TestSum1 := TestSum1 + 1;
            edt10.Text := IntToStr(TestSum1);
            OkSum1 := OkSum1 + 1;
            edt11.Text := IntToStr(OkSum1);
            edt12.Text := format('%2f', [OkSum1 / testsum1 * 100]) + '%';
            PhSaTm[1] := FormatDateTime('yyyymmddhhmmss', now);
            img1.Picture.SaveToFile('D:\报告\合格\' + PhSaTm[1] + '.BMP');
          end;
        end;
      end;
    end;
  end;

  if Tiao then
  begin
    len := AC6111_AdState(hDevice);
    if len < 0 then //溢出
    begin
      Tmr1.Enabled := False;
      AC6111_STOP(hDevice); //停止采样
      Application.MessageBox('采样溢出', '提示！', 0);
    end;
    if len > 256 then
    begin
     AC6111_READ_KFIFO(hDevice, @AD_Data[0], len);
    end;
    xfinal[1] := AD_Data[0] shr 4;
    yfinal[1] := AD_Data[1] shr 4;
    ///////////////////////////////////
    xfinal[2] := AD_Data[6] shr 4;
    yfinal[2] := AD_Data[7] shr 4;

    if (Abs(xfinal[1] - x[1]) > 20) or (Abs(yfinal[1] - y[1]) > 20) then
    begin
      x[1] := xfinal[1];
      y[1] := yfinal[1];
    end;
    if (Abs(xfinal[2] - x[2]) > 20) or (Abs(yfinal[2] - y[2]) > 20) then
    begin
      x[2] := xfinal[2];
      y[2] := yfinal[2];
    end;
    xx[1] := (x[1] - 2048) * (165 + rzspnr2.Value) div 2048;
    yy[1] := (y[1] - 2048) * (165 + rzspnr2.Value) div 2048;
    xxx[1] := (xx[1] * cos(rzspnr4.Value * pi / 180) - yy[1] * sin(rzspnr4.Value * pi / 180));
    yyy[1] := (xx[1] * sin(rzspnr4.Value * pi / 180) + yy[1] * cos(rzspnr4.Value * pi / 180));
    /////////////////////////////////////////////////////////////////////////////////////////////////
    xx[2] := (x[2] - 2048) * (165 + rzspnr12.Value) div 2048;
    yy[2] := (y[2] - 2048) * (165 + rzspnr12.Value) div 2048;
    xxx[2] := (xx[2] * cos(rzspnr14.Value * pi / 180) - yy[2] * sin(rzspnr14.Value * pi / 180));
    yyy[2] := (xx[2] * sin(rzspnr14.Value * pi / 180) + yy[2] * cos(rzspnr14.Value * pi / 180));
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    //通道0、1调零设置
    if Zero[1] then
    begin

      if (y[1] > 2200) and YZEn[1] then
      begin
        ZeroHexY[1][4] := $02;
        ZeroHexY[1][5] := $81;
        ZeroHexY[1][6] := $36;
        ZeroHexY[1][7] := $00;
        cm1.WriteCommData(@ZeroHexY[1], 7);
      end
      else
      begin
        YZEn[1] := False;
      end;
      if (y[1] < 1900) and YFEn[1] then
      begin
        ZeroHexY[1][4] := $02;
        ZeroHexY[1][5] := $01;
        ZeroHexY[1][6] := $B6;
        ZeroHexY[1][7] := $00;
        cm1.WriteCommData(@ZeroHexY[1], 7);
      end
      else
      begin
        YFEn[1] := False;
      end;
      if (x[1] > 2200) and XZEn[1] then
      begin
        ZeroHexX[1][4] := $01;
        ZeroHexX[1][5] := $81;
        ZeroHexX[1][6] := $35;
        ZeroHexX[1][7] := $00;
        cm1.WriteCommData(@ZeroHexX[1], 7);
      end
      else
      begin
        XZEn[1] := False;
      end;
      if (x[1] < 1900) and XFEn[1] then
      begin
        ZeroHexX[1][4] := $01;
        ZeroHexX[1][5] := $01;
        ZeroHexX[1][6] := $B5;
        ZeroHexX[1][7] := $00;
        cm1.WriteCommData(@ZeroHexX[1], 7);
      end
      else
      begin
        XFEn[1] := False;
      end;
      if (1900 <= x[1]) and (x[1] < 2200) and (1900 <= y[1]) and (y[1] < 2200) then
      begin
        Zero[1] := False;
        DX[1] := Round(xxx[1]);
        DY[1] := Round(yyy[1]);
      end;
    end;
    //////////////////////////////////////////////////////////////
    if Zero[2] then
    begin
      if (1900 <= x[2]) and (x[2] < 2200) and (1900 <= y[2]) and (y[2] < 2200) then
      begin
        Zero[2] := False;
        DX[2] := Round(xxx[2]);
        DY[2] := Round(yyy[2]);
      end;
      if (y[2] > 2200) and YZEn[2] then
      begin
        ZeroHexY[2][4] := $02;
        ZeroHexY[2][5] := $81;
        ZeroHexY[2][6] := $36;
        ZeroHexY[2][7] := $00;
        cm2.WriteCommData(@ZeroHexY[2], 7);
      end
      else
      begin
        YZEn[2] := False;
      end;
      if (x[2] < 1900) and XFEn[2] then
      begin
        ZeroHexX[2][4] := $01;
        ZeroHexX[2][5] := $01;
        ZeroHexX[2][6] := $B5;
        ZeroHexX[2][7] := $00;
        cm2.WriteCommData(@ZeroHexX[2], 7);
      end
      else
      begin
        XFEn[2] := False;
      end;
      if (x[2] > 2200) and XZEn[2] then
      begin
        ZeroHexX[2][4] := $01;
        ZeroHexX[2][5] := $81;
        ZeroHexX[2][6] := $35;
        ZeroHexX[2][7] := $00;
        cm2.WriteCommData(@ZeroHexX[2], 7);
      end
      else
      begin
        XZEn[2] := False;
      end;
      if (y[2] < 1900) and YFEn[2] then
      begin
        ZeroHexY[2][4] := $02;
        ZeroHexY[2][5] := $01;
        ZeroHexY[2][6] := $B6;
        ZeroHexY[2][7] := $00;
        cm2.WriteCommData(@ZeroHexY[2], 7);
      end
      else
      begin
        YFEn[2] := False;
      end;
    end;
    ///////////////////////////////////////////////////////////////////////////
    if (xxx[1] >= 0) and (DX[1] >= 0) then
    begin
      xxxx[1] := Round(xxx[1]) - DX[1];
      if Abs(Abs(xxxx[1]) - abs(xxxxx[1])) > 20 then
        xxxxx[1] := xxxx[1];
    end;
    if (xxx[1] >= 0) and (DX[1] <= 0) then
    begin
      xxxx[1] := Round(xxx[1]) + DX[1];
      if abs(Abs(xxxx[1]) - abs(xxxxx[1])) > 20 then
        xxxxx[1] := xxxx[1];
    end;
    if (xxx[1] <= 0) and (DX[1] >= 0) then
    begin
      xxxx[1] := Round(xxx[1]) + DX[1];
      if abs(Abs(xxxx[1]) - abs(xxxxx[1])) > 20 then
        xxxxx[1] := xxxx[1];
    end;
    if (xxx[1] <= 0) and (DX[1] <= 0) then
    begin
      xxxx[1] := Round(xxx[1]) - DX[1];
      if abs(Abs(xxxx[1]) - abs(xxxxx[1])) > 20 then
        xxxxx[1] := xxxx[1];
    end;
    if (yyy[1] >= 0) and (DY[1] >= 0) then
    begin
      yyyy[1] := Round(yyy[1]) - DY[1];
      if abs(Abs(yyyy[1]) - abs(yyyyy[1])) > 20 then
        yyyyy[1] := yyyy[1];
    end;
    if (yyy[1] >= 0) and (DY[1] < 0) then
    begin
      yyyy[1] := Round(yyy[1]) + DY[1];
      if abs(Abs(yyyy[1]) - abs(yyyyy[1])) > 20 then
        yyyyy[1] := yyyy[1];
    end;
    if (yyy[1] <= 0) and (DY[1] >= 0) then
    begin
      yyyy[1] := Round(yyy[1]) + DY[1];
      if abs(Abs(yyyy[1]) - abs(yyyyy[1])) > 20 then
        yyyyy[1] := yyyy[1];
    end;
    if (yyy[1] <= 0) and (DY[1] < 0) then
    begin
      yyyy[1] := Round(yyy[1]) - DY[1];
      if abs(Abs(yyyy[1]) - abs(yyyyy[1])) > 20 then
        yyyyy[1] := yyyy[1];
    end;
   ////////////////////////////////////////////////////////////////////////////////
    if (xxx[2] >= 0) and (DX[2] >= 0) then
    begin
      xxxx[2] := Round(xxx[2]) - DX[2];
      if Abs(Abs(xxxx[2]) - abs(xxxxx[2])) > 20 then
        xxxxx[2] := xxxx[2];
    end;
    if (xxx[2] >= 0) and (DX[2] <= 0) then
    begin
      xxxx[2] := Round(xxx[2]) + DX[2];
      if abs(Abs(xxxx[2]) - abs(xxxxx[2])) > 20 then
        xxxxx[2] := xxxx[2];
    end;
    if (xxx[2] <= 0) and (DX[2] >= 0) then
    begin
      xxxx[2] := Round(xxx[2]) + DX[2];
      if abs(Abs(xxxx[2]) - abs(xxxxx[2])) > 20 then
        xxxxx[2] := xxxx[2];
    end;
    if (xxx[2] <= 0) and (DX[2] <= 0) then
    begin
      xxxx[2] := Round(xxx[2]) - DX[2];
      if abs(Abs(xxxx[2]) - abs(xxxxx[2])) > 20 then
        xxxxx[2] := xxxx[2];
    end;
    if (yyy[2] >= 0) and (DY[2] >= 0) then
    begin
      yyyy[2] := Round(yyy[2]) - DY[2];
      if abs(Abs(yyyy[2]) - abs(yyyyy[2])) > 20 then
        yyyyy[2] := yyyy[2];
    end;
    if (yyy[2] >= 0) and (DY[2] < 0) then
    begin
      yyyy[2] := Round(yyy[2]) + DY[2];
      if abs(Abs(yyyy[2]) - abs(yyyyy[2])) > 20 then
        yyyyy[2] := yyyy[2];
    end;
    if (yyy[2] <= 0) and (DY[2] >= 0) then
    begin
      yyyy[2] := Round(yyy[2]) + DY[2];
      if abs(Abs(yyyy[2]) - abs(yyyyy[2])) > 20 then
        yyyyy[2] := yyyy[2];
    end;
    if (yyy[2] <= 0) and (DY[2] < 0) then
    begin
      yyyy[2] := Round(yyy[2]) - DY[2];
      if abs(Abs(yyyy[2]) - abs(yyyyy[2])) > 20 then
        yyyyy[2] := yyyy[2];
    end;
   /////////////////////////////////////////////////////////////////////////////////
    if xxxxx[1] <= -165 then
      xxxxx[1] := -165;
    if xxxxx[1] >= 165 then
      xxxxx[1] := 165;
    if yyyyy[1] <= -165 then
      yyyyy[1] := -165;
    if yyyyy[1] >= 165 then
      yyyyy[1] := 165;
      ///////////////////////////////////////////////
    if xxxxx[2] <= -165 then
      xxxxx[2] := -165;
    if xxxxx[2] >= 165 then
      xxxxx[2] := 165;
    if yyyyy[2] <= -165 then
      yyyyy[2] := -165;
    if yyyyy[2] >= 165 then
      yyyyy[2] := 165;
    BackDrawB();
    LimitDrawB();
    BackDraw();
    LimitDraw();
    with Form1.img1.Canvas do
    begin
      Pen.Color := clGreen;
      Brush.Color := clGreen;
      Rectangle(165 + xxxxx[1] - 5, 165 - yyyyy[1] - 5, 165 + xxxxx[1] + 5, 165 - yyyyy[1] + 5);
    end;
    with Form1.img3.Canvas do
    begin
      Pen.Color := clGreen;
      Brush.Color := clGreen;
      Rectangle(165 + xxxxx[2] - 5, 165 - yyyyy[2] - 5, 165 + xxxxx[2] + 5, 165 - yyyyy[2] + 5);
    end;
  end;
flag:
end;

procedure TForm1.btnsbtn5Click(Sender: TObject);
var
  TranHex2: array[1..2, 1..4] of Byte;
  i: Integer;
begin
  lbl30.Caption :='仪器启动... ...';
  btnsbtn1.Enabled := True;
  btnsbtn2.Enabled := True;
  btn1.Enabled :=True;
  btn2.Enabled :=True;
  btn4.Enabled :=True;
  btn8.Enabled :=True;
  edt1.Enabled :=True ;
  chkschckbx1.Enabled :=True;

  TranHex2[1][1] := $AA;
  TranHex2[1][2] := $02;
  TranHex2[1][3] := $06;
  TranHex2[1][4] := $B2;
  ////////////////////////////
  TranHex2[2][1] := $AA;
  TranHex2[2][2] := $02;
  TranHex2[2][3] := $06;
  TranHex2[2][4] := $B2;
  cm1.WriteCommData(@TranHex2[1], 4);
  Sleep(100);
  cm2.WriteCommData(@TranHex2[2], 4);
  //sleep(100);
  cm1.StopComm;
  cm2.StopComm ;
  tmr1.Enabled := False;
end;

procedure TForm1.btn1Click(Sender: TObject);
label
  flag;
begin
  if edt1.Text = '' then
  begin
    Application.MessageBox('参数名称为空，请输入参数名称！', '提示！', 0);
    goto flag;
  end;
  fn2.YqCs[1][1] := rzspnr1.Value;
  fn2.YqCs[1][2] := rzspnr2.Value;
  fn2.YqCs[1][3] := rzspnr3.Value;
  fn2.YqCs[1][4] := rzspnr4.Value;
  fn2.YqCs[1][5] := rzspnr5.Value;
  fn2.YqCs[1][6] := rzspnr6.Value;
  fn2.JcCs[1][1] := rzspnr7.Value;
  fn2.JcCs[1][2] := rzspnr8.Value;
  fn2.JcCs[1][3] := rzspnr9.Value;
  fn2.JcCs[1][4] := rzspnr10.Value;
  ////////////////////////////////////////
  fn2.YqCs[2][1] := rzspnr11.Value;
  fn2.YqCs[2][2] := rzspnr12.Value;
  fn2.YqCs[2][3] := rzspnr13.Value;
  fn2.YqCs[2][4] := rzspnr14.Value;
  fn2.YqCs[2][5] := rzspnr15.Value;
  fn2.YqCs[2][6] := rzspnr16.Value;
  fn2.JcCs[2][1] := rzspnr17.Value;
  fn2.JcCs[2][2] := rzspnr18.Value;
  fn2.JcCs[2][3] := rzspnr19.Value;
  fn2.JcCs[2][4] := rzspnr20.Value;
  chdir('d:\参数\');
  fileN := edt1.Text + '.par';
  AssignFile(fn1, fileN);
  if FileExists(filen) then
  begin
    Reset(fn1);
    write(fn1, fn2);
  end;
  if not FileExists(filen) then
  begin
    Rewrite(fn1);
    Reset(fn1);
    Write(fn1, fn2);
  end;
  CloseFile(fn1);
flag:


end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  Zero[1] := True;
  XZEn[1] := True;
  XFEn[1] := True;
  YZEn[1] := True;
  YFEn[1] := True;
  DX[1] := 0;
  DY[1] := 0;
end;

procedure TForm1.btnsbtn2Click(Sender: TObject);
var
  F: TextFile;
  FileName: string;
  s1, s2: string;
  val, val2: Integer;
  {ResultLow, ResultHigh: ULONG;
  DOPort0, DOPort1, DOPort2, DOPort3: ULONG;}
begin
  cm1.StartComm ;
  Sleep(10);
  cm2.StartComm ;
  Sleep(10);

  lbl30.Caption :='仪器检测中... ...';  //指示检测状态
  JianBegin := False;
  JianDura := False;
  ChDir('D:\参数\');
  FileName := 'Date.par';
  AssignFile(F, FileName);
  s1 := formatdatetime('mm', Now);
  if not FileExists(FileName) then
  begin
    Rewrite(F);
    Writeln(F, s1);
  end
  else
  begin
    Reset(F);
    Readln(F, s2);
    if s1 <> s2 then
    begin
      Rewrite(F);
      Writeln(F, s1);
      EmptyDirectory('D:\报告\合格\');
      EmptyDirectory('D:\报告\不合格\');
    end;
  end;
  CloseFile(F);
  Jian := True;
  Tiao := False;
  btn1.Enabled :=False;
  btn4.Enabled :=False;
  btn2.Enabled := false;
  btn8.Enabled :=False;
  edt1.Enabled :=False;
  btnsbtn1.Enabled := False;
  btnsbtn2.Enabled := False;
  chkschckbx1.Enabled :=False;
  chkschckbx1.Checked :=True;
  StartTmEn := True;
  TestTimes := False;
  //StartTime :=1;
  First := True;
  FirstPut := True;
  case rzspnr3.Value of
    1:
      begin
        TranHex[1][4] := $00;
        TranHex[1][5] := $00;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$B3') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    2:
      begin
        TranHex[1][4] := $01;
        TranHex[1][5] := $10;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$C4') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    3:
      begin
        TranHex[1][4] := $02;
        TranHex[1][5] := $21;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$D6') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    4:
      begin
        TranHex[1][4] := $03;
        TranHex[1][5] := $31;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$E7') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    5:
      begin
        TranHex[1][4] := $04;
        TranHex[1][5] := $42;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$F9') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    6:
      begin
        TranHex[1][4] := $05;
        TranHex[1][5] := $52;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$0A') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
    7:
      begin
        TranHex[1][4] := $06;
        TranHex[1][5] := $63;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$1C') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));

      end;
    8:
      begin
        TranHex[1][4] := $07;
        TranHex[1][5] := $73;
        TranHex[1][6] := StrToInt('$' + IntToHex(rzspnr1.Value, 2));
        val := StrToInt('$2D') + rzspnr1.value - 1;
        TranHex[1][7] := StrToInt('$' + IntToHex(val, 2));
      end;
  end;
  ///////////////////////////////////////
  case rzspnr13.Value of
    1:
      begin
        TranHex[2][4] := $00;
        TranHex[2][5] := $00;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$B3') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    2:
      begin
        TranHex[2][4] := $01;
        TranHex[2][5] := $10;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$C4') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    3:
      begin
        TranHex[2][4] := $02;
        TranHex[2][5] := $21;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$D6') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    4:
      begin
        TranHex[2][4] := $03;
        TranHex[2][5] := $31;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$E7') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    5:
      begin
        TranHex[2][4] := $04;
        TranHex[2][5] := $42;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$F9') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    6:
      begin
        TranHex[2][4] := $05;
        TranHex[2][5] := $52;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$0A') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    7:
      begin
        TranHex[2][4] := $06;
        TranHex[2][5] := $63;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$1C') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));

      end;
    8:
      begin
        TranHex[2][4] := $07;
        TranHex[2][5] := $73;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$2D') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
  end;
  cm1.WriteCommData(@Tranhex[1], 7);
  Sleep(100);
  cm2.WriteCommData(@Tranhex[2], 7);
  Sleep(100);
  AC6111_AD(hDevice, 0, 15, 2, 0, 0, 0, 0, 0, 10);
  tmr1.Enabled := True;
  tmr1.Interval := 40;
end;

procedure TForm1.tmr2Timer(Sender: TObject);
begin
  lbl11.Caption := DateToStr(date);
  lbl12.Caption := TimeToStr(time);
end;

procedure TForm1.grp4MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Tiao then
  begin
    edt2.Text := '';
    edt3.Text := '';
    edt4.Text := '';
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin

  ZeroHexX[1][4] := $01;
  ZeroHexX[1][5] := $01;
  ZeroHexX[1][6] := $B5;
  ZeroHexX[1][7] := $00;
  cm1.WriteCommData(@ZeroHexX[1], 7);
end;

procedure TForm1.btn5Click(Sender: TObject);
begin

  ZeroHexY[1][4] := $02;
  ZeroHexY[1][5] := $01;
  ZeroHexY[1][6] := $B6;
  ZeroHexY[1][7] := $00;
  cm1.WriteCommData(@ZeroHexY[1], 7);
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  ZeroHexY[1][4] := $02;
  ZeroHexY[1][5] := $81;
  ZeroHexY[1][6] := $36;
  ZeroHexY[1][7] := $00;
  cm1.WriteCommData(@ZeroHexY[1], 7);
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  ZeroHexX[1][4] := $01;
  ZeroHexX[1][5] := $81;
  ZeroHexX[1][6] := $35;
  ZeroHexX[1][7] := $00;
  cm1.WriteCommData(@ZeroHexX[1], 7);
end;

procedure TForm1.rzspnr4Change(Sender: TObject);
begin
  if rzspnr4.Value > 360 then
    rzspnr4.Value := 0;
  fn2.YqCs[1][4] := rzspnr4.Value;
end;

procedure TForm1.btn4Click(Sender: TObject);
label
  flag2;
begin
  if edt1.Text = '' then
  begin
    Application.MessageBox('参数名称为空，请输入参数名称！', '提示！', 0);
    goto flag2;
  end;
  chdir('d:\参数\');
  fileN := edt1.Text + '.par';
  AssignFile(fn1, fileN);
  if FileExists(filen) then
  begin
    Reset(fn1);
    Read(fn1, fn2);
  end;
  if not FileExists(filen) then
  begin
    Application.MessageBox('参数不存在，请重新输入！', '提示！', 0);
    goto flag2;
  end;
  rzspnr1.Value := fn2.YqCs[1][1];
  rzspnr2.Value := fn2.YqCs[1][2];
  rzspnr3.Value := fn2.YqCs[1][3];
  rzspnr4.Value := fn2.YqCs[1][4];
  rzspnr5.Value := fn2.YqCs[1][5];
  rzspnr6.Value := fn2.YqCs[1][6];
  rzspnr7.Value := fn2.JcCs[1][1];
  rzspnr8.Value := fn2.JcCs[1][2];
  rzspnr9.Value := fn2.JcCs[1][3];
  rzspnr10.Value := fn2.JcCs[1][4];
  ///////////////////////////////////
  rzspnr11.Value := fn2.YqCs[2][1];
  rzspnr12.Value := fn2.YqCs[2][2];
  rzspnr13.Value := fn2.YqCs[2][3];
  rzspnr14.Value := fn2.YqCs[2][4];
  rzspnr15.Value := fn2.YqCs[2][5];
  rzspnr16.Value := fn2.YqCs[2][6];
  rzspnr17.Value := fn2.JcCs[2][1];
  rzspnr18.Value := fn2.JcCs[2][2];
  rzspnr19.Value := fn2.JcCs[2][3];
  rzspnr20.Value := fn2.JcCs[2][4];
  CloseFile(fn1);
flag2:


end;

function EmptyDirectory(TheDirectory: string): Boolean;
var
  SearchRec: TSearchRec;
  Res: Integer;
begin
  Res := FindFirst(TheDirectory + '*.*', faAnyFile, SearchRec);
  try
    while Res = 0 do
    begin
      if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
      begin
        if ((SearchRec.Attr and faDirectory) > 0) then
        begin
          EmptyDirectory(TheDirectory + SearchRec.Name);
          RemoveDirectory(PChar(TheDirectory + SearchRec.Name));
        end
        else
        begin
          DeleteFile(PChar(TheDirectory + SearchRec.Name))
        end;
      end;
      Res := FindNext(SearchRec);
    end;
    Result := True;
  finally
    FindClose(SearchRec);
  end;
end;

procedure TForm1.Form1dbclick(Sender: TObject);
begin
//  if Form1.WindowState = wsMaximized then
//    Form1.WindowState := wsNormal;
//  if Form1.WindowState = wsNormal then
//    Form1.WindowState := wsMaximized
end;

procedure TForm1.Form1Close(Sender: TObject; var Action: TCloseAction);
begin
  fn2.YqCs[1][1] := rzspnr1.Value;
  fn2.YqCs[1][2] := rzspnr2.Value;
  fn2.YqCs[1][3] := rzspnr3.Value;
  fn2.YqCs[1][4] := rzspnr4.Value;
  fn2.YqCs[1][5] := rzspnr5.Value;
  fn2.YqCs[1][6] := rzspnr6.Value;
  fn2.JcCs[1][1] := rzspnr7.Value;
  fn2.JcCs[1][2] := rzspnr8.Value;
  fn2.JcCs[1][3] := rzspnr9.Value;
  fn2.JcCs[1][4] := rzspnr10.Value;
  ////////////////////////////////////////////
  fn2.YqCs[2][1] := rzspnr11.Value;
  fn2.YqCs[2][2] := rzspnr12.Value;
  fn2.YqCs[2][3] := rzspnr13.Value;
  fn2.YqCs[2][4] := rzspnr14.Value;
  fn2.YqCs[2][5] := rzspnr15.Value;
  fn2.YqCs[2][6] := rzspnr16.Value;
  fn2.JcCs[2][1] := rzspnr17.Value;
  fn2.JcCs[2][2] := rzspnr18.Value;
  fn2.JcCs[2][3] := rzspnr19.Value;
  fn2.JcCs[2][4] := rzspnr20.Value;
  chdir('d:\参数\');
  fileN := edt1.Text + '.par';
  AssignFile(fn1, fileN);
  if FileExists(filen) then
  begin
    Reset(fn1);
    write(fn1, fn2);
  end;
  if not FileExists(filen) then
  begin
    Rewrite(fn1);
    Reset(fn1);
    Write(fn1, fn2);
  end;
  CloseFile(fn1);
  AC6111_STOP(hDevice);
  cm1.StopComm;
  cm2.StopComm ;
end;

procedure TestBegin();
var
  DIPort0, DIPort1, DIPort2, DIPort3: ulong;
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
    else
    begin
      bitIn[length(BitStrAll) - j] := 0;
    end;
  end;
 // result := 0;
end;

function bittointL(): ulong;
var
  i: Integer;
begin
  result := 0;
  for i := 0 to 7 do
  begin
    result := result + bit[i] shl i;
  end;
end;

function bittointH(): ulong;
var
  i: Integer;
begin
  result := 0;
  for i := 8 to 11 do
  begin
    result := result + bit[i] shl (i - 8);
  end;
end;

procedure DOUT();
var
  DOPort0, DOPort1, DOPort2, DOPort3: ULONG;
  ResultLow, ResultHigh: ULONG;
begin
  ResultLow := bittointL();
  DOPort0 := ResultLow;
  ResultHigh := bittointH();
  DOPort1 := ResultHigh; //+ResultLow ;
  AC6654_DO(hd6654, DOPort0, DOPort1, DOPort2, DOPort3);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Form2.Hide;
  Form3.Hide;
  Form1.Show;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  WinExec('osk.exe', SW_SHOW);
end;

{procedure TForm1.rzspnr11Change(Sender: TObject);
var val2: Integer;
begin
  case rzspnr13.Value of
    1:
      begin
        TranHex[2][4] := $00;
        TranHex[2][5] := $00;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$B3') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    2:
      begin
        TranHex[2][4] := $01;
        TranHex[2][5] := $10;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$C4') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    3:
      begin
        TranHex[2][4] := $02;
        TranHex[2][5] := $21;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$D6') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    4:
      begin
        TranHex[2][4] := $03;
        TranHex[2][5] := $31;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$E7') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    5:
      begin
        TranHex[2][4] := $04;
        TranHex[2][5] := $42;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$F9') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    6:
      begin
        TranHex[2][4] := $05;
        TranHex[2][5] := $52;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$0A') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    7:
      begin
        TranHex[2][4] := $06;
        TranHex[2][5] := $63;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$1C') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));

      end;
    8:
      begin
        TranHex[2][4] := $07;
        TranHex[2][5] := $73;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$2D') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    cm2.WriteCommData(@tranhex[2], 7);
  end;  }

procedure TForm1.rzspnr13Change(Sender: TObject);
var
  val2: Integer;
begin
  case rzspnr13.Value of
    1:
      begin
        TranHex[2][4] := $00;
        TranHex[2][5] := $00;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$B3') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    2:
      begin
        TranHex[2][4] := $01;
        TranHex[2][5] := $10;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$C4') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    3:
      begin
        TranHex[2][4] := $02;
        TranHex[2][5] := $21;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$D6') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    4:
      begin
        TranHex[2][4] := $03;
        TranHex[2][5] := $31;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$E7') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    5:
      begin
        TranHex[2][4] := $04;
        TranHex[2][5] := $42;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$F9') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    6:
      begin
        TranHex[2][4] := $05;
        TranHex[2][5] := $52;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$0A') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
    7:
      begin
        TranHex[2][4] := $06;
        TranHex[2][5] := $63;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$1C') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));

      end;
    8:
      begin
        TranHex[2][4] := $07;
        TranHex[2][5] := $73;
        TranHex[2][6] := StrToInt('$' + IntToHex(rzspnr11.Value, 2));
        val2 := StrToInt('$2D') + rzspnr11.value - 1;
        TranHex[2][7] := StrToInt('$' + IntToHex(val2, 2));
      end;
  end;
  fn2.YqCs[2][3] := rzspnr13.Value;
  cm2.WriteCommData(@tranhex[2], 7);
end;

procedure TForm1.rzspnr14Change(Sender: TObject);
begin
  if rzspnr14.Value > 360 then
    rzspnr14.Value := 0;
  fn2.YqCs[2][4] := rzspnr14.Value;
end;

procedure TForm1.rzspnr17Change(Sender: TObject);
begin
  BackDrawB();
  LimitDrawB();
end;

procedure TForm1.rzspnr18Change(Sender: TObject);
begin
  BackDrawB();
  LimitDrawB();
end;

procedure TForm1.rzspnr19Change(Sender: TObject);
begin
  BackDrawB();
  LimitDrawB();
end;

procedure TForm1.rzspnr20Change(Sender: TObject);
begin
  BackDrawB();
  LimitDrawB();
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  Zero[2] := True;
  XZEn[2] := True;
  XFEn[2] := True;
  YZEn[2] := True;
  YFEn[2] := True;
  DX[2] := 0;
  DY[2] := 0;
end;

procedure TForm1.rzspnr2Change(Sender: TObject);
begin
  fn2.YqCs[1][2] := rzspnr2.Value;
end;

procedure TForm1.rzspnr6Change(Sender: TObject);
begin
  fn2.YqCs[1][6] := rzspnr6.Value;
end;

procedure TForm1.rzspnr5Change(Sender: TObject);
begin
  fn2.YqCs[1][5] := rzspnr5.Value;
end;

procedure TForm1.rzspnr12Change(Sender: TObject);
begin
  fn2.YqCs[2][2] := rzspnr12.Value;
end;

procedure TForm1.rzspnr15Change(Sender: TObject);
begin
  fn2.YqCs[2][5] := rzspnr15.Value;
end;

procedure TForm1.rzspnr16Change(Sender: TObject);
begin
  fn2.YqCs[2][6] := rzspnr16.Value;
end;

procedure TForm1.edt2DblClick(Sender: TObject);
begin
  TestSum := 0;
  OkSum := 0;
  BadSum := 0;
  edt2.Text := IntToStr(TestSum);
  edt3.Text := IntToStr(OkSum);
  //edt4.Text := IntToStr(BadSum);
  edt4.Text := format('%2f', [OkSum / 1]) + '%';
end;

procedure TForm1.edt10DblClick(Sender: TObject);
begin
  TestSum1 := 0;
  OkSum1 := 0;
  BadSum1 := 0;
  edt10.Text := IntToStr(TestSum1);
  edt11.Text := IntToStr(OkSum1);
  //edt12.Text := IntToStr(BadSum1);
  edt12.Text := format('%2f', [OkSum / 1]) + '%';
end;

end.

