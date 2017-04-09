unit uCsvApplication;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, uCsvReader, uCsvUi;

type
  TCsvApplicationForm = class(TForm, ICsvUi)
    HeaderPanel: TPanel;
    StringGrid: TStringGrid;
    FilterKeyword: TLabeledEdit;
    FilterColumnIndex: TLabeledEdit;
    FilterButton: TButton;
    OpenDialog: TOpenTextFileDialog;
    procedure FormShow(Sender: TObject);
    procedure FilterButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure ClearGrid;
    procedure ToggleFilterPanelVisibility;
  public
    procedure SetColumnCount(const amount: Integer);
    procedure AddColumn(const columnCaption: string);
    procedure AddRow(data: TStringList);
  end;

var
  CsvApplicationForm: TCsvApplicationForm;
  CsvReader: TCsvReader;

implementation

uses uFilterable;

{$R *.dfm}

procedure TCsvApplicationForm.FormShow(Sender: TObject);
begin
  ClearGrid;

  ToggleFilterPanelVisibility;

  if OpenDialog.Execute then begin
    CsvReader := TCsvReader.Create(self);
    CsvReader.Run(OpenDialog.FileName);
  end else begin
    Close;
  end;
end;

procedure TCsvApplicationForm.SetColumnCount(const amount: Integer);
var
  i: Integer;
begin
  ClearGrid;
  for i:=1 to amount-1 do begin
    StringGrid.Cells[i,0] := '#' + IntToStr(i);
  end;
end;

procedure TCsvApplicationForm.AddColumn(const columnCaption: string);
begin
  StringGrid.Cells[StringGrid.ColCount - 1, 0] := columnCaption;
  StringGrid.ColCount := StringGrid.ColCount + 1;
end;

procedure TCsvApplicationForm.AddRow(data: TStringList);
begin
  StringGrid.RowCount := StringGrid.RowCount + 1;
  StringGrid.Rows[StringGrid.RowCount - 1] := data;
end;

procedure TCsvApplicationForm.FilterButtonClick(Sender: TObject);
var
  FilterableReader: IFilterable;
begin
  ClearGrid;

  FilterableReader := CsvReader as IFilterable;
  FilterableReader.Filter(StrToInt(FilterColumnIndex.Text), FilterKeyword.Text);
end;

procedure TCsvApplicationForm.ClearGrid;
var
  i: Integer;
begin
  for i := 0 to StringGrid.ColCount - 1 do
    StringGrid.Cols[I].Clear;

  StringGrid.ColCount := 1;
  StringGrid.RowCount := 1;
  StringGrid.Rows[0].Clear;
end;

procedure TCsvApplicationForm.ToggleFilterPanelVisibility;
begin
  HeaderPanel.Visible := Supports(TCsvReader, IFilterable);
end;

end.
