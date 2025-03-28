unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.Imaging.jpeg, math;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    Shape2: TShape;
    painelMain: TPanel;
    Panel4: TPanel;
    Image3: TImage;
    diaHora: TLabel;
    Label4: TLabel;
    Panel6: TPanel;
    lblMapa: TLabel;
    painelPrincipal: TPanel;
    Panel2: TPanel;
    Panel27: TPanel;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    Panel31: TPanel;
    Image4: TImage;
    Label1: TLabel;
    Panel3: TPanel;
    Panel8: TPanel;
    Image2: TImage;
    SpeedButton1: TSpeedButton;
    Shape1: TShape;
    Shape3: TShape;
    Panel7: TPanel;
    Label5: TLabel;
    Shape4: TShape;
    Panel9: TPanel;
    Shape5: TShape;
    Label6: TLabel;
    Panel10: TPanel;
    Shape6: TShape;
    Label7: TLabel;
    funcionarios: TLabel;
    Panel11: TPanel;
    Image5: TImage;
    Label8: TLabel;
    SpeedButton2: TSpeedButton;
    Panel13: TPanel;
    Image7: TImage;
    Label10: TLabel;
    SpeedButton4: TSpeedButton;
    Panel12: TPanel;
    Image6: TImage;
    Label9: TLabel;
    SpeedButton3: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure menuFornecedorClick(Sender: TObject);
    procedure lblInicialClick(Sender: TObject);
    procedure lblFornecedorClick(Sender: TObject);
    procedure funcionariosClick(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);

  private
    { Private declarations }
  public



  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses cadFornecedor, unitPagInicial, cadProdutos, cadFuncionarios, reqCompra;

procedure TForm1.FormShow(Sender: TObject);
begin
  diaHora.Caption := DateTimeToStr(Now);
  // Criação e configuração do formInicial
  Application.CreateForm(TpainelInicial, painelInicial);
  painelInicial.Parent := painelPrincipal; // Define o painel como pai do formInicial
  painelInicial.Show; // Mostra o formulário embutido
end;

procedure TForm1.lblFornecedorClick(Sender: TObject);
var
  i:integer;
begin
for i := painelPrincipal.ControlCount - 1 downto 0 do
        painelPrincipal.Controls[i].Free;

    Application.CreateForm(Tfornecedor, fornecedor);
    lblMapa.Caption:=fornecedor.Caption;
    fornecedor.Parent := painelPrincipal;
    fornecedor.show;
end;


procedure TForm1.lblInicialClick(Sender: TObject);
var
  i:integer;
begin
for i := painelPrincipal.ControlCount - 1 downto 0 do
        painelPrincipal.Controls[i].Free;

    Application.CreateForm(TpainelInicial, painelInicial);
    lblMapa.Caption := painelInicial.Caption;
    painelInicial.Parent := painelPrincipal;
    painelInicial.Show;
end;

procedure TForm1.menuFornecedorClick(Sender: TObject);
var
  i:integer;
begin
    for i := painelPrincipal.ControlCount - 1 downto 0 do
        painelPrincipal.Controls[i].Free;

    Application.CreateForm(Tfornecedor, fornecedor);
    lblMapa.Caption := fornecedor.Caption;
    fornecedor.Parent := painelPrincipal;
    fornecedor.Show;
end;

procedure TForm1.Panel5Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
var
  i:integer;
begin
for i := painelPrincipal.ControlCount - 1 downto 0 do
        painelPrincipal.Controls[i].Free;

    Application.CreateForm(Tcadreqcompra, cadreqcompra);
    lblMapa.Caption:=cadreqcompra.Caption;
    cadreqcompra.Parent := painelPrincipal;
    cadreqcompra.show;
end;

procedure TForm1.funcionariosClick(Sender: TObject);
var
  i:integer;
begin
    for i := painelPrincipal.ControlCount - 1 downto 0 do
        painelPrincipal.Controls[i].Free;

    Application.CreateForm(Tprodutos, produtos);
    lblMapa.Caption := produtos.Caption;
    produtos.Parent := painelPrincipal;
    produtos.Show;
end;

procedure TForm1.Label8Click(Sender: TObject);
var
  i:integer;
begin
    for i := painelPrincipal.ControlCount - 1 downto 0 do
        painelPrincipal.Controls[i].Free;

    Application.CreateForm(Tfuncionarios, funcionarios);
    lblMapa.Caption := funcionarios.Caption;
    funcionarios.Parent := painelPrincipal;
    funcionarios.Show;
end;

end.
