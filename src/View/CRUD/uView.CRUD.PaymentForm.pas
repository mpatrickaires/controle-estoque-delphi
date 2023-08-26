unit uView.CRUD.PaymentForm;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,Vcl.Controls,
	Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
	FireDAC.DatS,FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,Data.DB, FireDAC.Comp.DataSet,
	FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, uView.CRUD.Template;

type
	TPaymentFormCRUDView = class(TTemplateCRUDView)
		qryPadraoID_FORMA_PGTO: TIntegerField;
		qryPadraoDESCRICAO: TStringField;
		qryPadraoCADASTRO: TDateField;
		Label1: TLabel;
		edtIDFormaPgto: TDBEdit;
		Label2: TLabel;
		edtDescricao: TDBEdit;
		Label3: TLabel;
		edtCadastro: TDBEdit;
		procedure btnNovoClick(Sender: TObject);
	private
		{ Private declarations }
	public
		{ Public declarations }
	end;

var
	PaymentFormCRUDView: TPaymentFormCRUDView;

implementation

{$R *.dfm}

procedure TPaymentFormCRUDView.btnNovoClick(Sender: TObject);
begin
	inherited;
	edtCadastro.Text := DateToStr(Now);
	edtDescricao.SetFocus;
end;

end.