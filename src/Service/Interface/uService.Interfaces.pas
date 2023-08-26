unit uService.Interfaces;

interface

uses
  uModel.Dao;
type
	IServiceDao = Interface 
		['{F73104A9-9E54-4D22-A232-63F73AE56AD5}']
		procedure WriteDao(_aModel : TModelDao) ;
		function openDao : TModelDao;
   End;

implementation

end.
