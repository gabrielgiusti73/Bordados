unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, LR_Class, LR_DBSet, Forms, Controls,
  Graphics, Dialogs, DbCtrls, StdCtrls, ZDataset;

type

  { TForm6 }

  TForm6 = class(TForm)
    Button2: TButton;
    DataSource1: TDataSource;
    Edit1: TEdit;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Label1: TLabel;
    ZQuery1: TZQuery;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.lfm}

{ TForm6 }

procedure TForm6.FormCreate(Sender: TObject);
begin

end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  ZQuery1.active:=false;
ZQuery1.sql.Clear;
ZQuery1.SQL.text:='select * from Bordados where codbordado ='+ edit1.text+';';
ZQuery1.ExecSQL ;
ZQuery1.Active:=true;



frReport1.LoadFromFile('Planilla.lrf');
frReport1.ShowReport;
end;

end.

