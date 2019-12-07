unit Unit17;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, TADbSource, Forms, Controls, Graphics,
  Dialogs, StdCtrls, ZDataset, TACustomSource, TAGraph, TASources;


type

  { TForm17 }

  TForm17 = class(TForm)
    Chart1: TChart;
    DataSource1: TDataSource;
    DbChartSource1: TDbChartSource;
    ListChartSource1: TListChartSource;
    ZQuery1: TZQuery;

    procedure DbChartSource1GetItem(ASender: TDbChartSource;
      var AItem: TChartDataItem);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form17: TForm17;

implementation

{$R *.lfm}

{ TForm17 }

procedure TForm17.FormCreate(Sender: TObject);
begin

end;

procedure TForm17.DbChartSource1GetItem(ASender: TDbChartSource;
  var AItem: TChartDataItem);
begin

end;

end.












