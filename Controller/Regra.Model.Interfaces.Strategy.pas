unit Regra.Model.Interfaces.Strategy;

interface

uses
  Regra.Model.Itens;

type
  iStrategy = interface
    ['{40CDB18B-D814-4B20-A223-A1BB567A0A55}']
    function PrecoItem(Value: Currency): iStrategy;
    function Item(Value: TRegraModelItens): iStrategy;
    function PrecoVenda: Currency;
  end;


implementation


end.
