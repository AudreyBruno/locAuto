unit untUseCaseCliente;

interface

uses System.SysUtils, untIUseCaseCliente, untCliente, untDtoCliente, untResponse,
  untEnums, untUtils, untExceptions;

type
  TUseCaseCliente = class(TInterfacedObject, IUseCaseCliente)
    function Cadastrar(cliente: TCliente): TResponse;
    function Alterar(cliente: TCliente): TResponse;
    function Deletar(id: Integer): TResponse;
    function Consultar(Dto: DtoCliente): TResponse;
  private
    procedure ValidarId(id: Integer);
  end;

implementation

{ TUseCaseCliente }

function TUseCaseCliente.Alterar(cliente: TCliente): TResponse;
var
  response: TResponse;
begin
  try
    cliente.ValidarRegras;
    ValidarId(cliente.ID);

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

function TUseCaseCliente.Cadastrar(cliente: TCliente): TResponse;
var
  response: TResponse;
begin
  try
    cliente.ValidarRegras;

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

function TUseCaseCliente.Consultar(Dto: DtoCliente): TResponse;
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

function TUseCaseCliente.Deletar(id: Integer): TResponse;
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

procedure TUseCaseCliente.ValidarId(id: Integer);
begin
  if id <= 0 then
    ExceptionIdInvalido;
end;

end.
