object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 180
  ClientWidth = 550
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object TouchKeyboard1: TTouchKeyboard
    Left = 0
    Top = 0
    Width = 550
    Height = 180
    Align = alClient
    GradientEnd = clSilver
    GradientStart = clGray
    Layout = 'Standard'
    ExplicitLeft = 8
    ExplicitTop = 8
  end
  object Timer1: TTimer
    Interval = 50
    OnTimer = Timer1Timer
    Left = 224
    Top = 24
  end
  object TrayIcon1: TTrayIcon
    PopupMenu = PopupMenu1
    Left = 264
    Top = 32
  end
  object PopupMenu1: TPopupMenu
    Left = 184
    Top = 24
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
