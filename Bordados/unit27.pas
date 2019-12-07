unit Unit27;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  DBExtCtrls, ExtDlgs, ActnList, ExtCtrls, DBGrids, ZDataset, LR_Class,
  LR_DBSet, LR_DSet, DateTimePicker, DBDateTimePicker;

type

  { TForm27 }

  TForm27 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);

  private

  public

  end;

var
  Form27: TForm27;

implementation

{$R *.lfm}

{ TForm27 }

procedure TForm27.Button1Click(Sender: TObject);
var
  codigo : integer;

begin

  ZQuery1.active:=false;
ZQuery1.sql.Clear;
ZQuery1.SQL.text:='select * from remitos where  Mes = :Mes and ano = :ano';
zQuery1.Params.ParamByName('Mes').AsString := combobox1.Text;
zQuery1.Params.ParamByName('ano').AsString := combobox2.Text;
ZQuery1.ExecSQL ;
ZQuery1.Active:=true;



end;

procedure TForm27.Button2Click(Sender: TObject);
begin
      if messagedlg('Desea imprimir el remito?' , mtconfirmation, [mbok, mbcancel], 0 )
      =mrcancel then close
    else

frReport1.LoadFromFile('remitofecha.lrf');
frReport1.ShowReport;
end;

procedure TForm27.Button3Click(Sender: TObject);
begin
     ZQuery1.active:=false;
ZQuery1.sql.Clear;
ZQuery1.SQL.text:='select * from remitos where  ano = :ano';

zQuery1.Params.ParamByName('ano').AsString := combobox2.Text;
ZQuery1.ExecSQL ;
ZQuery1.Active:=true;
end;

procedure TForm27.FormCreate(Sender: TObject);
begin

end;

procedure TForm27.ListBox1Click(Sender: TObject);
begin

end;

end.

