unit uView.GRID.Template;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
	Vcl.Dialogs, FireDAC.Stan.Intf,FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
	FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, 
	Vcl.DBCtrls, Vcl.StdCtrls,Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, uView.CRUD.Template;
type
	TTemplateGRIDView = class(TTemplateCRUDView)
		Panel3: TPanel;
		Panel4: TPanel;
		DBGrid1: TDBGrid;
		btnItem: TBitBtn;
		btnOk: TBitBtn;
		btnExcluir: TBitBtn;
		btnImprimir: TBitBtn;
		qryPadraoItem: TFDQuery;
		dsPadraoItem: TDataSource;
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
	private
		{ Private declarations }
	public
		{ Public declarations }
	end;

var
	TemplateGRIDView: TTemplateGRIDView;

implementation

{$R *.dfm}

procedure TTemplateGRIDView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	inherited;
	qryPadraoItem.Close;
end;

end.
