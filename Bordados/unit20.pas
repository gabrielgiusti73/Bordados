unit Unit20;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, StdCtrls, DBGrids,
  ExtCtrls, LR_Class, LR_DBSet, ZConnection, ZDataset;

type

  { TForm20 }

  TForm20 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    DataSource20: TDataSource;
    DBGrid1: TDBGrid;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Image1: TImage;
    Label1: TLabel;
    ZQuery20: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form20: TForm20;

implementation

{$R *.lfm}

{ TForm20 }

procedure TForm20.Button1Click(Sender: TObject);

    var
  codigo : integer;

begin


ZQuery20.active:=false;
ZQuery20.sql.Clear;
ZQuery20.SQL.text:='select * from Cobranzas where Forma = "Cheque" and cliente = :Cliente';
zQuery20.Params.ParamByName('Cliente').AsString := combobox1.Text;
ZQuery20.ExecSQL ;
ZQuery20.Active:=true;




end;

procedure TForm20.Button2Click(Sender: TObject);
begin
  
    if messagedlg('Desea imprimir el listado?' , mtconfirmation, [mbok, mbcancel], 0 )
      =mrcancel then form20.close
    else

frReport1.LoadFromFile('listche.lrf');
frReport1.ShowReport;
end;

end.

