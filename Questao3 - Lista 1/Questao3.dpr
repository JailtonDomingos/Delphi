program Questao3;

uses
  Vcl.Forms,
  uQuestao3 in 'uQuestao3.pas' {frQuestao3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrQuestao3, frQuestao3);
  Application.Run;
end.
