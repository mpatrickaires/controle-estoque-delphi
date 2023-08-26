unit uView.Search.User;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
	Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
	FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
	FireDAC.Comp.DataSet, FireDAC.Comp.Client,Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, 
	Vcl.ExtCtrls,frxClass, frxDBSet, uView.Search.Template;

type
	TUserSearchView = class(TTemplateSearchView)
		qryPesquisaPadraoID_USUARIO: TIntegerField;
		qryPesquisaPadraoNOME: TStringField;
		qryPesquisaPadraoTIPO: TStringField;
		qryPesquisaPadraoCADASTRO: TDateField;
		procedure btnPesquisarClick(Sender: TObject);
		procedure btnTransferirClick(Sender: TObject);
		procedure btnImprimirClick(Sender: TObject);
	private
		{ Private declarations }
	public
		{ Public declarations }
	end;

var
	UserSearchView: TUserSearchView;

implementation
{$R *.dfm}

procedure TUserSearchView.btnImprimirClick(Sender: TObject);
begin
	NomeRelatorio := 'relUsuario.fr3';
	inherited;
end;

procedure TUserSearchView.btnPesquisarClick(Sender: TObject);
begin
	inherited;
	qryPesquisaPadrao.SQL.Add('SELECT ID_USUARIO, NOME, TIPO, CADASTRO FROM TBLUSUARIO');
	case cbChavePesquisa.ItemIndex of
		0 : // Pesquisa por Código
		begin
			qryPesquisaPadrao.SQL.Add('WHERE ID_USUARIO = :pId_Usuario');
			qryPesquisaPadrao.ParamByName('pId_Usuario').AsString := edtNome.Text;
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
			qryPesquisaPadrao.SQL.Add('ORDER BY ID_USUARIO');
		end;
	end;

	qryPesquisaPadrao.Open;

	if qryPesquisaPadrao.IsEmpty then
	begin
	 MessageDlg('Registro não encontrado!', mtInformation, [mbOK], 0);
	end;
end;

procedure TUserSearchView.btnTransferirClick(Sender: TObject);
begin
	inherited;
	Codigo := qryPesquisaPadraoID_USUARIO.AsInteger;
end;

end.
