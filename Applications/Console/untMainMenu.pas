unit untMainMenu;

interface

uses
  Winapi.Windows, System.SysUtils;

procedure Clear;

procedure MainMenu;
procedure CustomersMenu;
procedure VehiclesMenu;
procedure RentalMenu;

procedure RegisterCustomers;
procedure EditCustomers;
procedure DeleteCustomers;
procedure SearchCustomers;

procedure RegisterVehicles;
procedure EditVehicles;
procedure DeleteVehicles;
procedure SearchVehicles;

procedure RegisterRental;
procedure EditRental;
procedure DeleteRental;
procedure SearchRental;

function Models: String;

implementation

procedure Clear;
var
  stdout: THandle;
  csbi: TConsoleScreenBufferInfo;
  ConsoleSize: DWORD;
  NumWritten: DWORD;
  Origin: TCoord;
begin
  stdout := GetStdHandle(STD_OUTPUT_HANDLE);
  Win32Check(stdout<>INVALID_HANDLE_VALUE);
  Win32Check(GetConsoleScreenBufferInfo(stdout, csbi));
  ConsoleSize := csbi.dwSize.X * csbi.dwSize.Y;
  Origin.X := 0;
  Origin.Y := 0;
  Win32Check(FillConsoleOutputCharacter(stdout, ' ', ConsoleSize, Origin,
    NumWritten));
  Win32Check(FillConsoleOutputAttribute(stdout, csbi.wAttributes, ConsoleSize, Origin,
    NumWritten));
  Win32Check(SetConsoleCursorPosition(stdout, Origin));
end;

function Models: String;
begin
  Result := '1 - Register' + #13#10 +
            '2 - Edit' + #13#10 +
            '3 - Delete' + #13#10 +
            '4 - Search' + #13#10 +
            '5 - Back';
end;

procedure MainMenu;
var
  Code: Integer;
  Model: String;
begin
  Clear;

  Writeln('Main Menu');
  Writeln;

  Model := '1 - Customers' + #13#10 +
           '2 - Vehicles' + #13#10 +
           '3 - Rental';

  Writeln(Model);
  Write(Output, 'Option:');
  Readln(Input, Code);

  case code of
    1: CustomersMenu;
    2: VehiclesMenu;
    3: RentalMenu;
  end;
end;

procedure CustomersMenu;
var
  Code: Integer;
begin
  Clear;

  Writeln('Customers Menu');
  Writeln;

  Writeln(Models);
  Write(Output, 'Option:');
  Readln(Input, Code);

  case code of
    1: RegisterCustomers;
    2: EditCustomers;
    3: DeleteCustomers;
    4: SearchCustomers;
    5: MainMenu;
    else
      begin
        Writeln('Invalid option');
        Readln;
      end;
  end;
end;

procedure VehiclesMenu;
var
  Code: Integer;
begin
  Clear;

  Writeln('Vehicles Menu');
  Writeln;

  Writeln(Models);
  Write(Output, 'Option:');
  Readln(Input, Code);

  case code of
    1: RegisterVehicles;
    2: EditVehicles;
    3: DeleteVehicles;
    4: SearchVehicles;
    5: MainMenu;
    else
      begin
        Writeln('Invalid option');
        Readln;
      end;
  end;
end;

procedure RentalMenu;
var
  Code: Integer;
begin
  Clear;

  Writeln('Rental Menu');
  Writeln;

  Writeln(Models);
  Write(Output, 'Option:');
  Readln(Input, Code);

  case code of
    1: RegisterRental;
    2: EditRental;
    3: DeleteRental;
    4: SearchRental;
    5: MainMenu;
    else
      begin
        Writeln('Invalid option');
        Readln;
      end;
  end;
end;

procedure RegisterCustomers;
begin
  Clear;
  Writeln('Register Customers');
  Readln;
  MainMenu;
end;

procedure EditCustomers;
begin
  Clear;
  Writeln('Edit Customers');
  Readln;
  MainMenu;
end;

procedure DeleteCustomers;
begin
  Clear;
  Writeln('Delete Customers');
  Readln;
  MainMenu;
end;

procedure SearchCustomers;
begin
  Clear;
  Writeln('Search Customers');
  Readln;
  MainMenu;
end;

procedure RegisterVehicles;
begin
  Clear;
  Writeln('Register Vehicles');
  Readln;
  MainMenu;
end;

procedure EditVehicles;
begin
  Clear;
  Writeln('Edit Vehicles');
  Readln;
  MainMenu;
end;

procedure DeleteVehicles;
begin
  Clear;
  Writeln('Delete Vehicles');
  Readln;
  MainMenu;
end;

procedure SearchVehicles;
begin
  Clear;
  Writeln('Search Vehicles');
  Readln;
  MainMenu;
end;

procedure RegisterRental;
begin
  Clear;
  Writeln('Register Rental');
  Readln;
  MainMenu;
end;

procedure EditRental;
begin
  Clear;
  Writeln('Edit Rental');
  Readln;
  MainMenu;
end;

procedure DeleteRental;
begin
  Clear;
  Writeln('Delete Rental');
  Readln;
  MainMenu;
end;

procedure SearchRental;
begin
  Clear;
  Writeln('Search Rental');
  Readln;
  MainMenu;
end;

end.
