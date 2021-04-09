unit UfrmCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPadraoMovimento, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, uDM;

type
  TfrmCompra = class(TfrmPadraoMovimento)
    qryPadraoID_FORNECEDOR: TIntegerField;
    qryPadraoNOME: TStringField;
    qryPadraoID_FORMA_PGTO: TIntegerField;
    qryPadraoDESCRICAO: TStringField;
    qryPadraoUSUARIO: TStringField;
    qryPadraoVALOR: TFMTBCDField;
    qryPadraoCADASTRO: TDateField;
    Label1: TLabel;
    edtIDCompra: TDBEdit;
    Label2: TLabel;
    edtIDFornecedor: TDBEdit;
    Label3: TLabel;
    edtIDFormaPgto: TDBEdit;
    Label4: TLabel;
    edtCadastro: TDBEdit;
    Label5: TLabel;
    edtNomeFornecedor: TDBEdit;
    Label6: TLabel;
    edtDescricao: TDBEdit;
    Label7: TLabel;
    edtUsuario: TDBEdit;
    Label8: TLabel;
    edtValor: TDBEdit;
    qryPadraoItemID_SEQUENCIA: TIntegerField;
    qryPadraoItemID_COMPRA: TIntegerField;
    qryPadraoItemID_PRODUTO: TIntegerField;
    qryPadraoItemQTDE: TFMTBCDField;
    qryPadraoItemVL_CUSTO: TFMTBCDField;
    qryPadraoItemDESCONTO: TFMTBCDField;
    qryPadraoItemTOTAL_ITEM: TFMTBCDField;
    qryPadraoID_COMPRA: TFDAutoIncField;
    Label9: TLabel;
    edtIDProduto: TDBEdit;
    Label10: TLabel;
    edtQuantidade: TDBEdit;
    Label11: TLabel;
    edtValorCusto: TDBEdit;
    Label12: TLabel;
    edtDesconto: TDBEdit;
    Label13: TLabel;
    edtTotalItem: TDBEdit;
    qryProduto: TFDQuery;
    qryPadraoItemDESCRICAO: TStringField;
    qryPadraoItemSUBTOTAL: TAggregateField;
    procedure btnNovoClick(Sender: TObject);
    procedure btnItemClick(Sender: TObject);
    procedure edtIDProdutoExit(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompra: TfrmCompra;

implementation

{$R *.dfm}

procedure TfrmCompra.btnItemClick(Sender: TObject);
var
  Proximo : Integer;
begin
  inherited;
  qryPadraoItem.Open;
  qryPadraoItem.Last;

  Proximo := qryPadraoItemID_SEQUENCIA.AsInteger + 1;

  qryPadraoItem.Append;
  qryPadraoItemID_SEQUENCIA.AsInteger := Proximo;

  edtIDProduto.SetFocus;
end;

procedure TfrmCompra.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtCadastro.Text := DateToStr(Now);
  edtUsuario.Text := 'MATHEUS';
  edtValor.Text := IntToStr(0);

  edtIDFornecedor.SetFocus;
end;

procedure TfrmCompra.btnOkClick(Sender: TObject);
begin
  inherited;
  qryPadrao.Edit;
  qryPadraoVALOR.AsFloat := qryPadraoItem.AggFields.FieldByName('SUBTOTAL').Value;
  qryPadrao.Post;
end;

procedure TfrmCompra.edtIDProdutoExit(Sender: TObject);
begin
  inherited;
  if (qryPadraoItemID_PRODUTO.AsInteger > 0) then
    if (qryProduto.Locate('ID_PRODUTO', qryPadraoItem.FieldByName('ID_PRODUTO').AsInteger, [])) then
     begin
      qryPadraoItemQTDE.AsFloat := 1;

      qryPadraoItemDESCONTO.AsFloat := 0;

      // Pega o valor do produto
      qryPadraoItemVL_CUSTO.AsFloat := qryProduto.FieldByName('VL_CUSTO').AsFloat;

      // Soma a quantidade
      qryPadraoItemTOTAL_ITEM.AsFloat := (qryPadraoItemQTDE.AsFloat * qryPadraoItemVL_CUSTO.AsFloat)
       - (qryPadraoItemDESCONTO.AsFloat);

      qryPadraoItem.Post;
     end

  else
   begin
    MessageDlg('Produto não encontrado!', mtWarning, [mbOK], 0);
    qryPadraoItem.Cancel;
   end;

  btnItem.SetFocus;
end;

end.
