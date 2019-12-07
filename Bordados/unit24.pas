unit Unit24;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, StdCtrls, LR_Class,
  LR_DBSet, ZDataset;

type

  { TForm24 }

  TForm24 = class(TForm)
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
  Form24: TForm24;

implementation

{$R *.lfm}

{ TForm24 }

procedure TForm24.Button1Click(Sender: TObject);

var
   codigo : integer;

begin
codigo:=StrToIntDef(Edit1.Text,0);


       if codigo > 0 then

  begin

ZQuery1.active:=false;
ZQuery1.sql.Clear;
ZQuery1.SQL.text:='select * from Precios where codcliente ='+ edit1.text+';';
ZQuery1.ExecSQL ;
ZQuery1.Active:=true;




    if messagedlg('Desea imprimir el Listado?' , mtconfirmation, [mbok, mbcancel], 0 )
      =mrcancel then form24.close
    else

frReport1.LoadFromFile('precios.lrf');
frReport1.ShowReport;

 end
       else
             ShowMessage('El codigo debe ser mayor a cero.');

end;

end.

