unit Regra.Model.Interfaces.Strategy.Controller.GrupoProduto;

interface

uses
  Regra.Model.Interfaces.Strategy,
  Regra.Model.Interfaces.Strategy.Controller,
  Regra.Model.Itens;

type
  TRegraControllerStragyGrupoProduto = class (TRegraControllerStragy)
    private

    public
      function PrecoVenda: Currency;

      constructor Create;
      destructor Destroy; override;
   end;

implementation


{ TRegraControllerStragyGrupoProduto }

constructor TRegraControllerStragyGrupoProduto.Create;
begin

end;

destructor TRegraControllerStragyGrupoProduto.Destroy;
begin

  inherited;
end;


function TRegraControllerStragyGrupoProduto.PrecoVenda: Currency;
begin


end;

end.

