program Questao6;

uses
  Vcl.Forms,
  uQuestao6 in 'uQuestao6.pas' {frQuestao6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrQuestao6, frQuestao6);
  Application.Run;
end.
