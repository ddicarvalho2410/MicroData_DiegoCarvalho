unit uController;

interface

uses
  System.Classes, System.Generics.Collections, System.SysUtils, VCL.Dialogs,
  Datasnap.DBClient, Data.DB,
  udmPrincipal,
  uModel;

type
  TIndice = (TIIDPedido, TICodProduto);

  TController = class
  private
    function GetNextID: integer; virtual; abstract;
  end;

  TPedidoController = class(TController)
  private
    function GetNextID: integer; override;
  published
    function SetPedido(var pPedido: TPedido): Boolean;
    function DeletePedido(pID: Integer): Boolean;
    function GetPedido(pID: integer): TPedido;
    procedure ListPedido(pIndice: TIndice; pPesquisa: string; var pCDS: TClientDataSet);
  end;

  TPedidoItemController = class(TController)
  private
    function GetNextID: integer; override;
  published
    function SetPedidoItem(var pPedidoItem: TPedidoItem): Boolean;
    function DeletePedidoItem(pID: Integer): Boolean;
    function GetPedidoItem(pID: integer): TPedidoItem;
    procedure ListPedidoItem(pIDPedido: integer; var pCDS: TClientDataSet);
  end;

  TProdutoController = class(TController)
  private
    function GetNextID: integer; override;
  published
    function SetProduto(var pProduto: TProduto): Boolean;
    function DeleteProduto(pID: Integer): Boolean;
    function GetProduto(pID: integer): TProduto;
  end;


implementation

{ TPedidoController }

