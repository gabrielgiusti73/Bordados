unit Unit15;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  xmailer;


type

  { TForm15 }

  TForm15 = class(TForm)
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form15: TForm15;

implementation

{$R *.lfm}

{ TForm15 }





procedure TForm15.Button1Click(Sender: TObject);
var
  Mail : Tsendmail;
begin
   Mail := Tsendmail.create;
   try
    mail.Sender:= 'Gabriel Giusti <gabrielgiusti73@gmail.com>';
    mail.subject:= asunto.Text;
    mail.Receivers.Add(para.text);

     mail.message.addstrings ( Mensaje.lines);

    mail.smtp.username := 'gabrielgiusti73';
    mail.Smtp.password := 'malu1973';
    mail.smtp.host:= 'smtp.gmail.com';
    mail.smtp.port:='587';

    mail.smtp.fullssl := False;
    mail.smtp.TLS:= true;
    Mail.send;

    finally

  Mail.free;
  Showmessage('correo enviado');
end;

procedure TForm15.FormCreate(Sender: TObject);
begin

end;

end.

