unit Unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids,
  DbCtrls, StdCtrls, DBExtCtrls, ExtDlgs, ExtCtrls, ZConnection, ZDataset;

type

  { TForm7 }

  TForm7 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CalculatorDialog1: TCalculatorDialog;
    DataSource7: TDataSource;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBDateEdit1: TDBDateEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Timer1: TTimer;
    ZQuery7: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label7Click(Sender: TObject);
  private

  public

  end;

var
  Form7: TForm7;

implementation

{$R *.lfm}

{ TForm7 }

procedure TForm7.FormCreate(Sender: TObject);
begin

end;

procedure TForm7.Label7Click(Sender: TObject);
begin

end;

procedure TForm7.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  calculatordialog1.Execute;
end;

procedure TForm7.Button3Click(Sender: TObject);
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

end.

