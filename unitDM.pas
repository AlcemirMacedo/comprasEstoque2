unit unitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
    conexao: TFDConnection;
    DSfornecedor: TDataSource;
    tbfornecedor: TFDTable;
    tbproduto: TFDTable;
    DSproduto: TDataSource;
    tbbancos: TFDTable;
    DSbancos: TDataSource;
    tbunidade: TFDTable;
    DSunidade: TDataSource;
    tbcategoria: TFDTable;
    DScategoria: TDataSource;
    tbcategoriaidcategoria: TFDAutoIncField;
    tbcategoriadescricao_cat: TStringField;
    tbunidadeunidadeID: TFDAutoIncField;
    tbunidadedescricao: TStringField;
    tbbancoscod: TIntegerField;
    tbbancosbanco: TStringField;
    tbfornecedoridfornecedor: TFDAutoIncField;
    tbfornecedornomefantasia: TStringField;
    tbfornecedorrazaosocial: TStringField;
    tbfornecedorcnpjcpf: TStringField;
    tbfornecedorinscestadual: TStringField;
    tbfornecedorinscmunicipal: TStringField;
    tbfornecedorendereco: TStringField;
    tbfornecedorbairro: TStringField;
    tbfornecedorcidade: TStringField;
    tbfornecedoruf: TStringField;
    tbfornecedorcep: TStringField;
    tbfornecedornomecontato: TStringField;
    tbfornecedortelcontato: TStringField;
    tbfornecedoremail: TStringField;
    tbfornecedorsite: TStringField;
    tbfornecedorfk_cod_banco: TIntegerField;
    tbfornecedoragencia: TStringField;
    tbfornecedornumconta: TStringField;
    DSfuncionarios: TDataSource;
    tbprodutoidproduto: TFDAutoIncField;
    tbprodutonome: TStringField;
    tbprodutodescricao: TStringField;
    tbprodutopreco: TBCDField;
    tbprodutoqtd_estoque: TIntegerField;
    tbprodutoidcategoria_fk: TIntegerField;
    tbprodutotipo: TStringField;
    tbprodutodata_cadastro: TDateTimeField;
    tbprodutoidunidadefk: TIntegerField;
    tbalmoxarifado: TFDTable;
    DSalmoxarifado: TDataSource;
    tbalmoxarifadoalmoxarifadoID: TFDAutoIncField;
    tbalmoxarifadodescricao: TStringField;
    tbalmoxarifadoidresponsavelautorizacao: TIntegerField;
    tbalmoxarifadoidresponsaveldespacho: TIntegerField;
    tbalmoxarifadoniveldotacao: TStringField;
    tbfuncionarios: TFDTable;
    tbfuncionariosfuncionarioID: TFDAutoIncField;
    tbfuncionariosnome: TStringField;
    tbfuncionariosfuncao: TStringField;
    tbfuncionarioscpf: TStringField;
    tbrequisicao: TFDTable;
    tbrequisicaoidreq: TFDAutoIncField;
    tbrequisicaonumeroreq: TStringField;
    tbrequisicaodatareq: TDateField;
    tbrequisicaodataconclusao: TDateField;
    tbrequisicaoformapgto: TStringField;
    tbrequisicaolicitacao: TStringField;
    tbrequisicaodescricao: TStringField;
    tbrequisicaoobservacao: TMemoField;
    tbrequisicaoformareq: TStringField;
    tbrequisicaosituacao: TStringField;
    tbrequisicaoidAlmoxarifado: TIntegerField;
    tbrequisicaoidCentrodeconsumo: TIntegerField;
    DSrequisicao: TDataSource;
    tbcentroconsumo: TFDTable;
    tbcentroconsumoid: TFDAutoIncField;
    tbcentroconsumonome: TStringField;
    tbcentroconsumoidResponsavel: TIntegerField;
    DScentroconsumo: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
