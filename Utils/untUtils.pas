unit untUtils;

interface

uses System.SysUtils, untResponse, untEnums, untExceptions;

function TratarException(e: Exception): TResponse;

implementation

function TratarException(e: Exception): TResponse;
var
  response: TResponse;
begin
  response.Success := False;
  response.Message := e.Message;
  response.Data := nil;

  if e.ClassType = TExceptionNome then
    response.ErrorCode := RetornaErrorsCode.NOME_NAO_INFORMADO;

  if e.ClassType = TExceptionMinNome then
    response.ErrorCode := RetornaErrorsCode.NOME_INVALIDO;

  if e.ClassType = TExceptionDocumento then
    response.ErrorCode := RetornaErrorsCode.DOCUMENTO_NAO_INFORMADO;

  if e.ClassType = TExceptionMinDocumento then
    response.ErrorCode := RetornaErrorsCode.DOCUMENTO_INVALIDO;

  if e.ClassType = TExceptionTelefone then
    response.ErrorCode := RetornaErrorsCode.TELEFONE_NAO_INFORMADO;

  if e.ClassType = TExceptionMinTelefone then
    response.ErrorCode := RetornaErrorsCode.TELEFONE_INVALIDO;

  Result := response;
end;

end.
