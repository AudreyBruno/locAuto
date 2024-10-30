program locAutoConsole;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  untMainMenu in 'untMainMenu.pas';

begin
  try
    MainMenu;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
