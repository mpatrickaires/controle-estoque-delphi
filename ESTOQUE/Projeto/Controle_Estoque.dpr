program Controle_Estoque;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\Forms\UfrmPrincipal.pas' {frmPrincipal},
  uDM in '..\Forms\uDM.pas' {DM: TDataModule},
  UfrmPadrao in '..\Forms\UfrmPadrao.pas' {frmPadrao},
  UfrmUsuario in '..\Forms\UfrmUsuario.pas' {frmUsuario},
  UfrmEmpresa in '..\Forms\UfrmEmpresa.pas' {frmEmpresa},
  UfrmCliente in '..\Forms\UfrmCliente.pas' {frmCliente},
  UfrmFornecedor in '..\Forms\UfrmFornecedor.pas' {frmFornecedor},
  UfrmProduto in '..\Forms\UfrmProduto.pas' {frmProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmProduto, frmProduto);
  Application.Run;
end.
