unit ufrmPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  uController, uModel, Datasnap.DBClient, System.ImageList, Vcl.ImgList, Vcl.ToolWin;

type
  TfrmPedidos = class(TForm)
    pgcPrincipal: TPageControl;
    tbsPesquisa: TTabSheet;
    tbsManutencao: TTabSheet;
    pnlPesquisa: TPanel;
    pnlGrid: TPanel;
    grdPedidos: TDBGrid;
    edtPesquisa: TLabeledEdit;
    cboIndice: TComboBox;
    Label1: TLabel;
    btnPesquisar: TBitBtn;
    cdsPedidos: TClientDataSet;
    dsPedidos: TDataSource;
    ToolBar1: TToolBar;
    btnIncuir: TToolButton;
    btnEditar: TToolButton;
    btnExcluir: TToolButton;
    ToolButton4: TToolButton;
    btnSalvar: TToolButton;
    btnCancelar: TToolButton;
    imlButtons: TImageList;
    pnlItens: TPanel;
    pnlEditItens: TPanel;
    pnlGridItens: TPanel;
    DBGrid2: TDBGrid;
    ToolBar2: TToolBar;
    btnIncluirItem: TToolButton;
    btnExcluirItem: TToolButton;
    ToolButton5: TToolButton;
    btnSalvarItem: TToolButton;
    btnCancelarItem: TToolButton;
    pnlPedido: TPanel;
    Label2: TLabel;
    edtID: TEdit;
    edtDataPedido: TDateTimePicker;
    Label3: TLabel;
    edtDataDigitacao: TDateTimePicker;
    Label4: TLabel;
    edtCliente: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtTotal: TEdit;
    Label7: TLabel;
    edtObservacoes: TEdit;
    cdsPedidoItem: TClientDataSet;
    dsPedidoItem: TDataSource;
    Label8: TLabel;
    edtCodProduto: TEdit;
    Label9: TLabel;
    edtDescricao: TEdit;
    Label10: TLabel;
    edtQuantidade: TEdit;
    Label11: TLabel;
    edtUnitario: TEdit;
    Label12: TLabel;
    edtTotalItem: TEdit;
    edtDesconto: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    edtObsItem: TEdit;
    procedure btnPesquisarClick(Sender: TObject);
    procedure pgcPrincipalChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncuirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure grdPedidosDblClick(Sender: TObject);
    procedure btnIncluirItemClick(Sender: TObject);
    procedure edtCodProdutoExit(Sender: TObject);
    procedure btnEditarItemClick(Sender: TObject);
    procedure btnExcluirItemClick(Sender: TObject);
    procedure btnSalvarItemClick(Sender: TObject);
    procedure btnCancelarItemClick(Sender: TObject);
    procedure edtUnitarioExit(Sender: TObject);
    procedure edtQuantidadeExit(Sender: TObject);
    procedure edtDescontoExit(Sender: TObject);
  private
    { Private declarations }
    FPedido: TPedido;
    FPedidoitem: TPedidoItem;
    FPedidoController: TPedidoController;
    FPedidoItemController: TPedidoItemController;
    FProdutoController: TProdutoController;

    procedure Pesquisar;
    procedure LoadPedido;
    procedure ClearPedido;
    procedure FormEdit(pEdit: Boolean);
    procedure FormEditItem(pEdit: Boolean);
    procedure LoadObjectPedido;
    procedure ClearPedidoItem;
    procedure LoadObjectPedidoItem;

    procedure CalculaTotalItem;
    Procedure CalculaTotalPedido;
  public
    { Public declarations }
  end;

var
  frmPedidos: TfrmPedidos;

implementation

{$R *.dfm}

