unit Unit28;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, DBGrids, StdCtrls,
  ExtCtrls, LR_Class, LR_DBSet, ZDataset;

type

  { TForm28 }

  TForm28 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ZQuery1: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private

  public

  end;

var
  Form28: TForm28;

implementation

{$R *.lfm}

{ TForm28 }

procedure TForm28.Button1Click(Sender: TObject);
begin

ZQuery1.active:=false;
ZQuery1.sql.Clear;
ZQuery1.SQL.text:='select * from remitos where  Mes = :Mes and ano = :ano and codcli = :codcli ';
zQuery1.Params.ParamByName('Mes').AsString := combobox2.Text;
zQuery1.Params.ParamByName('ano').AsString := combobox3.Text;
zQuery1.Params.ParamByName('codcli').AsString := combobox1.Text;
ZQuery1.ExecSQL ;
ZQuery1.Active:=true;

end;

procedure TForm28.Button2Click(Sender: TObject);
begin
     if messagedlg('Desea imprimir el remito?' , mtconfirmation, [mbok, mbcancel], 0 )
      =mrcancel then close
    else

frReport1.LoadFromFile('remitofecha.lrf');
frReport1.ShowReport;
end;

procedure TForm28.Button3Click(Sender: TObject);
begin
     ZQuery1.active:=false;
ZQuery1.sql.Clear;
ZQuery1.SQL.text:='select * from remitos where  ano = :ano and codcli = :codcli ';

zQuery1.Params.ParamByName('ano').AsString := combobox3.Text;
zQuery1.Params.ParamByName('codcli').AsString := combobox1.Text;
ZQuery1.ExecSQL ;
ZQuery1.Active:=true;

end;

procedure TForm28.ComboBox1Change(Sender: TObject);
begin

end;

end.

