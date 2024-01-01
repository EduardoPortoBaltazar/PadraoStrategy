unit Regra.Model.Interfaces.Regras;

interface

uses
  System.Classes,
  Regra.Model.Itens;

type
  iRegras = interface
    ['{81AD3486-64DE-4C8C-9A44-28D489F395CE}']
  function Regras: iRegras;
  end;

  iRegraGrupoProduto = interface
  ['{B214069F-B4A5-4D44-850C-E8FBA1578DDC}']
  function PrecoItem(Value: Currency): iRegraGrupoProduto;
  function Item(Value: TRegraModelItens): iRegraGrupoProduto;
  function PrecoVenda: Currency;
  end;

implementation

end.
