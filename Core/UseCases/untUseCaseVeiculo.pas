unit untUseCaseVeiculo;

interface

uses System.SysUtils, untDtoVeiculo, untVeiculo, untIUseCaseVeiculo, untResponse,
     untEnums, untUtils, untExceptions;

type
  TUseCaseVeiculo = class(TInterfacedObject, IUseCaseVeiculo)
    function Cadastrar(veiculo: TVeiculo): TResponse;
    function Alterar(veiculo: TVeiculo): TResponse;
    function Deletar(id: Integer): TResponse;
    function Consultar(Dto: DtoVeiculo): TResponse;

    procedure ValidarId(id: Integer);
  end;

implementation

{ TUseCaseVeiculo }

function TUseCaseVeiculo.Alterar(veiculo: TVeiculo): TResponse;
var
  response: TResponse;
begin
  try
    veiculo.ValidarRegras;
    ValidarId(veiculo.ID);

    response.Success := True;
    response.ErrorCode := 0;
    response.Message := RetornaMsgResponse.ALTERADO_COM_SUCESSO;
    response.Data := nil;
  except
    on e: Exception do
      begin
        response := TratarException(e);
      end;
  end;

  Result := response;
end;

function TUseCaseVeiculo.Cadastrar(veiculo: TVeiculo): TResponse;
var
  response: TResponse;
begin
  try
    veiculo.ValidarRegras;

    response.Success := True;
    response.ErrorCode := 0;
    response.Message := RetornaMsgResponse.CADASTRADO_COM_SUCESSO;
    response.Data := nil;
  except
    on e: Exception do
      begin
        response := TratarException(e);
      end;
  end;

  Result := response;
end;

function TUseCaseVeiculo.Consultar(Dto: DtoVeiculo): TResponse;
var
  response: TResponse;
begin
  try
    response.Success := True;
    response.ErrorCode := 0;
    response.Message := RetornaMsgResponse.CONSULTA_REALIZADA_COM_SUCESSO;
    response.Data := nil;
  except
    on e: Exception do
      begin
        response := TratarException(e);
      end;
  end;

  Result := response;
end;

function TUseCaseVeiculo.Deletar(id: Integer): TResponse;
var
  response: TResponse;
begin
  try
    ValidarId(id);

    response.Success := True;
    response.ErrorCode := 0;
    response.Message := RetornaMsgResponse.DELETADO_COM_SUCESSO;
    response.Data := nil;
  except
    on e: Exception do
      begin
        response := TratarException(e);
      end;
  end;

  Result := response;
end;

procedure TUseCaseVeiculo.ValidarId(id: Integer);
begin
  if id <= 0 then
    ExceptionIdInvalido;
end;

end.
