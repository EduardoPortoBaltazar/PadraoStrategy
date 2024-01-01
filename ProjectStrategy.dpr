program ProjectStrategy;

uses
  Vcl.Forms,
  FViewStrategy in 'FViewStrategy.pas' {frmStrategy},
  Regra.Model.Interfaces.Strategy in 'Controller\Regra.Model.Interfaces.Strategy.pas',
  Regra.Model.Itens in 'Model\Regra.Model.Itens.pas',
  Regra.Model.Interfaces.Strategy.Controller in 'Controller\Regra.Model.Interfaces.Strategy.Controller.pas',
  Regra.Model.Interfaces.Regras in 'Controller\Regra.Model.Interfaces.Regras.pas',
  Regra.Model.Controller.Regras.GrupoItens in 'Controller\Regra.Model.Controller.Regras.GrupoItens.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmStrategy, frmStrategy);
  Application.Run;
end.
