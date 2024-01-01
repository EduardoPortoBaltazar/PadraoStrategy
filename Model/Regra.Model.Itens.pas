unit Regra.Model.Itens;

interface

type
  TRegraModelItens = class
  private
    FDescricao: string;
    FPrecoUnitario: Currency;
    FPrecoVenda: Currency;
    FGrupoItens: string;
    procedure SetPrecoVenda(const Value: Currency);
    function GetPrecoVenda: Currency;
    procedure SetPrecoUnitario(const Value: Currency);

  public
    property Descricao: string read FDescricao write FDescricao;
    property PrecoUnitario: Currency read FPrecoUnitario write SetPrecoUnitario;
    property PrecoVenda: Currency read GetPrecoVenda write SetPrecoVenda;
    property GrupoItens: string read FGrupoItens write FGrupoItens;


  end;

implementation

uses
  system.SysUtils;




{ TRegraModelItens }

function TRegraModelItens.GetPrecoVenda: Currency;
begin
  //Result := TPromocao(DayOfWeek(Now - 1)).precoVenda(FPrecoUnitario);
end;

procedure TRegraModelItens.SetPrecoUnitario(const Value: Currency);
begin
  FPrecoUnitario := Value;
end;

procedure TRegraModelItens.SetPrecoVenda(const Value: Currency);
begin
  FPrecoVenda := Value;
end;

end.
