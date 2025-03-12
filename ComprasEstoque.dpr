program ComprasEstoque;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {Form1},
  cadFornecedor in 'cadFornecedor.pas' {fornecedor},
  unitPagInicial in 'unitPagInicial.pas' {painelInicial},
  unitDM in 'unitDM.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tfornecedor, fornecedor);
  Application.CreateForm(TpainelInicial, painelInicial);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
