unit untIUseCaseLocacao;

interface

uses untLocacao, untDtoLocacao, untResponse;

type
  IUseCaseLocacao = interface
    function Cadastrar(locacao: TLocacao): TResponse;
    function Alterar(locacao: TLocacao): TResponse;
    function Deletar(id: Integer): TResponse;
    function Consultar(Dto: DtoLocacao): TResponse;
  end;

implementation

end.
