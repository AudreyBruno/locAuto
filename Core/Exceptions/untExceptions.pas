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

  TExceptionLocacaoVeiculo = class(Exception);
  TExceptionLocacaoCliente = class(Exception);
  TExceptionLocacaoStatus = class(Exception);

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

  procedure ExceptionLocacaoVeiculo;
  procedure ExceptionLocacaoCliente;
  procedure ExceptionLocacaoStatus;
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
  raise TExceptionPlaca.Create('Placa n�o pode estar em branco!');
end;

procedure ExceptionMinPlaca;
begin
  raise TExceptionMinDocumento.Create('Placa deve ter no m�nimo 7 caracteres!');
end;

procedure ExceptionValor;
begin
  raise TExceptionValor.Create('Valor deve ser maior que 0!');
end;

procedure ExceptionLocacaoVeiculo;
begin
  raise TExceptionLocacaoVeiculo.Create('Ve�culo n�o informado!');
end;

procedure ExceptionLocacaoCliente;
begin
  raise TExceptionLocacaoCliente.Create('Cliente n�o informado!');
end;

procedure ExceptionLocacaoStatus;
begin
  raise TExceptionLocacaoStatus.Create('Ve�culo ja foi alugado!');
end;
    
end.
