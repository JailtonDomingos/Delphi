program Questao;

uses
  Vcl.Forms,
  uQuestao10 in 'uQuestao10.pas' {frQuestao10};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrQuestao10, frQuestao10);
  Application.Run;
end.
