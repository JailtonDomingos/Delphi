unit uQuestao2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrQuestao2 = class(TForm)
    edEdit1: TEdit;
    edEdit2: TEdit;
    edLabeledEdit1: TLabeledEdit;
    lbLabel2: TLabel;
    lbLabe1: TLabel;
    btButton1: TButton;
    //procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frQuestao2: TfrQuestao2;


implementation

{$R *.dfm}

//2.Escreva um algoritmo que leia três números e os imprima em ordem crescente;

procedure TfrQuestao2.btButton1Click(Sender: TObject);
var
  wI,
  wJ: Integer;
  wMensagem : String;

  wArray1: array[0..2] of Integer;
  wAux: Integer;
begin
  wArray1[0] := StrToInt(edEdit1.Text);
  wArray1[1] := StrToInt(edEdit2.Text);
  wArray1[2] := StrToInt(edLabeledEdit1.Text);

  for wI := 0 to 2 do
    begin
      for wJ := wI + 1 to 2 do
        begin
          if wArray1[wI] > wArray1[wJ] then
             begin
               wAux        := wArray1[wI];
               wArray1[wI] := wArray1[wJ];
               wArray1[wJ] := wAux;
             end;
        end;
    end;

  wMensagem := '';
  for wI := 0 to 2 do
    begin
      wMensagem := wMensagem + IntToStr(wArray1[wI]) + ', ';
    end;

  ShowMessage(wMensagem);
  edEdit1.SetFocus;
end;

procedure TfrQuestao2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     begin
       Key := #0;
       Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

end.

