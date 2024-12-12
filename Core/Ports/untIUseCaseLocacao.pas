unit untIUseCaseLocacao;

interface

uses untLocacao, untDtoLocacao, untResponse;

type
  IUseCaseVeiculo = interface
    function Cadastrar(veiculo: TLocacao): TResponse;
    function Alterar(veiculo: TLocacao): TResponse;
    function Deletar(id: Integer): TResponse;
    function Consultar(Dto: TLocacao): TResponse;
  end;

implementation

end.
