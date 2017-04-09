program pCsvReader;

uses
  Vcl.Forms,
  uCsvApplication in 'ui\uCsvApplication.pas' {CsvApplicationForm},
  uCsvReader in 'uCsvReader.pas',
  uCsvUi in 'ui\uCsvUi.pas',
  uFilterable in 'ui\uFilterable.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCsvApplicationForm, CsvApplicationForm);
  Application.Run;
end.
