unit uModel;

interface

uses
  Classes;

type
  TProduto = class
  private
    FDescricao: string;
    FID: integer;
  published
    property ID: integer read FID write FID;
    property Descricao: string read FDescricao write FDescricao;
  public

  end;

  TPedidoItem = class
  private
    FObservacao: string;
    FTSTPedidoID: integer;
    FID: integer;
    FVrTotalItem: Double;
    FDescontoItem: Double;
    FQuantidade: integer;
    FVrUnitario: Double;
    FCodProduto: integer;
  published
    property ID: integer read FID write FID;
    property TSTPedidoID: integer read FTSTPedidoID write FTSTPedidoID;
    property CodProduto: integer read FCodProduto write FCodProduto;
    property Quantidade: integer read FQuantidade write FQuantidade;
    property VrUnitario: Double read FVrUnitario write FVrUnitario;
    property DescontoItem: Double read FDescontoItem write FDescontoItem;
    property VrTotalItem: Double read FVrTotalItem write FVrTotalItem;
    property Observacao: string read FObservacao write FObservacao;
  public

  end;

  TListaPedidoItem = class
  private
    FListaPedidoItem: TList;
  public
    constructor Create;
    procedure Add(pPedidoItem: TPedidoItem);
    procedure Delete(Index: Integer);
    function Count: Integer;
  end;

  TPedido = class
  private
    FObservacao: string;
    FDataPedido: TDateTime;
    FVrTotalPedido: Double;
    FCliente: string;
    FID: integer;
    FDataDigitacao: TDateTime;
    FListaPedidoItem: TListaPedidoItem;
  published
    property ID: integer read FID write FID;
    property Cliente: string read FCliente write FCliente;
  	property VrTotalPedido: Double read FVrTotalPedido write FVrTotalPedido;
  	property DataPedido: TDateTime read FDataPedido write FDataPedido;
	  property DataDigitacao: TDateTime read FDataDigitacao write FDataDigitacao;
	  property Observacao: string read FObservacao write FObservacao;
    property ListaPedidoItem: TListaPedidoItem read FListaPedidoItem write FListaPedidoItem;
  public

  end;

implementation

{ TListaPedidoItem }

procedure TListaPedidoItem.Add(pPedidoItem: TPedidoItem);
begin
  FListaPedidoItem.Add(pPedidoItem);
end;

function TListaPedidoItem.Count: Integer;
begin
  Result := FListaPedidoItem.Count;
end;

constructor TListaPedidoItem.Create;
begin
  inherited Create;
  FListaPedidoItem := TList.Create;
end;

procedure TListaPedidoItem.Delete(Index: Integer);
begin
  if Index < Count then
    FListaPedidoItem.Delete(Index)
end;

end.
