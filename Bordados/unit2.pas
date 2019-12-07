unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Sqlite3DS, sqlite3conn, sqldb, FileUtil, Forms,
  Controls, Graphics, Dialogs, DBGrids, DbCtrls, StdCtrls, DBExtCtrls,
  ZConnection, ZDataset;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DataSource2: TDataSource;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBDateEdit1: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Tcantidad: TDBEdit;
    Tprecio: TDBEdit;
    Ttotal: TDBEdit;
    ZQuery2: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

  total, cantidad, unitario : integer;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  a: integer;
  b: integer;
  c: integer;

begin
     a := StrToIntDef(tcantidad.Text,0);
     b := StrToIntDef(tprecio.Text,0);
     c :=  StrToIntDef(ttotal.Text,0);

     c := a * b;
     ttotal.caption := inttostr(c);
end;



procedure TForm2.FormCreate(Sender: TObject);
begin

end;

end.

