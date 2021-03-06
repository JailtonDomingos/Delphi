unit uQuestao4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrQuestao4 = class(TForm)
    btButton1: TButton;
    edLabeledEdit1: TLabeledEdit;
    edLabeledEdit2: TLabeledEdit;
    btButton2: TButton;
    procedure btButton1Click(Sender: TObject);
    procedure btButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  //  function verifica
  private
    wQtde_Numeros, wI, wContador, wAux, wMaiorNumero, wFinaliza1, wFinaliza2: Integer;
  public
    { Public declarations }
  end;

var
  frQuestao4: TfrQuestao4;


implementation

{$R *.dfm}


procedure TfrQuestao4.btButton1Click(Sender: TObject);
begin
  wQtde_Numeros := StrToInt(edLabeledEdit1.Text);
  if wQtde_Numeros < 1 then
     begin
       ShowMessage('N�mero inv�lido, digite novamente');
     end
  else
     begin
       edLabeledEdit2.Enabled := true;
       btButton2.Enabled      := true;
       edLabeledEdit1.Enabled := false;
       btButton1.Enabled      := false;
       edLabeledEdit2.SetFocus;
     end;
  wI := 0;
end;

procedure TfrQuestao4.btButton2Click(Sender: TObject);
begin
  wAux := StrToInt(edLabeledEdit2.Text);
  if wAux > 0 then
     begin
       if wAux > wMaiorNumero then
          begin
            wMaiorNumero := wAux;
            Inc(wContador);
          end;

       Inc(wI);
       if wI = wQtde_Numeros then
          begin
            edLabeledEdit2.Enabled := false;
            btButton2.Enabled      := false;
            ShowMessage('Maior N�mero: ' + IntToStr(wMaiorNumero) + ', Quantidade de vezes digitada: ' + IntToStr(wContador));
            edLabeledEdit1.Enabled := true;
            btButton1.Enabled      := true;
          end;
     end
  else
     ShowMessage('N�mero inv�lido, favor digitar novamente!');

  edLabeledEdit2.Enabled := True;
  edLabeledEdit2.SetFocus;
end;

procedure TfrQuestao4.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     begin
       Key := #0;
       Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

end.