procedure TfrmPedidos.btnCancelarClick(Sender: TObject);
begin
  if (MessageDlg('Cancela edição do pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    LoadPedido;
    FormEdit(False);
  end;
end;

procedure TfrmPedidos.btnCancelarItemClick(Sender: TObject);
begin
  if (MessageDlg('Cancela edição do pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    ClearPedidoItem;
    FormEditItem(False);
    LoadPedido;
  end;
end;

procedure TfrmPedidos.btnEditarClick(Sender: TObject);
begin
  if cdsPedidos.FieldByName('ID').AsInteger > 0 then
  begin
    FormEdit(True);
    pgcPrincipal.TabIndex := 1;
    LoadPedido;
    edtDataPedido.SetFocus;
  end;
end;

procedure TfrmPedidos.btnEditarItemClick(Sender: TObject);
begin
  if cdsPedidoItem.FieldByName('ID').AsInteger > 0 then
  begin
    FormEditItem(True);
    LoadPedido;
    edtCodProduto.SetFocus;
  end;
end;

procedure TfrmPedidos.btnExcluirClick(Sender: TObject);
var
  vID: integer;
begin
  if pgcPrincipal.TabIndex = 0 then
    vID := cdsPedidos.FieldByName('ID').AsInteger
  else
    vID := FPedido.ID;

  if (MessageDlg('Confirma exclusão do pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    if vID > 0 then
    begin
      FPedidoController.DeletePedido(vID);
      Pesquisar;
      pgcPrincipal.TabIndex := 0;
    end;
  end;
end;

procedure TfrmPedidos.btnExcluirItemClick(Sender: TObject);
begin
  if (MessageDlg('Confirma exclusão do item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    if cdsPedidoItem.FieldByName('ID').AsInteger > 0 then
    begin
      FPedidoItemController.DeletePedidoItem(cdsPedidoItem.FieldByName('ID').AsInteger);
      LoadPedido;
      CalculaTotalPedido;
      FPedidoController.SetPedido(FPedido);
      LoadPedido;
    end;
  end;
end;

procedure TfrmPedidos.btnIncluirItemClick(Sender: TObject);
begin
  FormEditItem(True);
  ClearPedidoItem;
  edtCodProduto.SetFocus;
end;

procedure TfrmPedidos.btnIncuirClick(Sender: TObject);
begin
  FormEdit(True);

  pgcPrincipal.TabIndex := 1;

  ClearPedido;

  edtDataPedido.Date    := Now;
  edtDataDigitacao.Date := Now;

  edtDataPedido.SetFocus;
end;

procedure TfrmPedidos.btnPesquisarClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmPedidos.btnSalvarClick(Sender: TObject);
begin
  if (MessageDlg('Confirma edição do pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    LoadObjectPedido;

    FPedidoController.SetPedido(FPedido);
    FormEdit(False);
    LoadPedido;
  end;
end;

procedure TfrmPedidos.btnSalvarItemClick(Sender: TObject);
begin
  if Trim(edtDescricao.Text) = '' then
  begin
    MessageDlg('Informe um produto válido', mtError, [mbOK],0);
    edtCodProduto.SetFocus;
    Exit;
  end;

  if strtointdef(edtQuantidade.Text,0) <= 0 then
  begin
    MessageDlg('Informe uma quantidade válida', mtError, [mbOK],0);
    edtQuantidade.SetFocus;
    Exit;
  end;

  if strtoFloatdef(edtUnitario.Text,0) <= 0 then
  begin
    MessageDlg('Informe um valor unitário válido', mtError, [mbOK],0);
    edtUnitario.SetFocus;
    Exit;
  end;

  if (MessageDlg('Confirma edição do item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    LoadObjectPedidoItem;

    FPedidoItemController.SetPedidoItem(FPedidoitem);
    FormEditItem(False);
    LoadPedido;

    CalculaTotalPedido;
  end;
end;

procedure TfrmPedidos.LoadPedido;
begin
  if not assigned(FPedido) then
  begin
    pgcPrincipal.TabIndex := 0;
    Exit;
  end;

  if FPedido.ID > 0 then
  begin
    edtID.Text            := IntTostr(FPedido.ID);
    edtDataPedido.Date    := FPedido.DataPedido;
    edtDataDigitacao.Date := FPedido.DataDigitacao;
    edtCliente.Text       := FPedido.Cliente;
    edtTotal.Text         := FormatFloat('#,##0.00',FPedido.VrTotalPedido);
    edtObservacoes.Text   := FPedido.Observacao;

    FPedidoItemController.ListPedidoItem(FPedido.ID,cdsPedidoItem);
  end;
end;

procedure TfrmPedidos.LoadObjectPedido;
begin
   FPedido := TPedido.Create;

   FPedido.ID            := strtointdef(edtID.Text,-1);
   FPedido.DataPedido    := edtDataPedido.Date;
   FPedido.DataDigitacao := edtDataDigitacao.Date;
   FPedido.Cliente       := edtCliente.Text;
   FPedido.VrTotalPedido := StrToFloatDef(edtTotal.Text,0);
   FPedido.Observacao    := edtObservacoes.Text;
end;

procedure TfrmPedidos.LoadObjectPedidoItem;
begin
  if assigned(FPedidoItem) then
    FreeAndNil(FPedidoItem);

  FPedidoitem := TPedidoItem.Create;

  FPedidoitem.TSTPedidoID  := FPedido.ID;
  FPedidoitem.CodProduto   := strtointdef(edtCodProduto.Text,-1);
  FPedidoitem.Quantidade   := strtointdef(edtQuantidade.Text,0);
  FPedidoitem.VrUnitario   := strtoFloatdef(edtUnitario.Text,0);
  FPedidoitem.DescontoItem := strtoFloatdef(edtDesconto.Text,0);
  FPedidoitem.VrTotalItem  := strtoFloatdef(edtTotalItem.Text,0);
  FPedidoitem.Observacao   := edtCodProduto.Text;
end;


procedure TfrmPedidos.CalculaTotalItem;
var
  vQuantidade, vUnitario, vDesconto, vTotal: Double;
begin
  vQuantidade := StrToFloatDef(edtQuantidade.Text,0);
  vUnitario   := StrToFloatDef(edtUnitario.Text,0);
  vDesconto   := StrToFloatDef(edtDesconto.Text,0);
  vTotal      := (vQuantidade * vUnitario) - vDesconto;

  edtTotalItem.Text := FormatFloat('#,##0.00',vTotal);
end;

procedure TfrmPedidos.CalculaTotalPedido;
var
  vTotal: Double;
begin
  vTotal := 0;

  cdsPedidoItem.First;
  while not cdsPedidoItem.Eof do
  begin
    vTotal := vTotal + cdsPedidoItem.FieldByName('VrTotalItem').AsFloat;
    cdsPedidoItem.Next;
  end;

  FPedido.VrTotalPedido := vTotal;

  FPedidoController.SetPedido(FPedido);
  LoadPedido;
end;

procedure TfrmPedidos.ClearPedido;
begin
  edtID.Clear;
  edtDataDigitacao.Date := 0;
  edtDataDigitacao.Date := 0;
  edtCliente.Clear;
  edtTotal.Clear;;
  edtObservacoes.Clear;
end;

procedure TfrmPedidos.ClearPedidoItem;
begin
  edtCodProduto.Clear;
  edtDescricao.Clear;
  edtQuantidade.Clear;
  edtUnitario.Clear;
  edtDesconto.Clear;
  edtTotalItem.Clear;
  edtObsItem.Clear;

  if assigned(FPedidoItem) then
    FreeAndNil(FPedidoItem);
end;

procedure TfrmPedidos.edtCodProdutoExit(Sender: TObject);
var
  vIDProduto: integer;
  vProduto: TProduto;
begin
  edtDescricao.Clear;

  vIDProduto := StrToIntDef(Trim(edtCodProduto.Text),-1);

  if cdsPedidoItem.Locate('CodProduto',vIDProduto,[]) then
  begin
    MessageDlg('Item já inserido no pedido', mtError, [mbOK], 0);
    edtCodProduto.SetFocus;
    Exit;
  end;

  try
    vProduto := FProdutoController.GetProduto(vIDProduto);
    if vProduto.ID > 0 then
      edtDescricao.Text := vProduto.Descricao;
  finally
    FreeAndNil(vProduto);
  end;
end;

procedure TfrmPedidos.edtDescontoExit(Sender: TObject);
begin
  CalculaTotalItem;
end;

procedure TfrmPedidos.edtQuantidadeExit(Sender: TObject);
begin
  CalculaTotalItem;
end;

procedure TfrmPedidos.edtUnitarioExit(Sender: TObject);
begin
  CalculaTotalItem;
end;

procedure TfrmPedidos.grdPedidosDblClick(Sender: TObject);
begin
  FPedido := FPedidoController.GetPedido(cdsPedidos.FieldByName('ID').AsInteger);
  LoadPedido;
  pgcPrincipal.TabIndex := 1;
end;

procedure TfrmPedidos.FormCreate(Sender: TObject);
begin
  FPedidoController     := TPedidoController.Create;
  FPedidoItemController := TPedidoItemController.Create;
  FProdutoController    := TProdutoController.Create;
end;

procedure TfrmPedidos.FormDestroy(Sender: TObject);
begin
  FreeAndnil(FProdutoController);
  FreeAndnil(FPedidoItemController);
  FreeAndnil(FPedidoController);
end;

procedure TfrmPedidos.FormEdit(pEdit: Boolean);
begin
  pnlPedido.Enabled := pEdit;

  btnIncuir.Enabled  := not pEdit;
  btnEditar.Enabled  := not pEdit;
  btnExcluir.Enabled := not pEdit;

  btnSalvar.Enabled   := pEdit;
  btnCancelar.Enabled := pEdit;

  pnlItens.Enabled := not pEdit;
end;

procedure TfrmPedidos.FormEditItem(pEdit: Boolean);
begin
  pnlPedido.Enabled := not pEdit;

  btnIncuir.Enabled  := not pEdit;
  btnEditar.Enabled  := not pEdit;
  btnExcluir.Enabled := not pEdit;

  btnSalvar.Enabled   := not pEdit;
  btnCancelar.Enabled := not pEdit;

  pnlEditItens.Enabled := pEdit;

  btnIncluirItem.Enabled := not pEdit;
  btnExcluirItem.Enabled := not pEdit;

  btnSalvarItem.Enabled   := pEdit;
  btnCancelarItem.Enabled := pEdit;
end;

procedure TfrmPedidos.FormShow(Sender: TObject);
begin
  pgcPrincipal.TabIndex := 0;
  Pesquisar;
end;

procedure TfrmPedidos.pgcPrincipalChange(Sender: TObject);
begin
  FreeAndNil(FPedido);

  if pgcPrincipal.TabIndex = 0 then
    Pesquisar;

  if pgcPrincipal.TabIndex = 1 then
  begin
    if btnIncuir.Enabled then
      grdPedidosDblClick(grdPedidos);
  end;
end;

procedure TfrmPedidos.Pesquisar;
var
  vIndice: TIndice;
begin
  case cboIndice.ItemIndex of
    0: vIndice := TIIDPedido;
    1: vIndice := TICodProduto;
    else
      vIndice := TIIDPedido;
  end;

  FPedidoController.ListPedido(vIndice, edtPesquisa.Text, cdsPedidos);
end;

end.
