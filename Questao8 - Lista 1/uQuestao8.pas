unit uQuestao8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrQuestao8 = class(TForm)
    edLabeledEdit1: TLabeledEdit;
    btButtonSplit: TButton;
    procedure btButtonSplitClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frQuestao8: TfrQuestao8;

implementation

{$R *.dfm}

 //8.Escreva um algoritmo que leia um n�mero inteiro entre 100 e 999 e
  //imprima na sa�da cada um dos algarismos que comp�em o n�mero;

procedure TfrQuestao8.btButtonSplitClick(Sender: TObject);
var
  wI       ,
  wNumero  : Integer;
begin
  wNumero :=  StrToInt(edLabeledEdit1.Text);
  if (wNumero > 99) AND (wNumero < 1000) then
     begin
       for wI := 1 to 3 do
         if Copy(IntToStr(wNumero), wI, 1) <> '' then
            ShowMessage(Copy(IntToStr(wNumero), wI, 1))

     end;
  edLabeledEdit1.setfocus;
end;

procedure TfrQuestao8.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     begin
       Key := #0;
       Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

end.
