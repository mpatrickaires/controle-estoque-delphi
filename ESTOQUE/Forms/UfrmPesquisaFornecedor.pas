unit UfrmPesquisaFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF;

type
  TfrmPesquisaFornecedor = class(TfrmPesquisaPadrao)
    qryPesquisaPadraoID_FORNECEDOR: TIntegerField;
    qryPesquisaPadraoNOME: TStringField;
    qryPesquisaPadraoENDERECO: TStringField;
    qryPesquisaPadraoNUMERO: TIntegerField;
    qryPesquisaPadraoBAIRRO: TStringField;
    qryPesquisaPadraoCIDADE: TStringField;
    qryPesquisaPadraoUF: TStringField;
    qryPesquisaPadraoCEP: TStringField;
    qryPesquisaPadraoTELEFONE: TStringField;
    qryPesquisaPadraoCNPJ: TStringField;
    qryPesquisaPadraoEMAIL: TStringField;
    qryPesquisaPadraoCADASTRO: TDateField;
    frxPDFExport1: TfrxPDFExport;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnTransferirClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaFornecedor: TfrmPesquisaFornecedor;

implementation

{$R *.dfm}

procedure TfrmPesquisaFornecedor.btnImprimirClick(Sender: TObject);
begin
  NomeRelatorio := 'relFornecedor.fr3';
  inherited;
end;

procedure TfrmPesquisaFornecedor.btnPesquisarClick(Sender: TObject);
begin
  inherited;

  qryPesquisaPadrao.SQL.Add('SELECT ID_FORNECEDOR, NOME, ENDERECO, NUMERO, BAIRRO, CIDADE, '
  + 'UF, CEP, TELEFONE, CNPJ, EMAIL, CADASTRO FROM TBLFORNECEDOR');

  case cbChavePesquisa.ItemIndex of
   0 : // Pesquisa por Código
    begin
     qryPesquisaPadrao.SQL.Add('WHERE ID_FORNECEDOR = :pId_Fornecedor');
     qryPesquisaPadrao.ParamByName('pId_Fornecedor').AsString := edtNome.Text;
    end;

   1 : // Pesquisa por Nome
    begin
     qryPesquisaPadrao.SQL.Add('WHERE NOME LIKE :pNome');
     qryPesquisaPadrao.ParamByName('pNome').AsString := '%' + edtNome.Text + '%';
    end;

   2 : // Pesquisa por Data de Cadastro
    begin
     qryPesquisaPadrao.SQL.Add('WHERE CADASTRO = :pCadastro');
     qryPesquisaPadrao.ParamByName('pCadastro').AsDate := StrToDate(edtInicio.Text);
    end;

   3 : // Pesquisa por Período
    begin
     qryPesquisaPadrao.SQL.Add('WHERE CADASTRO BETWEEN :pInicio AND :pFim');
     qryPesquisaPadrao.ParamByName('pInicio').AsDate := StrToDate(edtInicio.Text);
     qryPesquisaPadrao.ParamByName('pFim').AsDate := StrToDate(edtFim.Text);
    end;

   4 : // Pesquisa por Todos os registros
    begin
     qryPesquisaPadrao.SQL.Add('ORDER BY ID_FORNECEDOR');
    end;
  end;

  qryPesquisaPadrao.Open;

  if qryPesquisaPadrao.IsEmpty then
   begin
    MessageDlg('Registro não encontrado!', mtInformation, [mbOK], 0);
   end;
end;

procedure TfrmPesquisaFornecedor.btnTransferirClick(Sender: TObject);
begin
  inherited;
  Codigo := qryPesquisaPadraoID_FORNECEDOR.AsInteger;
end;

end.
