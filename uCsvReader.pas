unit uCsvReader;

interface

uses
  Classes, SysUtils, uCsvUi, uFilterable, System.Generics.Collections;

type
  TCsvReader = class(TInterfacedObject)
    private
      FCsvUi: ICsvUi;
      FFilePath: string;
    public
      constructor Create(const ui: ICsvUi);

      procedure Run(const filePath: string);
  end;

implementation

uses StrUtils;

constructor TCsvReader.Create(const ui: ICsvUi);
begin
  FCsvUi := ui;
end;

procedure TCsvReader.Run(const filePath: string);
begin
  // your code here
end;

end.

