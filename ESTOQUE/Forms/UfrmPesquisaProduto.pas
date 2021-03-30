unit UfrmPesquisaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet;

type
  TfrmPesquisaProduto = class(TfrmPesquisaPadrao)
    qryPesquisaPadraoID_PRODUTO: TIntegerField;
    qryPesquisaPadraoPRODUTO_DESCRICAO: TStringField;
    qryPesquisaPadraoVL_CUSTO: TFMTBCDField;
    qryPesquisaPadraoVL_VENDA: TFMTBCDField;
    qryPesquisaPadraoESTOQUE: TFMTBCDField;
    qryPesquisaPadraoESTOQUE_MIN: TFMTBCDField;
    qryPesquisaPadraoUNIDADE: TStringField;
    qryPesquisaPadraoCADASTRO: TDateField;
    qryPesquisaPadraoID_FORNECEDOR: TIntegerField;
    qryPesquisaPadraoNOME: TStringField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure cbChavePesquisaChange(Sender: TObject);
    procedure btnTransferirClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaProduto: TfrmPesquisaProduto;

implementation

{$R *.dfm}

procedure TfrmPesquisaProduto.btnImprimirClick(Sender: TObject);
begin
  NomeRelatorio := 'relProduto.fr3';
  inherited;
end;

procedure TfrmPesquisaProduto.btnPesquisarClick(Sender: TObject);
begin
  inherited;

  qryPesquisaPadrao.SQL.Add('SELECT A.ID_PRODUTO, A.PRODUTO_DESCRICAO, A.VL_CUSTO, A.VL_VENDA, '
  + 'A.ESTOQUE, A.ESTOQUE_MIN, A.UNIDADE, A.CADASTRO, A.ID_FORNECEDOR, B.NOME FROM TBLPRODUTO A '
  + 'INNER JOIN TBLFORNECEDOR B ON A.ID_FORNECEDOR = B.ID_FORNECEDOR');

  case cbChavePesquisa.ItemIndex of
   0 : // Pesquisa por Código
    begin
     qryPesquisaPadrao.SQL.Add('WHERE A.ID_PRODUTO = :pId_Produto');
     qryPesquisaPadrao.ParamByName('pId_Produto').AsString := edtNome.Text;
    end;

   1 : // Pesquisa por Nome
    begin
     qryPesquisaPadrao.SQL.Add('WHERE A.PRODUTO_DESCRICAO LIKE :pDescricao');
     qryPesquisaPadrao.ParamByName('pDescricao').AsString := '%' + edtNome.Text + '%';
    end;

   2 : // Pesquisa por Data de Cadastro
    begin
     qryPesquisaPadrao.SQL.Add('WHERE A.CADASTRO = :pCadastro');
     qryPesquisaPadrao.ParamByName('pCadastro').AsDate := StrToDate(edtInicio.Text);
    end;

   3 : // Pesquisa por Período
    begin
     qryPesquisaPadrao.SQL.Add('WHERE A.CADASTRO BETWEEN :pInicio AND :pFim');
     qryPesquisaPadrao.ParamByName('pInicio').AsDate := StrToDate(edtInicio.Text);
     qryPesquisaPadrao.ParamByName('pFim').AsDate := StrToDate(edtFim.Text);
    end;

   4 : // Pesquisa por Todos os registros
    begin
     qryPesquisaPadrao.SQL.Add('ORDER BY A.ID_PRODUTO');
    end;

    5 : // Pesquisa pelo Fornecedor
    begin
     qryPesquisaPadrao.SQL.Add('WHERE A.ID_FORNECEDOR = :pId_Fornecedor');
     qryPesquisaPadrao.ParamByName('pId_Fornecedor').AsString := edtNome.Text;
    end;
  end;

  qryPesquisaPadrao.Open;

  if qryPesquisaPadrao.IsEmpty then
   begin
    MessageDlg('Registro não encontrado!', mtInformation, [mbOK], 0);
   end;
end;

procedure TfrmPesquisaProduto.btnTransferirClick(Sender: TObject);
begin
  inherited;
  Codigo := qryPesquisaPadraoID_PRODUTO.AsInteger;
end;

procedure TfrmPesquisaProduto.cbChavePesquisaChange(Sender: TObject);
begin
  case cbChavePesquisa.ItemIndex of
   5 :
    begin
     edtNome.Visible := True;
     lblNome.Visible := True;
     lblNome.Caption := 'Fornecedor';
     Exit;
    end;
  end;
  inherited;
end;

end.
