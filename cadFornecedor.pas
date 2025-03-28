unit cadFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, RESTRequest4D, System.JSON,
  Vcl.Imaging.pngimage, MaskUtils;

type
  Tfornecedor = class(TForm)
    painelFornecedor: TPanel;
    Label17: TLabel;
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
    pesquisa: TEdit;
    Panel9: TPanel;
    Label22: TLabel;
    pesqcpf: TRadioButton;
    pesqfantasia: TRadioButton;
    DBGrid1: TDBGrid;
    Panel8: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label24: TLabel;
    Label1: TLabel;
    fantasiaF: TDBEdit;
    cpfcnpjF: TDBEdit;
    razaoF: TDBEdit;
    ieF: TDBEdit;
    imF: TDBEdit;
    bairroF: TDBEdit;
    cepF: TDBEdit;
    ufF: TDBEdit;
    cidadeF: TDBEdit;
    emailF: TDBEdit;
    teleF: TDBEdit;
    nomerespF: TDBEdit;
    siteF: TDBEdit;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Edit1: TEdit;
    procedure Panel1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure pesquisaChange(Sender: TObject);
    procedure cepFExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure getAdress(cep:String);

  public
    { Public declarations }

  end;

var
  fornecedor: Tfornecedor;

implementation

{$R *.dfm}

uses unitDM;

procedure Tfornecedor.cepFExit(Sender: TObject);
begin

if DataModule1.DSfornecedor.State in [dsEdit, dsInsert] then
begin
  if cepF.Text <> '' then
  begin
    getAdress(cepF.Text);
  end;
end;


end;

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

procedure Tfornecedor.FormShow(Sender: TObject);
begin
edit1.Text:= DataModule1.tbfornecedor.FieldByName('endereco').AsString;
end;

procedure Tfornecedor.getAdress(cep: String);
var
Resp: RESTRequest4D.IResponse;
obj: TJSONObject;
begin
Resp:= TRequest.New.BaseURL(' viacep.com.br/ws/' + CEP + '/json/')
.Accept('Application/json')
.Get;
obj:= Resp.JSONValue as TJSONObject;
  if(Resp.StatusCode = 200)then
    begin
      Edit1.Text:= obj.Values['logradouro'].Value;
      bairroF.Text:= obj.Values['bairro'].Value;
      ufF.Text:= obj.Values['uf'].Value;
      cidadeF.Text:= obj.Values['localidade'].Value;
      emailF.SetFocus;
    end;
end;

procedure Tfornecedor.Panel1Click(Sender: TObject);
begin
self.close;
end;

procedure Tfornecedor.pesquisaChange(Sender: TObject);
begin
  DataModule1.tbfornecedor.Filtered := False; // remove qualquer filtro existente

  if pesquisa.Text <> '' then
  begin
  DataModule1.tbfornecedor.FilterOptions := [foCaseInsensitive];
    if (pesqcpf.Checked = True) then
    begin
      DataModule1.tbfornecedor.Filter := 'cnpjcpf LIKE ' + QuotedStr('%' + pesquisa.Text + '%');
      DataModule1.tbfornecedor.Filtered := True;
    end;
    if (pesqfantasia.Checked = True) then
    begin
      DataModule1.tbfornecedor.Filter := 'nomefantasia LIKE ' + QuotedStr('%' + pesquisa.Text + '%');
      DataModule1.tbfornecedor.Filtered := True;
    end;
  end;

end;
procedure Tfornecedor.SpeedButton4Click(Sender: TObject);
begin

  try
    //Verifica se os campos obrigat�rios foram preenchidos
    if Trim(DataModule1.tbfornecedor.FieldByName('nomefantasia').AsString) = '' then
    begin
      ShowMessage('Campo Nome Fantasia obrigat�rio!');
      Exit; // sai do procedimento sem salvar
    end;

    if Trim(DataModule1.tbfornecedor.FieldByName('razaosocial').AsString) = '' then
    begin
      ShowMessage('Campo Nome Raz�o Social � obrigat�rio!');
      Exit; // sai do procedimento sem salvar
    end;

    if Trim(DataModule1.tbfornecedor.FieldByName('cnpjcpf').AsString) = '' then
    begin
      ShowMessage('Campo CPF / CNPJ � obrigat�rio!');
      Exit;
    end;

    if Trim(DataModule1.tbfornecedor.FieldByName('telcontato').AsString) = '' then
    begin
      ShowMessage('Campo Telefone orbigat�rio!');
    end;

    if Trim(DataModule1.tbfornecedor.FieldByName('bairro').AsString) = '' then
    begin
      ShowMessage('Campo Bairro � obrigat�rio!');
      Exit;
    end;

    if Trim(DataModule1.tbfornecedor.FieldByName('cidade').AsString) = '' then
    begin
      ShowMessage('Campo Cidade � obrigat�rio!');
      Exit;
    end;

    if Trim(DataModule1.tbfornecedor.FieldByName('uf').AsString) = '' then
    begin
      ShowMessage('Campo UF � obrigat�rio!');
      Exit;
    end;

    if Trim(DataModule1.tbfornecedor.FieldByName('email').AsString) = '' then
    begin
      ShowMessage('Campo E-mail � obrigat�rio!');
      Exit;
    end;

    if Trim(DataModule1.tbfornecedor.FieldByName('nomecontato').AsString) = '' then
    begin
      ShowMessage('Campo Respons�vel � obrigat�rio!');
      Exit;
    end;

    // inicia a a��o para salvar as altera��es
    if DataModule1.tbfornecedor.State in [dsEdit, dsInsert] then
      begin
        DataModule1.tbfornecedor.FieldByName('endereco').AsString := Edit1.Text;
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
          ShowMessage('Nenhum registro est� selecionado!');

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
