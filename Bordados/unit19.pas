unit Unit19;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, DBCtrls, DBGrids,
  StdCtrls, DBExtCtrls, ZDataset, ZConnection;

type

  { TForm19 }

  TForm19 = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    DataSource19: TDataSource;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBDateEdit1: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ZQuery1: TZQuery;
    ZQuery19: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure DBComboBox3Change(Sender: TObject);
    procedure DBDateEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form19: TForm19;

implementation

{$R *.lfm}

{ TForm19 }

procedure TForm19.Button1Click(Sender: TObject);
var
  a: integer;
  b: integer;
  c: integer;

begin
     a := StrToIntDef(dbedit3.Text,0);
     b := StrToIntDef(dbedit4.Text,0);
     c :=  StrToIntDef(dbedit5.Text,0);

     c := a * b;
     dbedit5.caption := inttostr(c);

end;

procedure TForm19.DBComboBox3Change(Sender: TObject);
begin

end;

procedure TForm19.DBDateEdit1Change(Sender: TObject);
begin

end;

procedure TForm19.FormCreate(Sender: TObject);
begin

end;

end.

