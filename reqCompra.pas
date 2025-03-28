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
    Label3: TLabel;
    DBComboBox3: TDBComboBox;
    Label2: TLabel;
    Label15: TLabel;
    DBEdit5: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Edit1: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBNavigator1: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel3: TPanel;
    Panel8: TPanel;
    Image4: TImage;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Panel9: TPanel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel10: TPanel;
    Image2: TImage;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel11: TPanel;
    Image3: TImage;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label21: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Panel17: TPanel;
    DBEdit1: TDBEdit;
    DBGrid3: TDBGrid;
    Panel2: TPanel;
    Label16: TLabel;
    DBMemo2: TDBMemo;
    Label14: TLabel;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Shape1: TShape;
    Button2: TButton;
    DBEdit4: TDBEdit;
    reqcompra: TLabel;
    Label1: TLabel;
    Edit2: TEdit;
    Label22: TLabel;
    DBComboBox2: TDBComboBox;
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBComboBox3Change(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadreqcompra: Tcadreqcompra;

implementation

{$R *.dfm}

uses unitDM, modalProdutos, uRelatorioRequisicao;

procedure Tcadreqcompra.Button1Click(Sender: TObject);
begin
produtosModal.ShowModal;

end;

procedure Tcadreqcompra.Button2Click(Sender: TObject);
var
  qry:String;
begin
  qry := 'SELECT * FROM produto p '+
  'JOIN movimentacoes m ON m.produtoid = p.idproduto  ' +
  'JOIN requisicao r ON r.idrequisicao = m.requisicaoid ' +
  'WHERE r.idrequisicao = ' + DBGrid3.Columns[5].Field.AsString;

//ShowMessage(DBGrid3.Columns[5].Field.AsString);
  Application.CreateForm(TfrmRelatorio, frmRelatorio);
  DataModule1.tbrequisicao.Filter := 'numreq = ' + DBGrid3.Columns[0].Field.AsString;
  DataModule1.tbrequisicao.Filtered := True;
  with (DataModule1.sqlItensRequisicao) do
  begin
    close;
    sql.Clear;
    sql.Add(qry);
    open;

    if (RowsAffected > 0) then
    begin
      while not (Eof) do
      Begin
        frmRelatorio.RLMemo1.Lines.Add(FieldByName('nome').AsString);
        frmRelatorio.RLMemo1.Lines.Add('--------------------------');
        frmRelatorio.RLMemo2.Lines.Add(FieldByName('preco').AsString);
        frmRelatorio.RLMemo2.Lines.Add('--------------------------');
        Next;
      End;

      frmRelatorio.RLReport1.Preview();
      DataModule1.tbrequisicao.Filter := '';
      DataModule1.tbrequisicao.Filtered := False;

    end
    else
    begin
      Abort;
    end;
  

    
  end;

end;

procedure Tcadreqcompra.DBComboBox3Change(Sender: TObject);
begin
if (DBComboBox3.Text = 'Deferido') or (DBComboBox3.Text = 'Indeferido') then
begin
  DBEdit4.Text := DateToStr(Now);
end;

end;

procedure Tcadreqcompra.DBEdit1Change(Sender: TObject);
begin
  if DataModule1.tbrequisicao.FieldByName('formarequisicao').AsString = 'Convite' then
  begin
    RadioButton4.Checked := True;
  end;
  if DataModule1.tbrequisicao.FieldByName('formarequisicao').AsString = 'Concorr�ncia' then
  begin
    RadioButton5.Checked := True;
  end;
  if DataModule1.tbrequisicao.FieldByName('formarequisicao').AsString = 'Outros' then
  begin
    RadioButton6.Checked := True;
  end;

end;

procedure Tcadreqcompra.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if(DataModule1.tbrequisicao.FieldByName('situacao').AsString = 'Deferido')then
    begin
      DBGrid3.Canvas.Font.Color:= $0044A729 ;
      DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
  if(DataModule1.tbrequisicao.FieldByName('situacao').AsString = 'Indeferido')then
    begin
      DBGrid3.Canvas.Font.Color:= $004635DC;
      DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
  if(DataModule1.tbrequisicao.FieldByName('situacao').AsString = 'Tramitando')then
    begin
      DBGrid3.Canvas.Font.Color:= $0007C1FE;
      DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
end;

procedure Tcadreqcompra.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbInsert then
  begin
    DBLookupComboBox1.Enabled := True;
    DBEdit5.Enabled := True;
  end;

  if Button = nbPost then
  begin
    DBLookupComboBox1.Enabled := False;
    DBEdit5.Enabled := False;
  end;

end;

procedure Tcadreqcompra.FormShow(Sender: TObject);
begin

if not DataModule1.tbrequisicao.FieldByName('datareq').IsNull then
  Edit2.Text := DateToStr(DataModule1.tbrequisicao.FieldByName('datareq').AsDateTime)
else
  Edit2.Text := '';
end;

procedure Tcadreqcompra.SpeedButton4Click(Sender: TObject);
begin
  if DataModule1.tbrequisicao.State in [dsEdit, dsInsert] then
  begin
    DataModule1.tbrequisicao.FieldByName('numreq').AsInteger := StrToInt(Label13.Caption);
    DataModule1.tbrequisicao.FieldByName('datareq').AsDateTime := StrToDate(Edit2.Text);
    if RadioButton4.Checked = True then
      begin
        DataModule1.tbrequisicao.FieldByName('formarequisicao').AsString := 'Convite';
      end;

    if RadioButton5.Checked = True then
      begin
        DataModule1.tbrequisicao.FieldByName('formarequisicao').AsString := 'Concorr�ncia';
      end;

    if RadioButton6.Checked = True then
      begin
        DataModule1.tbrequisicao.FieldByName('formarequisicao').AsString := 'Outros';
      end;

    DBGrid3.Enabled:= true;
    DataModule1.tbrequisicao.Post;
  end;




end;

procedure Tcadreqcompra.SpeedButton5Click(Sender: TObject);
var
  cod: Integer;

begin
DataModule1.tbrequisicao.Last;
cod := DataModule1.tbrequisicao.FieldByName('idrequisicao').AsInteger + 1;
Label13.Caption := IntToStr(cod) + FormatDateTime('mmYYYY', Now);
DataModule1.tbrequisicao.Append;
DataModule1.tbrequisicao.FieldByName('numreq').AsString := Label13.Caption;
Edit2.Text := DateToStr(Now);
DataModule1.tbrequisicao.FieldByName('datareq').AsDateTime := StrToDate(Edit2.Text);
RadioButton4.Checked := True;
DBGrid3.Enabled:= false;
end;

procedure Tcadreqcompra.SpeedButton6Click(Sender: TObject);
begin
if not DataModule1.tbfornecedor.IsEmpty then // Verifica se tem algu�m selecionado
  // pergunta ao usu�rio se ele deseja excluir o registro
    if MessageDlg('Tem certeza que deseja excluir essa Requisi��o?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        try
          DataModule1.tbrequisicao.Delete; // Remove o registro atual
          ShowMessage('Requisi��o exclu�da com sucesso!');
        except
          on E: Exception do
          ShowMessage('Nenhuma requisi��o est� selecionada!');

      end;
    end;
end;

procedure Tcadreqcompra.SpeedButton8Click(Sender: TObject);
var
 cod: integer;
begin
  if not DataModule1.tbfornecedor.IsEmpty then
    begin
      label13.Caption := DataModule1.tbrequisicao.FieldByName('numreq').AsString;
      DataModule1.tbrequisicao.Edit; // coloca o registro em modo de edi��o
    end
    else
      ShowMessage('Nenhum Registro selecionado para editar');
end;

end.
