unit untUseCaseCliente;

interface

uses System.SysUtils, untIUseCaseCliente, untCliente, untDtoCliente, untResponse,
  untEnums;

type
  TUseCaseCliente = class(TInterfacedObject, IUseCaseCliente)
    function Cadastrar(cliente: TCliente): TResponse;
    function Alterar(cliente: TCliente): TResponse;
    function Deletar(id: Integer): TResponse;
    function Consultar(Dto: DtoCliente): TResponse;
  end;

implementation

{ TUseCaseCliente }

function TUseCaseCliente.Alterar(cliente: TCliente): TResponse;
var
  response: TResponse;
begin
  try
    response.Success := True;
    response.ErrorCode := 0;
    response.Message := RetornaMsgResponse.ALTERADO_COM_SUCESSO;
    response.Data := nil;
  except
    on e: Exception do
      begin

      end;
  end;

  Result := response;
end;

function TUseCaseCliente.Cadastrar(cliente: TCliente): TResponse;
var
  response: TResponse;
begin
  try
    response.Success := True;
    response.ErrorCode := 0;
    response.Message := RetornaMsgResponse.CADASTRADO_COM_SUCESSO;
    response.Data := nil;
  except
    on e: Exception do
      begin

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

      end;
  end;

  Result := response;
end;

function TUseCaseCliente.Deletar(id: Integer): TResponse;
var
  response: TResponse;
begin
  try
    response.Success := True;
    response.ErrorCode := 0;
    response.Message := RetornaMsgResponse.DELETADO_COM_SUCESSO;
    response.Data := nil;
  except
    on e: Exception do
      begin

      end;
  end;

  Result := response;
end;

end.
