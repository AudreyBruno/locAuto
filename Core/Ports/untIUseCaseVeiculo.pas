unit untIUseCaseVeiculo;

interface

uses untVeiculo, untResponse, untDtoVeiculo;

type
  IUseCaseVeiculo = interface
    function Cadastrar(veiculo: TVeiculo): TResponse;
    function Alterar(veiculo: TVeiculo): TResponse;
    function Deletar(id: Integer): TResponse;
    function Consultar(Dto: DtoVeiculo): TResponse;
  end;

implementation

end.
