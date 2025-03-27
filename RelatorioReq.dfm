object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 524
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = -8
    Top = 0
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLGroup1: TRLGroup
      Left = 38
      Top = 38
      Width = 718
      Height = 371
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 35
        BandType = btHeader
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 35
        Width = 718
        Height = 49
        BandType = btHeader
        object RLLabel1: TRLLabel
          Left = 3
          Top = 19
          Width = 38
          Height = 16
          Caption = 'Nome'
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 84
        Width = 718
        Height = 69
        object RLDBText1: TRLDBText
          Left = 0
          Top = 22
          Width = 36
          Height = 16
          DataField = 'nome'
          DataSource = DataSource1
          Text = ''
        end
      end
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=comprasestoque'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 112
    Top = 424
  end
  object DataSource1: TDataSource
    Left = 376
    Top = 425
  end
  object SQLQuery1: TSQLQuery
    GetMetadata = True
    DataSource = DataSource1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM produto p'
      'JOIN movimentacoes m ON m.produtoid = p.idproduto'
      'JOIN requisicao r ON r.idrequisicao = m.requisicaoid'
      'WHERE r.idrequisicao = 7')
    Left = 248
    Top = 424
  end
end
