unit UfrmPesquisaUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmPesquisaUsuario = class(TfrmPesquisaPadrao)
    qryPesquisaPadraoID_USUARIO: TIntegerField;
    qryPesquisaPadraoNOME: TStringField;
    qryPesquisaPadraoTIPO: TStringField;
    qryPesquisaPadraoCADASTRO: TDateField;
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaUsuario: TfrmPesquisaUsuario;

implementation

{$R *.dfm}

procedure TfrmPesquisaUsuario.btnPesquisarClick(Sender: TObject);
begin
  inherited;

  qryPesquisaPadrao.SQL.Add('SELECT ID_USUARIO, NOME, TIPO, CADASTRO FROM TBLUSUARIO');

  case cbChavePesquisa.ItemIndex of
   0 :
    begin
     qryPesquisaPadrao.SQL.Add('WHERE ID_USUARIO = :pId_Usuario');
     qryPesquisaPadrao.ParamByName('pId_Usuario').AsString := edtNome.Text;
    end;
  end;

  qryPesquisaPadrao.Open;

  if qryPesquisaPadrao.IsEmpty then
   begin
    MessageDlg('Registro n�o encontrado!', mtInformation, [mbOK], 0);
   end;
end;

end.
