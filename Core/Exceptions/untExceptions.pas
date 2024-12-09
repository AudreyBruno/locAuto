unit untExceptions;

interface

uses
  System.SysUtils;

type
  TExceptionIdInvalido = class(Exception);

  TExceptionNome = class(Exception);
  TExceptionMinNome = class(Exception);

  TExceptionDocumento = class(Exception);
  TExceptionMinDocumento = class(Exception);
  TExceptionTelefone = class(Exception);
  TExceptionMinTelefone = class(Exception);

  TExceptionPlaca = class(Exception);
  TExceptionMinPlaca = class(Exception);
  TExceptionValor = class(Exception);

  procedure ExceptionIdInvalido;

  procedure ExceptionNome;
  procedure ExceptionMinNome;

  procedure ExceptionDocumento;
  procedure ExceptionMinDocumento;
  procedure ExceptionTelefone;
  procedure ExceptionMinTelefone;

  procedure ExceptionPlaca;
  procedure ExceptionMinPlaca;
  procedure ExceptionValor;
implementation

procedure ExceptionIdInvalido;
begin
  raise TExceptionNome.Create('� id informado � inv�lido!');
end;

procedure ExceptionNome;
begin
  raise TExceptionNome.Create('Nome n�o pode estar em Branco!');
end;

procedure ExceptionMinNome;
begin
  raise TExceptionMinNome.Create('Nome deve ter no m�nimo 3 caracteres!');
end;

procedure ExceptionDocumento;
begin
  raise TExceptionDocumento.Create('Documento n�o pode estar em branco!');
end;

procedure ExceptionMinDocumento;
begin
  raise TExceptionMinDocumento.Create('Documento deve ter no m�nimo 11 caracteres!');
end;      

procedure ExceptionTelefone;
begin
  raise TExceptionTelefone.Create('Telefone n�o pode estar em branco!');
end;

procedure ExceptionMinTelefone;
begin
  raise TExceptionMinTelefone.Create('Telefone deve ter no m�nimo 10 caracteres!');
end;

procedure ExceptionPlaca;
begin
  raise TExceptionTelefone.Create('Placa n�o pode estar em branco!');
end;

procedure ExceptionMinPlaca;
begin
  raise TExceptionMinDocumento.Create('Placa deve ter no m�nimo 6 caracteres!');
end;

procedure ExceptionValor;
begin
  raise TExceptionTelefone.Create('Valor deve ser maior que 0!');
end;
    
end.
