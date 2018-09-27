program Questao7;

uses
  Vcl.Forms,
  uQuestao7 in 'uQuestao7.pas' {frQuestao7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrQuestao7, frQuestao7);
  Application.Run;
end.
