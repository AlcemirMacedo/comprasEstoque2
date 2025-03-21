unit unitPagInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, ShellAPI;

type
  TpainelInicial = class(TForm)
    Panel17: TPanel;
    Panel18: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Shape6: TShape;
    Image13: TImage;
    Image14: TImage;
    Panel19: TPanel;
    Panel20: TPanel;
    painelInicial: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Shape7: TShape;
    Image16: TImage;
    Image17: TImage;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Image18: TImage;
    Label23: TLabel;
    Shape8: TShape;
    Image19: TImage;
    Image20: TImage;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Shape2: TShape;
    Panel3: TPanel;
    Panel4: TPanel;
    Image1: TImage;
    Internet: TLabel;
    Shape1: TShape;
    Shape9: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Shape10: TShape;
    Label4: TLabel;
    Panel5: TPanel;
    Image12: TImage;
    Image3: TImage;
    Image9: TImage;
    Shape11: TShape;
    Panel7: TPanel;
    Panel9: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Image2: TImage;
    Label8: TLabel;
    Shape3: TShape;
    Image4: TImage;
    Image5: TImage;
    Panel8: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Image6: TImage;
    Label11: TLabel;
    Shape4: TShape;
    Image7: TImage;
    Image8: TImage;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Shape5: TShape;
    Image10: TImage;
    Image11: TImage;
    Panel15: TPanel;
    Panel16: TPanel;
    procedure Image9Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure AbrirLink(const URL: string);

  end;

var
  painelInicial: TpainelInicial;

implementation

{$R *.dfm}

{ TpainelInicial }

procedure TpainelInicial.AbrirLink(const URL: string);
begin
ShellExecute(0, 'open', PChar(URL), nil, nil, SW_SHOWNORMAL);
end;

procedure TpainelInicial.Image12Click(Sender: TObject);
begin
AbrirLink('https://infortread.com.br/novo/');
end;

procedure TpainelInicial.Image3Click(Sender: TObject);
begin
AbrirLink('https://www.facebook.com/infortread');
end;

procedure TpainelInicial.Image9Click(Sender: TObject);
begin
AbrirLink('https://www.instagram.com/infortread_telecom?igsh=N3dudW83dzBkOWl2');
end;

end.
