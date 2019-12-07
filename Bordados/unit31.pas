unit Unit31;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, sqldb, sqlite3conn, Forms, Controls, Graphics, Dialogs,
  StdCtrls, DBCtrls, DBGrids, ExtCtrls, LR_Class, LR_DBSet, ZDataset, LR_DSet,
  LR_PGrid;

type

  { TForm31 }

  TForm31 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ComboBox1: TComboBox;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Image1: TImage;
    Label1: TLabel;
    ZQuery1: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure frDBDataSet1CheckEOF(Sender: TObject; var Eof: Boolean);
    procedure FrPrintGrid1GetValue(const ParName: String; var ParValue: Variant
      );
    procedure Image1Click(Sender: TObject);
  private

  public

  end;

var
  Form31: TForm31;

implementation

{$R *.lfm}

{ TForm31 }

procedure TForm31.Button1Click(Sender: TObject);
begin
ZQuery1.active:=false;
ZQuery1.sql.Clear;
ZQuery1.SQL.text:='select * from pedidos where codcliente = :codcliente and Situacion ="En espera" ';
ZQuery1.Params.ParamByName('codcliente').AsString := combobox1.Text;
ZQuery1.ExecSQL ;
ZQuery1.Active:=true;




end;

procedure TForm31.Button2Click(Sender: TObject);
begin
      if messagedlg('Desea imprimir el Listado?' , mtconfirmation, [mbok, mbcancel], 0 )
      =mrcancel then close
    else

frReport1.LoadFromFile('pedicliespera.lrf');
frReport1.ShowReport;
end;

procedure TForm31.Button3Click(Sender: TObject);
begin
   ZQuery1.active:=false;
ZQuery1.sql.Clear;
ZQuery1.SQL.text:='select * from pedidos where codcliente = :codcliente ';
ZQuery1.Params.ParamByName('codcliente').AsString := combobox1.Text;
ZQuery1.ExecSQL ;
ZQuery1.Active:=true


end;

procedure TForm31.Button4Click(Sender: TObject);
begin
  
 ZQuery1.active:=false;
ZQuery1.sql.Clear;
ZQuery1.SQL.text:='select * from pedidos';
ZQuery1.ExecSQL ;
ZQuery1.Active:=true
end;

procedure TForm31.ComboBox1Change(Sender: TObject);
begin

end;

procedure TForm31.frDBDataSet1CheckEOF(Sender: TObject; var Eof: Boolean);
begin

end;

procedure TForm31.FrPrintGrid1GetValue(const ParName: String;
  var ParValue: Variant);
begin

end;

procedure TForm31.Image1Click(Sender: TObject);
begin

end;

end.

