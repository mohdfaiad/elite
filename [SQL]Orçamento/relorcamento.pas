{ QuickReport list template }

unit relorcamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, qrprntr, DB, IBQuery, IBCustomDataSet, IBStoredProc, ExtCtrls, MemTable, PsQrCtrls,
  PsQrExport, RxMemDS, IBDatabase;

type
  TrelatOrcamento = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText15: TPsQRDBText;
    QRDBText16: TPsQRDBText;
    QRDBText17: TPsQRDBText;
    QRDBText18: TPsQRDBText;
    QRDBText19: TPsQRDBText;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel24: TPsQRLabel;
    QRLabel25: TPsQRLabel;
    QRLabel26: TPsQRLabel;
    QRLabel27: TPsQRLabel;
    QRLabel28: TPsQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel29: TPsQRLabel;
    QRShape13: TPsQRShape;
    QRShape14: TPsQRShape;
    QRShape15: TPsQRShape;
    QRShape16: TPsQRShape;
    QRDBText20: TPsQRDBText;
    QRDBText22: TPsQRDBText;
    QRLabel33: TPsQRLabel;
    QRDBText23: TPsQRDBText;
    QRLabel31: TPsQRLabel;
    QRLabel34: TPsQRLabel;
    QRShape6: TPsQRShape;
    QRShape11: TPsQRShape;
    QRLabel37: TPsQRLabel;
    QRShape7: TPsQRShape;
    QRShape12: TPsQRShape;
    qryOrcamento: TIBQuery;
    qryItens: TIBQuery;
    meSERVICOS: TPsQRMemo;
    meOPCIONAIS: TPsQRMemo;
    meCONDICOES1: TPsQRMemo;
    meCONDICOES2: TPsQRMemo;
    QRLabel4: TPsQRLabel;
    QRLabel5: TPsQRLabel;
    QRLabel2: TPsQRLabel;
    QRDBText1: TPsQRDBText;
    QRShape2: TPsQRShape;
    QRLabel7: TPsQRLabel;
    QRShape1: TPsQRShape;
    QRShape4: TPsQRShape;
    QRShape3: TPsQRShape;
    QRDBText24: TPsQRDBText;
    QRLabel22: TPsQRLabel;
    QRLabel8: TPsQRLabel;
    QRLabel9: TPsQRLabel;
    QRLabel11: TPsQRLabel;
    QRLabel15: TPsQRLabel;
    QRLabel17: TPsQRLabel;
    QRLabel20: TPsQRLabel;
    QRDBText2: TPsQRDBText;
    QRDBText3: TPsQRDBText;
    QRDBText4: TPsQRDBText;
    QRDBText5: TPsQRDBText;
    QRDBText6: TPsQRDBText;
    QRDBText7: TPsQRDBText;
    QRLabel10: TPsQRLabel;
    QRLabel13: TPsQRLabel;
    QRLabel16: TPsQRLabel;
    QRLabel18: TPsQRLabel;
    QRDBText8: TPsQRDBText;
    QRDBText10: TPsQRDBText;
    QRDBText12: TPsQRDBText;
    QRDBText13: TPsQRDBText;
    QRLabel19: TPsQRLabel;
    QRLabel12: TPsQRLabel;
    QRDBText9: TPsQRDBText;
    QRDBText11: TPsQRDBText;
    QRDBText14: TPsQRDBText;
    QRShape18: TPsQRShape;
    QRLabel21: TPsQRLabel;
    QRDBText26: TPsQRDBText;
    QRShape10: TPsQRShape;
    QRShape19: TPsQRShape;
    QRShape20: TPsQRShape;
    QRShape21: TPsQRShape;
    QRDBText25: TPsQRDBText;
    QRDBText27: TPsQRDBText;
    QRDBText28: TPsQRDBText;
    QRDBText29: TPsQRDBText;
    QRDBText30: TPsQRDBText;
    QRDBText31: TPsQRDBText;
    QRDBText32: TPsQRDBText;
    QRDBText33: TPsQRDBText;
    QRDBText34: TPsQRDBText;
    QRLabel1: TPsQRLabel;
    QRDBText35: TPsQRDBText;
    QRDBText36: TPsQRDBText;
    QRLabel3: TPsQRLabel;
    QRDBText37: TPsQRDBText;
    QRDBText38: TPsQRDBText;
    PsQRFilters: TPsQRFilters;
    PsQRShape1: TPsQRShape;
    PsQRShape2: TPsQRShape;
    PsQRShape3: TPsQRShape;
    PsQRShape4: TPsQRShape;
    qryLogotipo: TIBQuery;
    PsQRDBImage1: TPsQRDBImage;
    memItens: TRxMemoryData;
    memItensDESCRICAO: TStringField;
    memItensVALOR_UNITARIO: TStringField;
    memItensDESCONTO: TStringField;
    memItensQUANTIDADE: TStringField;
    memItensVALOR_TOTAL: TStringField;
    memItensCODIGO: TStringField;
    traItens: TIBTransaction;
    traOrcamento: TIBTransaction;
    PsQRSysData1: TPsQRSysData;
    PsQRLabel1: TPsQRLabel;
    PsQRDBText1: TPsQRDBText;
    PsQRLabel2: TPsQRLabel;
    PsQRDBText2: TPsQRDBText;
    PsQRLabel3: TPsQRLabel;
    PsQRDBText3: TPsQRDBText;
    PsQRLabel4: TPsQRLabel;
    PsQRDBText4: TPsQRDBText;
    procedure qryOrcamentoAfterOpen(DataSet: TDataSet);
    procedure qryItensAfterOpen(DataSet: TDataSet);
    procedure QuickRepPreview(Sender: TObject);
    procedure QRDBText20Print(sender: TObject; var Value: String);
    procedure QRDBText22Print(sender: TObject; var Value: String);
    procedure QRDBText23Print(sender: TObject; var Value: String);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText25Print(sender: TObject; var Value: String);
    procedure QRLabel33Print(sender: TObject; var Value: String);
    procedure QRDBText38Print(sender: TObject; var Value: String);
    procedure QRLabel37Print(sender: TObject; var Value: String);
    procedure PsQRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure PsQRSysData1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relatOrcamento: TrelatOrcamento;

