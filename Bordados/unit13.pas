unit Unit13;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, LR_Class, LR_DBSet, Forms, Controls,
  Graphics, Dialogs, DbCtrls, StdCtrls, DBGrids, ZDataset;

type

  { TForm13 }

  TForm13 = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    DataSource13: TDataSource;
    Edit1: TEdit;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Label1: TLabel;
    ZQuery1: TZQuery;
    ZQuery13: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.lfm}

{ TForm13 }

procedure TForm13.Button1Click(Sender: TObject);
      var
  codigo : integer;

begin
codigo:=StrToIntDef(Edit1.Text,0);


       if codigo > 0 then

  begin

ZQuery13.active:=false;
ZQuery13.sql.Clear;
ZQuery13.SQL.text:='select * from pedidos where codcliente ='+ edit1.text+';';
ZQuery13.ExecSQL ;
ZQuery13.Active:=true;

ZQuery1.active:=false;
ZQuery1.sql.Clear;
ZQuery1.SQL.text:='select sum(importetotal) from pedidos where codcliente ='+ edit1.text+';';
ZQuery1.ExecSQL ;
ZQuery1.Active:=true;

    if messagedlg('Desea imprimir el remito?' , mtconfirmation, [mbok, mbcancel], 0 )
      =mrcancel then form13.close
    else

frReport1.LoadFromFile('pedicli.lrf');
frReport1.ShowReport;

 end
       else
             ShowMessage('El codigo debe ser mayor a cero.');

end;

procedure TForm13.FormCreate(Sender: TObject);
begin

end;

end.


procedure TForm13.FormCreate(Sender: TObject);
begin

end;

end.

