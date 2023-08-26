unit uView.Controle.Main;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
	Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
	Vcl.Menus, Vcl.StdCtrls, uView.CRUD.Product, uView.GRID.Sales, uView.CRUD.PaymentForm;

type
	TControleMainView = class(TForm)
		Panel1: TPanel;
		btnUsuario: TSpeedButton;
		btnEmpresa: TSpeedButton;
		btnClientes: TSpeedButton;
		btnFornecedores: TSpeedButton;
		btnProdutos: TSpeedButton;
		btnFormaPgto: TSpeedButton;
		btnCompras: TSpeedButton;
		btnVendas: TSpeedButton;
		btnTrocarUsuario: TSpeedButton;
		btnSair: TSpeedButton;
		StatusBar1: TStatusBar;
		Timer1: TTimer;
		MainMenu1: TMainMenu;
		Cadastro1: TMenuItem;
		Usurio1: TMenuItem;
		Empresa1: TMenuItem;
		Cliente1: TMenuItem;
		Fornecedores1: TMenuItem;
		Produtos1: TMenuItem;
		FormadePgto1: TMenuItem;
		Movimentos1: TMenuItem;
		Compras1: TMenuItem;
		Vendas1: TMenuItem;
		Relatrios1: TMenuItem;
		ListaUsurios1: TMenuItem;
		ListaFornecedores1: TMenuItem;
		ListaClientes1: TMenuItem;
		ListaProdutos1: TMenuItem;
		ListaCompras1: TMenuItem;
		ListaVendas1: TMenuItem;
		Sobre1: TMenuItem;
		procedure AbreTelaUsuario;
		procedure AbreTelaEmpresa;
		procedure AbreTelaCliente;
		procedure AbreTelaFornecedor;
		procedure AbreTelaProduto;
		procedure AbreTelaFormaPgto;
		procedure AbreTelaCompra;
		procedure Timer1Timer(Sender: TObject);
		procedure FormCreate(Sender: TObject);
		procedure btnSairClick(Sender: TObject);
		procedure Button1Click(Sender: TObject);
		procedure btnUsuarioClick(Sender: TObject);
		procedure btnEmpresaClick(Sender: TObject);
		procedure Usurio1Click(Sender: TObject);
		procedure Empresa1Click(Sender: TObject);
		procedure btnClientesClick(Sender: TObject);
		procedure Cliente1Click(Sender: TObject);
		procedure btnFornecedoresClick(Sender: TObject);
		procedure Fornecedores1Click(Sender: TObject);
		procedure btnProdutosClick(Sender: TObject);
		procedure Produtos1Click(Sender: TObject);
		procedure btnFormaPgtoClick(Sender: TObject);
		procedure FormadePgto1Click(Sender: TObject);
		procedure btnComprasClick(Sender: TObject);
	private
		{ Private declarations }
	public
		{ Public declarations }
	end;

var
	ControleMainView: TControleMainView;

implementation

{$R *.dfm}

uses 
	uView.CRUD.User, uView.CRUD.Issuer, uView.CRUD.Customer, uView.CRUD.Provider;

procedure TControleMainView.Button1Click(Sender: TObject);
begin
	Close;
end;

procedure TControleMainView.Cliente1Click(Sender: TObject);
begin
	AbreTelaCliente;
end;

procedure TControleMainView.Empresa1Click(Sender: TObject);
begin
	AbreTelaEmpresa;
end;

procedure TControleMainView.FormadePgto1Click(Sender: TObject);
begin
	AbreTelaFormaPgto;
end;

procedure TControleMainView.FormCreate(Sender: TObject);
begin
	StatusBar1.Panels[0].Text := DateToStr(Now);
	StatusBar1.Panels[1].Text := TimeToStr(Now);
	StatusBar1.Panels[2].Text := 'Seja bem-vindo ao sistema!';
end;

procedure TControleMainView.Fornecedores1Click(Sender: TObject);
begin
	AbreTelaFornecedor;
