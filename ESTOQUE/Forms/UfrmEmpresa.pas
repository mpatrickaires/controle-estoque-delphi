unit UfrmEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmEmpresa = class(TfrmPadrao)
    qryPadraoID_EMPRESA: TIntegerField;
    qryPadraoRAZAO_SOCIAL: TStringField;
    qryPadraoN_FANTASIA: TStringField;
    qryPadraoENDERECO: TStringField;
    qryPadraoNUMERO: TIntegerField;
    qryPadraoBAIRRO: TStringField;
    qryPadraoCIDADE: TStringField;
    qryPadraoUF: TStringField;
    qryPadraoTELEFONE: TStringField;
    qryPadraoCNPJ: TStringField;
    qryPadraoEMAIL: TStringField;
    qryPadraoCADASTRO: TDateField;
    qryPadraoCEP: TStringField;
    qryPadraoLOGO: TBlobField;
    Label1: TLabel;
    edtID: TDBEdit;
    Label2: TLabel;
    edtRazaoSocial: TDBEdit;
    Label3: TLabel;
    edtNomeFantasia: TDBEdit;
    Label4: TLabel;
    edtEndereco: TDBEdit;
    Label5: TLabel;
    edtNumero: TDBEdit;
    Label6: TLabel;
    edtBairro: TDBEdit;
    Label7: TLabel;
    edtCidade: TDBEdit;
    Label8: TLabel;
    edtUF: TDBEdit;
    Label9: TLabel;
    edtCEP: TDBEdit;
    Label10: TLabel;
    edtTelefone: TDBEdit;
    Label11: TLabel;
    edtCNPJ: TDBEdit;
    Label12: TLabel;
    edtEmail: TDBEdit;
    Label13: TLabel;
    imgLogo: TDBImage;
    Label14: TLabel;
    edtCadastro: TDBEdit;
    btnFoto: TBitBtn;
    btnClear: TBitBtn;
    OpenDialog1: TOpenDialog;
    procedure btnNovoClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnFotoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpresa: TfrmEmpresa;

implementation

{$R *.dfm}

procedure TfrmEmpresa.btnClearClick(Sender: TObject);
begin
  // Limpa a imagem
  qryPadrao.Edit;
  qryPadraoLOGO.AsVariant := null;
  qryPadrao.Refresh;
  MessageBox(Handle, 'Imagem deletada com sucesso!', 'Clear',
  MB_ICONINFORMATION + MB_OK);
end;

procedure TfrmEmpresa.btnFotoClick(Sender: TObject);
begin
  // Insere foto
  qryPadrao.Edit;
  OpenDialog1.Execute;
  // Recebe a imagem selecionada no OpenDialog1
  imgLogo.Picture.LoadFromFile(OpenDialog1.FileName);
  qryPadrao.Refresh;
  MessageBox(Handle, 'Imagem inserida com sucesso!', 'Foto',
  MB_ICONINFORMATION + MB_OK);
end;

procedure TfrmEmpresa.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtCadastro.Text := DateToStr(Now);
  edtRazaoSocial.SetFocus;
end;

end.
