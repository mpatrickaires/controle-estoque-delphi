unit UfrmFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmFornecedor = class(TfrmPadrao)
    qryPadraoID_FORNECEDOR: TFDAutoIncField;
    qryPadraoNOME: TStringField;
    qryPadraoENDERECO: TStringField;
    qryPadraoNUMERO: TIntegerField;
    qryPadraoBAIRRO: TStringField;
    qryPadraoCIDADE: TStringField;
    qryPadraoUF: TStringField;
    qryPadraoCEP: TStringField;
    qryPadraoTELEFONE: TStringField;
    qryPadraoCNPJ: TStringField;
    qryPadraoEMAIL: TStringField;
    qryPadraoCADASTRO: TDateField;
    Label1: TLabel;
    edtIDFornecedor: TDBEdit;
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
    edtCNPJ: TDBEdit;
    Label11: TLabel;
    edtEmail: TDBEdit;
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
  frmFornecedor: TfrmFornecedor;

implementation

{$R *.dfm}

uses uDM, UfrmPesquisaFornecedor;

procedure TfrmFornecedor.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtCadastro.Text := DateToStr(Now);
  edtNome.SetFocus;
end;

procedure TfrmFornecedor.btnPesquisarClick(Sender: TObject);
var
  ObjFrmPesquisaFornecedor : TFrmPesquisaFornecedor;
begin
  inherited;
  ObjFrmPesquisaFornecedor := TFrmPesquisaFornecedor.Create(nil);
  try
   ObjFrmPesquisaFornecedor.ShowModal;

   if ObjFrmPesquisaFornecedor.Codigo > 0 then
    begin
     qryPadrao.Open;
     qryPadrao.Locate('ID_FORNECEDOR', ObjFrmPesquisaFornecedor.Codigo, []);
    end;
  finally
   ObjFrmPesquisaFornecedor.Free;
  end;
end;

end.
