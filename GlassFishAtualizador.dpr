program GlassFishAtualizador;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Luna');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
