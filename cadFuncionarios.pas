unit cadFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Mask;

type
  Tfuncionarios = class(TForm)
    painelProdutos: TPanel;
    Panel6: TPanel;
    Label21: TLabel;
    DBGrid1: TDBGrid;
    pesquisa: TEdit;
    Panel7: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label27: TLabel;
    Label24: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    nomeF: TDBEdit;
    descP: TDBEdit;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    Panel5: TPanel;
    Image4: TImage;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Panel4: TPanel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel2: TPanel;
    Image2: TImage;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel3: TPanel;
    Image3: TImage;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure pesquisaChange(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  funcionarios: Tfuncionarios;

implementation

{$R *.dfm}

uses unitDM;

procedure Tfuncionarios.pesquisaChange(Sender: TObject);
begin
  DataModule1.tbfuncionarios.Filtered := False; // remove qualquer filtro existente
  if pesquisa.Text <> '' then
  begin
    DataModule1.tbfuncionarios.FilterOptions := [foCaseInsensitive];
    DataModule1.tbfuncionarios.Filter := 'nome LIKE ' + QuotedStr('%' + pesquisa.Text + '%');
    DataModule1.tbfuncionarios.Filtered := True;
  end;

end;

procedure Tfuncionarios.SpeedButton5Click(Sender: TObject);
begin
// Prepara o formul�rio para inser��o
DataModule1.tbfuncionarios.Append;
nomeF.SetFocus;
end;

end.
