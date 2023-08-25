unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI;

type
	TDM = class(TDataModule)
		Conexao: TFDConnection;
		Transacao: TFDTransaction;
    FBDriverLink: TFDPhysFBDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
	private
		{ Private declarations }
		procedure AdjustDataBase;
	public
		{ Public declarations }
	end;

var
	DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }

procedure TDM.AdjustDataBase;
begin
	FBDriverLink.VendorLib := ExtractFileDir(ParamStr(0) + '/fbClient.dll');
	Conexao.Params.Values['Database'] := ExtractFileDir(ParamStr(0)) + '\DATA\DATABASE.FDB';
end;

end.
