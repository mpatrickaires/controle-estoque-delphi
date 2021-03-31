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
  UfrmProduto in '..\Forms\UfrmProduto.pas' {frmProduto},
  UfrmFormaPgto in '..\Forms\UfrmFormaPgto.pas' {frmFormaPgto},
  UfrmPesquisaUsuario in '..\Forms\UfrmPesquisaUsuario.pas' {frmPesquisaUsuario},
  UfrmPesquisaCliente in '..\Forms\UfrmPesquisaCliente.pas' {frmPesquisaCliente},
  UfrmPesquisaFornecedor in '..\Forms\UfrmPesquisaFornecedor.pas' {frmPesquisaFornecedor},
  UfrmPesquisaProduto in '..\Forms\UfrmPesquisaProduto.pas' {frmPesquisaProduto},
  UfrmPesquisaPadrao in '..\Forms\UfrmPesquisaPadrao.pas' {frmPesquisaPadrao},
  UfrmPadraoMovimento in '..\Forms\UfrmPadraoMovimento.pas' {frmPadraoMovimento},
  UfrmCompra in '..\Forms\UfrmCompra.pas' {frmCompra};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
