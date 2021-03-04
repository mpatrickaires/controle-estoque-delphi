unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus, Vcl.StdCtrls;

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
    procedure abreTelaUsuario;
    procedure abreTelaEmpresa;
    procedure abreTelaCliente;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UfrmUsuario, UfrmEmpresa, UfrmCliente;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
  abreTelaCliente;
end;

procedure TfrmPrincipal.Empresa1Click(Sender: TObject);
begin
  abreTelaEmpresa;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := DateToStr(Now);
  StatusBar1.Panels[1].Text := TimeToStr(Now);
  StatusBar1.Panels[2].Text := 'Seja bem-vindo ao sistema!';
end;

procedure TfrmPrincipal.abreTelaCliente;
begin
  frmCliente := TfrmCliente.Create(Self);

  try
    frmCliente.ShowModal;
  finally
    frmCliente.Free;
    frmCliente := nil;
  end;
end;

procedure TfrmPrincipal.abreTelaEmpresa;
begin
  frmEmpresa := TfrmEmpresa.Create(Self);

  try
    frmEmpresa.ShowModal;
  finally
    frmEmpresa.Free;
    frmEmpresa := nil;
  end;
end;

procedure TfrmPrincipal.abreTelaUsuario;
begin
  frmUsuario := TfrmUsuario.Create(Self);

  try
    frmUsuario.ShowModal;
  finally
    frmUsuario.Free;
    frmUsuario := nil;
  end;
end;

procedure TfrmPrincipal.btnClientesClick(Sender: TObject);
begin
  abreTelaCliente;
end;

procedure TfrmPrincipal.btnEmpresaClick(Sender: TObject);
begin
  abreTelaEmpresa;
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
  abreTelaUsuario;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  // Insere dados no StatusBar
  StatusBar1.Panels[0].Text := DateToStr(Now);
  StatusBar1.Panels[1].Text := TimeToStr(Now);

end;

procedure TfrmPrincipal.Usurio1Click(Sender: TObject);
begin
  abreTelaUsuario;
end;

end.
