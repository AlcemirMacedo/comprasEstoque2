object frmRelatorio: TfrmRelatorio
  Left = 0
  Top = 0
  Caption = 'frmRelatorio'
  ClientHeight = 881
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object RLReport1: TRLReport
    Left = 8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DataModule1.DSrequisicao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 86
      Width = 718
      Height = 67
      object RLLabel1: TRLLabel
        Left = 3
        Top = 17
        Width = 293
        Height = 22
        Caption = 'SOLICITA'#199#195'O DE REQUISI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 411
        Top = 23
        Width = 187
        Height = 19
        Caption = 'N'#250'mero da Requisi'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Futura Bk BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 604
        Top = 17
        Width = 98
        Height = 25
        DataField = 'numreq'
        DataSource = DataModule1.DSrequisicao
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -21
        Font.Name = 'Futura Bk BT'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 48
      BandType = btColumnHeader
      object RLLabel3: TRLLabel
        Left = 0
        Top = 16
        Width = 38
        Height = 16
        Caption = 'Nome'
      end
    end
  end
end
