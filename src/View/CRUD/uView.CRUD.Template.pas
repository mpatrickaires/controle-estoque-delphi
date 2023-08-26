unit uView.CRUD.Template;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
	Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, 
	FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,FireDAC.Stan.Error, FireDAC.DatS, 
	FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
	FireDAC.Comp.Client;

type
	TTemplateCRUDView = class(TForm)
		Panel1: TPanel;
		Panel2: TPanel;
		btnNovo: TBitBtn;
		btnDeletar: TBitBtn;
		btnEditar: TBitBtn;
		btnGravar: TBitBtn;
		btnCancelar: TBitBtn;
		btnAtualizar: TBitBtn;
		btnPesquisar: TBitBtn;
		DBNavigator1: TDBNavigator;
		qryPadrao: TFDQuery;
		dsPadrao: TDataSource;
		btnSair: TBitBtn;
		procedure trataBotoes();
		procedure FormKeyPress(Sender: TObject; var Key: Char);
		procedure btnNovoClick(Sender: TObject);
		procedure btnDeletarClick(Sender: TObject);
		procedure btnEditarClick(Sender: TObject);
		procedure btnGravarClick(Sender: TObject);
		procedure btnCancelarClick(Sender: TObject);
		procedure btnAtualizarClick(Sender: TObject);
		procedure btnSairClick(Sender: TObject);
		procedure FormCreate(Sender: TObject);
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
	private
		{ Private declarations }
	public
		{ Public declarations }
	end;

var
	TemplateCRUDView: TTemplateCRUDView;

implementation

{$R *.dfm}

uses uDM;

procedure TTemplateCRUDView.btnAtualizarClick(Sender: TObject);
begin
	// Atualiza os registros
	trataBotoes;
	qryPadrao.Refresh;
	MessageBox(Handle, 'Registro atualizados com sucesso!', 'Atualizar Registros',
	MB_ICONINFORMATION + MB_OK);
end;

procedure TTemplateCRUDView.btnCancelarClick(Sender: TObject);
begin
	// Cancela a ação
	trataBotoes;
	qryPadrao.Cancel;
	MessageBox(Handle, 'Ação cancelada pelo usuário!', 'Cancelar Ação',
	MB_ICONINFORMATION + MB_OK);
end;

procedure TTemplateCRUDView.btnDeletarClick(Sender: TObject);
begin
	// Deleta o registro
	trataBotoes;

	if MessageBox(Handle, 'Deseja deletar esse registro?', 'Deletar Registro',
	MB_ICONQUESTION + MB_YESNO) = mrYes then
	begin
		qryPadrao.Delete;
		MessageBox(Handle, 'Registro deletado com sucesso!', 'Deletar Registro',
		MB_ICONINFORMATION + MB_OK);
	end
	else
	begin
		trataBotoes;
		Abort;
	end;
end;

procedure TTemplateCRUDView.btnEditarClick(Sender: TObject);
begin
  // Abre o registro para edição
  trataBotoes;

	if MessageBox(Handle, 'Deseja editar esse registro?', 'Editar Registro', MB_ICONQUESTION + MB_YESNO) = mrYes then
		qryPadrao.Edit
	else
	begin
		trataBotoes;
		Abort;
	end;
end;

procedure TTemplateCRUDView.btnGravarClick(Sender: TObject);
begin
	// Salva o registro
	trataBotoes;
	qryPadrao.Post;
	qryPadrao.Refresh;
	MessageBox(Handle, 'Registro salvo com sucesso!', 'Gravar Registro',
	MB_ICONINFORMATION + MB_OK);
end;

procedure TTemplateCRUDView.btnNovoClick(Sender: TObject);
begin
	// Cria um novo registro
	qryPadrao.Open;
	trataBotoes;
	qryPadrao.Append;
end;

procedure TTemplateCRUDView.btnSairClick(Sender: TObject);
begin
	Close;
end;

procedure TTemplateCRUDView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	qryPadrao.Close;
end;

procedure TTemplateCRUDView.FormCreate(Sender: TObject);
begin
	qryPadrao.Open;
end;

procedure TTemplateCRUDView.FormKeyPress(Sender: TObject; var Key: Char);
begin
	// Faz a função da tecla tab
	if Key = #13 then
	begin
		Key := #0;
		Perform(wm_nextDlgCtl, 0, 0);
	end; 
end;

procedure TTemplateCRUDView.trataBotoes;
begin
	// Habilita e desabilita botões
	btnNovo.Enabled := not btnNovo.Enabled;
	btnDeletar.Enabled := not btnDeletar.Enabled;
	btnEditar.Enabled := not btnEditar.Enabled;
	btnGravar.Enabled := not btnGravar.Enabled;
	btnAtualizar.Enabled := not btnAtualizar.Enabled;
end;

end.
