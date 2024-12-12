program locAutoConsole;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  untMainMenu in 'untMainMenu.pas',
  untCliente in '..\..\Core\Models\untCliente.pas',
  untIUseCaseCliente in '..\..\Core\Ports\untIUseCaseCliente.pas',
  untResponse in '..\..\Core\Response\untResponse.pas',
  untDtoCliente in '..\..\Core\DTO\untDtoCliente.pas',
  untUseCaseCliente in '..\..\Core\UseCases\untUseCaseCliente.pas',
  untEnums in '..\..\Core\Enums\untEnums.pas',
  untExceptions in '..\..\Core\Exceptions\untExceptions.pas',
  untUtils in '..\..\Utils\untUtils.pas',
  untVeiculo in '..\..\Core\Models\untVeiculo.pas',
  untIUseCaseVeiculo in '..\..\Core\Ports\untIUseCaseVeiculo.pas',
  untDtoVeiculo in '..\..\Core\DTO\untDtoVeiculo.pas',
  untUseCaseVeiculo in '..\..\Core\UseCases\untUseCaseVeiculo.pas',
  untLocacao in '..\..\Core\Models\untLocacao.pas',
  untIUseCaseLocacao in '..\..\Core\Ports\untIUseCaseLocacao.pas',
  untDtoLocacao in '..\..\Core\DTO\untDtoLocacao.pas',
  untUseCaseLocacao in '..\..\Core\UseCases\untUseCaseLocacao.pas';

begin
  try
    MainMenu;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
