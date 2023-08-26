unit uService.Volatile.Conexao;

interface

uses
  uModel.Dao, uService.Interfaces;
type 
	TConexaoVolatileService = class(TInterfacedObject , IServiceDao) 
	private 
		fPathDefault : String;
		const 
			C_INI_FILE         = 'Server.Ini';
			C_SECTION_SETTINGS = 'Configuracoes';
			C_SECTION_PATHS    = 'Endereco Local';
			C_DEFAULT_USERNAME = 'SYSDBA';
			C_DEFAULT_PASSWORD = 'masterkey';
			C_DEFAULT_CHARSET  = 'WIN1252';
			C_DEFAULT_PROTOCOL = 'local';
			C_DEFAULT_SQL = 3;
	public
	
		constructor Create;
		destructor Destroy; override;
		class function New : IServiceDao;
		
		procedure WriteDao(_aModel : TModelDao) ;
		function openDao : TModelDao;
	end;
	
implementation

uses
	System.SysUtils , IniFiles, System.IOUtils;
	{ TConexaoVolatileService }

constructor TConexaoVolatileService.Create;
var
	aPath: String;
begin
	aPath := ExtractFilePath(ParamStr(0));
	fPathDefault := ExtractFilePath(TPath.GetDirectoryName(aPath)) + '\resources\';
end;

destructor TConexaoVolatileService.Destroy;
begin
	inherited;
end;

class function TConexaoVolatileService.New: IServiceDao;
begin
	Result := Self.Create;
end;

function TConexaoVolatileService.openDao: TModelDao;
var
	aIniFile : TIniFile;
	aModel : TModelDAO;
begin
	aModel           := TModelDAO.Create;
	aIniFile         := TIniFile.Create(C_INI_FILE);
	aModel.DATABASE  := aIniFile.ReadString(C_SECTION_PATHS, 'DATABASE', fPathDefault + 'data\DATABASE.FDB' );
	aModel.SERVER    := aIniFile.ReadString(C_SECTION_SETTINGS, 'Server Model', 'localhost' );
	aModel.PROTOCOL  := aIniFile.ReadString(C_SECTION_SETTINGS, 'Protocol', C_DEFAULT_PROTOCOL );
	aModel.VENDORLIB := aIniFile.ReadString(C_SECTION_PATHS, 'Lib FB Path', fPathDefault + 'dlls\fbClient.dll');
	aModel.USERNAME  := C_DEFAULT_USERNAME;
	aModel.PASSWORD  := C_DEFAULT_PASSWORD;
	aModel.CHARSET   := C_DEFAULT_CHARSET;
	aModel.PORT      := '3050';
	aModel.SQL_DIAL  := C_DEFAULT_SQL.ToString;
	Result           := aModel;
end;

procedure TConexaoVolatileService.WriteDao(_aModel: TModelDao);
var
	aIniFile : TIniFile;
begin
	aIniFile := TIniFile.Create(C_INI_FILE);
	try
		//aIniFile.WriteString(C_SECTION_SETTINGS, 'DATABASE', _aModel.DATABASE);
		//aIniFile.WriteInteger(C_SECTION_SETTINGS, 'Server Model', _aModel.SERVER);
		//aIniFile.WriteString(C_SECTION_SETTINGS, 'Protocol', _aModel.);
	finally
		aIniFile.Free;
	end;
end;

end.
