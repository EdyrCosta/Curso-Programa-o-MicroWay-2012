unit UConveniosPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, ImgList, DB, Grids, DBGrids, StdCtrls, Buttons, ComCtrls,
  ExtCtrls, DBCtrls, ToolWin;

type
  TfrmConveniosPacientes = class(TfrmCadastro)
    Label1: TLabel;
    Label2: TLabel;
    dblConvenio: TDBLookupComboBox;
    dblPaciente: TDBLookupComboBox;
    dsPacientes: TDataSource;
    dsConvenios: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure sbtPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConveniosPacientes: TfrmConveniosPacientes;

implementation

uses UDMPrincipal;

{$R *.dfm}

procedure TfrmConveniosPacientes.FormActivate(Sender: TObject);
begin
  inherited;
  dmPrincipal.CarregarTodos(dmPrincipal.sqlConveniosPacientes, dmPrincipal.cdsConeviosPacientes, 'CONVENIOS_PACIENTES', 'CODIGO_PACIENTE');
  dmPrincipal.CarregarTodos(dmPrincipal.sqlPacientes, dmPrincipal.cdsPacientes, 'PACIENTES','NOME_PACIENTE');
  dmPrincipal.CarregarTodos(dmPrincipal.sqlConvenios, dmPrincipal.cdsConvenios, 'CONVENIOS', 'NOME_CONVENIOS');
end;

procedure TfrmConveniosPacientes.sbtPesquisarClick(Sender: TObject);
var campo : string;
begin
  inherited;
  dmPrincipal.cdsConeviosPacientes.Close;
  dmPrincipal.sqlConveniosPacientes.SQL.Clear;
  dmPrincipal.sqlConveniosPacientes.Params.Clear;
  dmPrincipal.sqlConveniosPacientes.SQL.Add('SELECT * FROM CONVENIOS_PACIENTES WHERE ');
  campo := UpperCase(cbxConsulta.Items[cbxConsulta.ItemIndex]);

  case cbxConsulta.ItemIndex of
    0: begin
      if TipoDado = 1
        then dmPrincipal.sqlConveniosPacientes.SQL.Add(campo + ' = ' + edtConsulta.Text);
      if TipoDado = 2
        then dmPrincipal.sqlConveniosPacientes.SQL.Add(campo + ' LIKE ' + CHR(39) +
                edtConsulta.Text + CHR(39));
      if TipoDado = 3
        then dmPrincipal.sqlConveniosPacientes.SQL.Add(campo + ' = ' + CHR(39) +
                edtConsulta.Text + CHR(39));
    end;

    1: dmPrincipal.sqlConveniosPacientes.SQL.Add(campo + ' LIKE ' + CHR(39) +
                UpperCase(edtConsulta.Text) + '%' + CHR(39));

    2: dmPrincipal.sqlConveniosPacientes.SQL.Add(campo + ' LIKE ' + CHR(39) +
                '%' + UpperCase(edtConsulta.Text) + '%' + CHR(39));
  end;

  dmPrincipal.cdsConeviosPacientes.Open;
  if dmPrincipal.cdsConeviosPacientes.IsEmpty
     then MessageDlg('Nada selecionado para filtro.', mtInformation, [mbOK], 0);
end;

end.
