program Questao8;

uses
  Vcl.Forms,
  uQuestao8 in 'uQuestao8.pas' {frQuestao8};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrQuestao8, frQuestao8);
  Application.Run;
end.
