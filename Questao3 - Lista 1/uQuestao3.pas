unit uQuestao3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrQuestao3 = class(TForm)
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
  frQuestao3: TfrQuestao3;


implementation

{$R *.dfm}


procedure TfrQuestao3.btButton1Click(Sender: TObject);
begin
  wQtde_Numeros := StrToInt(edLabeledEdit1.Text);
  edLabeledEdit2.Enabled := true;
  btButton2.Enabled      := true;
  edLabeledEdit1.Enabled := false;
  btButton1.Enabled      := false;
  edLabeledEdit2.SetFocus;
  wI                     := 0;
  wContador              := -1;
end;

procedure TfrQuestao3.btButton2Click(Sender: TObject);
begin
  wAux := StrToInt(edLabeledEdit2.Text);
  if wAux > 0 then
     begin
       if wAux > wMaiorNumero then
          begin
            wMaiorNumero := wAux;
            Inc(wContador);
          end;

       edLabeledEdit2.Enabled := True;
       edLabeledEdit2.SetFocus;

       Inc(wI);
       if wI = wQtde_Numeros then
          begin
            ShowMessage('Quantidade de permiss�es excedida!');
            edLabeledEdit2.Enabled := false;
            btButton2.Enabled      := false;
            ShowMessage('Maior N�mero: ' + IntToStr(wMaiorNumero) + ', Quantidade de vezes digitada: ' + IntToStr(wContador));
            edLabeledEdit1.Enabled := true;
            btButton1.Enabled      := true;
            edLabeledEdit1.SetFocus;
          end;
     end;
end;

procedure TfrQuestao3.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     begin
       Key := #0;
       Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

end.