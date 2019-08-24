unit UConvenios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, ImgList, DB, Grids, DBGrids, StdCtrls, Buttons, ComCtrls,
  ExtCtrls, DBCtrls, ToolWin, Mask;

type
  TfrmConvenios = class(TfrmCadastro)
    lblDescricao: TLabel;
    lblNome: TLabel;
    lblCodigo: TLabel;
    dbeCodigo: TDBEdit;
    dbeNome: TDBEdit;
    dbmMemo: TDBMemo;
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
  frmConvenios: TfrmConvenios;

implementation

uses UDMPrincipal;

{$R *.dfm}

procedure TfrmConvenios.btNovoClick(Sender: TObject);
begin
  inherited;
  dsGenerico.DataSet.FieldByName('CODIGO_CONVENIO').AsInteger := 0;
  dbeNome.SetFocus;
end;

procedure TfrmConvenios.btSalvarClick(Sender: TObject);
begin
  inherited;
  dbeCodigo.SetFocus;
end;

procedure TfrmConvenios.FormActivate(Sender: TObject);
begin
  inherited;
  dmPrincipal.CarregarTodos(dmPrincipal.sqlConvenios, dmPrincipal.cdsConvenios,'CONVENIOS','NOME_CONVENIO');
  edtConsulta.Clear;
end;

procedure TfrmConvenios.sbtPesquisarClick(Sender: TObject);
var campo : string;
begin
  inherited;
  dmPrincipal.cdsConvenios.Close;
  dmPrincipal.sqlConvenios.SQL.Clear;
  dmPrincipal.sqlConvenios.Params.Clear;
  dmPrincipal.sqlConvenios.SQL.Add('SELECT * FROM CONVENIOS WHERE ');
  campo := UpperCase(cbxConsulta.Items[cbxConsulta.ItemIndex]);

  case cbxConsulta.ItemIndex of
    0: begin
      if TipoDado = 1
        then dmPrincipal.sqlConvenios.SQL.Add(campo + ' = ' + edtConsulta.Text);
      if TipoDado = 2
        then dmPrincipal.sqlConvenios.SQL.Add(campo + ' LIKE ' + CHR(39) +
                edtConsulta.Text + CHR(39));
      if TipoDado = 3
        then dmPrincipal.sqlConvenios.SQL.Add(campo + ' = ' + CHR(39) +
                edtConsulta.Text + CHR(39));
    end;

    1: dmPrincipal.sqlConvenios.SQL.Add(campo + ' LIKE ' + CHR(39) +
                UpperCase(edtConsulta.Text) + '%' + CHR(39));

    2: dmPrincipal.sqlConvenios.SQL.Add(campo + ' LIKE ' + CHR(39) +
                '%' + UpperCase(edtConsulta.Text) + '%' + CHR(39));
  end;

  dmPrincipal.cdsConvenios.Open;
  if dmPrincipal.cdsConvenios.IsEmpty
     then MessageDlg('Nada selecionado para filtro.', mtInformation, [mbOK], 0);
end;

end.
