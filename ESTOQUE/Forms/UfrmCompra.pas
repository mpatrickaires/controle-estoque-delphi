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
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompra: TfrmCompra;

implementation

{$R *.dfm}

procedure TfrmCompra.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtCadastro.Text := DateToStr(Now);
  edtUsuario.Text := 'MATHEUS';
  edtValor.Text := IntToStr(0);

  edtIDFornecedor.SetFocus;
end;

end.
