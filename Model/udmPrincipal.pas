unit udmPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Datasnap.DBClient, Datasnap.Provider;

type
  TdmPrincipal = class(TDataModule)
    fdcPrincipal: TFDConnection;
    qryProduto: TFDQuery;
    qryPedido: TFDQuery;
    qryPedidoItem: TFDQuery;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dspPedido: TDataSetProvider;
    cdsPedido: TClientDataSet;
    dspPedidoItem: TDataSetProvider;
    cdsPedidoItem: TClientDataSet;
    qryAux: TFDQuery;
    qryPedidoID: TIntegerField;
    qryPedidoCliente: TStringField;
    qryPedidoVrTotalPedido: TBCDField;
    qryPedidoDataPedido: TSQLTimeStampField;
    qryPedidoDataDigitacao: TSQLTimeStampField;
    qryPedidoObservacao: TStringField;
    cdsPedidoID: TIntegerField;
    cdsPedidoCliente: TStringField;
    cdsPedidoVrTotalPedido: TBCDField;
    cdsPedidoDataPedido: TSQLTimeStampField;
    cdsPedidoDataDigitacao: TSQLTimeStampField;
    cdsPedidoObservacao: TStringField;
    qryProdutoID: TIntegerField;
    qryProdutoDescricao: TStringField;
    cdsProdutoID: TIntegerField;
    cdsProdutoDescricao: TStringField;
    qryPedidoItemID: TIntegerField;
    qryPedidoItemTSTPedidoID: TIntegerField;
    qryPedidoItemCodProduto: TIntegerField;
    qryPedidoItemQuantidade: TIntegerField;
    qryPedidoItemVrUnitario: TBCDField;
    qryPedidoItemDescontoItem: TBCDField;
    qryPedidoItemVrTotalItem: TBCDField;
    qryPedidoItemObservacao: TStringField;
    cdsPedidoItemID: TIntegerField;
    cdsPedidoItemTSTPedidoID: TIntegerField;
    cdsPedidoItemCodProduto: TIntegerField;
    cdsPedidoItemQuantidade: TIntegerField;
    cdsPedidoItemVrUnitario: TBCDField;
    cdsPedidoItemDescontoItem: TBCDField;
    cdsPedidoItemVrTotalItem: TBCDField;
    cdsPedidoItemObservacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPrincipal: TdmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
