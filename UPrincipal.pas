unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UrlMon, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function DownloadFile(SourceFile, DestFile: string): Boolean;
begin
  try
    Result := UrlDownloadToFile(nil, PChar(SourceFile), PChar(DestFile),
    0, nil) = 0;
  except
    Result := False;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
Var SourceFile : String;
    DestFile : String;
    ArquivoWar : String;
begin
  DestFile := 'C:\GlassFish_Server\glassfish\domains\domain1\autodeploy\QuantumWebServiceGeralREST.war';
  SourceFile := Edit1.Text;

  if DownloadFile(SourceFile, DestFile) then
  begin
    // A mensagem será exibida após a conclusão do Download.
    ShowMessage('Download concluído com sucesso!');
  end
  else
    ShowMessage('Erro ao baixar o arquivo ' + SourceFile);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  WinExec('cmd.exe /c "C:\GlassFish_Server\glassfish\bin\asadmin undeploy QuantumWebServiceGeralREST"',SW_SHOW);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin

  WinExec('cmd.exe /c "C:\GlassFish_Server\glassfish\bin\asadmin deploy C:\GlassFish_Server\glassfish\domains\domain1\autodeploy\QuantumWebServiceGeralREST.war"',SW_SHOW);

end;

end.
