program PSpeedCalc;

uses
  Forms,
  USpeedCalc in 'USpeedCalc.pas' {frmPrincipal},
  UResultado in 'UResultado.pas' {frmResultado};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmResultado, frmResultado);
  Application.Run;
end.
