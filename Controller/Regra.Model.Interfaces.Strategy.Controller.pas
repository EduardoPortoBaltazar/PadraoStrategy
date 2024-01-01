unit Regra.Model.Interfaces.Strategy.Controller;

interface

uses
  Regra.Model.Interfaces.Strategy,
  Regra.Model.Itens;

type
  TRegraControllerStragy = class (TInterfacedObject, iStrategy)
    private
    FItem: TRegraModelItens;
    FPrecoItem: Currency;

    public
      function PrecoItem(Value: Currency): iStrategy;
      function Item(Value: TRegraModelItens): iStrategy;

      function PrecoVenda: Currency;

      constructor Create;
      destructor Destroy; override;

      class function New: iStrategy;
  end;

implementation

uses
  Regra.Model.Controller.Regras.GrupoItens;


{ TRegraControllerStragy }

constructor TRegraControllerStragy.Create;
begin

end;

destructor TRegraControllerStragy.Destroy;
begin

  inherited;
end;

function TRegraControllerStragy.Item(Value: TRegraModelItens): iStrategy;
begin
  FItem := Value;
  Result := Self;
end;

class function TRegraControllerStragy.New: iStrategy;
begin
  Result := Self.Create;
end;

function TRegraControllerStragy.PrecoItem(Value: Currency): iStrategy;
begin
  FPrecoItem := Value;
  Result := Self;
end;

function TRegraControllerStragy.PrecoVenda: Currency;
begin
  Result := TRegraControllerRegraGrupoItens
            .New
            .Item(FItem)
            .PrecoItem(FPrecoItem)
            .PrecoVenda;
end;

end.
