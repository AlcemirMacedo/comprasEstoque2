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
    tbFornecedor: TFDTable;
    DSfornecedor: TDataSource;
    tbFornecedoridfornecedor: TFDAutoIncField;
    tbFornecedornomefantasia: TStringField;
    tbFornecedorrazaosocial: TStringField;
    tbFornecedorcnpjcpf: TStringField;
    tbFornecedorinscestadual: TStringField;
    tbFornecedorinscmunicipal: TStringField;
    tbFornecedorendereco: TStringField;
    tbFornecedorbairro: TStringField;
    tbFornecedoruf: TStringField;
    tbFornecedorfk_cidadeID: TIntegerField;
    tbFornecedorcep: TStringField;
    tbFornecedornomecontato: TStringField;
    tbFornecedortelcontato: TStringField;
    tbFornecedoremail: TStringField;
    tbFornecedorsite: TStringField;
    tbFornecedorfk_cod_banco: TIntegerField;
    tbFornecedoragencia: TStringField;
    tbFornecedornumconta: TStringField;
    tbcidade: TFDTable;
    DScidade: TDataSource;
    tbcidadecidadeID: TFDAutoIncField;
    tbcidadedescricao: TStringField;
    tbcidadeuf: TStringField;
    tbuf: TFDTable;
    DSuf: TDataSource;
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
