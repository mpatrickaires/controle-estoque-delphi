unit uDM;

interface

uses
	System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,FireDAC.Stan.Error, FireDAC.UI.Intf, 
	FireDAC.Phys.Intf, FireDAC.Stan.Def,FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
	FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, 
	System.IOUtils;
type
	TDM = class(TDataModule)
		FDConnection: TFDConnection;
		Transacao: TFDTransaction;
		FBDriverLink: TFDPhysFBDriverLink;
		WaitCursor: TFDGUIxWaitCursor;
		procedure DataModuleCreate(Sender: TObject);
	private
		{ Private declarations }
		procedure AdjustDataBase;
	public
		{ Public declarations }
	end;
var
	DM: TDM;

implementation

uses
  uService.Volatile.Conexao;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }

procedure TDM.AdjustDataBase;
var 
	aNewPath, Path : String;
begin
	//separa os arquivos nos resources pois na pasta compile só fica o projeto e as dcus que vc deve 
	//dar um clean e um build e compile e gerar na hora  somente quando necessário  para nao gerar  
	//arquivos desnecessarios no projeto. ------ Duvidas #Sidemarschimmelpfennig@outlook.com
	FDConnection.Connected := False;
	FBDriverLink.VendorLib := TConexaoVolatileService.New.openDao.VENDORLIB;
	FDConnection.Params.Values['Database']     := TConexaoVolatileService.New.openDao.DATABASE;
	FDConnection.Params.Values['User_Name']    := TConexaoVolatileService.New.openDao.USERNAME;
	FDConnection.Params.Values['Password']     := TConexaoVolatileService.New.openDao.PASSWORD;
	FDConnection.Params.Values['Protocol']     := TConexaoVolatileService.New.openDao.PROTOCOL;
	FDConnection.Params.Values['Port']         := TConexaoVolatileService.New.openDao.PORT;
	FDConnection.Params.Values['Server']       := TConexaoVolatileService.New.openDao.SERVER;
	FDConnection.Params.Values['SQLDialect']   := TConexaoVolatileService.New.openDao.SQL_DIAL;
	FDConnection.Params.Values['CharacterSet'] := TConexaoVolatileService.New.openDao.CHARSET;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
	AdjustDataBase;
end;

end.
