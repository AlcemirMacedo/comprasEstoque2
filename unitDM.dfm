object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 532
  Width = 917
  object conexao: TFDConnection
    Params.Strings = (
      'Database=comprasestoque'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object tbFornecedor: TFDTable
    Active = True
    IndexFieldNames = 'idfornecedor'
    DetailFields = 
      'agencia;cep;cnpjcpf;email;endereco;fk_cidadeID;fk_cod_banco;idfo' +
      'rnecedor;inscestadual;inscmunicipal;nomecontato;nomefantasia;num' +
      'conta;razaosocial;site;telcontato'
    Connection = conexao
    TableName = 'comprasestoque.fornecedor'
    Left = 144
    Top = 40
    object tbFornecedoridfornecedor: TFDAutoIncField
      FieldName = 'idfornecedor'
      Origin = 'idfornecedor'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbFornecedornomefantasia: TStringField
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Required = True
      Size = 100
    end
    object tbFornecedorrazaosocial: TStringField
      FieldName = 'razaosocial'
      Origin = 'razaosocial'
      Required = True
      Size = 100
    end
    object tbFornecedorcnpjcpf: TStringField
      FieldName = 'cnpjcpf'
      Origin = 'cnpjcpf'
      Required = True
      Size = 18
    end
    object tbFornecedorinscestadual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'inscestadual'
      Origin = 'inscestadual'
      Size = 50
    end
    object tbFornecedorinscmunicipal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'inscmunicipal'
      Origin = 'inscmunicipal'
      Size = 50
    end
    object tbFornecedorendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 120
    end
    object tbFornecedorbairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 120
    end
    object tbFornecedoruf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object tbFornecedorfk_cidadeID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'fk_cidadeID'
      Origin = 'fk_cidadeID'
    end
    object tbFornecedorcep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      Size = 10
    end
    object tbFornecedornomecontato: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomecontato'
      Origin = 'nomecontato'
      Size = 50
    end
    object tbFornecedortelcontato: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telcontato'
      Origin = 'telcontato'
      Size = 50
    end
    object tbFornecedoremail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object tbFornecedorsite: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'site'
      Origin = 'site'
      Size = 100
    end
    object tbFornecedorfk_cod_banco: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'fk_cod_banco'
      Origin = 'fk_cod_banco'
    end
    object tbFornecedoragencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'agencia'
      Origin = 'agencia'
      Size = 10
    end
    object tbFornecedornumconta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numconta'
      Origin = 'numconta'
      Size = 50
    end
  end
  object DSfornecedor: TDataSource
    DataSet = tbFornecedor
    Left = 144
    Top = 120
  end
  object tbcidade: TFDTable
    Active = True
    IndexFieldNames = 'cidadeID;descricao;uf'
    Connection = conexao
    TableName = 'cidade'
    Left = 240
    Top = 40
    object tbcidadecidadeID: TFDAutoIncField
      FieldName = 'cidadeID'
      Origin = 'cidadeID'
      ReadOnly = True
    end
    object tbcidadedescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
    object tbcidadeuf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
  end
  object DScidade: TDataSource
    DataSet = tbcidade
    Left = 240
    Top = 120
  end
  object tbuf: TFDTable
    Active = True
    IndexFieldNames = 'iduf'
    DetailFields = 'descuf;iduf'
    Connection = conexao
    TableName = 'comprasestoque.uf'
    Left = 320
    Top = 40
  end
  object DSuf: TDataSource
    DataSet = tbuf
    Left = 320
    Top = 120
  end
end
