unit Unit18;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, sqldb, sqlite3conn, Forms, Controls, Graphics, Dialogs,
  DBCtrls, StdCtrls, DBGrids, ExtCtrls, LR_Class, LR_DBSet, LR_Desgn, LR_PGrid,
  ZConnection, ZDataset, ZSqlUpdate, LR_DSet, LR_E_HTM;

type

  { TForm18 }

  TForm18 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DataSource18: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    ZQuery1: TZQuery;
    ZQuery18: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure frDBDataSet1CheckEOF(Sender: TObject; var Eof: Boolean);
    procedure frDesigner1LoadReport(Report: TfrReport; var ReportName: String);
    procedure FrPrintGrid1GetValue(const ParName: String; var ParValue: Variant
      );
  private

  public

  end;

var
  Form18: TForm18;

implementation

{$R *.lfm}

{ TForm18 }

procedure TForm18.DBComboBox1Change(Sender: TObject);
begin
  end;

procedure TForm18.Edit1Change(Sender: TObject);
begin

end;

procedure TForm18.FormCreate(Sender: TObject);
begin


end;

procedure TForm18.frDBDataSet1CheckEOF(Sender: TObject; var Eof: Boolean);
begin

end;

procedure TForm18.frDesigner1LoadReport(Report: TfrReport;
  var ReportName: String);
begin

end;

procedure TForm18.FrPrintGrid1GetValue(const ParName: String;
  var ParValue: Variant);
begin

end;

procedure TForm18.Button1Click(Sender: TObject);
var
  codigo : integer;

begin
codigo:=StrToIntDef(Edit1.Text,0);


       if codigo > 0 then

  begin

ZQuery18.active:=false;
ZQuery18.sql.Clear;
ZQuery18.SQL.text:='select * from remitos where numremito ='+ edit1.text+';';
ZQuery18.ExecSQL ;
ZQuery18.Active:=true;

ZQuery1.active:=false;
ZQuery1.sql.Clear;
ZQuery1.SQL.text:='select sum(total) from remitos where numremito ='+ edit1.text+';';
ZQuery1.ExecSQL ;
ZQuery1.Active:=true;

  end
       else
             ShowMessage('El codigo debe ser mayor a cero.');

end;

procedure TForm18.Button2Click(Sender: TObject);
begin
  
    if messagedlg('Desea imprimir el remito?' , mtconfirmation, [mbok, mbcancel], 0 )
      =mrcancel then form18.close
    else

frReport1.LoadFromFile('remito.lrf');
   frReport1.ShowReport;
end;

procedure TForm18.Button3Click(Sender: TObject);
begin
                  ZQuery18.sql.Clear;
                   ZQuery18.SQL.text:='select * from remitos ';
ZQuery18.ExecSQL ;
ZQuery18.Active:=true;
end;



end.




