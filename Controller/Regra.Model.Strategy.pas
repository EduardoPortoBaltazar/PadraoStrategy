unit Regra.Model.Strategy;

interface

type
  TPromocao = (Domingo, Segunda, Terca, Quarta, Quinta, Sexta, Sabado);

  THelperPromocao = record helper for TPromocao
    function precoVenda(Value: Currency): Currency;
  end;


implementation

{ THelperPromocao }

function THelperPromocao.precoVenda(Value: Currency): Currency;
begin
  case Self of
    Domingo: Result := Value;
    Segunda: Result := Result - (Result * 0.20);
    Terca: Result := Result - (Result * 0.30);
    Quarta: Result := Result - (Result * 0.40);
    Quinta: Result := Result - (Result * 0.50);
    Sexta: Result := Result - (Result * 0.60);
    Sabado: Result := Result - (Result * 0.70);
  end;
end;

end.
