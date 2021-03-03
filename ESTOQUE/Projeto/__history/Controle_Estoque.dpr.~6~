program Controle_Estoque;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\Forms\UfrmPrincipal.pas' {frmPrincipal},
  uDM in '..\Forms\uDM.pas' {DM: TDataModule},
  UfrmPadrao in '..\Forms\UfrmPadrao.pas' {frmPadrao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPadrao, frmPadrao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
