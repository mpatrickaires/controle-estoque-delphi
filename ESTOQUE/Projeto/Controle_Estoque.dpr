program Controle_Estoque;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\Forms\UfrmPrincipal.pas' {frmPrincipal},
  uDM in '..\Forms\uDM.pas' {DM: TDataModule},
  UfrmPadrao in '..\Forms\UfrmPadrao.pas' {frmPadrao},
  UfrmUsuario in '..\Forms\UfrmUsuario.pas' {frmUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
