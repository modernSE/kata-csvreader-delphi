unit uCsvUi;

interface

uses
  Classes, SysUtils;

type
  ICsvUi = interface
    {**
     * sets the amount of columns in the ui.
     *
     * @param amount
     *            number of columns.
     *}
    procedure SetColumnCount(const amount: Integer);

    {**
     * adds a column to ui.
     *
     * @param caption
     *            of the column
     *}
    procedure AddColumn(const columnCaption: string);

    {**
     * adds a row to the ui.
     *
     * @param data
     *            a list of data elements for each column.
     *}
    procedure AddRow(data: TStringList);

  end;

implementation



end.

