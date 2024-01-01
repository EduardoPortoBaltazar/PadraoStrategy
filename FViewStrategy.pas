unit FViewStrategy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.AppEvnts, Regra.Model.Itens,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Regra.Model.Interfaces.Strategy.Controller;

type
  TfrmStrategy = class(TForm)
    RadioGroup1: TRadioGroup;
    rdbArroz: TRadioButton;
    rdbFrios: TRadioButton;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    rdbFeijao: TRadioButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function CriarItem: TRegraModelItens;
  public
    { Public declarations }
  end;

var
  frmStrategy: TfrmStrategy;

implementation

{$R *.dfm}

procedure TfrmStrategy.BitBtn1Click(Sender: TObject);
var
  LPrecoDeVenda: Currency;
  LItem: TRegraModelItens;
begin
  if rdbFeijao.Checked then
  begin
    ShowMessage(Edit1.Text);
    Exit;
  end;

  LItem := CriarItem;
  try
    LPrecoDeVenda := TRegraControllerStragy
                    .New
                    .PrecoItem(StrToFloat(Edit1.Text))
                    .Item(LItem)
                    .PrecoVenda;

    ShowMessage(LPrecoDeVenda.ToString);
  finally
    LItem.Free;
  end;
end;

function TfrmStrategy.CriarItem: TRegraModelItens;
begin
  Result := TRegraModelItens.Create;


  if rdbArroz.Checked then
  begin
    Result.Descricao := 'ARROZ';
    Result.GrupoItens := 'Farinacios';
  end;

  if rdbFrios.Checked then
  begin
    Result.Descricao := 'Queijo';
    Result.GrupoItens := 'Frios';
  end;


end;

procedure TfrmStrategy.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
