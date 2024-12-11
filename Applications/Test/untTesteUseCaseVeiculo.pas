unit untTesteUseCaseVeiculo;

interface

uses
  DUnitX.TestFramework, untIUseCaseVeiculo, untVeiculo, untUseCaseVeiculo,
  untResponse, untUtils, untEnums;

type
  [TestFixture]
  TTestUseCaseVeiculo = class
  public
    [Setup]
    procedure Setup;

    [TearDown]
    procedure TearDown;

    [Test]
    procedure CadastrarVeiculo;

    [Test]
    procedure AlterarVeiculo;

    [Test]
    procedure ValidarNomeVeiculo;

    [Test]
    procedure ValidarPlacaVeiculo;

    [Test]
    procedure ValidarValorVeiculo;
  end;

implementation

var
  UseCase: IUseCaseVeiculo;
  Veiculo: TVeiculo;

procedure TTestUseCaseVeiculo.Setup;
begin
  Veiculo := TVeiculo.Create;
  UseCase := TUseCaseVeiculo.Create;
end;

procedure TTestUseCaseVeiculo.TearDown;
begin
  Veiculo.Free;
end;

procedure TTestUseCaseVeiculo.AlterarVeiculo;
var
  response: TResponse;
begin
  Veiculo.ID := 1;
  Veiculo.Nome := 'Golf GTI';
  Veiculo.Placa := '1234567';
  Veiculo.Valor := 149.99;

  response := UseCase.Alterar(Veiculo);

  Assert.IsTrue(response.Success);
  Assert.AreEqual(RetornaMsgResponse.ALTERADO_COM_SUCESSO, response.Message);
end;

procedure TTestUseCaseVeiculo.CadastrarVeiculo;
var
  response: TResponse;
begin
  Veiculo.Nome := 'Golf GTI';
  Veiculo.Placa := '1234567';
  Veiculo.Valor := 149.99;

  response := UseCase.Cadastrar(Veiculo);

  Assert.IsTrue(response.Success);
  Assert.AreEqual(RetornaMsgResponse.CADASTRADO_COM_SUCESSO, response.Message);
end;

procedure TTestUseCaseVeiculo.ValidarNomeVeiculo;
var
  response: TResponse;
begin
  Veiculo.Nome := '';
  Veiculo.Placa := '1234567';
  Veiculo.Valor := 149.99;

  response := UseCase.Cadastrar(Veiculo);

  Assert.IsFalse(response.Success);
  Assert.AreEqual(RetornaErrorsCode.NOME_NAO_INFORMADO, response.ErrorCode);
end;

procedure TTestUseCaseVeiculo.ValidarPlacaVeiculo;
var
  response: TResponse;
begin
  Veiculo.Nome := 'Golf GTI';
  Veiculo.Placa := '';
  Veiculo.Valor := 149.99;

  response := UseCase.Cadastrar(Veiculo);

  Assert.IsFalse(response.Success);
  Assert.AreEqual(RetornaErrorsCode.PLACA_NAO_INFORMADA, response.ErrorCode);
end;

procedure TTestUseCaseVeiculo.ValidarValorVeiculo;
var
  response: TResponse;
begin
  Veiculo.Nome := 'Golf GTI';
  Veiculo.Placa := '1234567';
  Veiculo.Valor := 0;

  response := UseCase.Cadastrar(Veiculo);

  Assert.IsFalse(response.Success);
  Assert.AreEqual(RetornaErrorsCode.VALOR_INVALIDO, response.ErrorCode);
end;

initialization
  TDUnitX.RegisterTestFixture(TTestUseCaseVeiculo);

end.
