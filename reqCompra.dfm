object cadreqcompra: Tcadreqcompra
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Requisi'#231#227'o de Compra'
  ClientHeight = 577
  ClientWidth = 1241
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object painelProdutos: TPanel
    Left = 0
    Top = 0
    Width = 1241
    Height = 577
    Align = alClient
    BevelOuter = bvNone
    Color = 2171668
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Futura Bk BT'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = -8
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 353
      Height = 577
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 24
      ExplicitTop = -40
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 353
        Height = 129
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 61
          Width = 137
          Height = 19
          Caption = 'Data da Requisi'#231#227'o'
        end
        object reqcompra: TLabel
          Left = 192
          Top = 61
          Width = 137
          Height = 19
          Caption = 'Data da Conclus'#227'o'
        end
        object Label12: TLabel
          Left = 16
          Top = 17
          Width = 175
          Height = 19
          Caption = 'N'#250'mero da Requisi'#231#227'od:'
        end
        object Label13: TLabel
          Left = 200
          Top = 17
          Width = 31
          Height = 19
          Caption = '000'
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 86
          Width = 144
          Height = 27
          DataField = 'datareq'
          DataSource = DataModule1.DSrequisicao
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Futura Bk BT'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 191
          Top = 86
          Width = 144
          Height = 27
          DataField = 'dataconclusao'
          DataSource = DataModule1.DSrequisicao
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Futura Bk BT'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 129
        Width = 353
        Height = 71
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 56
        ExplicitTop = 51
        object Label6: TLabel
          Left = 16
          Top = 16
          Width = 126
          Height = 19
          Caption = 'Forma Requisi'#231#227'o'
        end
        object Label7: TLabel
          Left = 36
          Top = 41
          Width = 53
          Height = 19
          Caption = 'Convite'
        end
        object Label8: TLabel
          Left = 126
          Top = 41
          Width = 95
          Height = 19
          Caption = 'Concorr'#234'ncia'
        end
        object Label9: TLabel
          Left = 257
          Top = 41
          Width = 49
          Height = 19
          Caption = 'Outros'
        end
        object Shape2: TShape
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 347
          Height = 3
          Align = alTop
          Brush.Color = clGray
          ExplicitLeft = 168
          ExplicitTop = 6
          ExplicitWidth = 65
        end
        object RadioButton4: TRadioButton
          Left = 16
          Top = 43
          Width = 18
          Height = 17
          TabOrder = 0
        end
        object RadioButton5: TRadioButton
          Left = 106
          Top = 43
          Width = 18
          Height = 17
          TabOrder = 1
        end
        object RadioButton6: TRadioButton
          Left = 239
          Top = 43
          Width = 18
          Height = 17
          TabOrder = 2
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 200
        Width = 353
        Height = 90
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitTop = 151
        object Label4: TLabel
          Left = 16
          Top = 22
          Width = 60
          Height = 19
          Caption = 'Licita'#231#227'o'
        end
        object Shape3: TShape
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 347
          Height = 3
          Align = alTop
          Brush.Color = clGray
          ExplicitLeft = 168
          ExplicitTop = 6
          ExplicitWidth = 65
        end
        object Label5: TLabel
          Left = 176
          Top = 22
          Width = 152
          Height = 19
          Caption = 'Forma de Pagamento'
        end
        object DBEdit3: TDBEdit
          Left = 16
          Top = 47
          Width = 137
          Height = 27
          DataField = 'licitacao'
          DataSource = DataModule1.DSrequisicao
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Futura Bk BT'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBComboBox1: TDBComboBox
          Left = 181
          Top = 47
          Width = 166
          Height = 27
          Style = csDropDownList
          DataField = 'formapgto'
          DataSource = DataModule1.DSrequisicao
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Futura Bk BT'
          Font.Style = []
          Items.Strings = (
            'Cr'#233'dito'
            'D'#233'bito'
            'Pix'
            'Dep'#243'sito'
            'Boleto')
          ParentFont = False
          TabOrder = 1
        end
      end
      object Panel15: TPanel
        Left = 0
        Top = 290
        Width = 353
        Height = 183
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object Label10: TLabel
          Left = 16
          Top = 11
          Width = 144
          Height = 19
          Caption = 'Centro de Consumo'
        end
        object Shape4: TShape
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 347
          Height = 3
          Align = alTop
          Brush.Color = clGray
          ExplicitLeft = 168
          ExplicitTop = 6
          ExplicitWidth = 65
        end
        object Label11: TLabel
          Left = 16
          Top = 70
          Width = 179
          Height = 19
          Caption = 'Local de Armazenamento'
        end
        object Label3: TLabel
          Left = 16
          Top = 129
          Width = 59
          Height = 19
          Caption = 'Situa'#231#227'o'
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 16
          Top = 36
          Width = 326
          Height = 27
          DataField = 'idAlmoxarifado'
          DataSource = DataModule1.DSrequisicao
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Futura Bk BT'
          Font.Style = []
          KeyField = 'almoxarifadoID'
          ListField = 'descricao'
          ListSource = DataModule1.DSalmoxarifado
          ParentFont = False
          TabOrder = 0
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 16
          Top = 95
          Width = 326
          Height = 27
          DataField = 'idCentrodeconsumo'
          DataSource = DataModule1.DSrequisicao
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Futura Bk BT'
          Font.Style = []
          KeyField = 'id'
          ListField = 'nome'
          ListSource = DataModule1.DScentroconsumo
          ParentFont = False
          TabOrder = 1
        end
        object DBComboBox3: TDBComboBox
          Left = 16
          Top = 154
          Width = 174
          Height = 27
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Futura Bk BT'
          Font.Style = []
          Items.Strings = (
            'Deferido'
            'Indeferido'
            'Tramitando')
          ParentFont = False
          TabOrder = 2
        end
      end
      object DBNavigator1: TDBNavigator
        Left = 17
        Top = 496
        Width = 330
        Height = 33
        DataSource = DataModule1.DSrequisicao
        TabOrder = 4
      end
    end
    object Panel7: TPanel
      Left = 907
      Top = 0
      Width = 334
      Height = 577
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object Label2: TLabel
        Left = 32
        Top = 17
        Width = 164
        Height = 19
        Caption = 'Produtos da Requisi'#231#227'o'
      end
    end
    object Panel13: TPanel
      Left = 353
      Top = 0
      Width = 554
      Height = 577
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 20
      Padding.Right = 20
      TabOrder = 2
      ExplicitWidth = 488
      object Panel2: TPanel
        Left = 20
        Top = 207
        Width = 514
        Height = 266
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 514
          Height = 266
          Align = alClient
          DataSource = DataModule1.DSrequisicao
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Futura Bk BT'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -16
          TitleFont.Name = 'Futura Bk BT'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'numeroreq'
              Title.Caption = 'N da Req.'
              Title.Color = clWhite
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = -1
              Title.Font.Height = -13
              Title.Font.Name = 'Futura Bk BT'
              Title.Font.Style = [fsBold]
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'datareq'
              Title.Caption = 'Data da Req.'
              Title.Color = clWhite
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = -1
              Title.Font.Height = -13
              Title.Font.Name = 'Futura Bk BT'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descricao'
              Title.Caption = 'Descricao'
              Title.Color = clWhite
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = -1
              Title.Font.Height = -13
              Title.Font.Name = 'Futura Bk BT'
              Title.Font.Style = [fsBold]
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'situacao'
              Title.Caption = 'Situacao'
              Title.Color = clWhite
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = -1
              Title.Font.Height = -13
              Title.Font.Name = 'Futura Bk BT'
              Title.Font.Style = [fsBold]
              Width = 80
              Visible = True
            end>
        end
      end
      object Panel16: TPanel
        Left = 20
        Top = 0
        Width = 514
        Height = 88
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 21
        ExplicitTop = 89
        ExplicitWidth = 446
        object Label14: TLabel
          Left = 0
          Top = 20
          Width = 69
          Height = 19
          Caption = 'Descri'#231#227'o'
        end
        object Shape7: TShape
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 508
          Height = 3
          Align = alTop
          Brush.Color = clGray
          ExplicitLeft = 168
          ExplicitTop = 6
          ExplicitWidth = 65
        end
        object DBEdit2: TDBEdit
          Left = 0
          Top = 45
          Width = 513
          Height = 27
          DataField = 'descricao'
          DataSource = DataModule1.DSrequisicao
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Futura Bk BT'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel17: TPanel
        Left = 20
        Top = 88
        Width = 514
        Height = 119
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitLeft = 21
        ExplicitTop = 177
        ExplicitWidth = 446
        object Label16: TLabel
          Left = 0
          Top = 13
          Width = 85
          Height = 19
          Caption = 'Observa'#231#227'o'
        end
        object Shape8: TShape
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 508
          Height = 3
          Align = alTop
          Brush.Color = clGray
          ExplicitLeft = 168
          ExplicitTop = 6
          ExplicitWidth = 65
        end
        object DBMemo2: TDBMemo
          Left = 0
          Top = 40
          Width = 509
          Height = 65
          DataField = 'observacao'
          DataSource = DataModule1.DSrequisicao
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Futura Bk BT'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
end
