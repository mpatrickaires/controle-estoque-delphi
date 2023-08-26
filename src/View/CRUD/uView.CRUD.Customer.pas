unit uView.CRUD.Customer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, uView.CRUD.Template;

type
  TCustomerCRUDView = class(TTemplateCRUDView)
    qryPadraoID_CLIENTE: TFDAutoIncField;
    qryPadraoNOME: TStringField;
    qryPadraoENDERECO: TStringField;
    qryPadraoNUMERO: TIntegerField;
    qryPadraoBAIRRO: TStringField;
    qryPadraoCIDADE: TStringField;
    qryPadraoUF: TStringField;
    qryPadraoCEP: TStringField;
    qryPadraoTELEFONE: TStringField;
    qryPadraoCPF: TStringField;
    qryPadraoCADASTRO: TDateField;
    Label1: TLabel;
    edtIDCliente: TDBEdit;
    Label2: TLabel;
    edtNome: TDBEdit;
    Label3: TLabel;
    edtEndereco: TDBEdit;
    Label4: TLabel;
    edtNumero: TDBEdit;
    Label5: TLabel;
    edtBairro: TDBEdit;
    Label6: TLabel;
    edtCidade: TDBEdit;
    Label7: TLabel;
    edtUF: TDBEdit;
    Label8: TLabel;
    edtCEP: TDBEdit;
    Label9: TLabel;
    edtTelefone: TDBEdit;
    Label10: TLabel;
    edtCpf: TDBEdit;
    Label12: TLabel;
    edtCadastro: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomerCRUDView: TCustomerCRUDView;

implementation

uses
  uView.Search.Customer;

{$R *.dfm}

procedure TCustomerCRUDView.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtCadastro.Text := DateToStr(Now);
  edtNome.SetFocus;
end;

procedure TCustomerCRUDView.btnPesquisarClick(Sender: TObject);
var
  objFrmPesquisaCliente : TCustomerSearchView;
begin
  inherited;
  objFrmPesquisaCliente := TCustomerSearchView.Create(nil);
  try
	objFrmPesquisaCliente.ShowModal;

	if objFrmPesquisaCliente.Codigo > 0 then
	 begin
	  qryPadrao.Open;
	  qryPadrao.Locate('ID_CLIENTE', objFrmPesquisaCliente.Codigo, []);
	 end;
  finally
	objFrmPesquisaCliente.Free;
  end;
end;

end.
