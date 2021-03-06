unit uQuestao6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrQuestao6 = class(TForm)
    edLabeledEdit1: TLabeledEdit;
    edLabeledEdit2: TLabeledEdit;
    btCalcularSalario: TButton;
    procedure btCalcularSalarioClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frQuestao6: TfrQuestao6;

implementation

{$R *.dfm}

(*
6.Escreva um programa que leia o sal�rio hora do funcion�rio e
o n�mero de horas trabalhadas no m�s e calcule o valor a ser pago.
At� 220 horas trabalhadas basta simplesmente multiplicar o valor do
sal�rio hora pelo n�mero de horas. A quantidade de horas que exceder 220 dever�
ser paga com 50% a mais do seu valor.
*)

procedure TfrQuestao6.btCalcularSalarioClick(Sender: TObject);
var
  wHorasTrabalhadas  ,
  wHorasEx           ,
  wValorHora         ,
  wSalario           ,
  wSalarioEx         : Double;

begin
  wSalario := 0;
  wHorasTrabalhadas := StrToFloat(edLabeledEdit2.Text);
  wValorHora        := StrToFloat(edLabeledEdit1.Text);
  if wHorasTrabalhadas <= 220 then
     begin
       wSalario := wHorasTrabalhadas * wValorHora;
     end
  else
     begin
       wSalarioEx := wValorHora - ((wValorHora*50)/100);
       wSalario   := 220 * wValorHora;
       wHorasEx   := wHorasTrabalhadas - 220;
       wSalario   := wSalario + (wHorasEx * (wValorHora + wSalarioEx));
     end;

  ShowMessage('Sal�rio a receber: ' + FloatToStr(wSalario));
  edLabeledEdit1.SetFocus;
end;

procedure TfrQuestao6.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     begin
       Key := #0;
       Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

end.
