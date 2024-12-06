unit untUseCaseVeiculo;

interface

uses untDtoVeiculo, untVeiculo, untIUseCaseVeiculo, untResponse;

type
  TUseCaseVeiculo = class(TInterfacedObject, IUseCaseVeiculo)
    function Cadastrar(cliente: TVeiculo): TResponse;
    function Alterar(cliente: TVeiculo): TResponse;
    function Deletar(id: Integer): TResponse;
    function Consultar(Dto: DtoVeiculo): TResponse;
  end;

implementation

{ TUseCaseVeiculo }

function TUseCaseVeiculo.Alterar(cliente: TVeiculo): TResponse;
begin

end;

function TUseCaseVeiculo.Cadastrar(cliente: TVeiculo): TResponse;
begin

end;

function TUseCaseVeiculo.Consultar(Dto: DtoVeiculo): TResponse;
begin

end;

function TUseCaseVeiculo.Deletar(id: Integer): TResponse;
begin

end;

end.
