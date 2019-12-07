unit Unit25;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, DBGrids, StdCtrls,
  DBCtrls, ExtCtrls, LR_E_HTM, LR_E_TXT, ZDataset;

type

  { TForm25 }

  TForm25 = class(TForm)
    DataSource1: TDataSource;
    DBComboBox1: TDBComboBox;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    ZQuery1: TZQuery;
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form25: TForm25;

implementation

{$R *.lfm}

{ TForm25 }

procedure TForm25.Label1Click(Sender: TObject);
begin

end;

procedure TForm25.FormCreate(Sender: TObject);
begin

end;

end.

