unit UCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, ImgList, DB, Grids, DBGrids, StdCtrls, Buttons, ComCtrls,
  ExtCtrls, DBCtrls, ToolWin, dblookup, Mask;

type
  TfrmCidades = class(TfrmCadastro)
    lblCodigo: TLabel;
    lblNome: TLabel;
    lblEstado: TLabel;
    dbeCodigo: TDBEdit;
    dbeNome: TDBEdit;
    dsEstado: TDataSource;
    dblEstado: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure sbtPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCidades: TfrmCidades;

implementation

uses UDMPrincipal;

{$R *.dfm}

procedure TfrmCidades.btNovoClick(Sender: TObject);
begin
  inherited;
  dsGenerico.DataSet.FieldByName('CODIGO_CIDADE').AsInteger := 0;
  dbeNome.SetFocus;
end;

procedure TfrmCidades.btSalvarClick(Sender: TObject);
begin
  inherited;
  dbeCodigo.SetFocus;
end;

procedure TfrmCidades.FormActivate(Sender: TObject);
begin
  inherited;
  dmPrincipal.CarregarTodos(dmPrincipal.sqlCidades,dmPrincipal.cdsCidades,'CIDADES','NOME_CIDADE');
  dmPrincipal.CarregarTodos(dmPrincipal.sqlEstados,dmPrincipal.cdsEstados,'ESTADOS','NOME_ESTADO');
end;

procedure TfrmCidades.sbtPesquisarClick(Sender: TObject);
var campo : string;
begin
  inherited;
  dmPrincipal.cdsCidades.Close;
  dmPrincipal.sqlCidades.SQL.Clear;
  dmPrincipal.sqlCidades.Params.Clear;
  dmPrincipal.sqlCidades.SQL.Add('SELECT * FROM CIDADES WHERE ');
  campo := UpperCase(cbxConsulta.Items[cbxConsulta.ItemIndex]);

  case cbxConsulta.ItemIndex of
    0: begin
      if TipoDado = 1
        then dmPrincipal.sqlCidades.SQL.Add(campo + ' = ' + edtConsulta.Text);
      if TipoDado = 2
        then dmPrincipal.sqlCidades.SQL.Add(campo + ' LIKE ' + CHR(39) +
                edtConsulta.Text + CHR(39));
      if TipoDado = 3
        then dmPrincipal.sqlCidades.SQL.Add(campo + ' = ' + CHR(39) +
                edtConsulta.Text + CHR(39));
    end;

    1: dmPrincipal.sqlCidades.SQL.Add(campo + ' LIKE ' + CHR(39) +
                UpperCase(edtConsulta.Text) + '%' + CHR(39));

    2: dmPrincipal.sqlCidades.SQL.Add(campo + ' LIKE ' + CHR(39) +
                '%' + UpperCase(edtConsulta.Text) + '%' + CHR(39));
  end;

  dmPrincipal.cdsCidades.Open;
  if dmPrincipal.cdsCidades.IsEmpty
     then MessageDlg('Nada selecionado para filtro.', mtInformation, [mbOK], 0);
end;

end.
