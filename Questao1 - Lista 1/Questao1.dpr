program Questao1;

uses
  Vcl.Forms,
  uQuestao1 in 'uQuestao1.pas' {frQuestao1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrQuestao1, frQuestao1);
  Application.Run;
end.
