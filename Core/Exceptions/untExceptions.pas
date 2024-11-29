unit untExceptions;

interface

uses
  System.SysUtils;

type
  TExceptionNome = class(Exception);
  TExceptionMinNome = class(Exception);
  TExceptionDocumento = class(Exception);
  TExceptionMinDocumento = class(Exception);  
  TExceptionTelefone = class(Exception);
  TExceptionMinTelefone = class(Exception);

  procedure ExceptionNome;
  procedure ExceptionMinNome;
  procedure ExceptionDocumento;
  procedure ExceptionMinDocumento;
  procedure ExceptionTelefone;
  procedure ExceptionMinTelefone;
implementation

procedure ExceptionNome;
begin
  raise TExceptionNome.Create('Nome não pode estar em Branco!');
end;

procedure ExceptionMinNome;
begin
  raise TExceptionMinNome.Create('Nome deve ter no mínimo 3 caracteres!');
end;

procedure ExceptionDocumento;
begin
  raise TExceptionDocumento.Create('Documento não pode estar em branco!');
end;

procedure ExceptionMinDocumento;
begin
  raise TExceptionMinDocumento.Create('Documento deve ter no mínimo 11 caracteres!');
end;      

procedure ExceptionTelefone;
begin
  raise TExceptionTelefone.Create('Telefone não pode estar em branco!');
end;

procedure ExceptionMinTelefone;
begin
  raise TExceptionMinTelefone.Create('Telefone deve ter no mínimo 10 caracteres!');
end;
    
end.
