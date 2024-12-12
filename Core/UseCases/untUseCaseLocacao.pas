unit untUseCaseLocacao;

interface

uses System.SysUtils, untDtoLocacao, untIUseCaseLocacao, untLocacao, untResponse,
     untEnums, untUtils, untExceptions;

type
  TUseCaseLocacao = class(TInterfacedObject, IUseCaseLocacao)
    function Cadastrar(locacao: TLocacao): TResponse;
    function Alterar(locacao: TLocacao): TResponse;
    function Deletar(id: Integer): TResponse;
    function Consultar(Dto: DtoLocacao): TResponse;

    procedure ValidarId(id: Integer);
  end;

implementation

{ TUseCaseLocacao }

function TUseCaseLocacao.Alterar(locacao: TLocacao): TResponse;
var
  response: TResponse;
begin
  try
    locacao.ValidarRegras;
    ValidarId(locacao.ID);

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

function TUseCaseLocacao.Cadastrar(locacao: TLocacao): TResponse;
var
  response: TResponse;
begin
  try
    locacao.ValidarRegras;

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

function TUseCaseLocacao.Consultar(Dto: DtoLocacao): TResponse;
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

function TUseCaseLocacao.Deletar(id: Integer): TResponse;
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

procedure TUseCaseLocacao.ValidarId(id: Integer);
begin
  if id <= 0 then
    ExceptionIdInvalido;
end;

end.
