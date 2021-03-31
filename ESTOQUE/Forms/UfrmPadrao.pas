unit UfrmPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmPadrao = class(TForm)
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
  frmPadrao: TfrmPadrao;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmPadrao.btnAtualizarClick(Sender: TObject);
begin
  // Atualiza os registros
  trataBotoes;
  qryPadrao.Refresh;
  MessageBox(Handle, 'Registro atualizados com sucesso!', 'Atualizar Registros',
  MB_ICONINFORMATION + MB_OK);
end;

procedure TfrmPadrao.btnCancelarClick(Sender: TObject);
begin
  // Cancela a ação
  trataBotoes;
  qryPadrao.Cancel;
  MessageBox(Handle, 'Ação cancelada pelo usuário!', 'Cancelar Ação',
  MB_ICONINFORMATION + MB_OK);
end;

procedure TfrmPadrao.btnDeletarClick(Sender: TObject);
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

procedure TfrmPadrao.btnEditarClick(Sender: TObject);
begin
  // Abre o registro para edição
  trataBotoes;

  if MessageBox(Handle, 'Deseja editar esse registro?', 'Editar Registro',
  MB_ICONQUESTION + MB_YESNO) = mrYes then
   begin
     qryPadrao.Edit;
   end

  else
   begin
     trataBotoes;
     Abort;
   end;
end;

procedure TfrmPadrao.btnGravarClick(Sender: TObject);
begin
  // Salva o registro
  trataBotoes;
  qryPadrao.Post;
  qryPadrao.Refresh;
  MessageBox(Handle, 'Registro salvo com sucesso!', 'Gravar Registro',
  MB_ICONINFORMATION + MB_OK);
end;

procedure TfrmPadrao.btnNovoClick(Sender: TObject);
begin
  // Cria um novo registro
  qryPadrao.Open;
  trataBotoes;
  qryPadrao.Append;
end;

procedure TfrmPadrao.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryPadrao.Close;
end;

procedure TfrmPadrao.FormCreate(Sender: TObject);
begin
  qryPadrao.Open;
end;

procedure TfrmPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // Faz a função da tecla tab
  if Key = #13 then
   begin
     Key := #0;
     Perform(wm_nextDlgCtl, 0, 0);
   end;

end;

procedure TfrmPadrao.trataBotoes;
begin
  // Habilita e desabilita botões
  btnNovo.Enabled := not btnNovo.Enabled;
  btnDeletar.Enabled := not btnDeletar.Enabled;
  btnEditar.Enabled := not btnEditar.Enabled;
  btnGravar.Enabled := not btnGravar.Enabled;
  btnAtualizar.Enabled := not btnAtualizar.Enabled;
end;

end.
