unit cadFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage;

type
  Tfornecedor = class(TForm)
    painelFornecedor: TPanel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    Panel4: TPanel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    Image2: TImage;
    SpeedButton2: TSpeedButton;
    Panel3: TPanel;
    Image3: TImage;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure Panel1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fornecedor: Tfornecedor;

implementation

{$R *.dfm}

uses unitDM;

procedure Tfornecedor.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
with Sender as TDBGrid do
  begin
    // Verifica se a linha � par ou �mpar
    if DataModule1.DSfornecedor.DataSet.FieldByName('idfornecedor').AsInteger mod 2 = 0 then
      Canvas.Brush.Color := $00E8E8E8 // Cor para linhas pares
    else
      Canvas.Brush.Color := clWhite; // Cor para linhas �mpares
    // Preenche o fundo da c�lula
    Canvas.FillRect(Rect);
    // Desenha o texto da c�lula
    DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure Tfornecedor.Panel1Click(Sender: TObject);
begin
self.close;
end;



end.
