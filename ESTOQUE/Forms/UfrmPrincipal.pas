unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus, Vcl.StdCtrls, UfrmProduto, UfrmFormaPgto, UfrmCompra;

type
  TfrmPrincipal = class(TForm)
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
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UfrmUsuario, UfrmEmpresa, UfrmCliente, UfrmFornecedor;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
  AbreTelaCliente;
end;

procedure TfrmPrincipal.Empresa1Click(Sender: TObject);
begin
  AbreTelaEmpresa;
end;

procedure TfrmPrincipal.FormadePgto1Click(Sender: TObject);
begin
  AbreTelaFormaPgto;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := DateToStr(Now);
  StatusBar1.Panels[1].Text := TimeToStr(Now);
  StatusBar1.Panels[2].Text := 'Seja bem-vindo ao sistema!';
end;

procedure TfrmPrincipal.Fornecedores1Click(Sender: TObject);
begin
  AbreTelaFornecedor;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  AbreTelaProduto;
end;

procedure TfrmPrincipal.AbreTelaFormaPgto;
var
  ObjFrmFormaPgto : TfrmFormaPgto;
begin
  ObjFrmFormaPgto := TfrmFormaPgto.Create(nil);

  try
    ObjFrmFormaPgto.ShowModal;
  finally
    ObjFrmFormaPgto.Free;
  end;
end;

procedure TfrmPrincipal.AbreTelaCliente;
var
  ObjFrmCliente : TfrmCliente;
begin
  ObjFrmCliente := TfrmCliente.Create(nil);

  try
    ObjFrmCliente.ShowModal;
  finally
    ObjFrmCliente.Free;
  end;
end;

procedure TfrmPrincipal.AbreTelaCompra;
var
  ObjFrmCompra : TfrmCompra;
begin
  ObjFrmCompra := TfrmCompra.Create(nil);

  try
   ObjFrmCompra.ShowModal;
  finally
   ObjFrmCompra.Free;
  end;
end;

procedure TfrmPrincipal.AbreTelaEmpresa;
var
  ObjFrmEmpresa : TfrmEmpresa;
begin
  ObjFrmEmpresa := TfrmEmpresa.Create(nil);

  try
    ObjFrmEmpresa.ShowModal;
  finally
    ObjFrmEmpresa.Free;
  end;
end;

procedure TfrmPrincipal.AbreTelaFornecedor;
var
  ObjFrmFornecedor : TfrmFornecedor;
begin
  ObjFrmFornecedor := TfrmFornecedor.Create(nil);

  try
    ObjFrmFornecedor.ShowModal;
  finally
    ObjFrmFornecedor.Free;
  end;
end;

procedure TfrmPrincipal.AbreTelaProduto;
var
  ObjFrmProduto : TfrmProduto;
begin
  ObjFrmProduto := TfrmProduto.Create(nil);

  try
    ObjFrmProduto.ShowModal;
  finally
    ObjFrmProduto.Free;
  end;
end;

procedure TfrmPrincipal.AbreTelaUsuario;
var
  ObjFrmUsuario : TfrmUsuario;
begin
  ObjFrmUsuario := TfrmUsuario.Create(nil);

  try
    ObjFrmUsuario.ShowModal;
  finally
    ObjFrmUsuario.Free;
  end;
end;

procedure TfrmPrincipal.btnClientesClick(Sender: TObject);
begin
  AbreTelaCliente;
end;

procedure TfrmPrincipal.btnComprasClick(Sender: TObject);
begin
  AbreTelaCompra;
end;

procedure TfrmPrincipal.btnEmpresaClick(Sender: TObject);
begin
  AbreTelaEmpresa;
end;

procedure TfrmPrincipal.btnFormaPgtoClick(Sender: TObject);
begin
  AbreTelaFormaPgto;
end;

procedure TfrmPrincipal.btnFornecedoresClick(Sender: TObject);
begin
  AbreTelaFornecedor;
end;

procedure TfrmPrincipal.btnProdutosClick(Sender: TObject);
begin
  AbreTelaProduto;
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
  if MessageBox(Handle, 'Deseja sair do sistema?', 'Sair',
  MB_ICONQUESTION + MB_YESNO) = mrYes then
   begin
     Application.Terminate;
   end

  else Abort;
end;

procedure TfrmPrincipal.btnUsuarioClick(Sender: TObject);
begin
  AbreTelaUsuario;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  // Insere dados no StatusBar
  StatusBar1.Panels[0].Text := DateToStr(Now);
  StatusBar1.Panels[1].Text := TimeToStr(Now);

end;

procedure TfrmPrincipal.Usurio1Click(Sender: TObject);
begin
  AbreTelaUsuario;
end;

end.
