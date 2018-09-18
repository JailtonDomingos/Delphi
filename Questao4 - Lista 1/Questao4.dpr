program Questao4;

uses
  Vcl.Forms,
  uQuestao4 in 'uQuestao4.pas' {frQuestao4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrQuestao4, frQuestao4);
  Application.Run;
end.
