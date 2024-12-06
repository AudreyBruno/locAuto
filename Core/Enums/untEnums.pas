unit untEnums;

interface

type
  TStatus = (sDisponivel, sAlugado);

  TMsgResponse = record
    CADASTRADO_COM_SUCESSO,
    ALTERADO_COM_SUCESSO,
    CONSULTA_REALIZADA_COM_SUCESSO,
    CONSULTA_SEM_RETORNO,
    DELETADO_COM_SUCESSO: String;
  end;

  TErrorsCode = record
    NOME_NAO_INFORMADO,
    NOME_INVALIDO,
    DOCUMENTO_NAO_INFORMADO,
    DOCUMENTO_INVALIDO,
    TELEFONE_NAO_INFORMADO,
    TELEFONE_INVALIDO: Integer;
  end;

  function RetornaMsgResponse: TMsgResponse;
  function RetornaErrorsCode: TErrorsCode;

implementation

function RetornaMsgResponse: TMsgResponse;
begin
  Result.CADASTRADO_COM_SUCESSO:= 'Cadastrado com sucesso!';
  Result.ALTERADO_COM_SUCESSO := 'Alterado com sucesso!';
  Result.CONSULTA_REALIZADA_COM_SUCESSO := 'Consulta realizada com sucesso!';
  Result.CONSULTA_SEM_RETORNO := 'Consulta sem retorno!';
  Result.DELETADO_COM_SUCESSO := 'Deletado com sucesso!';
end;

function RetornaErrorsCode: TErrorsCode;
begin
  Result.NOME_NAO_INFORMADO := 100;
  Result.NOME_INVALIDO := 101;
  Result.DOCUMENTO_NAO_INFORMADO := 102;
  Result.DOCUMENTO_INVALIDO := 103;
  Result.TELEFONE_NAO_INFORMADO := 104;
  Result.TELEFONE_INVALIDO := 105;
end;

end.
