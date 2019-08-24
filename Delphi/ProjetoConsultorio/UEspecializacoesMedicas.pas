unit UEspecializacoesMedicas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, ImgList, DB, Grids, DBGrids, StdCtrls, Buttons, ComCtrls,
  ExtCtrls, DBCtrls, ToolWin;

type
  TfrmEspecializacoesMedicas = class(TfrmCadastro)
    Label1: TLabel;
    Label2: TLabel;
    dblMedico: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    dsMedicos: TDataSource;
    dsEspecializacoes: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure sbtPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEspecializacoesMedicas: TfrmEspecializacoesMedicas;

implementation

uses UDMPrincipal;

{$R *.dfm}

procedure TfrmEspecializacoesMedicas.FormActivate(Sender: TObject);
begin
  inherited;
  dmPrincipal.CarregarTodos(dmPrincipal.sqlEspecializacoesMedicas,
        dmPrincipal.cdsEspecializacoesMedicas, 'ESPECIALIZACOES_MEDICOS',
        'CODIGO_MEDICO');

  dmPrincipal.CarregarTodos(dmPrincipal.sqlMedicos, dmPrincipal.cdsMedicos,
        'MEDICOS','NOME_MEDICO');

  dmPrincipal.CarregarTodos(dmPrincipal.sqlEspecializacoes, dmPrincipal.cdsEspecializacoes,
        'ESPECIALIZACOES','NOME_ESPECIALIZACAO');
end;

procedure TfrmEspecializacoesMedicas.sbtPesquisarClick(Sender: TObject);
var campo : string;
begin
  inherited;
  dmPrincipal.cdsEspecializacoesMedicas.Close;
  dmPrincipal.sqlEspecializacoesMedicas.SQL.Clear;
  dmPrincipal.sqlEspecializacoesMedicas.Params.Clear;
  dmPrincipal.sqlEspecializacoesMedicas.SQL.Add('SELECT * FROM Especializacoes_MedicOs WHERE ');

  CAMPO := UpperCase(cbxConsulta.Items[cbxConsulta.ItemIndex]);

  case cbxTipoConsulta.ItemIndex of
    0: begin
      if TipoDado = 1
        then dmPrincipal.sqlEspecializacoesMedicas.sql.Add(campo + ' = ' + edtConsulta.Text);
      if TipoDado = 2
        then dmPrincipal.sqlEspecializacoesMedicas.SQL.Add(campo + ' LIKE ' + CHR(39) + edtConsulta.Text + CHR(39));
      if TipoDado = 3
        then dmPrincipal.sqlEspecializacoesMedicas.SQL.Add(campo + ' = ' + CHR(39) + edtConsulta.Text + CHR(39));
    end;
    1: dmPrincipal.sqlEspecializacoesMedicas.SQL.Add(campo + ' LIKE ' + CHR(39) + UpperCase(edtConsulta.Text) + '%' + CHR(39));
    2: dmPrincipal.sqlEspecializacoesMedicas.SQL.Add(campo + ' LIKE ' + CHR(39) + '%' + UpperCase(edtConsulta.Text) + '%' + CHR(39));
  end;

  dmPrincipal.cdsEspecializacoesMedicas.Open;
  if dmPrincipal.cdsEspecializacoesMedicas.IsEmpty
    then MessageDlg('Nada selecionado para filtro.', mtInformation, [mbOK], 0);
end;

end.
