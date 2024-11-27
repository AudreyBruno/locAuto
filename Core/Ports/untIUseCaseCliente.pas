unit untIUseCaseCliente;

interface

uses untCliente, untResponse, untDtoCliente;

type
  IUseCaseCliente = interface
    function Cadastrar(cliente: TCliente): TResponse;
    function Alterar(cliente: TCliente): TResponse;
    function Deletar(id: Integer): TResponse;
    function Consultar(Dto: DtoCliente): TResponse;
  end;

implementation

end.
