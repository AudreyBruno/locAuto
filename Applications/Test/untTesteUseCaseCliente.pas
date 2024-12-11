unit untTesteUseCaseCliente;

interface

uses
  DUnitX.TestFramework, untEnums, untUseCaseCliente, untResponse,
  untIUseCaseCliente, untCliente, untDtoCliente, untUtils;

type
  [TestFixture]
  TTestUseCaseCliente = class
  public
    [Setup]
    procedure Setup;

    [TearDown]
    procedure TearDown;

    [Test]
    procedure CadastrarCliente;

    [Test]
    procedure AlterarCliente;

    [Test]
    procedure ValidarNomeCliente;

    [Test]
    procedure ValidarDocumentoCliente;

    [Test]
    procedure ValidarTelefoneCliente;
  end;

implementation

var
  UseCase: IUseCaseCliente;
  Cliente: TCliente;

procedure TTestUseCaseCliente.Setup;
begin
  Cliente := TCliente.Create;
  UseCase := TUseCaseCliente.Create;
end;

procedure TTestUseCaseCliente.TearDown;
begin
  Cliente.Free;
end;

procedure TTestUseCaseCliente.ValidarDocumentoCliente;
var
  response: TResponse;
begin
  Cliente.Nome := 'Audrey';
  Cliente.Documento := '';
  Cliente.Telefone := '(12) 34567-8912';

  response := UseCase.Cadastrar(Cliente);

  Assert.IsFalse(response.Success);
  Assert.AreEqual(RetornaErrorsCode.DOCUMENTO_NAO_INFORMADO, response.ErrorCode);
end;

procedure TTestUseCaseCliente.ValidarNomeCliente;
var
  response: TResponse;
begin
  Cliente.Nome := '';
  Cliente.Documento := '11111111111';
  Cliente.Telefone := '(12) 34567-8912';

  response := UseCase.Cadastrar(Cliente);

  Assert.IsFalse(response.Success);
  Assert.AreEqual(RetornaErrorsCode.NOME_NAO_INFORMADO, response.ErrorCode);
end;

procedure TTestUseCaseCliente.ValidarTelefoneCliente;
var
  response: TResponse;
begin
  Cliente.Nome := 'Audrey';
  Cliente.Documento := '11111111111';
  Cliente.Telefone := '';

  response := UseCase.Cadastrar(Cliente);

  Assert.IsFalse(response.Success);
  Assert.AreEqual(RetornaErrorsCode.TELEFONE_NAO_INFORMADO, response.ErrorCode);
end;

procedure TTestUseCaseCliente.AlterarCliente;
var
  response: TResponse;
begin
  Cliente.ID := 1;
  Cliente.Nome := 'Audrey';
  Cliente.Documento := '11111111111';
  Cliente.Telefone := '(12) 34567-8912';

  response := UseCase.Alterar(Cliente);

  Assert.IsTrue(response.Success);
  Assert.AreEqual(RetornaMsgResponse.ALTERADO_COM_SUCESSO, response.Message);
end;

procedure TTestUseCaseCliente.CadastrarCliente;
var
  response: TResponse;
begin
  Cliente.Nome := 'Audrey';
  Cliente.Documento := '11111111111';
  Cliente.Telefone := '(12) 34567-8912';

  response := UseCase.Cadastrar(Cliente);

  Assert.IsTrue(response.Success);
  Assert.AreEqual(RetornaMsgResponse.CADASTRADO_COM_SUCESSO, response.Message);
end;

initialization
  TDUnitX.RegisterTestFixture(TTestUseCaseCliente);

end.
