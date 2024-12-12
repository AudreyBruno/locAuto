unit untTesteUseCaseLocacao;

interface

uses
  System.SysUtils, DUnitX.TestFramework, untIUseCaseLocacao, untUseCaseLocacao,
  untLocacao, untResponse, untEnums, untCliente, untVeiculo;

type
  [TestFixture]
  TTestUseCaseLocacao = class
  public
    [Setup]
    procedure Setup;

    [TearDown]
    procedure TearDown;

    [Test]
    procedure CadastrarLocacao;

    [Test]
    procedure ValidarCliente;

    [Test]
    procedure ValidarVeiculo;

    [Test]
    procedure VeiculoAlugado;
  end;

implementation

var
  UseCase: IUseCaseLocacao;
  Locacao: TLocacao;
  Cliente: TCliente;
  Veiculo: TVeiculo;

procedure TTestUseCaseLocacao.Setup;
begin
  Locacao := TLocacao.Create;
  Cliente := TCliente.Create;
  Veiculo := TVeiculo.Create;
  UseCase := TUseCaseLocacao.Create;
end;

procedure TTestUseCaseLocacao.TearDown;
begin
  Locacao.Free;
  Cliente.Free;
  Veiculo.Free;
end;

procedure TTestUseCaseLocacao.ValidarCliente;
var
  response: TResponse;
begin
  Veiculo.ID := 1;
  Veiculo.Nome := 'Golf GTI';
  Veiculo.Placa := '1234567';
  Veiculo.Valor := 149.99;

  Locacao.Veiculo := Veiculo;
  Locacao.DataLocacao := StrToDate('12/12/2024');

  response := UseCase.Cadastrar(Locacao);

  Assert.IsFalse(response.Success);
  Assert.AreEqual(RetornaMsgResponse.CLIENTE_NAO_INFORMADO, response.Message);
end;

procedure TTestUseCaseLocacao.ValidarVeiculo;
var
  response: TResponse;
begin
  Cliente.Nome := 'Audrey';
  Cliente.Documento := '11111111111';
  Cliente.Telefone := '(12) 34567-8912';

  Locacao.Cliente := Cliente;
  Locacao.DataLocacao := StrToDate('12/12/2024');

  response := UseCase.Cadastrar(Locacao);

  Assert.IsFalse(response.Success);
  Assert.AreEqual(RetornaMsgResponse.VEICULO_NAO_INFORMADO, response.Message);
end;

procedure TTestUseCaseLocacao.VeiculoAlugado;
var
  response: TResponse;
begin
  Cliente.Nome := 'Audrey';
  Cliente.Documento := '11111111111';
  Cliente.Telefone := '(12) 34567-8912';

  Veiculo.ID := 1;
  Veiculo.Nome := 'Golf GTI';
  Veiculo.Placa := '1234567';
  Veiculo.Valor := 149.99;
  Veiculo.Status := sAlugado;

  Locacao.Cliente := Cliente;
  Locacao.Veiculo := Veiculo;
  Locacao.DataLocacao := StrToDate('12/12/2024');

  response := UseCase.Cadastrar(Locacao);

  Assert.IsFalse(response.Success);
  Assert.AreEqual(RetornaMsgResponse.VEICULO_ALUGADO, response.Message);
end;

procedure TTestUseCaseLocacao.CadastrarLocacao;
var
  response: TResponse;
begin
  Cliente.Nome := 'Audrey';
  Cliente.Documento := '11111111111';
  Cliente.Telefone := '(12) 34567-8912';

  Veiculo.ID := 1;
  Veiculo.Nome := 'Golf GTI';
  Veiculo.Placa := '1234567';
  Veiculo.Valor := 149.99;

  Locacao.Cliente := Cliente;
  Locacao.Veiculo := Veiculo;
  Locacao.DataLocacao := StrToDate('12/12/2024');

  response := UseCase.Cadastrar(Locacao);

  Assert.IsTrue(response.Success);
  Assert.AreEqual(RetornaMsgResponse.CADASTRADO_COM_SUCESSO, response.Message);
end;

initialization
  TDUnitX.RegisterTestFixture(TTestUseCaseLocacao);

end.
