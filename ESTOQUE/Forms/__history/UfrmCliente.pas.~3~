unit UfrmCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmCliente = class(TfrmPadrao)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

{$R *.dfm}

procedure TfrmCliente.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtCadastro.Text := DateToStr(Now);
  edtNome.SetFocus;
end;

end.
