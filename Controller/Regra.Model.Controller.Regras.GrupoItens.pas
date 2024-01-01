unit Regra.Model.Controller.Regras.GrupoItens;

interface

uses
  System.Classes,
  Regra.Model.Itens,
  Regra.Model.Interfaces.Regras;

type
  TRegraControllerRegraGrupoItens = class ( TInterfacedObject, iRegraGrupoProduto)
    private
      Fitem: TRegraModelItens;
      FPreco: Currency;

    public
      function PrecoItem(Value: Currency): iRegraGrupoProduto;
      function Item(Value: TRegraModelItens): iRegraGrupoProduto;
      function PrecoVenda: Currency;

      constructor Create;
      destructor Destroy; override;
      class function New: iRegraGrupoProduto;
  end;

implementation

uses
  Regra.Model.Interfaces.Strategy;


{ TRegraControllerRegraGrupoItens }

constructor TRegraControllerRegraGrupoItens.Create;
begin

end;

destructor TRegraControllerRegraGrupoItens.Destroy;
begin

  inherited;
end;

function TRegraControllerRegraGrupoItens.Item(Value: TRegraModelItens): iRegraGrupoProduto;
begin
  Fitem := Value;
  Result := Self;
end;

class function TRegraControllerRegraGrupoItens.New: iRegraGrupoProduto;
begin
  Result := Self.Create;
end;

function TRegraControllerRegraGrupoItens.PrecoItem(Value: Currency): iRegraGrupoProduto;
begin
  FPreco := Value;
  Result := Self;
end;

function TRegraControllerRegraGrupoItens.PrecoVenda: Currency;
begin
  Result := 0;
  if Fitem.GrupoItens = 'Farinacios' then
  Result := FPreco - (FPreco * 0.20);

  if Fitem.GrupoItens = 'Frios' then
  Result := FPreco - (FPreco * 0.50);
end;

end.

