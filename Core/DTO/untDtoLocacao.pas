unit untDtoLocacao;

interface

type
  DtoLocacao = record
    Id: Integer;
    IdCliente: Integer;
    DataLocacao: TDateTime;
    DataDevolucao: TDateTime;
    Status: String;
  end;

implementation

end.
