unit untVeiculo;

interface

uses untEnums;

type
  TVeiculo = class
  private
    FValor: Currency;
    FID: Integer;
    FStatus: TStatus;
    FPlaca: String;
    FNome: String;
    procedure SetID(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetPlaca(const Value: String);
    procedure SetStatus(const Value: TStatus);
    procedure SetValor(const Value: Currency);
  published
    property ID: Integer read FID write SetID;
    property Nome: String read FNome write SetNome;
    property Placa: String read FPlaca write SetPlaca;
    property Valor: Currency read FValor write SetValor;
    property Status: TStatus read FStatus write SetStatus;
  end;

implementation

{ TVeiculo }

procedure TVeiculo.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TVeiculo.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TVeiculo.SetPlaca(const Value: String);
begin
  FPlaca := Value;
end;

procedure TVeiculo.SetStatus(const Value: TStatus);
begin
  FStatus := Value;
end;

procedure TVeiculo.SetValor(const Value: Currency);
begin
  FValor := Value;
end;

end.