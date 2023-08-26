unit uView.CRUD.User;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
	Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
	FireDAC.Stan.Error, FireDAC.DatS,FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
	Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,Vcl.Buttons, Vcl.ExtCtrls, 
	Vcl.Mask,uView.Search.User, uView.CRUD.Template;

type
	TUsersCRUDView = class(TTemplateCRUDView)
		qryPadraoID_USUARIO: TIntegerField;
		qryPadraoNOME: TStringField;
		qryPadraoSENHA: TStringField;
		qryPadraoTIPO: TStringField;
		qryPadraoCADASTRO: TDateField;
		lbIdUser: TLabel;
		edtID: TDBEdit;
		lbName: TLabel;
		edtNome: TDBEdit;
		lbPassword: TLabel;
		edtSenha: TDBEdit;
		lbTipePeople: TLabel;
		lbRegister: TLabel;
		edtCadastro: TDBEdit;
		cbTipo: TDBComboBox;
		procedure btnNovoClick(Sender: TObject);
		procedure btnPesquisarClick(Sender: TObject);
	private
		{ Private declarations }
	public
		{ Public declarations }
	end;

var
	UsersCRUDView: TUsersCRUDView;

implementation

{$R *.dfm}

procedure TUsersCRUDView.btnNovoClick(Sender: TObject);
begin
	inherited;
	edtCadastro.Text := DateToStr(Now);
	edtNome.SetFocus;
end;

procedure TUsersCRUDView.btnPesquisarClick(Sender: TObject);
var
	ObjFrmPesquisaUsuario : TUserSearchView;
begin
	inherited;
	
	ObjFrmPesquisaUsuario := TUserSearchView.Create(nil);
	try
		ObjFrmPesquisaUsuario.ShowModal;

		if objFrmPesquisaUsuario.Codigo > 0 then
		begin
			qryPadrao.Open;
			qryPadrao.Locate('ID_USUARIO', objFrmPesquisaUsuario.Codigo, []);
		end;

	finally
	ObjFrmPesquisaUsuario.Free;
	end;
end;

end.
