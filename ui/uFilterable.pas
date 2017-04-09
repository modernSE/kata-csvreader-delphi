unit uFilterable;

interface

uses
  Classes, SysUtils, System.Generics.Collections;

type
  IFilterable = interface(IInterface)
  ['{10EB333D-678F-478E-9C53-DCA44125D661}']
    {**
     * filters the datasource based on the given word.
     *
     * @param columnIndex
     *            the column which shall contain the word
     * @param keyword
     *            the word will be search as contains
     * @return a list of rows fullfilling the filter
     *}
    function Filter(const columnIndex: Integer; keyword: string): TList<TStringList>;
  end;


implementation

end.

