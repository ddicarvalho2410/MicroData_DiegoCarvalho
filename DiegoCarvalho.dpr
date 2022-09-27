program DiegoCarvalho;

uses
  Vcl.Forms,
  ufrmPedido in 'View\ufrmPedido.pas' {frmPedidos},
  udmPrincipal in 'Model\udmPrincipal.pas' {dmPrincipal: TDataModule},
  uModel in 'Model\uModel.pas',
  uController in 'Controller\uController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPedidos, frmPedidos);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.Run;
end.
