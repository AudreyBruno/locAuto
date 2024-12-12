unit untLocacao;

interface

uses System.SysUtils, System.DateUtils, untCliente, untVeiculo, untExceptions,
     untEnums;

type
  TLocacao = class
  private
    FCliente: TCliente;
    FTotal: Currency;
    FDataLocacao: TDateTime;
    FId: Integer;
    FDataDevolucao: TDateTime;
    FVeiculo: TVeiculo;
    procedure SetCliente(const Value: TCliente);
    procedure SetDataDevolucao(const Value: TDateTime);
    procedure SetDataLocacao(const Value: TDateTime);
    procedure SetId(const Value: Integer);
    procedure SetTotal(const Value: Currency);
    procedure SetVeiculo(const Value: TVeiculo);
  published
    property Id: Integer read FId write SetId;
    property Cliente: TCliente read FCliente write SetCliente;
    property Veiculo: TVeiculo read FVeiculo write SetVeiculo;
    property DataLocacao: TDateTime read FDataLocacao write SetDataLocacao;
    property DataDevolucao: TDateTime read FDataDevolucao write SetDataDevolucao;
    property Total: Currency read FTotal write SetTotal;

    procedure ValidarRegras;
    function CalcularTotal: Currency;
  end;

implementation

{ TLocacao }

function TLocacao.CalcularTotal: Currency;
var
  total: Currency;
  qtdDias: Integer;
begin
  total := 0;
  qtdDias := 1;

  if (FDataLocacao <> StrToDate('30/12/1899')) and
     (FDataDevolucao <> StrToDate('30/12/1899')) then
    begin
      qtdDias := DaysBetween(FDataLocacao, FDataDevolucao);

      if qtdDias = 0 then
        qtdDias := 1
    end;

  total := qtdDias * FVeiculo.Valor;

  result := total;
end;

procedure TLocacao.SetCliente(const Value: TCliente);
begin
  FCliente := Value;
end;

procedure TLocacao.SetDataDevolucao(const Value: TDateTime);
begin
  FDataDevolucao := Value;
end;

procedure TLocacao.SetDataLocacao(const Value: TDateTime);
begin
  FDataLocacao := Value;
end;

procedure TLocacao.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TLocacao.SetTotal(const Value: Currency);
begin
  FTotal := Value;
end;

procedure TLocacao.SetVeiculo(const Value: TVeiculo);
begin
  FVeiculo := Value;
end;

procedure TLocacao.ValidarRegras;
begin
  if FVeiculo = nil then
    ExceptionLocacaoVeiculo;

  if FCliente = nil then
    ExceptionLocacaoCliente;

  if FVeiculo.Status = sAlugado then
    ExceptionLocacaoStatus;
end;

end.
