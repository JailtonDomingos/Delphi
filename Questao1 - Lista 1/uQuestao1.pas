unit uQuestao1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrQuestao1 = class(TForm)
    btButtonVerificar: TButton;
    lbLabel1: TLabel;
    lbLabel2: TLabel;
    lbLabel3: TLabel;
    edEdit1: TEdit;
    edEdit2: TEdit;
    edEdit3: TEdit;
    procedure btButtonVerificarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private

  public
    { Public declarations }
  end;

var
  frQuestao1 : TfrQuestao1;

implementation

{$R *.dfm}
//Escreva um algoritmo que leia tr�s n�meros e imprima o maior deles;


procedure TfrQuestao1.btButtonVerificarClick(Sender: TObject);
var
  wNumero1 ,
  wNumero2 ,
  wNumero3 : Integer;
begin
  wNumero1 := StrToInt(edEdit1.Text);
  wNumero2 := StrToInt(edEdit2.Text);
  wNumero3 := StrToInt(edEdit3.Text);

  if((wnumero1 > wnumero2) AND (wnumero1 > wnumero3)) then
     begin
       ShowMessage(edEdit1.Text);
     end
  else
  if (wNumero2 > wNumero3) then
     begin
       ShowMessage(edEdit2.text);
     end
  else
     begin
       ShowMessage(edEdit3.text);
     end;
  edEdit1.SetFocus;
end;

procedure TfrQuestao1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     begin
       Key := #0;
       Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

end.
