object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 289
  Width = 484
  object conexao: TFDConnection
    Params.Strings = (
      'Database=comprasestoque'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 75
    Top = 88
  end
  object DSfornecedor: TDataSource
    AutoEdit = False
    DataSet = tbfornecedor
    Left = 163
    Top = 144
  end
  object tbfornecedor: TFDTable
    Active = True
    IndexFieldNames = 'idfornecedor'
    Connection = conexao
    TableName = 'comprasestoque.fornecedor'
    Left = 163
    Top = 88
    object tbfornecedoridfornecedor: TFDAutoIncField
      FieldName = 'idfornecedor'
      Origin = 'idfornecedor'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbfornecedornomefantasia: TStringField
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Required = True
      Size = 100
    end
    object tbfornecedorrazaosocial: TStringField
      FieldName = 'razaosocial'
      Origin = 'razaosocial'
      Required = True
      Size = 100
    end
    object tbfornecedorcnpjcpf: TStringField
      FieldName = 'cnpjcpf'
      Origin = 'cnpjcpf'
      Required = True
      Size = 18
    end
    object tbfornecedorinscestadual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'inscestadual'
      Origin = 'inscestadual'
      Size = 50
    end
    object tbfornecedorinscmunicipal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'inscmunicipal'
      Origin = 'inscmunicipal'
      Size = 50
    end
    object tbfornecedorlogradouro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 11
    end
    object tbfornecedorendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 120
    end
    object tbfornecedorbairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 120
    end
    object tbfornecedorcidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 120
    end
    object tbfornecedoruf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object tbfornecedorcep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      EditMask = '#####-###;1;_'
      Size = 10
    end
    object tbfornecedornomecontato: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomecontato'
      Origin = 'nomecontato'
      Size = 50
    end
    object tbfornecedortelcontato: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telcontato'
      Origin = 'telcontato'
      Size = 50
    end
    object tbfornecedoremail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object tbfornecedorsite: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'site'
      Origin = 'site'
      Size = 100
    end
    object tbfornecedorfk_cod_banco: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'fk_cod_banco'
      Origin = 'fk_cod_banco'
    end
    object tbfornecedoragencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'agencia'
      Origin = 'agencia'
      Size = 10
    end
    object tbfornecedornumconta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numconta'
      Origin = 'numconta'
      Size = 50
    end
  end
  object tbproduto: TFDTable
    Active = True
    IndexFieldNames = 'idproduto'
    Connection = conexao
    TableName = 'comprasestoque.produto'
    Left = 251
    Top = 88
    object tbprodutoidproduto: TFDAutoIncField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ReadOnly = True
    end
    object tbprodutonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object tbprodutodescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 255
    end
    object tbprodutopreco: TBCDField
      FieldName = 'preco'
      Origin = 'preco'
      Required = True
      Precision = 10
      Size = 2
    end
    object tbprodutoqtd_estoque: TIntegerField
      FieldName = 'qtd_estoque'
      Origin = 'qtd_estoque'
      Required = True
    end
    object tbprodutoidcategoria_fk: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcategoria_fk'
      Origin = 'idcategoria_fk'
    end
    object tbprodutodata_cadastro: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
    end
  end
  object DSproduto: TDataSource
    DataSet = tbproduto
    Left = 251
    Top = 144
  end
  object tbbancos: TFDTable
    Active = True
    IndexFieldNames = 'cod'
    DetailFields = 'banco;cod'
    Connection = conexao
    TableName = 'comprasestoque.bancos'
    Left = 331
    Top = 88
    object tbbancoscod: TIntegerField
      FieldName = 'cod'
      Origin = 'cod'
      Required = True
    end
    object tbbancosbanco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'banco'
      Origin = 'banco'
      Size = 50
    end
  end
  object DSbancos: TDataSource
    DataSet = tbbancos
    Left = 331
    Top = 144
  end
end