end;

procedure TControleMainView.Produtos1Click(Sender: TObject);
begin
	AbreTelaProduto;
end;

procedure TControleMainView.AbreTelaFormaPgto;
var
  ObjFrmFormaPgto : TPaymentFormCRUDView;
begin
	ObjFrmFormaPgto := TPaymentFormCRUDView.Create(nil);
	try
		ObjFrmFormaPgto.ShowModal;
	finally
		ObjFrmFormaPgto.Free;
	end;
end;

procedure TControleMainView.AbreTelaCliente;
var
	ObjFrmCliente : TCustomerCRUDView;
begin
	ObjFrmCliente := TCustomerCRUDView.Create(nil);
	try
		ObjFrmCliente.ShowModal;
	finally
		ObjFrmCliente.Free;
	end;
end;

procedure TControleMainView.AbreTelaCompra;
var
	ObjFrmCompra : TSalesGRIDView;
begin
	ObjFrmCompra := TSalesGRIDView.Create(nil);
	try
		ObjFrmCompra.ShowModal;
	finally
		ObjFrmCompra.Free;
	end;
end;

procedure TControleMainView.AbreTelaEmpresa;
var
	ObjFrmEmpresa : TIssuerCRUDView;
begin
	ObjFrmEmpresa := TIssuerCRUDView.Create(nil);
	try
		ObjFrmEmpresa.ShowModal;
	finally
		ObjFrmEmpresa.Free;
	end;
end;

procedure TControleMainView.AbreTelaFornecedor;
var
	ObjFrmFornecedor : TProviderCRUDView;
begin
	ObjFrmFornecedor := TProviderCRUDView.Create(nil);

	try
		ObjFrmFornecedor.ShowModal;
	finally
		ObjFrmFornecedor.Free;
	end;
end;

procedure TControleMainView.AbreTelaProduto;
var
	ObjFrmProduto : TProductCRUDView;
begin
	ObjFrmProduto := TProductCRUDView.Create(nil);
	try
		ObjFrmProduto.ShowModal;
	finally
		ObjFrmProduto.Free;
	end;
end;

procedure TControleMainView.AbreTelaUsuario;
var
	ObjFrmUsuario : TUsersCRUDView;
begin
	ObjFrmUsuario := TUsersCRUDView.Create(nil);
	try
		ObjFrmUsuario.ShowModal;
	finally
		ObjFrmUsuario.Free;
	end;
end;

procedure TControleMainView.btnClientesClick(Sender: TObject);
begin
	AbreTelaCliente;
end;

procedure TControleMainView.btnComprasClick(Sender: TObject);
begin
	AbreTelaCompra;
end;

procedure TControleMainView.btnEmpresaClick(Sender: TObject);
begin
	AbreTelaEmpresa;
end;

procedure TControleMainView.btnFormaPgtoClick(Sender: TObject);
begin
	AbreTelaFormaPgto;
end;

procedure TControleMainView.btnFornecedoresClick(Sender: TObject);
begin
	AbreTelaFornecedor;
end;

procedure TControleMainView.btnProdutosClick(Sender: TObject);
begin
	AbreTelaProduto;
end;

procedure TControleMainView.btnSairClick(Sender: TObject);
begin
	if MessageBox(Handle, 'Deseja sair do sistema?', 'Sair',MB_ICONQUESTION + MB_YESNO) = mrYes then
	begin
		Application.Terminate;
	end
	else Abort;
end;

procedure TControleMainView.btnUsuarioClick(Sender: TObject);
begin
	AbreTelaUsuario;
end;

procedure TControleMainView.Timer1Timer(Sender: TObject);
begin
	// Insere dados no StatusBar
	StatusBar1.Panels[0].Text := DateToStr(Now);
	StatusBar1.Panels[1].Text := TimeToStr(Now);
end;

procedure TControleMainView.Usurio1Click(Sender: TObject);
begin
	AbreTelaUsuario;
end;

end.
