object fornecedor: Tfornecedor
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Fornecedores'
  ClientHeight = 619
  ClientWidth = 955
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWhite
  Font.Height = -16
  Font.Name = 'Futura Bk BT'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 19
  object painelFornecedor: TPanel
    Left = 0
    Top = 0
    Width = 955
    Height = 619
    Align = alClient
    BevelOuter = bvNone
    Color = 2171668
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 20
      Top = 14
      Width = 107
      Height = 19
      Caption = 'Nome Fantasia'
      Color = clCream
      ParentColor = False
    end
    object Label3: TLabel
      Left = 20
      Top = 78
      Width = 83
      Height = 19
      Caption = 'CPF / CNPJ'
      Color = clCream
      ParentColor = False
    end
    object Label4: TLabel
      Left = 428
      Top = 14
      Width = 107
      Height = 19
      Caption = 'Nome Fantasia'
      Color = clCream
      ParentColor = False
    end
    object Label5: TLabel
      Left = 225
      Top = 78
      Width = 126
      Height = 19
      Caption = 'Inscri'#231#227'o Estadual'
      Color = clCream
      ParentColor = False
    end
    object Label6: TLabel
      Left = 428
      Top = 78
      Width = 135
      Height = 19
      Caption = 'Inscri'#231#227'o Municipal'
      Color = clCream
      ParentColor = False
    end
    object Label1: TLabel
      Left = 20
      Top = 145
      Width = 64
      Height = 19
      Caption = 'Endere'#231'o'
      Color = clCream
      ParentColor = False
    end
    object Label7: TLabel
      Left = 296
      Top = 145
      Width = 43
      Height = 19
      Caption = 'Bairro'
      Color = clCream
      ParentColor = False
    end
    object Label8: TLabel
      Left = 677
      Top = 145
      Width = 20
      Height = 19
      Caption = 'UF'
      Color = clCream
      ParentColor = False
    end
    object Label9: TLabel
      Left = 490
      Top = 145
      Width = 51
      Height = 19
      Caption = 'Cidade'
      Color = clCream
      ParentColor = False
    end
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 10
      Top = 288
      Width = 935
      Height = 328
      Margins.Left = 10
      Margins.Right = 10
      Align = alBottom
      BorderStyle = bsNone
      Color = 2171668
      DataSource = DataModule1.DSfornecedor
      FixedColor = clWhite
      GradientEndColor = 33023
      GradientStartColor = 2171668
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Futura Bk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = -1
      TitleFont.Height = -16
      TitleFont.Name = 'Futura Bk BT'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'idfornecedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = -1
          Font.Height = -12
          Font.Name = 'Futura Bk BT'
          Font.Style = []
          Title.Caption = 'ID'
          Title.Color = -1
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomefantasia'
          Font.Charset = ANSI_CHARSET
          Font.Color = -1
          Font.Height = -12
          Font.Name = 'Futura Bk BT'
          Font.Style = []
          Title.Caption = 'Nome Fantasia'
          Title.Color = -1
          Width = 381
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cnpjcpf'
          Font.Charset = ANSI_CHARSET
          Font.Color = -1
          Font.Height = -12
          Font.Name = 'Futura Bk BT'
          Font.Style = []
          Title.Caption = 'CPF / CNPJ'
          Title.Color = -1
          Width = 357
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Font.Charset = ANSI_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Futura Bk BT'
          Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomefantasia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cnpjcpf'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telcontato'
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 20
      Top = 39
      Width = 385
      Height = 27
      BevelEdges = []
      BevelInner = bvNone
      BevelOuter = bvNone
      DataField = 'nomefantasia'
      DataSource = DataModule1.DSfornecedor
      Font.Charset = ANSI_CHARSET
      Font.Color = -1
      Font.Height = -16
      Font.Name = 'Futura Bk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 20
      Top = 103
      Width = 177
      Height = 27
      DataField = 'cnpjcpf'
      DataSource = DataModule1.DSfornecedor
      Font.Charset = ANSI_CHARSET
      Font.Color = -1
      Font.Height = -16
      Font.Name = 'Futura Bk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 428
      Top = 39
      Width = 385
      Height = 27
      DataField = 'razaosocial'
      DataSource = DataModule1.DSfornecedor
      Font.Charset = ANSI_CHARSET
      Font.Color = -1
      Font.Height = -16
      Font.Name = 'Futura Bk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 220
      Top = 103
      Width = 185
      Height = 27
      DataField = 'inscestadual'
      DataSource = DataModule1.DSfornecedor
      Font.Charset = ANSI_CHARSET
      Font.Color = -1
      Font.Height = -16
      Font.Name = 'Futura Bk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 428
      Top = 103
      Width = 229
      Height = 27
      DataField = 'inscmunicipal'
      DataSource = DataModule1.DSfornecedor
      Font.Charset = ANSI_CHARSET
      Font.Color = -1
      Font.Height = -16
      Font.Name = 'Futura Bk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 20
      Top = 170
      Width = 253
      Height = 27
      Color = 15263976
      DataField = 'endereco'
      DataSource = DataModule1.DSfornecedor
      Font.Charset = ANSI_CHARSET
      Font.Color = -1
      Font.Height = -16
      Font.Name = 'Futura Bk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 296
      Top = 170
      Width = 173
      Height = 27
      DataField = 'bairro'
      DataSource = DataModule1.DSfornecedor
      Font.Charset = ANSI_CHARSET
      Font.Color = -1
      Font.Height = -16
      Font.Name = 'Futura Bk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 820
      Top = 3
      Width = 115
      Height = 279
      Margins.Right = 20
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 8
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 191
        Width = 109
        Height = 88
        Cursor = crHandPoint
        Align = alTop
        BevelOuter = bvNone
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Futura Bk BT'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object Image1: TImage
          Left = 0
          Top = 2
          Width = 109
          Height = 58
          Center = True
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
            001D0806000000B0BAAC4B00000A376943435073524742204945433631393636
            2D322E310000789C9D96775453D91687CFBD37BD5092108A94D06B685202480D
            BD48912E2A3109104AC090002236445470445191A6083228E080A34391B1228A
            850151B1EB041944D47170141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCF
            DD67EF7DD6BA0090FC8305C24C5809800CA15814E1E7C5888D8B676007010CF0
            00036C00E070B3B34216F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F
            8CC100FF9F94B95922310050988CE7F2F8D95C1917C9383D579C25B74FC998B6
            344DCE304ACE22598232569373F22C5B7CF699650F39F332843C19CB73CEE265
            F0E4DC27E38D3912BE8C91601917E708F8B932BE26638374498640C66FE4B119
            7C4E36002892DC2EE67353646C2D63922832822DE37900E048C95FF0D22F58CC
            CF13CB0FC5CECC5A2E1224A78819265C53868D93138BE1CFCF4DE78BC5CC300E
            378D23E231D89919591CE1720066CFFC5914796D19B2223BD8383938306D2D6D
            BE28D47F5DFC9B92F776965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA
            876D6915005DEB0150BBFD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C67
            2BABDCDC5C4B019F6B292FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F3933892
            7431435E376E667AA644C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE88
            2F944544CBA64C204C96B55BC813880599428640F89F9AF80FC3FEA4D9B99689
            DAF811D0965802A5211A407E1E00282A1120097B642BD0EF7D0BC64703F9CD8B
            D199989DFBCF82FE7D57B84CFEC816247F8E63474432B81251CEEC9AFC5A0234
            2000454003EA401BE80313C004B6C011B8000FE0030241288804716031E08214
            90014420171480B5A0189482AD6027A80675A0113483367018748163E0343807
            2E81CB6004DC0152300E9E8029F00ACC40108485C810155287742043C81CB285
            58901BE403054311501C940825434248021540EBA052A81CAA86EAA166E85BE8
            28741ABA000D43B7A0516812FA157A07233009A6C15AB0116C05B3604F38088E
            8417C1C9F032381F2E82B7C09570037C10EE844FC397E011580A3F81A7118010
            113AA28B301116C24642917824091121AB9012A4026940DA901EA41FB98A4891
            A7C85B1406454531504C940BCA1F1585E2A296A156A136A3AA5107509DA83ED4
            55D4286A0AF5114D466BA2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E8
            11F438FA150683A1638C318E187F4C1C2615B302B319B31BD38E398519C68C61
            A6B158AC3AD61CEB8A0DC572B0626C31B60A7B107B127B053B8E7D8323E27470
            B6385F5C3C4E882BC455E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF1
            65F8467C0F7E083F8E9F2128138C09AE8448422A612DA192D046384BB84B7841
            2412F5884EC470A280B88658493C443C4F1C25BE255148662436298124216D21
            ED279D22DD22BD2093C946640F723C594CDE426E269F21DF27BF51A02A582A04
            28F014562BD428742A5C5178A688573454F4545CAC98AF58A178447148F1A912
            5EC94889ADC4515AA554A37454E986D2B43255D9463954394379B3728BF205E5
            47142CC588E243E1518A28FB286728635484AA4F6553B9D475D446EA59EA380D
            4333A605D05269A5B46F6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD1
            03E8E9F432FA61FA75FA3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D5
            4AD4DAD546D4DEA933D47DD4D3D4B7A977A9DFD340699869846BE46AECD138AB
            F1740E6D8ECB1CEE9C923987E7DCD68435CD3423345768EED31CD09CD6D2D6F2
            D3CAD2AAD23AA3F5549BAEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE
            63860AC39391CEA864F431A6743575FD7525BAF5BA83BA337AC67A517A857AED
            7AF7F409FA2CFD24FD1DFABDFA53063A0621060506AD06B70DF1862CC314C35D
            86FD86AF8D8C8D628C361875193D3256330E30CE376E35BE6B423671375966D2
            6072CD1463CA324D33DD6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD87
            2DD0164E16428B068B1B4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958
            C55B6DB3EAB7FA686D6F9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6
            F6DA5CF25CDFB9ABE776CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383
            A383C8A1CD61D2D1C031D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4
            D6D9C159EC7CD8F91717A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5D
            A56E0CB744B7BD6E52775D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF
            675ED65E22AF0EAFD76C67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57
            CF37D9B7D577CACFDE6F85DF297FB47F90FF36FF1B015A01DC80E680A940C7C0
            95817D41A4A00541D5410F82CD8245C13D21704860C8F690BBF30DE70BE77785
            82D080D0EDA1F7C28CC396857D1F8E090F0BAF097F1861135110D1BF80BA60C9
            829605AF22BD22CB22EF44994449A27AA315A313A29BA35FC778C794C74863AD
            6257C65E8AD38813C475C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22
            E345798B2E2CD6589CBEF8F812C5259C254712D18931892D89EF39A19C06CEF4
            D280A5B54BA7B86CEE2EEE139E076F076F92EFCA2FE74F24B92695273D4A764D
            DE9E3C99E29E5291F254C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D
            0397919871544811A609FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12
            356543D98BB2BBC534D9CFD480C444B25E329AE3965393F326373AF7489E729E
            306F60B9D9F24DCB27F27DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0
            AAA5AB7A57EBAF2E5A3DBEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F
            9156D19AA2B1F57EEB5B8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D
            1F4B7825174BAD4B2B4ADF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56
            CC56E1D6EBDBDCB71D28572ECF2F1FDB1EB2BD73076347C98E973B97ECBC5061
            5751B78BB04BB24B5A195CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DA
            D7BB79BBAFECF1D8D356A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39
            FB1E364637F67FCDFABAB949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D
            65AD70ABA475F260C2C1CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8
            EDF5C341877B8FB08EB47D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E
            3E1A78B4B7C7A5A7E37BCBEFF71FD33D56735CE578D909C289A2139F4EE69F9C
            3E9575EAE9E9E4D363BD4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7
            EC3F79DEF5FCB10BCE178E5E645DECBAE470A973C07EA0E307FB1F3A061D063B
            871C87BA2F3B5DEE199E377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51
            D76FDE48B821BDC9BBF9E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9A
            F71B7E34FDB15DEA203D3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F9
            61C584CE44F323DB47C7267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4
            D977BF78FC3230153B35FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719
            AF665E97BC517F73E02DEB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EE
            A78C4F9F7E03F784F3FB8F70662A000000097048597300002E2300002E230178
            A53F76000003B94944415478DAAD965968534114869BF4264D9B2606B5581183
            3455A122620517D4C6075744AC588A2822E28E3E887547D48A3B2EF820A85510
            11972E4255445C90467001A5166A116CD58A14772D6D4C9AA4A9DFD189243531
            263A70F8E79F39F7FC73E6CE9C7B755D5D5D29F19A5EAFD779BDDE81A05528CF
            B8ABABAB9F15151575C67B56174FC0E3F1F433994C2EBA39DDA65A7C3EDFF8B4
            B4B417FF24C0FC0E6023B81E6BFCF1904E9783EDA37B145C1B57A0B2B232B5B0
            B07014CED628DB2301860583C1856A2828C67819F89AF15DA05F6289BB326F5D
            5DDDDDFCFC7CBFAEA3A363B0C160B8CB6056DC979158FB10080426E958C119C8
            6432D904BAC176F01B28E6512BD3C82EB43A4DE1AF6C42C92A3F99B790E179F0
            86085CA1636762D8FF5C3E8B7B00F844603B9D6D9808B585AD2A96A5846511CA
            48EB3666C0A66307742D2D2D19D9D9D9FB2173B05ED82759C03F2CBEB76C3556
            595B5BBBE4D7312593756CD37EB7DB9D959999F93199C88D8D8D690E87C34B77
            17B1B6C858B8C002064F73791CF12E4FACD6DEDE9E65369BDF1373352FF94884
            406767E73406AF71B486736C9F440B2025A3BEBEDE909797E713DED0D0600CF5
            A571E4738C46631331E7E17B2E4280C0235253531F91C944F0B6122DC2713199
            4D5527E3046083172BFE10ABC0E7808A3192671F12630A7823428062D69FAD79
            1DAE4EFF10B08C8066C56F0216F868C5E54094C357A805CDE0D9CB08E5B30BB5
            1102CDCDCD26BBDDEE81AFC1E9B00A20A76B8DBA3C21012B7C94E29F95C072F5
            1E25DB32596C7A7AFA9B0801F5406BCACF02B659F1BDC0DA040436D1DFDDD4D4
            64CACDCDED8826F012B889D3D204042E86B6087E10580AB784627617780CBCC2
            61769202A78109F001B1046E01061C9C490A5C05FAC247C412280786E0302449
            81FB72DFE09362091C0366E1D0274981E7C063F89C58027B242097C4C889E852
            021BAAAAAA34F9C0FF85C017E01C7C65548150C16B6B6BEB69B55ABF2881552E
            97CBE6743A03F0EBF01EF88C5101DF031512B0A6A6462B282890B2B113BE3596
            C022264FFAFDFE41D494E7DC4C3911E3B8783BD5BCA46E869F527CB3EC3B19DF
            A10AF7C9C8C8781B5EE87E1320E02C262F814E4DD35C290934AA701EE5E129F1
            E613E36C5401563E94C0758CADC0E978220264534CB61759DC5862DC8B2AA0F6
            552AA66C45992A66F20109FF1CFE88A74C4FD01EF2E2B199980B3E373CDE6F02
            ADADAD365EF005BA0ECC8E19E32C5EFE89DE61CD7C70665A2C964F7F14086FA5
            A5A5FA9292929EA41FA40407F8A004649CB2AE4993846D36DB5739D2B1627C07
            7D4A806691CBCC5D0000000049454E44AE426082}
        end
        object SpeedButton1: TSpeedButton
          AlignWithMargins = True
          Left = 0
          Top = 30
          Width = 109
          Height = 58
          Margins.Left = 0
          Margins.Top = 30
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Caption = 'Excluir'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Futura Bk BT'
          Font.Style = []
          ParentFont = False
          ExplicitTop = -1
          ExplicitHeight = 89
        end
        object SpeedButton6: TSpeedButton
          Left = 0
          Top = 0
          Width = 109
          Height = 88
          Align = alClient
          Flat = True
          ExplicitLeft = 40
          ExplicitTop = 32
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 97
        Width = 109
        Height = 88
        Cursor = crHandPoint
        Align = alTop
        BevelOuter = bvNone
        Color = 33023
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Futura Bk BT'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object Image2: TImage
          Left = 0
          Top = 2
          Width = 109
          Height = 58
          Center = True
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000001C0000
            001C0806000000720DDF9400000A376943435073524742204945433631393636
            2D322E310000789C9D96775453D91687CFBD37BD5092108A94D06B685202480D
            BD48912E2A3109104AC090002236445470445191A6083228E080A34391B1228A
            850151B1EB041944D47170141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCF
            DD67EF7DD6BA0090FC8305C24C5809800CA15814E1E7C5888D8B676007010CF0
            00036C00E070B3B34216F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F
            8CC100FF9F94B95922310050988CE7F2F8D95C1917C9383D579C25B74FC998B6
            344DCE304ACE22598232569373F22C5B7CF699650F39F332843C19CB73CEE265
            F0E4DC27E38D3912BE8C91601917E708F8B932BE26638374498640C66FE4B119
            7C4E36002892DC2EE67353646C2D63922832822DE37900E048C95FF0D22F58CC
            CF13CB0FC5CECC5A2E1224A78819265C53868D93138BE1CFCF4DE78BC5CC300E
            378D23E231D89919591CE1720066CFFC5914796D19B2223BD8383938306D2D6D
            BE28D47F5DFC9B92F776965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA
            876D6915005DEB0150BBFD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C67
            2BABDCDC5C4B019F6B292FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F3933892
            7431435E376E667AA644C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE88
            2F944544CBA64C204C96B55BC813880599428640F89F9AF80FC3FEA4D9B99689
            DAF811D0965802A5211A407E1E00282A1120097B642BD0EF7D0BC64703F9CD8B
            D199989DFBCF82FE7D57B84CFEC816247F8E63474432B81251CEEC9AFC5A0234
            2000454003EA401BE80313C004B6C011B8000FE0030241288804716031E08214
            90014420171480B5A0189482AD6027A80675A0113483367018748163E0343807
            2E81CB6004DC0152300E9E8029F00ACC40108485C810155287742043C81CB285
            58901BE403054311501C940825434248021540EBA052A81CAA86EAA166E85BE8
            28741ABA000D43B7A0516812FA157A07233009A6C15AB0116C05B3604F38088E
            8417C1C9F032381F2E82B7C09570037C10EE844FC397E011580A3F81A7118010
            113AA28B301116C24642917824091121AB9012A4026940DA901EA41FB98A4891
            A7C85B1406454531504C940BCA1F1585E2A296A156A136A3AA5107509DA83ED4
            55D4286A0AF5114D466BA2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E8
            11F438FA150683A1638C318E187F4C1C2615B302B319B31BD38E398519C68C61
            A6B158AC3AD61CEB8A0DC572B0626C31B60A7B107B127B053B8E7D8323E27470
            B6385F5C3C4E882BC455E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF1
            65F8467C0F7E083F8E9F2128138C09AE8448422A612DA192D046384BB84B7841
            2412F5884EC470A280B88658493C443C4F1C25BE255148662436298124216D21
            ED279D22DD22BD2093C946640F723C594CDE426E269F21DF27BF51A02A582A04
            28F014562BD428742A5C5178A688573454F4545CAC98AF58A178447148F1A912
            5EC94889ADC4515AA554A37454E986D2B43255D9463954394379B3728BF205E5
            47142CC588E243E1518A28FB286728635484AA4F6553B9D475D446EA59EA380D
            4333A605D05269A5B46F6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD1
            03E8E9F432FA61FA75FA3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D5
            4AD4DAD546D4DEA933D47DD4D3D4B7A977A9DFD340699869846BE46AECD138AB
            F1740E6D8ECB1CEE9C923987E7DCD68435CD3423345768EED31CD09CD6D2D6F2
            D3CAD2AAD23AA3F5549BAEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE
            63860AC39391CEA864F431A6743575FD7525BAF5BA83BA337AC67A517A857AED
            7AF7F409FA2CFD24FD1DFABDFA53063A0621060506AD06B70DF1862CC314C35D
            86FD86AF8D8C8D628C361875193D3256330E30CE376E35BE6B423671375966D2
            6072CD1463CA324D33DD6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD87
            2DD0164E16428B068B1B4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958
            C55B6DB3EAB7FA686D6F9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6
            F6DA5CF25CDFB9ABE776CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383
            A383C8A1CD61D2D1C031D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4
            D6D9C159EC7CD8F91717A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5D
            A56E0CB744B7BD6E52775D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF
            675ED65E22AF0EAFD76C67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57
            CF37D9B7D577CACFDE6F85DF297FB47F90FF36FF1B015A01DC80E680A940C7C0
            95817D41A4A00541D5410F82CD8245C13D21704860C8F690BBF30DE70BE77785
            82D080D0EDA1F7C28CC396857D1F8E090F0BAF097F1861135110D1BF80BA60C9
            829605AF22BD22CB22EF44994449A27AA315A313A29BA35FC778C794C74863AD
            6257C65E8AD38813C475C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22
            E345798B2E2CD6589CBEF8F812C5259C254712D18931892D89EF39A19C06CEF4
            D280A5B54BA7B86CEE2EEE139E076F076F92EFCA2FE74F24B92695273D4A764D
            DE9E3C99E29E5291F254C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D
            0397919871544811A609FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12
            356543D98BB2BBC534D9CFD480C444B25E329AE3965393F326373AF7489E729E
            306F60B9D9F24DCB27F27DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0
            AAA5AB7A57EBAF2E5A3DBEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F
            9156D19AA2B1F57EEB5B8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D
            1F4B7825174BAD4B2B4ADF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56
            CC56E1D6EBDBDCB71D28572ECF2F1FDB1EB2BD73076347C98E973B97ECBC5061
            5751B78BB04BB24B5A195CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DA
            D7BB79BBAFECF1D8D356A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39
            FB1E364637F67FCDFABAB949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D
            65AD70ABA475F260C2C1CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8
            EDF5C341877B8FB08EB47D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E
            3E1A78B4B7C7A5A7E37BCBEFF71FD33D56735CE578D909C289A2139F4EE69F9C
            3E9575EAE9E9E4D363BD4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7
            EC3F79DEF5FCB10BCE178E5E645DECBAE470A973C07EA0E307FB1F3A061D063B
            871C87BA2F3B5DEE199E377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51
            D76FDE48B821BDC9BBF9E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9A
            F71B7E34FDB15DEA203D3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F9
            61C584CE44F323DB47C7267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4
            D977BF78FC3230153B35FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719
            AF665E97BC517F73E02DEB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EE
            A78C4F9F7E03F784F3FB8F70662A000000097048597300002E2300002E230178
            A53F76000001814944415478DAED96BF4BC34014C7EF92107F602D71B773E9A0
            38B8FA631304C5C559B1AB93B40E2EEEEAE02414B4BB2E8A086AC57F4232080A
            22A963419016AC69FD441C621A6C121BA73CF8F2EEEEBDBB4FDE854B4EB6DB6D
            61DBF6BCA2283342084DFCDDEC56AB555155F5CA2F2881AD4829CBB45FD0BB27
            3E8206911500A4A00C7A43431452A088DD0E204F738E4F039DF20699E44C5826
            96E946ABD56AC38661BC32274FFE3843EB7E50077883AF93B4D023E09AA66965
            766EDF0F1A0B10C011922E6891FE4EACC0AF97EA038D15E803CD0701AEE237BA
            01B17ED638F0025DD0279A6741804160EE391DC0EFF147DCC5AF40CBB20652A9
            545F1860B55AADE77239EF790E06ECA525C0FF07369B4DE77B28232EDED075FD
            3E1490840F9C1AB1A03BD61B8B022C113F0E43E20C1670A39180689305F6426E
            E7216E320126C004180A78E90C90301733F01977E2FCFAB7086ED3B9163F2FC2
            8BC8440F6180D80432D0AD6B2C8D66296E499AA6A967B3D922D069D19BABBE9F
            35A8F094DD2A7D02C1FCF714440A504E0000000049454E44AE426082}
        end
        object SpeedButton2: TSpeedButton
          AlignWithMargins = True
          Left = 0
          Top = 30
          Width = 109
          Height = 58
          Margins.Left = 0
          Margins.Top = 30
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Caption = 'Salvar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Futura Bk BT'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = -7
          ExplicitTop = 23
          ExplicitHeight = 68
        end
        object SpeedButton4: TSpeedButton
          Left = 0
          Top = 0
          Width = 109
          Height = 88
          Align = alClient
          Flat = True
          ExplicitLeft = -4
        end
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 109
        Height = 88
        Cursor = crHandPoint
        Align = alTop
        BevelOuter = bvNone
        Color = clGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Futura Bk BT'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object Image3: TImage
          Left = 0
          Top = 2
          Width = 109
          Height = 58
          Center = True
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000001C0000
            001C0806000000720DDF9400000A376943435073524742204945433631393636
            2D322E310000789C9D96775453D91687CFBD37BD5092108A94D06B685202480D
            BD48912E2A3109104AC090002236445470445191A6083228E080A34391B1228A
            850151B1EB041944D47170141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCF
            DD67EF7DD6BA0090FC8305C24C5809800CA15814E1E7C5888D8B676007010CF0
            00036C00E070B3B34216F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F
            8CC100FF9F94B95922310050988CE7F2F8D95C1917C9383D579C25B74FC998B6
            344DCE304ACE22598232569373F22C5B7CF699650F39F332843C19CB73CEE265
            F0E4DC27E38D3912BE8C91601917E708F8B932BE26638374498640C66FE4B119
            7C4E36002892DC2EE67353646C2D63922832822DE37900E048C95FF0D22F58CC
            CF13CB0FC5CECC5A2E1224A78819265C53868D93138BE1CFCF4DE78BC5CC300E
            378D23E231D89919591CE1720066CFFC5914796D19B2223BD8383938306D2D6D
            BE28D47F5DFC9B92F776965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA
            876D6915005DEB0150BBFD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C67
            2BABDCDC5C4B019F6B292FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F3933892
            7431435E376E667AA644C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE88
            2F944544CBA64C204C96B55BC813880599428640F89F9AF80FC3FEA4D9B99689
            DAF811D0965802A5211A407E1E00282A1120097B642BD0EF7D0BC64703F9CD8B
            D199989DFBCF82FE7D57B84CFEC816247F8E63474432B81251CEEC9AFC5A0234
            2000454003EA401BE80313C004B6C011B8000FE0030241288804716031E08214
            90014420171480B5A0189482AD6027A80675A0113483367018748163E0343807
            2E81CB6004DC0152300E9E8029F00ACC40108485C810155287742043C81CB285
            58901BE403054311501C940825434248021540EBA052A81CAA86EAA166E85BE8
            28741ABA000D43B7A0516812FA157A07233009A6C15AB0116C05B3604F38088E
            8417C1C9F032381F2E82B7C09570037C10EE844FC397E011580A3F81A7118010
            113AA28B301116C24642917824091121AB9012A4026940DA901EA41FB98A4891
            A7C85B1406454531504C940BCA1F1585E2A296A156A136A3AA5107509DA83ED4
            55D4286A0AF5114D466BA2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E8
            11F438FA150683A1638C318E187F4C1C2615B302B319B31BD38E398519C68C61
            A6B158AC3AD61CEB8A0DC572B0626C31B60A7B107B127B053B8E7D8323E27470
            B6385F5C3C4E882BC455E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF1
            65F8467C0F7E083F8E9F2128138C09AE8448422A612DA192D046384BB84B7841
            2412F5884EC470A280B88658493C443C4F1C25BE255148662436298124216D21
            ED279D22DD22BD2093C946640F723C594CDE426E269F21DF27BF51A02A582A04
            28F014562BD428742A5C5178A688573454F4545CAC98AF58A178447148F1A912
            5EC94889ADC4515AA554A37454E986D2B43255D9463954394379B3728BF205E5
            47142CC588E243E1518A28FB286728635484AA4F6553B9D475D446EA59EA380D
            4333A605D05269A5B46F6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD1
            03E8E9F432FA61FA75FA3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D5
            4AD4DAD546D4DEA933D47DD4D3D4B7A977A9DFD340699869846BE46AECD138AB
            F1740E6D8ECB1CEE9C923987E7DCD68435CD3423345768EED31CD09CD6D2D6F2
            D3CAD2AAD23AA3F5549BAEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE
            63860AC39391CEA864F431A6743575FD7525BAF5BA83BA337AC67A517A857AED
            7AF7F409FA2CFD24FD1DFABDFA53063A0621060506AD06B70DF1862CC314C35D
            86FD86AF8D8C8D628C361875193D3256330E30CE376E35BE6B423671375966D2
            6072CD1463CA324D33DD6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD87
            2DD0164E16428B068B1B4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958
            C55B6DB3EAB7FA686D6F9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6
            F6DA5CF25CDFB9ABE776CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383
            A383C8A1CD61D2D1C031D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4
            D6D9C159EC7CD8F91717A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5D
            A56E0CB744B7BD6E52775D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF
            675ED65E22AF0EAFD76C67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57
            CF37D9B7D577CACFDE6F85DF297FB47F90FF36FF1B015A01DC80E680A940C7C0
            95817D41A4A00541D5410F82CD8245C13D21704860C8F690BBF30DE70BE77785
            82D080D0EDA1F7C28CC396857D1F8E090F0BAF097F1861135110D1BF80BA60C9
            829605AF22BD22CB22EF44994449A27AA315A313A29BA35FC778C794C74863AD
            6257C65E8AD38813C475C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22
            E345798B2E2CD6589CBEF8F812C5259C254712D18931892D89EF39A19C06CEF4
            D280A5B54BA7B86CEE2EEE139E076F076F92EFCA2FE74F24B92695273D4A764D
            DE9E3C99E29E5291F254C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D
            0397919871544811A609FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12
            356543D98BB2BBC534D9CFD480C444B25E329AE3965393F326373AF7489E729E
            306F60B9D9F24DCB27F27DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0
            AAA5AB7A57EBAF2E5A3DBEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F
            9156D19AA2B1F57EEB5B8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D
            1F4B7825174BAD4B2B4ADF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56
            CC56E1D6EBDBDCB71D28572ECF2F1FDB1EB2BD73076347C98E973B97ECBC5061
            5751B78BB04BB24B5A195CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DA
            D7BB79BBAFECF1D8D356A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39
            FB1E364637F67FCDFABAB949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D
            65AD70ABA475F260C2C1CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8
            EDF5C341877B8FB08EB47D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E
            3E1A78B4B7C7A5A7E37BCBEFF71FD33D56735CE578D909C289A2139F4EE69F9C
            3E9575EAE9E9E4D363BD4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7
            EC3F79DEF5FCB10BCE178E5E645DECBAE470A973C07EA0E307FB1F3A061D063B
            871C87BA2F3B5DEE199E377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51
            D76FDE48B821BDC9BBF9E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9A
            F71B7E34FDB15DEA203D3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F9
            61C584CE44F323DB47C7267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4
            D977BF78FC3230153B35FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719
            AF665E97BC517F73E02DEB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EE
            A78C4F9F7E03F784F3FB8F70662A000000097048597300002E2300002E230178
            A53F76000001084944415478DA63FCFFFF3F03B1E0CF9F3F56CCCCCC41402633
            880FD4FBF2DBB76F73787878DE106B0623B1167EF8F0811F089E0299DC685273
            18191953A96EE1AF5FBFB4585959AF62913A0CB4D06ED4C2510B472D1C421602
            8B2B4F2626A666209B9F805A362096C322FE1D889F1261D7C54F9F3EA530FEFB
            F7EF34906342AC0B2901C0D04C0559781BC856A19385A5036221282168D1C9C2
            3CC6BF7FFF660153590F90CF4963FBEEFEFCF9D3119C2D1E3E7CC8212020C081
            4F353737B73AB0F23D8145EA1830F57913B26DC284099FEAEBEBFF8D808C3F6A
            E1A885C3C7C2AF5FBF8A73717181AA216634A935400B43A96E210800CBDD34A0
            E1614896BE02D6A74D387C8E150000CBB9F2522A760F6A0000000049454E44AE
            426082}
        end
        object SpeedButton3: TSpeedButton
          AlignWithMargins = True
          Left = 0
          Top = 30
          Width = 109
          Height = 58
          Margins.Left = 0
          Margins.Top = 30
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Caption = 'Novo'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Futura Bk BT'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = -7
          ExplicitTop = 23
          ExplicitHeight = 68
        end
        object SpeedButton5: TSpeedButton
          Left = 0
          Top = 0
          Width = 109
          Height = 88
          Align = alClient
          Flat = True
          ExplicitLeft = 40
          ExplicitTop = 32
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 490
      Top = 170
      Width = 167
      Height = 27
      DataField = 'fk_cidadeID'
      DataSource = DataModule1.DSfornecedor
      Font.Charset = ANSI_CHARSET
      Font.Color = -1
      Font.Height = -16
      Font.Name = 'Futura Bk BT'
      Font.Style = []
      KeyField = 'cidadeID'
      ListField = 'descricao'
      ListSource = DataModule1.DScidade
      ParentFont = False
      TabOrder = 9
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 675
      Top = 170
      Width = 138
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Futura Bk BT'
      Font.Style = []
      KeyField = 'iduf'
      ListField = 'descuf'
      ListSource = DataModule1.DSuf
      ParentFont = False
      TabOrder = 10
    end
  end
end
