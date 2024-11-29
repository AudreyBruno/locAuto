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
  untUtils in '..\..\Utils\untUtils.pas';

begin
  try
    MainMenu;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
