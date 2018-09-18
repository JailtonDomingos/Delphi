program Questao2;

uses
  Vcl.Forms,
  uQuestao2 in 'uQuestao2.pas' {frQuestao2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrQuestao2, frQuestao2);
  Application.Run;
end.
