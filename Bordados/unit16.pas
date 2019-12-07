unit Unit16;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
      toperacion = (tsuma, tresta, tmultiplica, tdivision, tninguna );
  { TForm16 }

  TForm16 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    igual: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    eddisplay: TEdit;
    procedure Button15Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure eddisplayChange(Sender: TObject);
    procedure igualClick(Sender: TObject);
    procedure suma(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
             primernumero : longint;
      operadorsel : Toperacion;
      limpiardisplay : boolean;
  public

  end;

var
  Form16: TForm16;

implementation

{$R *.lfm}

{ TForm16 }

procedure TForm16.Button3Click(Sender: TObject);
begin
  if limpiardisplay then
  begin
    eddisplay.text :='';
    limpiardisplay := false;

  end;
  eddisplay.Text := floattostr(strtofloat (eddisplay.text + tbutton(sender).caption)) ;
end;

procedure TForm16.suma(Sender: TObject);
begin
  igualclick(sender);
  case tbutton(sender).caption of
  '+' : operadorsel := tsuma;
  '-' : operadorsel := tresta;
  '*' : operadorsel := tmultiplica;
  '/' : operadorsel := tdivision;

  end;
  primernumero := strtoint(eddisplay.text);
  limpiardisplay := true
end;

procedure TForm16.Button15Click(Sender: TObject);
begin

end;

procedure TForm16.Button8Click(Sender: TObject);
begin
  eddisplay.text := '0';
  operadorsel := tninguna;
  limpiardisplay := false;
end;

procedure TForm16.eddisplayChange(Sender: TObject);
begin

end;

procedure TForm16.igualClick(Sender: TObject);
begin
  if not limpiardisplay then
  case operadorsel of
  tsuma : eddisplay.text := inttostr(strtoint(eddisplay.text) + primernumero);
  tresta : eddisplay.text := inttostr(primernumero - strtoint(eddisplay.text));
  tmultiplica :eddisplay.text := inttostr(strtoint(eddisplay.text) * primernumero);
  tdivision :eddisplay.text := inttostr(primernumero div strtoint(eddisplay.text));
  end;
  limpiardisplay := true;
end;

end.

