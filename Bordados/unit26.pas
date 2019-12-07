unit Unit26;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, StdCtrls, LR_Class,
  LR_DBSet, ZDataset;

type

  { TForm26 }

  TForm26 = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    Edit1: TEdit;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Label1: TLabel;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form26: TForm26;

implementation

{$R *.lfm}

{ TForm26 }

procedure TForm26.Button1Click(Sender: TObject);

    var
  codigo : integer;

begin
codigo:=StrToIntDef(Edit1.Text,0);


       if codigo > 0 then

  begin

ZQuery1.active:=false;
ZQuery1.sql.Clear;
ZQuery1.SQL.text:='select * from remitos where estado ="Impago" and codcli ='+ edit1.text+';';
ZQuery1.ExecSQL ;
ZQuery1.Active:=true;

ZQuery2.active:=false;
ZQuery2.sql.Clear;
ZQuery2.SQL.text:='select sum(total) from remitos where estado ="Impago" and codcli ='+ edit1.text+';';
ZQuery2.ExecSQL ;
ZQuery2.Active:=true;



    if messagedlg('Desea imprimir el remito?' , mtconfirmation, [mbok, mbcancel], 0 )
      =mrcancel then form26.close
    else

frReport1.LoadFromFile('remitototal.lrf');
frReport1.ShowReport;

 end
       else
             ShowMessage('El codigo debe ser mayor a cero.');

end;


end.

