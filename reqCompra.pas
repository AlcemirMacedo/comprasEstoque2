unit reqCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TForm2 = class(TForm)
    painelProdutos: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label27: TLabel;
    Label24: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    nomeP: TDBEdit;
    estoqueP: TDBEdit;
    descP: TDBEdit;
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
    Panel6: TPanel;
    Label21: TLabel;
    DBGrid1: TDBGrid;
    pesquisa: TEdit;
    Panel7: TPanel;
    Label22: TLabel;
    pesqcpf: TRadioButton;
    pesqfantasia: TRadioButton;
    unudadeP: TDBLookupComboBox;
    categoriaP: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBComboBox1: TDBComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses unitDM;

end.
