program Questao5;

uses
  Vcl.Forms,
  uQuestao5 in 'uQuestao5.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrQuestao5, frQuestao5);
  Application.Run;
end.
