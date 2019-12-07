unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ExtCtrls,unit3,unit2, unit4,Unit21, UNIT7, unit8, UNIT9, Unit10,
  unit11, unit12, unit16, Unit18, unit19, Unit20, unit22, unit23,
  unit24, Unit25, Unit26, unit27, unit28,unit31, ZConnection,
  ZDataset, LR_Class, LR_DBSet, db, sqlite3conn, printers,
  ExtDlgs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    CalculatorDialog1: TCalculatorDialog;
    DataSource1: TDataSource;
    dataprodu: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    frDBDataSet1: TfrDBDataSet;
    frDBDataSet2: TfrDBDataSet;
    frDBDataSet3: TfrDBDataSet;
    frDBDataSet4: TfrDBDataSet;
    frDBDataSet5: TfrDBDataSet;
    frDBDataSet6: TfrDBDataSet;
    frReport1: TfrReport;
    frReport2: TfrReport;
    frReport3: TfrReport;
    frReport4: TfrReport;
    frReport5: TfrReport;
    frReport6: TfrReport;
    Image1: TImage;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem38: TMenuItem;
    MenuItem39: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem40: TMenuItem;
    MenuItem42: TMenuItem;
    MenuItem43: TMenuItem;
    MenuItem44: TMenuItem;
    MenuItem45: TMenuItem;
    MenuItem46: TMenuItem;
    MenuItem47: TMenuItem;
    MenuItem48: TMenuItem;
    MenuItem49: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem50: TMenuItem;
    MenuItem51: TMenuItem;
    MenuItem52: TMenuItem;
    MenuItem53: TMenuItem;
    MenuItem55: TMenuItem;
    MenuItem56: TMenuItem;
    MenuItem57: TMenuItem;
    MenuItem58: TMenuItem;
    MenuItem59: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem60: TMenuItem;
    MenuItem61: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    ZQuery3: TZQuery;
    ZQuery4: TZQuery;
    ZQuery5: TZQuery;
    ZQuery6: TZQuery;
    ZQueryprodu: TZQuery;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);

    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure MenuItem29Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem30Click(Sender: TObject);
    procedure MenuItem31Click(Sender: TObject);
    procedure MenuItem32Click(Sender: TObject);
    procedure MenuItem33Click(Sender: TObject);
    procedure MenuItem34Click(Sender: TObject);
    procedure MenuItem35Click(Sender: TObject);
    procedure MenuItem36Click(Sender: TObject);
    procedure MenuItem37Click(Sender: TObject);
    procedure MenuItem38Click(Sender: TObject);
    procedure MenuItem39Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem40Click(Sender: TObject);
    procedure MenuItem41Click(Sender: TObject);
    procedure MenuItem42Click(Sender: TObject);
    procedure MenuItem43Click(Sender: TObject);
    procedure MenuItem45Click(Sender: TObject);
    procedure MenuItem46Click(Sender: TObject);
    procedure MenuItem48Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem50Click(Sender: TObject);
    procedure MenuItem51Click(Sender: TObject);
    procedure MenuItem54Click(Sender: TObject);
    procedure MenuItem55Click(Sender: TObject);
    procedure MenuItem56Click(Sender: TObject);
    procedure MenuItem57Click(Sender: TObject);
    procedure MenuItem58Click(Sender: TObject);
    procedure MenuItem59Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem60Click(Sender: TObject);
    procedure MenuItem61Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure Timer1StartTimer(Sender: TObject);
    procedure Timer1StopTimer(Sender: TObject);
    procedure ZConnection1AfterConnect(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  Form27.Show;
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  Form28.Show;
end;

procedure TForm1.Timer1StartTimer(Sender: TObject);
begin

end;

procedure TForm1.Timer1StopTimer(Sender: TObject);
begin

end;

procedure TForm1.ZConnection1AfterConnect(Sender: TObject);
begin

end;


procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  Form9.show;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem15Click(Sender: TObject);
begin
  if messagedlg('Realmente desea salir?' , mtconfirmation, [mbok, mbcancel], 0 )
  =mrok then form1.close;

end;

procedure TForm1.MenuItem16Click(Sender: TObject);
begin
  Form4.Show;
end;

procedure TForm1.MenuItem17Click(Sender: TObject);
begin
  form22.show;
end;



procedure TForm1.MenuItem18Click(Sender: TObject);
begin
  Form21.Show;
end;

procedure TForm1.MenuItem19Click(Sender: TObject);
begin
  Form7.Show;
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  Form16.Show;

end;

procedure TForm1.MenuItem20Click(Sender: TObject);
begin
  Form8.show;
end;

procedure TForm1.MenuItem21Click(Sender: TObject);
begin
  Form10.show;
end;

procedure TForm1.MenuItem22Click(Sender: TObject);
begin
  Form11.show;
end;

procedure TForm1.MenuItem23Click(Sender: TObject);
begin
  Form12.show;
end;

procedure TForm1.MenuItem25Click(Sender: TObject);
begin
  showmessage('Sistema de produccion version 19.02.19 ');
end;

procedure TForm1.MenuItem26Click(Sender: TObject);
begin
   frReport2.LoadFromFile('produc.lrf');
frReport2.ShowReport;
end;

procedure TForm1.MenuItem27Click(Sender: TObject);
begin
   frReport1.LoadFromFile('listche.lrf');
frReport1.ShowReport;

  end;

procedure TForm1.MenuItem29Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  Form25.show;
end;

procedure TForm1.MenuItem30Click(Sender: TObject);
begin
  Form31.show;
end;

procedure TForm1.MenuItem31Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem32Click(Sender: TObject);
begin
  Form24.Show;
end;


procedure TForm1.MenuItem33Click(Sender: TObject);
begin
  Form18.show;
end;

procedure TForm1.MenuItem34Click(Sender: TObject);
begin
  form19.show;
end;

procedure TForm1.MenuItem35Click(Sender: TObject);
begin
  form20.show;
end;

procedure TForm1.MenuItem36Click(Sender: TObject);
begin
     frReport4.LoadFromFile('clientes.lrf');
frReport4.ShowReport;
end;

procedure TForm1.MenuItem37Click(Sender: TObject);
begin
      frReport5.LoadFromFile('proveedores.lrf');
frReport5.ShowReport;
end;

procedure TForm1.MenuItem38Click(Sender: TObject);
begin
  form23.show;
end;

procedure TForm1.MenuItem39Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  Form26.show;
end;

procedure TForm1.MenuItem40Click(Sender: TObject);
begin
  Form22.show;
end;

procedure TForm1.MenuItem41Click(Sender: TObject);
begin
  calculatordialog1.Execute;
end;

procedure TForm1.MenuItem42Click(Sender: TObject);
begin
  Form2.show;
end;

procedure TForm1.MenuItem43Click(Sender: TObject);
begin
  Form8.show;
end;

procedure TForm1.MenuItem45Click(Sender: TObject);
begin
  Form4.show;
end;



procedure TForm1.MenuItem48Click(Sender: TObject);
begin
  Form12.show;
end;



procedure TForm1.MenuItem50Click(Sender: TObject);
begin
  Form7.Show;
end;

procedure TForm1.MenuItem51Click(Sender: TObject);
begin
  Form9.show;
end;

procedure TForm1.MenuItem54Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem55Click(Sender: TObject);
begin
  Form10.show;
end;

procedure TForm1.MenuItem56Click(Sender: TObject);
begin
  form11.show;
end;

procedure TForm1.MenuItem57Click(Sender: TObject);
begin
  Form19.show;
end;

procedure TForm1.MenuItem58Click(Sender: TObject);
begin
  form18.show;
end;











procedure TForm1.MenuItem59Click(Sender: TObject);
begin
  form3.show;
end;



procedure TForm1.MenuItem60Click(Sender: TObject);
begin
    frReport1.LoadFromFile('listche.lrf');
frReport1.ShowReport;

end;

procedure TForm1.MenuItem61Click(Sender: TObject);
begin
     form20.show;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  Form27.Show;
end;



procedure TForm1.MenuItem46Click(Sender: TObject);
begin
  Form21.show;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
    frReport6.LoadFromFile('remxcobrar.lrf');
frReport6.ShowReport;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
   frReport3.LoadFromFile('listcom.lrf');
frReport3.ShowReport;
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin

end;

end.

