object dmPrincipal: TdmPrincipal
  OldCreateOrder = False
  Height = 500
  Width = 585
  object fdcPrincipal: TFDConnection
    Params.Strings = (
      'SERVER=dbsrv01'
      'User_Name=adm'
      'Password=master'
      'ApplicationName=Enterprise/Architect/Ultimate'
      'Workstation=DIEGO-PC'
      'MARS=yes'
      'Database=tempAdmn'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object qryProduto: TFDQuery
    Connection = fdcPrincipal
    SQL.Strings = (
      'select * from TSTProduto'
      ' where id = :id')
    Left = 248
    Top = 104
    ParamData = <
      item
        Name = 'ID'
        DataType = ftWideString
        ParamType = ptInput
        Value = '0'
      end>
    object qryProdutoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
  end
  object qryPedido: TFDQuery
    Connection = fdcPrincipal
    SQL.Strings = (
      'select * from TSTPedido'
      ' where id = :id')
    Left = 352
    Top = 104
    ParamData = <
      item
        Name = 'ID'
        DataType = ftWideString
        ParamType = ptInput
        Value = '0'
      end>
    object qryPedidoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPedidoCliente: TStringField
      FieldName = 'Cliente'
      Origin = 'Cliente'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object qryPedidoVrTotalPedido: TBCDField
      FieldName = 'VrTotalPedido'
      Origin = 'VrTotalPedido'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPedidoDataPedido: TSQLTimeStampField
      FieldName = 'DataPedido'
      Origin = 'DataPedido'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryPedidoDataDigitacao: TSQLTimeStampField
      FieldName = 'DataDigitacao'
      Origin = 'DataDigitacao'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryPedidoObservacao: TStringField
      FieldName = 'Observacao'
      Origin = 'Observacao'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object qryPedidoItem: TFDQuery
    Connection = fdcPrincipal
    SQL.Strings = (
      'select * from TSTPedidoItem'
      ' where id = :id')
    Left = 448
    Top = 104
    ParamData = <
      item
        Name = 'ID'
        DataType = ftWideString
        ParamType = ptInput
        Value = '0'
      end>
    object qryPedidoItemID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPedidoItemTSTPedidoID: TIntegerField
      FieldName = 'TSTPedidoID'
      Origin = 'TSTPedidoID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryPedidoItemCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'CodProduto'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryPedidoItemQuantidade: TIntegerField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryPedidoItemVrUnitario: TBCDField
      FieldName = 'VrUnitario'
      Origin = 'VrUnitario'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPedidoItemDescontoItem: TBCDField
      FieldName = 'DescontoItem'
      Origin = 'DescontoItem'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qryPedidoItemVrTotalItem: TBCDField
      FieldName = 'VrTotalItem'
      Origin = 'VrTotalItem'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPedidoItemObservacao: TStringField
      FieldName = 'Observacao'
      Origin = 'Observacao'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = qryProduto
    Options = [poAutoRefresh, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 176
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 248
    Top = 248
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutoDescricao: TStringField
      FieldName = 'Descricao'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
  end
  object dspPedido: TDataSetProvider
    DataSet = qryPedido
    Options = [poAutoRefresh, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 352
    Top = 176
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido'
    Left = 352
    Top = 248
    object cdsPedidoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedidoCliente: TStringField
      FieldName = 'Cliente'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object cdsPedidoVrTotalPedido: TBCDField
      FieldName = 'VrTotalPedido'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsPedidoDataPedido: TSQLTimeStampField
      FieldName = 'DataPedido'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsPedidoDataDigitacao: TSQLTimeStampField
      FieldName = 'DataDigitacao'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsPedidoObservacao: TStringField
      FieldName = 'Observacao'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object dspPedidoItem: TDataSetProvider
    DataSet = qryPedidoItem
    Options = [poAutoRefresh, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 448
    Top = 176
  end
  object cdsPedidoItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidoItem'
    Left = 448
    Top = 248
    object cdsPedidoItemID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedidoItemTSTPedidoID: TIntegerField
      FieldName = 'TSTPedidoID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsPedidoItemCodProduto: TIntegerField
      FieldName = 'CodProduto'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsPedidoItemQuantidade: TIntegerField
      FieldName = 'Quantidade'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsPedidoItemVrUnitario: TBCDField
      FieldName = 'VrUnitario'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsPedidoItemDescontoItem: TBCDField
      FieldName = 'DescontoItem'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsPedidoItemVrTotalItem: TBCDField
      FieldName = 'VrTotalItem'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsPedidoItemObservacao: TStringField
      FieldName = 'Observacao'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
  end
  object qryAux: TFDQuery
    Connection = fdcPrincipal
    Left = 288
    Top = 376
  end
end
