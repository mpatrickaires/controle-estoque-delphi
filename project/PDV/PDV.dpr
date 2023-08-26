program PDV;

uses
  Vcl.Forms,
  uView.PDV.Main in '..\..\src\View\uView.PDV.Main.pas' {TPDVMainView};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPDVMainView, PDVMainView);
  Application.Run;
end.