function TPedidoController.DeletePedido(pID: Integer): Boolean;
begin
  Result := False;

  try
    dmPrincipal.qryAux.Close;
    dmPrincipal.qryAux.SQL.Clear;
    dmPrincipal.qryAux.SQL.Add('DELETE FROM TSTPedido');
    dmPrincipal.qryAux.SQL.Add(' WHERE ID = :ID');
    dmPrincipal.qryAux.ParamByName('ID').AsInteger := pID;
    dmPrincipal.qryAux.ExecSQL;

    result := True;
  except
    on e:exception do
      MessageDlg('Erro - DeletePedido: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

function TPedidoController.GetNextID: integer;
begin
  Result := 1;

  dmPrincipal.qryAux.Close;
  dmPrincipal.qryAux.SQL.Clear;
  dmPrincipal.qryAux.SQL.Add('SELECT MAX(ID) AS ID ');
  dmPrincipal.qryAux.SQL.Add('  FROM TSTPedido');
  dmPrincipal.qryAux.Open;

  if not dmPrincipal.qryAux.IsEmpty then
    Result := dmPrincipal.qryAux.FieldByName('ID').asinteger + 1;
end;

function TPedidoController.GetPedido(pID: integer): TPedido;
begin
  Result := TPedido.Create;

  Result.ID := -1;

  dmPrincipal.cdsPedido.Close;
  dmPrincipal.qryPedido.ParamByName('id').AsInteger := pID;
  dmPrincipal.cdsPedido.Open;

  if not dmPrincipal.cdsPedido.IsEmpty then
  begin
    Result.ID            := dmPrincipal.cdsPedidoID.AsInteger;
    Result.Cliente       := dmPrincipal.cdsPedidoCliente.AsString;
    Result.VrTotalPedido := dmPrincipal.cdsPedidoVrTotalPedido.AsFloat;
    Result.DataPedido    := dmPrincipal.cdsPedidoDataPedido.AsDateTime;
	  Result.DataDigitacao := dmPrincipal.cdsPedidoDataDigitacao.AsDateTime;
  	Result.Observacao    := dmPrincipal.cdsPedidoObservacao.AsString;
  end

  //Result.ListaPedidoItem: TListaPedidoItem read FListaPedidoItem write FListaPedidoItem;
end;

procedure TPedidoController.ListPedido(pIndice: TIndice; pPesquisa: string; var pCDS: TClientDataSet);
var
  I: Integer;
begin
  pCDS.Close;
  pCDS.FieldDefs.Clear;
  pCDS.FieldDefs.add('ID',ftInteger);
  pCDS.FieldDefs.add('Cliente',ftString,60);
  pCDS.FieldDefs.add('VrTotalPedido',ftFloat);
  pCDS.FieldDefs.add('DataPedido',ftDateTime);
  pCDS.FieldDefs.add('DataDigitacao',ftDateTime);
  pCDS.FieldDefs.add('Observacao',ftString,200);
  pCDS.CreateDataSet;

  dmPrincipal.qryAux.Close;
  dmPrincipal.qryAux.SQL.Clear;
  dmPrincipal.qryAux.SQL.Add('SELECT DISTINCT P.*');
  dmPrincipal.qryAux.SQL.Add('  FROM TSTPedido P');
  dmPrincipal.qryAux.SQL.Add('  LEFT JOIN TSTPedidoItem PI ON PI.TSTPedidoID = P.ID');
  dmPrincipal.qryAux.SQL.Add(' WHERE 1=1');

  if pIndice = TIIDPedido then
  begin
    if Trim(pPesquisa) <> EmptyStr then
    begin
      dmPrincipal.qryAux.SQL.Add('   AND P.ID = :ID');
      dmPrincipal.qryAux.ParamByName('ID').AsInteger := strtointdef(pPesquisa,-1);
    end;
  end;

  if pIndice = TICodProduto then
  begin
    if Trim(pPesquisa) <> EmptyStr then
    begin
      dmPrincipal.qryAux.SQL.Add('   AND PI.CodProduto = :CodProduto');
      dmPrincipal.qryAux.ParamByName('CodProduto').AsInteger := strtointdef(pPesquisa,-1);
    end;
  end;

  dmPrincipal.qryAux.SQL.Add(' ORDER BY P.ID');

  dmPrincipal.qryAux.Open;

  dmPrincipal.qryAux.First;
  while not dmPrincipal.qryAux.EOF do
  begin
    pCDS.Append;
    for I := 0 to Pred(pCDS.Fields.Count) do
      pCDS.Fields[i].Value := dmPrincipal.qryAux.Fields[i].Value;
    pCDS.Post;

    dmPrincipal.qryAux.Next;
  end;
end;

function TPedidoController.SetPedido(var pPedido: TPedido): Boolean;
var
  vPedido: TPedido;
begin
  Result := False;

  try
    vPedido := GetPedido(pPedido.ID);

    if vPedido.ID > 0 then
      dmPrincipal.cdsPedido.Edit
    else
    begin
      dmPrincipal.cdsPedido.Append;
      pPedido.ID := GetNextID;
    end;

    dmPrincipal.cdsPedidoID.AsInteger             := pPedido.ID;
    dmPrincipal.cdsPedidoCliente.AsString         := pPedido.Cliente;
    dmPrincipal.cdsPedidoVrTotalPedido.AsFloat    := pPedido.VrTotalPedido;
    dmPrincipal.cdsPedidoDataPedido.AsDateTime    := pPedido.DataPedido;
	  dmPrincipal.cdsPedidoDataDigitacao.AsDateTime := pPedido.DataDigitacao;
  	dmPrincipal.cdsPedidoObservacao.AsString      := pPedido.Observacao;

    dmPrincipal.cdsPedido.Post;
    dmPrincipal.cdsPedido.ApplyUpdates(-1);
    dmPrincipal.cdsPedido.Refresh;

    Result := True;
  except
    on e:exception do
      MessageDlg('Erro - SetPedido: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

{ TPedidoItemController }

function TPedidoItemController.DeletePedidoItem(pID: Integer): Boolean;
begin
  Result := False;

  try
    dmPrincipal.qryAux.Close;
    dmPrincipal.qryAux.SQL.Clear;
    dmPrincipal.qryAux.SQL.Add('DELETE FROM TSTPedidoItem');
    dmPrincipal.qryAux.SQL.Add(' WHERE ID = :ID');
    dmPrincipal.qryAux.ParamByName('ID').AsInteger := pID;
    dmPrincipal.qryAux.ExecSQL;

    result := True;
  except
    on e:exception do
      MessageDlg('Erro - DeletePedidoItem: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

function TPedidoItemController.GetNextID: integer;
begin
  Result := 1;

  dmPrincipal.qryAux.Close;
  dmPrincipal.qryAux.SQL.Clear;
  dmPrincipal.qryAux.SQL.Add('SELECT MAX(ID) AS ID ');
  dmPrincipal.qryAux.SQL.Add('  FROM TSTPedidoItem');
  dmPrincipal.qryAux.Open;

  if not dmPrincipal.qryAux.IsEmpty then
    Result := dmPrincipal.qryAux.FieldByName('ID').asinteger + 1;
end;

function TPedidoItemController.GetPedidoItem(pID: integer): TPedidoItem;
begin
  Result := TPedidoItem.Create;

  Result.ID := -1;

  dmPrincipal.cdsPedidoItem.Close;
  dmPrincipal.qryPedidoItem.ParamByName('id').AsInteger := pID;
  dmPrincipal.cdsPedidoItem.Open;

  if not dmPrincipal.cdsPedidoItem.IsEmpty then
  begin
    Result.ID           := dmPrincipal.cdsPedidoItemID.AsInteger;
    Result.TSTPedidoID  := dmPrincipal.cdsPedidoItemTSTPedidoID.AsInteger;
    Result.CodProduto   := dmPrincipal.cdsPedidoItemCodProduto.AsInteger;
    Result.Quantidade   := dmPrincipal.cdsPedidoItemQuantidade.AsInteger;
    Result.VrUnitario   := dmPrincipal.cdsPedidoItemVrUnitario.AsFloat;
    Result.DescontoItem := dmPrincipal.cdsPedidoItemDescontoItem.AsFloat;
    Result.VrTotalItem  := dmPrincipal.cdsPedidoItemVrTotalItem.AsFloat;
    Result.Observacao   := dmPrincipal.cdsPedidoItemObservacao.AsString;
  end
end;

procedure TPedidoItemController.ListPedidoItem(pIDPedido: integer;
  var pCDS: TClientDataSet);
var
  I: Integer;
begin
  pCDS.Close;
  pCDS.FieldDefs.Clear;
  pCDS.FieldDefs.add('ID',ftInteger);
  pCDS.FieldDefs.add('TSTPedidoID',ftInteger);
  pCDS.FieldDefs.add('COdProduto',ftInteger);
  pCDS.FieldDefs.add('Quantidade',ftInteger);
  pCDS.FieldDefs.add('VrUnitario',ftFloat);
  pCDS.FieldDefs.add('DescontoItem',ftFloat);
  pCDS.FieldDefs.add('VrTotalItem',ftFloat);
  pCDS.FieldDefs.add('Observacao',ftString,200);
  pCDS.FieldDefs.add('Descricao',ftString,100);
  pCDS.CreateDataSet;

  dmPrincipal.qryAux.Close;
  dmPrincipal.qryAux.SQL.Clear;
  dmPrincipal.qryAux.SQL.Add('SELECT PI.*, PR.Descricao');
  dmPrincipal.qryAux.SQL.Add('  FROM TSTPedidoItem PI');
  dmPrincipal.qryAux.SQL.Add(' INNER JOIN TSTPedido P ON PI.TSTPedidoID = P.ID');
  dmPrincipal.qryAux.SQL.Add(' INNER JOIN TSTProduto PR ON PI.CodProduto = PR.ID');
  dmPrincipal.qryAux.SQL.Add(' WHERE P.ID = :ID');
  dmPrincipal.qryAux.SQL.Add(' ORDER BY PI.ID');

  dmPrincipal.qryAux.ParamByName('ID').AsInteger := pIDPedido;

  dmPrincipal.qryAux.Open;

  dmPrincipal.qryAux.First;
  while not dmPrincipal.qryAux.EOF do
  begin
    pCDS.Append;
    for I := 0 to Pred(pCDS.Fields.Count) do
      pCDS.Fields[i].Value := dmPrincipal.qryAux.Fields[i].Value;
    pCDS.Post;

    dmPrincipal.qryAux.Next;
  end;
end;

function TPedidoItemController.SetPedidoItem(var pPedidoItem: TPedidoItem): Boolean;
var
  vPedidoItem: TPedidoItem;
begin
  Result := False;

  try
    vPedidoItem := GetPedidoItem(pPedidoItem.ID);

    if vPedidoItem.ID > 0 then
      dmPrincipal.cdsPedidoItem.Edit
    else
    begin
      dmPrincipal.cdsPedidoItem.Append;
      pPedidoItem.ID := GetNextID;
    end;

    dmPrincipal.cdsPedidoItemID.AsInteger          := pPedidoItem.ID;
    dmPrincipal.cdsPedidoItemTSTPedidoID.AsInteger := pPedidoItem.TSTPedidoID;
    dmPrincipal.cdsPedidoItemCodProduto.AsInteger  := pPedidoItem.CodProduto;
    dmPrincipal.cdsPedidoItemQuantidade.AsInteger  := pPedidoItem.Quantidade;
    dmPrincipal.cdsPedidoItemVrUnitario.AsFloat    := pPedidoItem.VrUnitario;
    dmPrincipal.cdsPedidoItemDescontoItem.AsFloat  := pPedidoItem.DescontoItem;
    dmPrincipal.cdsPedidoItemVrTotalItem.AsFloat   := pPedidoItem.VrTotalItem;
    dmPrincipal.cdsPedidoItemObservacao.AsString   := pPedidoItem.Observacao;

    dmPrincipal.cdsPedidoItem.Post;
    dmPrincipal.cdsPedidoItem.ApplyUpdates(-1);
    dmPrincipal.cdsPedidoItem.Refresh;

    Result := True;
  except
    on e:exception do
      MessageDlg('Erro - SetPedidoItem: ' + e.Message, mtError, [mbOK], 0);
  end;

end;

{ TProdutoController }

function TProdutoController.DeleteProduto(pID: Integer): Boolean;
begin
  Result := False;

  try
    dmPrincipal.qryAux.Close;
    dmPrincipal.qryAux.SQL.Clear;
    dmPrincipal.qryAux.SQL.Add('DELETE FROM TSTProduto');
    dmPrincipal.qryAux.SQL.Add(' WHERE ID = :ID');
    dmPrincipal.qryAux.ParamByName('ID').AsInteger := pID;
    dmPrincipal.qryAux.ExecSQL;

    result := True;
  except
    on e:exception do
      MessageDlg('Erro - DeleteProduto: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

function TProdutoController.GetNextID: integer;
begin
  Result := 1;

  dmPrincipal.qryAux.Close;
  dmPrincipal.qryAux.SQL.Clear;
  dmPrincipal.qryAux.SQL.Add('SELECT MAX(ID) AS ID ');
  dmPrincipal.qryAux.SQL.Add('  FROM TSTProduto');
  dmPrincipal.qryAux.Open;

  if not dmPrincipal.qryAux.IsEmpty then
    Result := dmPrincipal.qryAux.FieldByName('ID').asinteger + 1;
end;

function TProdutoController.GetProduto(pID: integer): TProduto;
begin
  Result := TProduto.Create;

  Result.ID := -1;

  dmPrincipal.cdsProduto.Close;
  dmPrincipal.qryProduto.ParamByName('id').AsInteger := pID;
  dmPrincipal.cdsProduto.Open;

  if not dmPrincipal.cdsProduto.IsEmpty then
  begin
    Result.ID        := dmPrincipal.cdsProdutoID.AsInteger;
    Result.Descricao := dmPrincipal.cdsProdutoDescricao.AsString;
  end
end;

function TProdutoController.SetProduto(var pProduto: TProduto): Boolean;
var
  vProduto: TProduto;
begin
  Result := False;

  try
    vProduto := GetProduto(pProduto.ID);

    if vProduto.ID > 0 then
      dmPrincipal.cdsProduto.Edit
    else
    begin
      dmPrincipal.cdsProduto.Append;
      pProduto.ID := GetNextID;
    end;

    dmPrincipal.cdsProdutoID.AsInteger       := pProduto.ID;
    dmPrincipal.cdsProdutoDescricao.AsString := pProduto.Descricao;

    dmPrincipal.cdsProduto.Post;
    dmPrincipal.cdsProduto.ApplyUpdates(-1);
    dmPrincipal.cdsProduto.Refresh;

    Result := True;
  except
    on e:exception do
      MessageDlg('Erro - SetProduto: ' + e.Message, mtError, [mbOK], 0);
  end;

end;

end.
