unit Unit22;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, DBCtrls, DBGrids,
  StdCtrls, ZDataset, ZConnection;

type

  { TForm22 }

  TForm22 = class(TForm)
    DataSource1: TDataSource;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ZQuery1: TZQuery;
  private

  public

  end;

var
  Form22: TForm22;

implementation

{$R *.lfm}

end.