implementation

uses data_principal, preview;

{$R *.DFM}

//     with TformPreview.Create(Self) do
//      try
//
//       pQuickReport := Self;
//       QRPreview.QRPrinter := TQRPrinter(Sender);
//       Showmodal;
//
//      finally
//       release;
//      end;

procedure TrelatOrcamento.qryOrcamentoAfterOpen(DataSet: TDataSet);
begin
     with Dataset do
      begin

       { mascaras }
       (fieldByName('VALOR_ITENS') as TIBBCDField).Currency := True;
       (fieldByName('VALOR_SERVICOS') as TIBBCDField).Currency := True;
       (fieldByName('VALOR_TOTAL') as TIBBCDField).Currency := True;
       (fieldByName('DESCONTO') as TIBBCDField).Currency := True;

       if fieldByName('SERVICOS').AsString > '' then
           meSERVICOS.Lines.Text := fieldByName('SERVICOS').AsString
       else
           meSERVICOS.Lines.Text := ' ';

       if fieldByName('CONDICOES1').AsString > '' then
           meCONDICOES1.Lines.Text := fieldByName('CONDICOES1').AsString
       else
           meCONDICOES1.Lines.Text := ' ';

       if fieldByName('CONDICOES2').AsString > '' then
           meCONDICOES2.Lines.Text := fieldByName('CONDICOES2').AsString
       else
           meCONDICOES2.Lines.Text := ' ';

       if fieldByName('OPCIONAIS').AsString > '' then
           meOPCIONAIS.Lines.Text := fieldByName('OPCIONAIS').AsString else
        begin
         meOPCIONAIS.Lines.Text := ' ';
         QRLabel31.Caption := ' ';
        end;

      end;

     with qryLogotipo do
      begin
       if active then close;
       open;
      end;

     if qryItens.Active then qryItens.Close; 
     qryItens.ParamByName('codigo').AsInteger :=
       qryOrcamento.ParamByName('codigo').AsInteger;
     qryItens.open;
