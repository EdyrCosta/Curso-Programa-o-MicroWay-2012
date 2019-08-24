unit UResultado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmResultado = class(TForm)
    lblResultado: TLabel;
    lblAcertos: TLabel;
    lblVRAcertos: TLabel;
    lblErros: TLabel;
    lblVRErros: TLabel;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmResultado: TfrmResultado;

implementation

uses USpeedCalc;

{$R *.dfm}

procedure TfrmResultado.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmResultado.FormShow(Sender: TObject);
begin
  lblVRAcertos.Caption := IntToStr(Acertos);
  lblVRErros.Caption := IntToStr(Erros);
  Acertos := 0;
  Erros := 0;
end;

end.
