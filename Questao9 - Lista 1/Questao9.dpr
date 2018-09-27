program Questao9;

uses
  Vcl.Forms,
  uQuestao9 in 'uQuestao9.pas' {frQuestao9};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrQuestao9, frQuestao9);
  Application.Run;
end.
