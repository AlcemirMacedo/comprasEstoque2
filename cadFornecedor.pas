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
    fantasiaF: TDBEdit;
    Label2: TLabel;
    dpfcnpjF: TDBEdit;
    Label3: TLabel;
    razaoF: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    ieF: TDBEdit;
    imF: TDBEdit;
    Label6: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    Label9: TLabel;
    bairroF: TDBEdit;
    Label10: TLabel;
    cepF: TDBEdit;
    ufF: TDBEdit;
    cidadeF: TDBEdit;
    emailF: TDBEdit;
    Label11: TLabel;
    teleF: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    nomerespF: TDBEdit;
    Label14: TLabel;
    siteF: TDBEdit;
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
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    Label15: TLabel;
    Label17: TLabel;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    Label18: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label19: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label20: TLabel;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    procedure Panel1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
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

procedure Tfornecedor.SpeedButton4Click(Sender: TObject);
begin

  try
    if DataModule1.tbfornecedor.State in [dsEdit, dsInsert] then
    begin
      DataModule1.tbfornecedor.Post; // Salva as altera��es
      ShowMessage('Altera��es salvas com sucesso!');
    end
    else
      ShowMessage('Nenhum registro est� em modo de edi��o ou inser��o.');
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao salvar altera��es: ' + E.Message);
      DataModule1.tbfornecedor.Cancel; // Cancela as altera��es caso ocorra erro
    end;
  end;
end;

procedure Tfornecedor.SpeedButton5Click(Sender: TObject);
begin

//Prepara o dataset para um novo registro
DataModule1.tbfornecedor.Append;

fantasiaF.SetFocus;
end;

procedure Tfornecedor.SpeedButton6Click(Sender: TObject);
begin
  if not DataModule1.tbfornecedor.IsEmpty then // Verifica se tem algu�m selecionado
  // pergunta ao usu�rio se ele deseja excluir o registro
  if MessageDlg('Tem certeza que deseja excluir esse fornecedor?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin    
    try
      DataModule1.tbfornecedor.Delete; // Remove o registro atual
      ShowMessage('Registro exclu�do com sucesso!');
    except
      on E: Exception do
        ShowMessage('Nenhum registro est� selecionado, ot�rio!');     
    
    end;
  end;
end;

procedure Tfornecedor.SpeedButton8Click(Sender: TObject);
begin
  if not DataModule1.tbfornecedor.IsEmpty then
  begin
    DataModule1.tbfornecedor.Edit; // coloca o registro em modo de edi��o
  end
  else
    ShowMessage('Nenhum Registro selecionado para editar');
end;

end.
