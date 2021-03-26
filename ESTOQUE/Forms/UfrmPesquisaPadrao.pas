unit UfrmPesquisaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Mask, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, uDM;

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
    procedure btnPesquisarClick(Sender: TObject);
    procedure cbChavePesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaPadrao: TfrmPesquisaPadrao;

implementation

{$R *.dfm}

procedure TfrmPesquisaPadrao.btnPesquisarClick(Sender: TObject);
begin
  qryPesquisaPadrao.Close;
  qryPesquisaPadrao.SQL.Clear;
  qryPesquisaPadrao.Params.Clear;
end;

procedure TfrmPesquisaPadrao.cbChavePesquisaChange(Sender: TObject);
begin
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
  end;

  lblNome.Visible := edtNome.Visible;
  lblInicio.Visible := edtInicio.Visible;
  lblFim.Visible := edtFim.Visible;
end;

procedure TfrmPesquisaPadrao.FormCreate(Sender: TObject);
begin
  cbChavePesquisa.ItemIndex := 0;
  cbChavePesquisaChange(nil);
end;

procedure TfrmPesquisaPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then btnPesquisar.Click

  else if Key = VK_ESCAPE then Close;
end;

end.
