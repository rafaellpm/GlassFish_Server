object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Atualizador War GlassFish'
  ClientHeight = 235
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 466
    Height = 40
    Caption = 'Atualizar War - For'#231'a de Vendas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 32
    Top = 128
    Width = 137
    Height = 81
    Caption = '1 - Download'
    TabOrder = 0
    TabStop = False
    WordWrap = True
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 32
    Top = 88
    Width = 465
    Height = 21
    TabStop = False
    TabOrder = 1
    Text = 
      'https://www.sistemaquantum.com.br/siteapp/ftp/quantum/QuantumWeb' +
      'ServiceGeralREST.war'
  end
  object Button2: TButton
    Left = 198
    Top = 128
    Width = 137
    Height = 81
    Caption = '2 - UnDeploy'
    TabOrder = 2
    TabStop = False
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 360
    Top = 128
    Width = 137
    Height = 81
    Caption = '3 - Deploy'
    TabOrder = 3
    TabStop = False
    OnClick = Button3Click
  end
end
