unit reqCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.ComCtrls;

type
  Tcadreqcompra = class(TForm)
    painelProdutos: TPanel;
    Panel1: TPanel;
    Panel7: TPanel;
    Panel13: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    reqcompra: TLabel;
    Panel5: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Shape2: TShape;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Panel6: TPanel;
    Label4: TLabel;
    Shape3: TShape;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBComboBox1: TDBComboBox;
    Panel15: TPanel;
    Label10: TLabel;
    Shape4: TShape;
    Label11: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label12: TLabel;
    Label13: TLabel;
    Panel2: TPanel;
    Panel16: TPanel;
    Label14: TLabel;
    Shape7: TShape;
    DBEdit2: TDBEdit;
    Panel17: TPanel;
    Label16: TLabel;
    Shape8: TShape;
    DBMemo2: TDBMemo;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    DBComboBox3: TDBComboBox;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadreqcompra: Tcadreqcompra;

implementation

{$R *.dfm}

uses unitDM;

end.
