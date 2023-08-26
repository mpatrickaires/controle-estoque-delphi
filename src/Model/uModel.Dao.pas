unit uModel.Dao;

interface
type 
	TModelDAO = class
  private
		fPROTOCOL : String;
		fPORT     : String;
		fSERVER   : String;
		fDATABASE : String;
		fVENDORLIB: String;
		fUSERNAME : String;
		fPASSWORD : String;
		fCHARSET  : String;
		fSQL_DIAL : String;
	public
		property DATABASE : String  read fDATABASE  write fDATABASE;
		property SERVER   : String  read fSERVER    write fSERVER;
		property VENDORLIB: String  read fVENDORLIB write fVENDORLIB;
		property USERNAME : String  read fUSERNAME  write fUSERNAME;
		property PASSWORD : String  read fPASSWORD  write fPASSWORD ;
		property CHARSET  : String  read fCHARSET   write fCHARSET;
		property SQL_DIAL : String  read fSQL_DIAL  write fSQL_DIAL;
		property PROTOCOL : String  read fPROTOCOL  write fPROTOCOL;
		property PORT     : String  read fPORT      write fPORT;
	end;
implementation
	{ TModelConexao }

end.
