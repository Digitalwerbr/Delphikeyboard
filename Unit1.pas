unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Touch.Keyboard, Vcl.AppEvnts,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    TouchKeyboard1: TTouchKeyboard;
    Timer1: TTimer;
    TrayIcon1: TTrayIcon;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Sair1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);


       protected
    procedure CreateParams(var Params: TCreateParams); override;

  private
    { Private declarations }


  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



  procedure TForm1.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
  begin
    ExStyle   := ExStyle or WS_EX_NOACTIVATE;
    WndParent := GetDesktopwindow;
  end;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
      CanClose := False;
 Self.Hide();
  TrayIcon1.Visible := True;
  TrayIcon1.Animate := True;
  TrayIcon1.ShowBalloonHint;
  timer1.Enabled:=true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Application.ShowMainForm:=false;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
pt : TPoint;
begin
GetCursorPos (pt);

if (GetAsyncKeyState(VK_LBUTTON) <> 0) and (GetAsyncKeyState(VK_RBUTTON) <> 0) and (KF_UP > 0)  then
begin
left:=pt.y+30;
top:=pt.y+15;
form1.Show;
form1.BringToFront;
timer1.Enabled:=false;
end;
end;

end.
