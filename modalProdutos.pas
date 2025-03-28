unit modalProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TprodutosModal = class(TForm)
    Panel8: TPanel;
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
    unudadeP: TDBLookupComboBox;
    categoriaP: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBComboBox1: TDBComboBox;
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
    DBGrid1: TDBGrid;
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  produtosModal: TprodutosModal;

implementation

{$R *.dfm}

uses unitDM;

procedure TprodutosModal.FormShow(Sender: TObject);
begin
DataModule1.tbproduto.Append;
nomeP.SetFocus;
end;

procedure TprodutosModal.SpeedButton4Click(Sender: TObject);
begin
try
    //Validando os campos
    if Trim(DataModule1.tbproduto.FieldByName('nome').AsString) = '' then
    begin
      ShowMessage('o campo Nome do Produto � obrigat�rio!');
      Exit;
    end;

    if Trim(DataModule1.tbproduto.FieldByName('descricao').AsString) = '' then
    begin
      ShowMessage('o campo Descri��o � obrigat�rio!');
      Exit;
    end;

    if Trim(DataModule1.tbproduto.FieldByName('idunidadefk').AsString) = '' then
    begin
      ShowMessage('o campo Unidade de Medida � obrigat�rio!');
      Exit;
    end;

    if Trim(DataModule1.tbproduto.FieldByName('idcategoria_fk').AsString) = '' then
    begin
      ShowMessage('o campo Categoria � obrigat�rio!');
      Exit;
    end;

    if Trim(DataModule1.tbproduto.FieldByName('idcategoria_fk').AsString) = '' then
    begin
      ShowMessage('o campo Categoria � obrigat�rio!');
      Exit;
    end;

    // iniciando a a��o de salvar
    if DataModule1.tbproduto.State in [dsEdit, dsInsert] then
    begin
      DataModule1.tbproduto.Post; // Salva as altera��es
      ShowMessage('Altera��es salvas com sucesso!');
    end
    else
      ShowMessage('Nenhum registro est� em modo de edi��o ou inser��o.');
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao salvar altera��es: ' + E.Message);
      DataModule1.tbproduto.Cancel; // Cancela as altera��es caso ocorra erro
    end;
  end;
end;

procedure TprodutosModal.SpeedButton5Click(Sender: TObject);
begin
//Prepara o dataset para um novo registro
DataModule1.tbproduto.Append;
nomeP.SetFocus;
end;

procedure TprodutosModal.SpeedButton6Click(Sender: TObject);
begin
if not DataModule1.tbproduto.IsEmpty then // Verifica se tem algu�m selecionado
  // pergunta ao usu�rio se ele deseja excluir o registro
  if MessageDlg('Tem certeza que deseja excluir esse fornecedor?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      DataModule1.tbproduto.Delete; // Remove o registro atual
      ShowMessage('Registro exclu�do com sucesso!');
    except
      on E: Exception do
        ShowMessage('Nenhum registro est� selecionado!');

    end;
  end;
end;

procedure TprodutosModal.SpeedButton8Click(Sender: TObject);
  begin
    if not DataModule1.tbproduto.IsEmpty then
    begin
      DataModule1.tbproduto.Edit; // coloca o registro em modo de edi��o
    end
    else
      ShowMessage('Nenhum Registro selecionado para editar');
  end;

end.
