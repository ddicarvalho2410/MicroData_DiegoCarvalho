object frmPedidos: TfrmPedidos
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Pedidos'
  ClientHeight = 672
  ClientWidth = 614
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 36
    Width = 614
    Height = 636
    ActivePage = tbsManutencao
    Align = alClient
    TabOrder = 0
    OnChange = pgcPrincipalChange
    ExplicitTop = 0
    ExplicitWidth = 765
    ExplicitHeight = 561
    object tbsPesquisa: TTabSheet
      Caption = 'Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 8
      ExplicitTop = 28
      ExplicitWidth = 747
      ExplicitHeight = 523
      object pnlPesquisa: TPanel
        Left = 0
        Top = 0
        Width = 606
        Height = 123
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 757
        DesignSize = (
          606
          123)
        object Label1: TLabel
          Left = 26
          Top = 10
          Width = 39
          Height = 16
          Caption = 'Ind'#237'ce'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtPesquisa: TLabeledEdit
          Left = 194
          Top = 30
          Width = 386
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 57
          EditLabel.Height = 16
          EditLabel.Caption = 'Pesquisa'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -13
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          TabOrder = 0
          ExplicitWidth = 537
        end
        object cboIndice: TComboBox
          Left = 26
          Top = 30
          Width = 145
          Height = 24
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          TabStop = False
          Text = 'N'#250'm. Pedido'
          Items.Strings = (
            'N'#250'm. Pedido'
            'C'#243'd. Produto')
        end
        object btnPesquisar: TBitBtn
          Left = 223
          Top = 72
          Width = 161
          Height = 33
          Caption = 'Pesquisar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            1800000000000006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFC5C5DC8D8DABF8EDE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6C3C3C3F9F9F9FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7B4
            CB0776BF489DC233315BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E68E8E8E9494949D9D9DFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6B9D3006D
            BEA9FFFF0687FD002994FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFE7E7E77E7E7EBDBDBD9A9A9A9B9B9BFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9BCD6006CC4ABFF
            FF1191F8002E9DFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFE9E9E98D8D8DBCBCBC9B9B9B888888FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFC5E00080D4ACFFFF0070
            E80036A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFE6E6E6838383BCBCBC9696968A8A8AFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF8A8CA12F294042384A3428409D96A1FFFFFFCACFE60D8FE11796F50041
            B4FFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCB9393939999999A9A9AD3
            D3D3FFFFFFE4E4E49191919999998B8B8BFFFFFFFFFFFFFFFFFFFFFFFFEFF4FF
            140604A68A52FFFFD3FFFFE9FFFFE491997F000006867185A3B4C80054CAFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD6E6E6E929292BDBDBDBCBCBCBCBCBC95
            9595707070919191B7B7B7999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF282525
            FFCB8AFFCEA0FFDBC1FFEACFFFF5D7FFFFFFD3EADD000004FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF818181AEAEAEB5B5B5B7B7B7BABABABABABAC8
            C8C8B7B7B76E6E6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8E96C68D54
            F1B289E7A473FFE4C7FFECD3FFF7DDFFFBEAFFFFFFA1AEA19C959DFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFABABAB9A9A9AAEAEAEA9A9A9B7B7B7BABABAB9B9B9BC
            BCBCCACACA9C9C9CD2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF746564EAAA71
            CF956BFFCDA2FFE7D1FFEDD8FFF0D8FFF7E3FFFBE4FFFFF640364EFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF868686ABABABA5A5A5B3B3B3B9B9B9BABABABBBBBBBC
            BCBCBDBDBDBFBFBF9C9C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82696FDB9B63
            F0B78AD9A077FFC290FFEBD8FFEDD7FFEED5FFF1D4FFFFE06C6172FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF7E7E7EA8A8A8ACACACAAAAAAB1B1B1BABABABABABAB9
            B9B9B9B9B9BBBBBBA1A1A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E6B71D48F53
            FFC9A3FFFDF4FFF3EAFFC495FFF2E9FFECD5FFE9D5FFFFE3554C63FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF7F7F7FA5A5A5B2B2B2BEBEBEBDBDBDB0B0B0BBBBBBBB
            BBBBB9B9B9BEBEBE9B9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA4A8AD6F37
            FDC296FFEDDBFFFAF4F2B486FFD7B4F7BE8FFFE1BED4BC808B88A3FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFB0B0B0959595B1B1B1BBBBBBBDBDBDADADADB5B5B5AF
            AFAFB9B9B9A0A0A0C6C6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9EEFB745435
            DD925AFEC59BFFD6AFFFC79CCC8F63F5B389FFD691443737FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFEDEDED858585A5A5A5B0B0B0B6B6B6B3B3B3A4A4A4AE
            AEAEB1B1B1797979FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1DAF8
            7B5C3BAE723AD59054D08F58F1B176D39D635B5B5AE9EBFCFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5878787959595A4A4A4A3A3A3AAAAAA9C
            9C9C8F8F8FF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            ECF2FDB7B1B5988286A08A8D95888AABAAB1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4C5C5C5A0A0A0A1A1A1A6A6A6C5
            C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
          OnClick = btnPesquisarClick
        end
      end
      object pnlGrid: TPanel
        Left = 0
        Top = 123
        Width = 606
        Height = 482
        Align = alClient
        TabOrder = 1
        ExplicitTop = 103
        ExplicitWidth = 747
        ExplicitHeight = 426
        object grdPedidos: TDBGrid
          Left = 1
          Top = 1
          Width = 604
          Height = 480
          Align = alClient
          DataSource = dsPedidos
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = grdPedidosDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataPedido'
              Title.Caption = 'Dt. Pedido'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataDigitacao'
              Title.Caption = 'Dt. Digita'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cliente'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VrTotalPedido'
              Title.Caption = 'Total'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Observacao'
              Title.Caption = 'Observa'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 300
              Visible = True
            end>
        end
      end
    end
    object tbsManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
      ExplicitLeft = 6
      ExplicitTop = 19
      ExplicitWidth = 757
      ExplicitHeight = 494
      object pnlItens: TPanel
        Left = 0
        Top = 177
        Width = 606
        Height = 428
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = 232
        ExplicitWidth = 757
        ExplicitHeight = 177
        object pnlEditItens: TPanel
          Left = 1
          Top = 272
          Width = 604
          Height = 155
          Align = alBottom
          Enabled = False
          TabOrder = 0
          object Label8: TLabel
            Left = 23
            Top = 8
            Width = 84
            Height = 16
            Caption = 'C'#243'd. Produto'
          end
          object Label9: TLabel
            Left = 167
            Top = 8
            Width = 63
            Height = 16
            Caption = 'Descri'#231#227'o'
          end
          object Label10: TLabel
            Left = 24
            Top = 56
            Width = 74
            Height = 16
            Caption = 'Quantidade'
          end
          object Label11: TLabel
            Left = 167
            Top = 56
            Width = 50
            Height = 16
            Caption = 'Unit'#225'rio'
          end
          object Label12: TLabel
            Left = 455
            Top = 56
            Width = 32
            Height = 16
            Caption = 'Total'
          end
          object Label13: TLabel
            Left = 312
            Top = 56
            Width = 61
            Height = 16
            Caption = 'Desconto'
          end
          object Label14: TLabel
            Left = 24
            Top = 104
            Width = 84
            Height = 16
            Caption = 'Observa'#231#245'es'
          end
          object edtCodProduto: TEdit
            Left = 23
            Top = 24
            Width = 121
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnExit = edtCodProdutoExit
          end
          object edtDescricao: TEdit
            Left = 167
            Top = 24
            Width = 409
            Height = 24
            TabStop = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object edtQuantidade: TEdit
            Left = 24
            Top = 72
            Width = 121
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnExit = edtQuantidadeExit
          end
          object edtUnitario: TEdit
            Left = 167
            Top = 72
            Width = 121
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnExit = edtUnitarioExit
          end
          object edtTotalItem: TEdit
            Left = 455
            Top = 72
            Width = 121
            Height = 24
            TabStop = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object edtDesconto: TEdit
            Left = 312
            Top = 72
            Width = 121
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnExit = edtDescontoExit
          end
          object edtObsItem: TEdit
            Left = 24
            Top = 120
            Width = 553
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
        end
        object pnlGridItens: TPanel
          Left = 1
          Top = 37
          Width = 604
          Height = 235
          Align = alClient
          TabOrder = 1
          ExplicitLeft = 504
          ExplicitTop = 104
          ExplicitWidth = 185
          ExplicitHeight = 41
          object DBGrid2: TDBGrid
            Left = 1
            Top = 1
            Width = 602
            Height = 233
            Align = alClient
            DataSource = dsPedidoItem
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'CodProduto'
                Title.Caption = 'C'#243'd. Produto'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descricao'
                Title.Caption = 'Descri'#231#227'o'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Quantidade'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VrUnitario'
                Title.Caption = 'Unit'#225'rio'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DescontoItem'
                Title.Caption = 'Desconto'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VrTotalItem'
                Title.Caption = 'Total'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Observacao'
                Title.Caption = 'Observa'#231#245'es'
                Width = 300
                Visible = True
              end>
          end
        end
        object ToolBar2: TToolBar
          Left = 1
          Top = 1
          Width = 604
          Height = 36
          AutoSize = True
          ButtonHeight = 36
          ButtonWidth = 36
          Caption = 'ToolBar1'
          Images = imlButtons
          TabOrder = 2
          object btnIncluirItem: TToolButton
            Left = 0
            Top = 0
            Caption = 'btnIncuir'
            ImageIndex = 0
            OnClick = btnIncluirItemClick
          end
          object btnExcluirItem: TToolButton
            Left = 36
            Top = 0
            Caption = 'btnExcluir'
            ImageIndex = 2
            OnClick = btnExcluirItemClick
          end
          object ToolButton5: TToolButton
            Left = 72
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object btnSalvarItem: TToolButton
            Left = 80
            Top = 0
            Caption = 'btnSalvar'
            Enabled = False
            ImageIndex = 3
            OnClick = btnSalvarItemClick
          end
          object btnCancelarItem: TToolButton
            Left = 116
            Top = 0
            Caption = 'btnCancelar'
            Enabled = False
            ImageIndex = 4
            OnClick = btnCancelarItemClick
          end
        end
      end
      object pnlPedido: TPanel
        Left = 0
        Top = 0
        Width = 606
        Height = 177
        Align = alTop
        Enabled = False
        TabOrder = 1
        object Label2: TLabel
          Left = 24
          Top = 8
          Width = 14
          Height = 16
          Caption = 'ID'
        end
        object Label3: TLabel
          Left = 168
          Top = 8
          Width = 43
          Height = 16
          Caption = 'Pedido'
        end
        object Label4: TLabel
          Left = 312
          Top = 8
          Width = 60
          Height = 16
          Caption = 'Digita'#231#227'o'
        end
        object Label5: TLabel
          Left = 24
          Top = 64
          Width = 44
          Height = 16
          Caption = 'Cliente'
        end
        object Label6: TLabel
          Left = 456
          Top = 64
          Width = 32
          Height = 16
          Caption = 'Total'
        end
        object Label7: TLabel
          Left = 24
          Top = 120
          Width = 84
          Height = 16
          Caption = 'Observa'#231#245'es'
        end
        object edtID: TEdit
          Left = 24
          Top = 24
          Width = 121
          Height = 24
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtDataPedido: TDateTimePicker
          Left = 168
          Top = 24
          Width = 121
          Height = 24
          Date = 44831.588115347220000000
          Time = 44831.588115347220000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edtDataDigitacao: TDateTimePicker
          Left = 312
          Top = 24
          Width = 121
          Height = 24
          Date = 44831.588115347220000000
          Time = 44831.588115347220000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edtCliente: TEdit
          Left = 24
          Top = 80
          Width = 409
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object edtTotal: TEdit
          Left = 456
          Top = 80
          Width = 121
          Height = 24
          TabStop = False
          ReadOnly = True
          TabOrder = 4
        end
        object edtObservacoes: TEdit
          Left = 24
          Top = 136
          Width = 553
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 614
    Height = 36
    AutoSize = True
    ButtonHeight = 36
    ButtonWidth = 36
    Caption = 'ToolBar1'
    Images = imlButtons
    TabOrder = 1
    object btnIncuir: TToolButton
      Left = 0
      Top = 0
      Caption = 'btnIncuir'
      ImageIndex = 0
      OnClick = btnIncuirClick
    end
    object btnEditar: TToolButton
      Left = 36
      Top = 0
      Caption = 'btnEditar'
      ImageIndex = 1
      OnClick = btnEditarClick
    end
    object btnExcluir: TToolButton
      Left = 72
      Top = 0
      Caption = 'btnExcluir'
      ImageIndex = 2
      OnClick = btnExcluirClick
    end
    object ToolButton4: TToolButton
      Left = 108
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object btnSalvar: TToolButton
      Left = 116
      Top = 0
      Caption = 'btnSalvar'
      Enabled = False
      ImageIndex = 3
      OnClick = btnSalvarClick
    end
    object btnCancelar: TToolButton
      Left = 152
      Top = 0
      Caption = 'btnCancelar'
      Enabled = False
      ImageIndex = 4
      OnClick = btnCancelarClick
    end
  end
  object cdsPedidos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 44
    Top = 398
  end
  object dsPedidos: TDataSource
    DataSet = cdsPedidos
    Left = 44
    Top = 462
  end
  object imlButtons: TImageList
    Left = 380
    Top = 306
    Bitmap = {
      494C010105000800140010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EEECF800C8C7EB00C7C8ED00C7C8ED00C8C7EB00EFEDF8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007C7DD4005360D5005A77E6006183ED006183ED005A77E600525FD5007B7B
      D300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0CFEE003C43
      C900587BF4007498FF006484F600536FEB00536FEB006182F5007399FF00577A
      F3003E46C800D6D5EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000393FC7004A65
      EF005D7BF7004057E1005255C700A0A1E3009B9DE0005D62D0002F41D6005979
      F9004E6AF0003C43C80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000797BD200364BEB006681
      F6004D63F0003C50E900595CD000F4F2F9000000000000000000CECCEA004145
      CB00465EF400364DEB007A7BD200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F1F8003F44D0004155F4004759
      DF00566FEE003F51F1002D3DE5003537C400000000000000000000000000D2CF
      EB001B26D1003C50F4004045D000F0F0FA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCCCEF001E28DE002632E800494A
      CE00595DD4003849E7002D37EC002230EA003539CA00E7E8F700000000000000
      00005659D300242FE8001E28DE00C7C8F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C5C7F1001218DF00181FE000A1A3
      E900F5F5FA003941D2001D26E600252CE9001B22E300353AD200000000000000
      00009B9DE800181FE0001218DF00C1C2F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C8F300090DDF001015E1009C9F
      EC000000000000000000353BD9001217E2001B1EE7001014E400383ED800F8F9
      FD00A1A6ED001115E100080DDF00C1C4F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CED2F6000F14E0000E0EE3005961
      E5000000000000000000E9EAFA003841DF000909E0001616E3000D0FE100575F
      E400545DE3000F0FE2000D13E000CACEF9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F6FD003841E5001B1CE500050B
      DF00DBE0FB000000000000000000000000003844E5000A0CE0001211E1000D0D
      E1000F13E0001314E4003D46E500F3F4FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000838BF2001720E4001D21
      E400373FE800DADFFD000000000000000000F8FAFE005E69EC000B0CE2000F0E
      E100181AE3001923E400838CF200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003745EE003949
      EA00303BE7000812E5005861F1009AA0F700A0A6F800515DF1000F14E400272D
      E5003B4CEB004150EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7DBFD003848
      F2003D50EB00667FEE003E4FEA00212EE7001C27E7003441E7005E74ED00455C
      EC004152F300DBDFFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848EFB004757F300526DF4006788F6006787F5005B77F5005266F6008490
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F3FF00CCD0FE00C4C8FC00C4C8FC00CCD1FE00F1F3FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000087BD98005FA5760066A87B0066A87B0060A6780086BC97000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFE00CBC3
      DC00B8A9CD00D6CFE30000000000000000000000000000000000000000000000
      0000BEBCBD00D0C8CD00E3D8DF00DDD7DB00D6CDD200CCC1C800B8B2B600BCBC
      BC00F8F8F8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000083B891007DCFAB006ACC9F006BCCA00072C89F0081B890000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A69FB6007356
      A7007E5CAD007555A500BBB0D40000000000000000000000000000000000E5E4
      E500AAAAAA0094D8A8006ACE8F00A1D2B5007ACD9D0066C5890089BC9A00A59E
      A3009E9E9E00F4F4F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007EB48A0081DBB4005ED19D0060D29F006ACC9F007DB38B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFE00E8E0DA009D9C97007D80
      7700D3CCE300A58EDF007259BB00DDD9EE000000000000000000F7F7F700BBB6
      BA00B5D7BD0033AF53004FBD730088C19B0059BD7D0043BA6C0033AB5500B4D3
      BC009D999C00DEDEDE0000000000000000000000000000000000000000000000
      00000000000000000000EEF4F000E8F2EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007AB085008ADDBA0066D1A10068D3A40071CFA3007AAF86000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084C8F40050A1DA00949AA0009A93
      9000B5B7B500C2BFCE006D59DD00D4D0EF000000000000000000DFDFDF00C7C0
      C60080C08B002AA84600E6ECE800DDDEDE00C7CFCA00BAC8BE001AA53B006EBA
      7D00C0B7BE00ACACAC0000000000000000000000000000000000000000000000
      000000000000000000002A965E0029975E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007AAF830091E0BF0071D4A70073D6A9007DD0AA0079AE83000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008ACCF400098CEF002398FF0043ACFF00C0E8
      FF009992900055564D0042418800D1CFFD000000000000000000C2C2C200D0C8
      CF0075BB7F0007941D0086C89400F5ECF400E7DAE40090BE9B00099822006CB0
      7600D3CBD2009090900000000000000000000000000000000000000000000000
      0000FFFEFE003098600079DAB1006ED7AA0028965C00F3F8F400000000000000
      00000000000000000000000000000000000085BB970081B68E007FB58C007BB1
      87007BB084003D87480099E5C60079D6AD007AD7AE008CD7B4003E884A0079AE
      830078AF85007BB289007FB78E0080BD94000000000000000000000000000000
      000000000000000000008ACCF4001794EF002F9AFA003A9FFF004AABFE0061C2
      FF006E8691001C16130067676F00FBFBFF000000000000000000ADADAD00D6D2
      D500BFD8C100A3D5AA00A9D4AF00D5DED700B1CCB5005DAC68007BAE8200B0BE
      B200DBD8DA008282820000000000000000000000000000000000000000000000
      000028965B0081D4AF0082D7B00076D3AA005AC89700299A5D00000000000000
      0000000000000000000000000000000000006BB588008CDDBA0074CDA30079D0
      A70081D1AC008DD7B5008BD4B00087DBB50088DBB6007FD2AA007CD2AB007AD1
      A80081D1AC0086D5AF008ED0B00055A672000000000000000000000000000000
      0000000000008DCDF400068DEF002E9BF9003FA2FF004DACFF0061BEF70070CE
      F80089CCE7009198980000000000000000000000000000000000A2A2A200DCDC
      DC00F9F0F900A5D1A7000079000046A54E004EA55500008300005EA36200CFC7
      CE00E1E0E1009494940000000000000000000000000000000000FCFDFD00319C
      6400B0EBD300A0E0C40090DBB90083D6B0006DD0A50061D1A100299C6100ECF3
      EC00000000000000000000000000000000006DB588009EE5C70091DDBB0091DD
      BC0090DDBB0090DDBB008FDDBA0090DCBA0090DCBA0091DDBB0091DEBC0091DD
      BC0090DDBB0090DEBC0090D5B6005AA875000000000000000000000000000000
      000093D0F4001595EE002D9CFA003A9EFE004CABFF005AB9F90070C9F4007DD5
      FA00C1EAFF0000000000000000000000000000000000F0F0F000B1B1B100DCDC
      DC00ECEBEC000000000002820200007700000484060009860B00BABDBA00C8C9
      C800DEDEDE00B0B0B000F1F1F1000000000000000000000000002FA16500A4DF
      C500B5E6D100AEE5CD0074D0A40066CE9B0073D1A90063CD9D004BC48F001896
      5000000000000000000000000000000000006CB58800A6E7CB009CDFC1009CE0
      C2009CE0C2009DE0C2009DE0C2009BDFC1009BDFC1009DE0C3009CE0C2009CE0
      C2009CE0C2009EE1C4009AD8BB0059A7740000000000000000000000000098D2
      F400048DEE002B9BF7003B9FFF0047A9FF005CBAF9006AC7F50084D8FA00B6E5
      FF000000000000000000000000000000000000000000DDDDDD00C2C2C200E1DE
      E000F8F0F600F6F9F700DFEAE200BFD6C400BECFC300C9CDCD00C3C5C400DBD5
      D900E3E0E200C2C2C200DDDDDD0000000000F0F8F3002BA56400BCEDD900C2EA
      D800BCEAD70077CDA40089C8A3009CDAB6005AC8930068CFA20055C9940052CC
      990024A15C00ECF4EB00000000000000000069B48600A3EACE009DE2C5009EE3
      C7009BE2C5009AE2C40092DBBA00A6E3C700A7E3C8008BD7B300A6E8CE009EE3
      C7009AE1C40094E0BF008BD3B30055A571000000000000000000ABDCF7001798
      ED001890F600339BFD0046A7FF0055B2FB0068C6F50079D2F800B0E3FF000000
      00000000000000000000000000000000000000000000D1D1D100E0D5DF00C9D7
      CB0068B3710063B26F0057AC680044A35B0044A15D0058A86B0066AA75006EA9
      7A00CEDCD000DFD7DE00D1D1D10000000000EFF7F20039B17100B7E9D400BEEA
      D7007ED0A90071C3970000000000000000007CCFA1004FC48E0053C895004FC7
      910046C38B0026A55F00000000000000000084BB96007CB48B0078B1870075AE
      820075AC8000398546009EE3C700B2E6CF00B2E7D00094DDBC003985450078AE
      810078AF84007CB3890081B78F0081BE950000000000D8F2FF00B5E9FE00CAF1
      FE0083CBFF0046A7FF0056B6FA0066C4F50084D6F900ACE2FF00000000000000
      00000000000000000000000000000000000000000000E9E1E90063AF6600299A
      320068B2720082BB8B00A2BEA800ADB8AF009EA9A100829C8900588F65004E91
      5B002E8637005B9B6000E8E2E80000000000000000000000000040B6770062C7
      95007FCAA0000000000000000000000000000000000095D8B10044C2860051C8
      940050C7920050CA950027A96400E7F4EA000000000000000000000000000000
      00000000000077AE8100A1E4C800B9E8D300BAE9D50098DABB0075AD81000000
      00000000000000000000000000000000000000000000C6EFFF00C6F2FF00E1FC
      FF00D8F8FF0097D8FE005FC0F40079D3F700A7E1FF00FAFDFF00000000000000
      00000000000000000000000000000000000000000000BAD4BC0021952700BDDA
      BF00DDDEDE00ECE6EC00DCD8DB00CDCBCC00BAB8BA00AEAAAD00A0999E009090
      9000879E8900247D2A00ADC7AD00000000000000000000000000F5FBF7009FD9
      B9000000000000000000000000000000000000000000000000007DD0A2003CBE
      800050C8940051CB960026A06100F0F9F4000000000000000000000000000000
      00000000000076AF8200A6E6CB00C3EAD900C3EBDA00A1DCBF0074AE82000000
      00000000000000000000000000000000000000000000B3D3E100BCF1FB00C1F4
      FF00C9F3FF00CBF5FF008DDAFD009FDEFF000000000000000000000000000000
      00000000000000000000000000000000000000000000A3D0A4001B781F008EB0
      9100F7EEF600F7F1F600EAE6E900DBD9DA00CAC8C900C0BCBF00B2ABB000ACA3
      AB0068826A002267270097BF9700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000094D5
      B00023B16D002BA7660000000000000000000000000000000000000000000000
      00000000000079B38700A8E5CB00CBEBDD00CAECDE00A9DDC20076B187000000
      00000000000000000000000000000000000000000000B0AAA800889CA200B5ED
      FB00B4EFFF00B7F1FF00A5E0FF00F1FAFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007EAD7F00004C
      0000448C4D0076AB7F00B5CEBB00DFDEDF00D5D2D3009CB5A2005F946C00387B
      4500004C0000769D780000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3D9BA00F7FBF90000000000000000000000000000000000000000000000
      0000000000007DB58C00ACECD300C9F0E000C9F1E100B3E7D0007AB48B000000
      00000000000000000000000000000000000000000000878786002F2B260089B5
      C300B5F2FF00A8E4FF00F9FCFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBDF
      CC0032853D000672190000710E000074100000791600007A1C00117A29003988
      4900C5D8C8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000085BB960068B3850068B4850068B4850067B4850085BB95000000
      000000000000000000000000000000000000FEFEFE00CBCBCA00D2D1CE00F3F7
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7E8DA00C8E1CD00C6E1CC00C6E2CD00C8E2CF00D8E9DC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00F81F000000000000F00F000000000000
      C003000000000000C00300000000000080C100000000000000E0000000000000
      003000000000000000300000000000000C000000000000000C00000000000000
      07000000000000008301000000000000C003000000000000C003000000000000
      F00F000000000000F81F000000000000F81FFFC3F007FFFFF81FFFC1E003FFFF
      F81FFF00C003FCFFF81FFF00C003FCFFF81FFE00C003F03F0000FC00C003F03F
      0000F803C003C00F0000F0078401C00F0000E00F800100030000C01F80010303
      0000803F8001C780F81F803F8001CFC0F81F80FF8001FFE3F81F80FFC003FFF3
      F81F81FFE007FFFFF81F0FFFF81FFFFF00000000000000000000000000000000
      000000000000}
  end
  object cdsPedidoItem: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 309
    Top = 413
  end
  object dsPedidoItem: TDataSource
    DataSet = cdsPedidoItem
    Left = 309
    Top = 477
  end
end
