unit uQuestao5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrQuestao5 = class(TForm)
    btButton1: TButton;
    edLabeledEdit1: TLabeledEdit;
    edLabeledEdit2: TLabeledEdit;
    btButton2: TButton;
    btResultado: TButton;
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
  frQuestao5: TfrQuestao5;

implementation

{$R *.dfm}


procedure TfrQuestao5.btButton1Click(Sender: TObject);
begin
  wQtde_Numeros := StrToInt(edLabeledEdit1.Text);
  if wQtde_Numeros < 1 then
     begin
       ShowMessage('N�mero inv�lido, digite novamente');
       Inc(wFinaliza1);
       if wFinaliza1 = 3 then
          begin
            ShowMessage('O programa ser� finalizado, simult�nea digita��o de numeros negativos(Ou ZERO)');
            Application.Terminate;
          end;
     end
  else
     begin
       edLabeledEdit2.Enabled := true;
       btButton2.Enabled      := true;
       edLabeledEdit2.SetFocus;
       edLabeledEdit1.Enabled := false;
       btButton1.Enabled      := false;
     end;
  wI := 0;
end;

procedure TfrQuestao5.btButton2Click(Sender: TObject);
begin
  wAux := StrToInt(edLabeledEdit2.Text);
  edLabeledEdit2.SetFocus;
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
            edLabeledEdit1.SetFocus;
          end;
     end
  else
     begin
       ShowMessage('N�mero inv�lido, favor digitar novamente!');
       Inc(wFinaliza2);
     end;

  if wFinaliza2 = 3 then
     begin
       ShowMessage('O programa ser� finalizado, simult�nea digita��o de numeros negativos(Ou ZERO)');
       Application.Terminate;
     end;

end;

procedure TfrQuestao5.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     begin
       Key := #0;
       Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

end.
