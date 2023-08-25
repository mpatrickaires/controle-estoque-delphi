program Controle_Estoque;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\..\ESTOQUE\Forms\UfrmPrincipal.pas' {frmPrincipal},
  uDM in '..\..\ESTOQUE\Forms\uDM.pas' {DM: TDataModule},
  UfrmPadrao in '..\..\ESTOQUE\Forms\UfrmPadrao.pas' {frmPadrao},
  UfrmUsuario in '..\..\ESTOQUE\Forms\UfrmUsuario.pas' {frmUsuario},
  UfrmEmpresa in '..\..\ESTOQUE\Forms\UfrmEmpresa.pas' {frmEmpresa},
  UfrmCliente in '..\..\ESTOQUE\Forms\UfrmCliente.pas' {frmCliente},
  UfrmFornecedor in '..\..\ESTOQUE\Forms\UfrmFornecedor.pas' {frmFornecedor},
  UfrmProduto in '..\..\ESTOQUE\Forms\UfrmProduto.pas' {frmProduto},
  UfrmFormaPgto in '..\..\ESTOQUE\Forms\UfrmFormaPgto.pas' {frmFormaPgto},
  UfrmPesquisaUsuario in '..\..\ESTOQUE\Forms\UfrmPesquisaUsuario.pas' {frmPesquisaUsuario},
  UfrmPesquisaCliente in '..\..\ESTOQUE\Forms\UfrmPesquisaCliente.pas' {frmPesquisaCliente},
  UfrmPesquisaFornecedor in '..\..\ESTOQUE\Forms\UfrmPesquisaFornecedor.pas' {frmPesquisaFornecedor},
  UfrmPesquisaProduto in '..\..\ESTOQUE\Forms\UfrmPesquisaProduto.pas' {frmPesquisaProduto},
  UfrmPesquisaPadrao in '..\..\ESTOQUE\Forms\UfrmPesquisaPadrao.pas' {frmPesquisaPadrao},
  UfrmPadraoMovimento in '..\..\ESTOQUE\Forms\UfrmPadraoMovimento.pas' {frmPadraoMovimento},
  UfrmCompra in '..\..\ESTOQUE\Forms\UfrmCompra.pas' {frmCompra},
  uController.Login in '..\..\src\Controller\uController.Login.pas',
  uView.Login in '..\..\src\View\uView.Login.pas' {uViewLogin};

{$R *.res}

begin
	Application.Initialize;
	Application.MainFormOnTaskbar := True;
	Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TuViewLogin, uViewLogin);
  Application.Run;
end.