end;


procedure TrelatOrcamento.qryItensAfterOpen(DataSet: TDataSet);
var
   i: byte;
   total: integer;
const
   tamanho = 31;
begin

    with qryItens do
      begin

       FetchAll;

       { mascaras }
       (fieldByName('VALOR_UNITARIO') as TIBBCDField).Currency := True;
       (fieldByName('VALOR_TOTAL') as TIBBCDField).Currency := True;
       (fieldByName('DESCONTO') as TIBBCDField).Currency := True;

       memItens.Open;

       { defino o tamanho da p�gina}
       if RecordCount <= tamanho then total := tamanho;
       if RecordCount >  tamanho then total := RecordCount +
         (tamanho - (RecordCount mod tamanho));

       for i := 1 to total do
        begin
         if eof then
            memItens.AppendRecord([' ', ' ', ' ', ' ', ' ', ' ']) else
         begin
            memItens.AppendRecord([fieldByName('CODPRODUTO').AsString,
               fieldByName('DESCRICAO').AsString,
               FloatToStrF(fieldByName('VALOR_UNITARIO').AsCurrency, ffCurrency, 18, 2),
               FloatToStrF(fieldByName('DESCONTO').AsCurrency, ffCurrency, 18, 2),
               fieldByName('QUANTIDADE').AsString,
               FloatToStrF(fieldbyname('VALOR_TOTAL').AsCurrency, ffCurrency, 18, 2)]);
            next;
         end;
        end;


      end;

end;
















procedure TrelatOrcamento.QuickRepPreview(Sender: TObject);
begin
     with TformPreview.Create(Self) do
      try

       pQuickReport := Self;
       QRPreview.QRPrinter := TQRPrinter(Sender);
       Show;

      except
       on exception do release;
      end;
end;

procedure TrelatOrcamento.QRDBText20Print(sender: TObject;
  var Value: String);
begin
  if not (RecordNumber >= RecordCount) then Value := '*******';
end;

procedure TrelatOrcamento.QRDBText22Print(sender: TObject;
  var Value: String);
begin
  if not (RecordNumber >= RecordCount) then Value := '*******';
end;

procedure TrelatOrcamento.QRDBText23Print(sender: TObject;
  var Value: String);
begin
  if not (RecordNumber >= RecordCount) then Value := '*******';
end;

procedure TrelatOrcamento.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if not (RecordNumber >= RecordCount) then
   begin
     meSERVICOS.Enabled   := False;
     QRShape6.Enabled     := False;
     meCONDICOES2.Enabled := False;
   end else
   begin
     meSERVICOS.Enabled   := True;
     QRShape6.Enabled     := True;
     meCONDICOES2.Enabled := True;
   end;
end;

procedure TrelatOrcamento.QRDBText25Print(sender: TObject;
  var Value: String);
begin
  if not (RecordNumber >= RecordCount) then Value := '';
end;

procedure TrelatOrcamento.QRLabel33Print(sender: TObject;
  var Value: String);
begin
  if not (RecordNumber >= RecordCount) then Value := '';
end;

procedure TrelatOrcamento.QRDBText38Print(sender: TObject;
  var Value: String);
begin
  if not (RecordNumber >= RecordCount) then Value := '';
end;

procedure TrelatOrcamento.QRLabel37Print(sender: TObject;
  var Value: String);
begin
  if not (RecordNumber >= RecordCount) then Value := '';
end;

procedure TrelatOrcamento.PsQRLabel1Print(sender: TObject;
  var Value: String);
begin
  if (RecordNumber >= RecordCount) then Value := '';
end;

procedure TrelatOrcamento.QRLabel29Print(sender: TObject;
  var Value: String);
begin
  if not (RecordNumber >= RecordCount) then Value := '';
end;

procedure TrelatOrcamento.PsQRSysData1Print(sender: TObject;
  var Value: String);
begin
  Value := 'P�gina ' + Value + ' de ' + IntToStr(RecordCount div 35);
end;

end.
