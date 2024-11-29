unit untEnums;

interface

type
  TMsgResponse = record
    CADASTRADO_COM_SUCESSO,
    ALTERADO_COM_SUCESSO,
    CONSULTA_REALIZADA_COM_SUCESSO,
    CONSULTA_SEM_RETORNO,
    DELETADO_COM_SUCESSO: String;
  end;

  function RetornaMsgResponse: TMsgResponse;

implementation

function RetornaMsgResponse: TMsgResponse;
begin
  Result.CADASTRADO_COM_SUCESSO:= 'Cadastrado com sucesso!';
  Result.ALTERADO_COM_SUCESSO := 'Alterado com sucesso!';
  Result.CONSULTA_REALIZADA_COM_SUCESSO := 'Consulta realizada com sucesso!';
  Result.CONSULTA_SEM_RETORNO := 'Consulta sem retorno!';
  Result.DELETADO_COM_SUCESSO := 'Deletado com sucesso!';
end;

end.
