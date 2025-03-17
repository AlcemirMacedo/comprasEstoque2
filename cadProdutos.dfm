object produtos: Tprodutos
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'produtos'
  ClientHeight = 696
  ClientWidth = 1143
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWhite
  Font.Height = -16
  Font.Name = 'Futura Bk BT'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object painelProdutos: TPanel
    Left = 0
    Top = 0
    Width = 1143
    Height = 696
    Align = alClient
    BevelOuter = bvNone
    Color = 2171668
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 20
      Top = 14
      Width = 125
      Height = 19
      Caption = 'Nome do Produto'
      Color = clCream
      ParentColor = False
    end
    object Label3: TLabel
      Left = 20
      Top = 78
      Width = 61
      Height = 19
      Caption = 'Pre'#231'o R$'
      Color = clCream
      ParentColor = False
    end
    object Label4: TLabel
      Left = 428
      Top = 14
      Width = 69
      Height = 19
      Caption = 'Descri'#231#227'o'
      Color = clCream
      ParentColor = False
    end
    object Label5: TLabel
      Left = 219
      Top = 78
      Width = 170
      Height = 19
      Caption = 'Quantidade em Estoque'
      Color = clCream
      ParentColor = False
    end
    object Label6: TLabel
      Left = 428
      Top = 78
      Width = 70
      Height = 19
      Caption = 'Categoria'
      Color = clCream
      ParentColor = False
    end
    object Label10: TLabel
      Left = 682
      Top = 78
      Width = 127
      Height = 19
      Caption = 'Data do Cadastro'
      Color = clCream
      ParentColor = False
    end
    object DBEdit1: TDBEdit
      Left = 20
      Top = 39
      Width = 385
      Height = 27
      BevelEdges = []
      BevelInner = bvNone
      BevelOuter = bvNone
      DataField = 'nome'
      DataSource = DataModule1.DSproduto
      Font.Charset = ANSI_CHARSET
      Font.Color = -1
      Font.Height = -16
      Font.Name = 'Futura Bk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 20
      Top = 103
      Width = 177
      Height = 27
      DataField = 'preco'
      DataSource = DataModule1.DSproduto
      Font.Charset = ANSI_CHARSET
      Font.Color = -1
      Font.Height = -16
      Font.Name = 'Futura Bk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 428
      Top = 39
      Width = 469
      Height = 27
      DataField = 'descricao'
      DataSource = DataModule1.DSproduto
      Font.Charset = ANSI_CHARSET
      Font.Color = -1
      Font.Height = -16
      Font.Name = 'Futura Bk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 219
      Top = 103
      Width = 186
      Height = 27
      DataField = 'qtd_estoque'
      DataSource = DataModule1.DSproduto
      Font.Charset = ANSI_CHARSET
      Font.Color = -1
      Font.Height = -16
      Font.Name = 'Futura Bk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 428
      Top = 103
      Width = 229
      Height = 27
      DataField = 'idcategoria_fk'
      DataSource = DataModule1.DSproduto
      Font.Charset = ANSI_CHARSET
      Font.Color = -1
      Font.Height = -16
      Font.Name = 'Futura Bk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit8: TDBEdit
      Left = 682
      Top = 103
      Width = 167
      Height = 27
      Color = 15263976
      DataField = 'data_cadastro'
      DataSource = DataModule1.DSproduto
      Font.Charset = ANSI_CHARSET
      Font.Color = -1
      Font.Height = -16
      Font.Name = 'Futura Bk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
end
