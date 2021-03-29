unit UfrmPesquisaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Mask, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, uDM, frxClass, frxDBSet;

type
  TfrmPesquisaPadrao = class(TForm)
    Panel1: TPanel;
    cbChavePesquisa: TComboBox;
    Label1: TLabel;
    edtNome: TEdit;
    edtInicio: TMaskEdit;
    edtFim: TMaskEdit;
    lblNome: TLabel;
    lblInicio: TLabel;
    lblFim: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btnPesquisar: TBitBtn;
    btnImprimir: TBitBtn;
    btnTransferir: TBitBtn;
    qryPesquisaPadrao: TFDQuery;
    dsPesquisaPadrao: TDataSource;
    frxReport: TfrxReport;
    frxDB: TfrxDBDataset;
    procedure btnPesquisarClick(Sender: TObject);
    procedure cbChavePesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTransferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    FCodigo : Integer;
    FNomeRelatorio : String;
  public
    { Public declarations }
    property Codigo: Integer read FCodigo write FCodigo;
    property NomeRelatorio : String read FNomeRelatorio write FNomeRelatorio;
  end;

var
  frmPesquisaPadrao: TfrmPesquisaPadrao;

implementation

{$R *.dfm}

procedure TfrmPesquisaPadrao.btnImprimirClick(Sender: TObject);
var
  Caminho : String;
begin
  Caminho := ExtractFilePath(Application.ExeName) + NomeRelatorio;

  if frxReport.LoadFromFile(Caminho) then
   begin
    frxReport.Clear;
    frxReport.LoadFromFile(Caminho);
    frxReport.PrepareReport(True);
    frxReport.ShowPreparedReport;
   end
  else
   MessageDlg('Relatório não encontrado!' + #13 +
   'Caminho: ' + QuotedStr(Caminho), mtError, [mbOK], 0);
end;

procedure TfrmPesquisaPadrao.btnPesquisarClick(Sender: TObject);
begin
  qryPesquisaPadrao.Close;
  qryPesquisaPadrao.SQL.Clear;
  qryPesquisaPadrao.Params.Clear;
end;

procedure TfrmPesquisaPadrao.btnTransferirClick(Sender: TObject);
begin
  if qryPesquisaPadrao.RecordCount > 0 then ModalResult := mrOK
  else Abort;
end;

procedure TfrmPesquisaPadrao.cbChavePesquisaChange(Sender: TObject);
begin
  edtNome.Text := '';
  edtInicio.Text := '';
  edtFim.Text := '';

  case cbChavePesquisa.ItemIndex of
   0 :
    begin
     edtNome.Visible := True;
     edtInicio.Visible := False;
     edtFim.Visible := False;

     lblNome.Caption := 'Código';
    end;

   1 :
    begin
     edtNome.Visible := True;
     edtInicio.Visible := False;
     edtFim.Visible := False;
     lblNome.Caption := 'Nome';
    end;

   2 :
    begin
     edtNome.Visible := False;
     edtInicio.Visible := True;
     edtFim.Visible := False;

     lblInicio.Caption := 'Data';
    end;

   3 :
    begin
     edtNome.Visible := False;
     edtInicio.Visible := True;
     edtFim.Visible := True;

     lblInicio.Caption := 'Data Inicial';
     lblFim.Caption := 'Data Final';
    end;

   4 :
    begin
     edtNome.Visible := False;
     edtInicio.Visible := False;
     edtFim.Visible := False;
    end;
  end;

  lblNome.Visible := edtNome.Visible;
  lblInicio.Visible := edtInicio.Visible;
  lblFim.Visible := edtFim.Visible;
end;

procedure TfrmPesquisaPadrao.DBGrid1DblClick(Sender: TObject);
begin
  btnTransferir.Click;
end;

procedure TfrmPesquisaPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryPesquisaPadrao.Close;
end;

procedure TfrmPesquisaPadrao.FormCreate(Sender: TObject);
begin
  cbChavePesquisa.ItemIndex := 0;
  cbChavePesquisaChange(nil);

  qryPesquisaPadrao.Open;
end;

procedure TfrmPesquisaPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then btnPesquisar.Click

  else if Key = VK_ESCAPE then Close;
end;

end.
