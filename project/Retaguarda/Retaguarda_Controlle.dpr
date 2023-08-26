program Retaguarda_Controlle;

uses
  Vcl.Forms,
  uView.Controle.Main in '..\..\src\View\uView.Controle.Main.pas' {ControleMainView},
  uDM in '..\..\src\Dao\uDM.pas' {DM: TDataModule},
  uView.CRUD.Template in '..\..\src\View\CRUD\uView.CRUD.Template.pas' {TemplateCRUDView},
  uView.CRUD.User in '..\..\src\View\CRUD\uView.CRUD.User.pas' {UsersCRUDView},
  uView.CRUD.Issuer in '..\..\src\View\CRUD\uView.CRUD.Issuer.pas' {IssuerCRUDView},
  uView.CRUD.Customer in '..\..\src\View\CRUD\uView.CRUD.Customer.pas' {CustomerCRUDView},
  uView.CRUD.Provider in '..\..\src\View\CRUD\uView.CRUD.Provider.pas' {ProviderCRUDView},
  uView.CRUD.Product in '..\..\src\View\CRUD\uView.CRUD.Product.pas' {ProductCRUDView},
  uView.Search.User in '..\..\src\View\Search\uView.Search.User.pas' {UserSearchView},
  uView.Search.Provider in '..\..\src\View\Search\uView.Search.Provider.pas' {ProviderSearchView},
  uView.Search.Product in '..\..\src\View\Search\uView.Search.Product.pas' {ProductSearchView},
  uView.Search.Template in '..\..\src\View\Search\uView.Search.Template.pas' {TemplateSearchView},
  uView.GRID.Template in '..\..\src\View\GRID\uView.GRID.Template.pas' {TemplateGRIDView},
  uView.GRID.Sales in '..\..\src\View\GRID\uView.GRID.Sales.pas' {SalesGRIDView},
  uController.Login in '..\..\src\Controller\uController.Login.pas',
  uView.Login in '..\..\src\View\uView.Login.pas' {uViewLogin},
  uView.Search.Customer in '..\..\src\View\Search\uView.Search.Customer.pas' {CustomerSearchView},
  uView.CRUD.PaymentForm in '..\..\src\View\CRUD\uView.CRUD.PaymentForm.pas' {PaymentFormCRUDView},
  uService.Volatile.Conexao in '..\..\src\Service\Volatile\uService.Volatile.Conexao.pas',
  uModel.Dao in '..\..\src\Model\uModel.Dao.pas',
  uService.Interfaces in '..\..\src\Service\Interface\uService.Interfaces.pas';

{$R *.res}

begin
	Application.Initialize;
	Application.MainFormOnTaskbar := True;
	Application.CreateForm(TDM, DM);
	Application.CreateForm(TControleMainView, ControleMainView);
	Application.Run;
end.
