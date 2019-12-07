unit Unit21;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, StdCtrls, ZDataset,
  LR_Class, LR_DBSet;

type

  { TForm21 }

  TForm21 = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    Edit1: TEdit;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Label1: TLabel;
    ZQuery1: TZQuery;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form21: TForm21;

implementation

{$R *.lfm}

{ TForm21 }

procedure TForm21.Button1Click(Sender: TObject);
var
  codigo : integer;

begin
codigo:=StrToIntDef(Edit1.Text,0);

ZQuery1.active:=false;
ZQuery1.sql.Clear;
ZQuery1.SQL.text:='select * from Bordados where planilla ='+ edit1.text+';';
ZQuery1.ExecSQL ;
ZQuery1.Active:=true;



frReport1.LoadFromFile('Planilla.lrf');
frReport1.ShowReport;
end;

end.

