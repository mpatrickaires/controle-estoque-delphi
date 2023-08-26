unit uView.CRUD.Product;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
	Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,FireDAC.Stan.Option, 
	FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
	FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, 
	Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, uView.CRUD.Template;

type
	TProductCRUDView = class(TTemplateCRUDView)
		qryPadraoPRODUTO_DESCRICAO: TStringField;
		qryPadraoVL_CUSTO: TFMTBCDField;
		qryPadraoVL_VENDA: TFMTBCDField;
		qryPadraoESTOQUE: TFMTBCDField;
		qryPadraoESTOQUE_MIN: TFMTBCDField;
		qryPadraoUNIDADE: TStringField;
		qryPadraoCADASTRO: TDateField;
		qryPadraoID_FORNECEDOR: TIntegerField;
		qryPadraoNOME: TStringField;
		Label1: TLabel;
		edtIDProduto: TDBEdit;
		Label2: TLabel;
		edtProdutoDescricao: TDBEdit;
		Label3: TLabel;
		edtValorCusto: TDBEdit;
		Label4: TLabel;
		edtValorVenda: TDBEdit;
		Label5: TLabel;
		edtEstoque: TDBEdit;
		Label6: TLabel;
		edtEstoqueMinimo: TDBEdit;
		Label7: TLabel;
		Label8: TLabel;
		edtCadastro: TDBEdit;
		Label9: TLabel;
		edtIDFornecedor: TDBEdit;
		Label10: TLabel;
		edtNomeFornecedor: TDBEdit;
		cbUnidade: TDBComboBox;
		qryPadraoID_PRODUTO: TIntegerField;
		procedure btnNovoClick(Sender: TObject);
		procedure btnPesquisarClick(Sender: TObject);
	private
		{ Private declarations }
	public
		{ Public declarations }
	end;

var
	ProductCRUDView: TProductCRUDView;

implementation

uses
	uView.Search.Product;

{$R *.dfm}

procedure TProductCRUDView.btnNovoClick(Sender: TObject);
begin
	inherited;
	edtCadastro.Text := DateToStr(Now);
	edtIDProduto.SetFocus;
end;

procedure TProductCRUDView.btnPesquisarClick(Sender: TObject);
var
  ObjFrmPesquisaProduto : TProductSearchView;
begin
	inherited;
	ObjFrmPesquisaProduto := TProductSearchView.Create(nil);
	try
		ObjFrmPesquisaProduto.ShowModal;

	if objFrmPesquisaProduto.Codigo > 0 then
	begin
		qryPadrao.Open;
		qryPadrao.Locate('ID_PRODUTO', objFrmPesquisaProduto.Codigo, []);
		end;
	finally
		ObjFrmPesquisaProduto.Free;
	end;
end;

end.
