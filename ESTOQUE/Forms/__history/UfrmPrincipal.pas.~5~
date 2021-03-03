unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
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
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := DateToStr(Now);
  StatusBar1.Panels[1].Text := TimeToStr(Now);
  StatusBar1.Panels[2].Text := 'Seja bem-vindo ao sistema!';
end;

procedure TfrmPrincipal.SpeedButton10Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  // Insere dados no StatusBar
  StatusBar1.Panels[0].Text := DateToStr(Now);
  StatusBar1.Panels[1].Text := TimeToStr(Now);

end;

procedure TfrmPrincipal.Timer2Timer(Sender: TObject);
begin
  StatusBar1.Panels[2].Text := '  ' + StatusBar1.Panels[2].Text;
  if Length(StatusBar1.Panels[2].Text) >= 200 then
  StatusBar1.Panels[2].Text := Trim(StatusBar1.Panels[2].Text);
end;

end.
