unit sisconfig;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TB97Tlbr, ComCtrls, StdCtrls, TB97, TB97Tlwn, ExtCtrls, Grids,
  DBGrids, zebdbgrid, Placemnt, Menus, Db, IBQuery, IBCustomDataSet, IBStoredProc, DBCtrls, Mask,
  TB97Ctls, IBUpdateSQL, IBDatabase, gridreport;

type
  TformSisConfig = class(TForm)
    pgcDados: TPageControl;
    tabVisual: TTabSheet;
    tabDetalhe: TTabSheet;
    Dock975: TDock97;
    Toolbar971: TToolbar97;
    ToolbarSep972: TToolbarSep97;
    btnSalvar: TToolbarButton97;
    btnExcluir: TToolbarButton97;
    btnCancelar: TToolbarButton97;
    Panel1: TPanel;
    Dock971: TDock97;
    ToolWindow971: TToolWindow97;
    Label1: TLabel;
    Label2: TLabel;
    cmbOrdenar: TComboBox;
    edtPesquisar: TEdit;
    Dock973: TDock97;
    ToolWindow972: TToolWindow97;
    Label3: TLabel;
    Label4: TLabel;
    cmbSelecionar: TComboBox;
    edtSelecionar: TEdit;
    Dock972: TDock97;
    Toolbar972: TToolbar97;
    btnSair: TToolbarButton97;
    ToolbarSep971: TToolbarSep97;
    btnAdicionar: TToolbarButton97;
    btnImprimir: TToolbarButton97;
    btnModificar: TToolbarButton97;
    formStorage: TFormStorage;
    PrinterMenu: TPopupMenu;
    qrySelecionar: TIBQuery;
    dscSelecionar: TDataSource;
    GridMenu: TPopupMenu;
    Ativarzebra1: TMenuItem;
    N1: TMenuItem;
    Cordalinha1: TMenuItem;
    Cordotexto1: TMenuItem;
    ColorDialog: TColorDialog;
    panDados: TPanel;
    qryDetalhes: TIBQuery;
    updDetalhes: TIBUpdateSQL;
    dsrDetalhes: TDataSource;
    dbnDetalhes: TDBNavigator;
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    pgcDetalhes: TPageControl;
    tabPessoaFisica: TTabSheet;
    tabEndereco: TTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    tabOutros: TTabSheet;
    Panel3: TPanel;
    lblWhere: TLabel;
    grdDados: Tzebdbgrid;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit15: TDBEdit;
    Label14: TLabel;
    DBEdit16: TDBEdit;
    TabSheet1: TTabSheet;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    TabSheet3: TTabSheet;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    TabSheet4: TTabSheet;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    DBEdit26: TDBEdit;
    Label22: TLabel;
    DBEdit27: TDBEdit;
    Label23: TLabel;
    DBEdit28: TDBEdit;
    TabSheet5: TTabSheet;
    Label28: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    Label29: TLabel;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    TabSheet6: TTabSheet;
    Label32: TLabel;
    DBEdit39: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit40: TDBEdit;
    Label10: TLabel;
    DBEdit41: TDBEdit;
    Label35: TLabel;
    DBEdit42: TDBEdit;
    TabSheet7: TTabSheet;
    Label27: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    Label30: TLabel;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    Label31: TLabel;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    Label36: TLabel;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    traSelecionar: TIBTransaction;
    traDetalhes: TIBTransaction;
    Label40: TLabel;
    DBEdit45: TDBEdit;
    Label26: TLabel;
    DBEdit22: TDBEdit;
    DBEdit46: TDBEdit;
    DBComboBox4: TDBComboBox;
    Label41: TLabel;
    Label42: TLabel;
    DBEdit47: TDBEdit;
    Bevel1: TBevel;
    lblNatuoper: TLabel;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label12: TLabel;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    Bevel5: TBevel;
    DBCheckBox8: TDBCheckBox;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    TabSheet2: TTabSheet;
    Label43: TLabel;
    DBMemo1: TDBMemo;
    Label44: TLabel;
    DBMemo2: TDBMemo;
    TabSheet8: TTabSheet;
    Label45: TLabel;
    DBMemo3: TDBMemo;
    Label46: TLabel;
    DBMemo4: TDBMemo;
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtSelecionarKeyPress(Sender: TObject; var Key: Char);
    procedure cmbOrdenarChange(Sender: TObject);
    procedure cmbSelecionarChange(Sender: TObject);
    procedure btnImprimirMouseEnter(Sender: TObject);
    procedure edtPesquisarChange(Sender: TObject);
    procedure GridMenuPopup(Sender: TObject);
    procedure Ativarzebra1Click(Sender: TObject);
    procedure Cordalinha1Click(Sender: TObject);
    procedure Cordotexto1Click(Sender: TObject);
    procedure qrySelecionarAfterOpen(DataSet: TDataSet);
    procedure qryDetalhesAfterInsert(DataSet: TDataSet);
    procedure edtPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure qryDetalhesAfterOpen(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisarEnter(Sender: TObject);
    procedure edtPesquisarExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure Label21Click(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure Label29Click(Sender: TObject);
    procedure Label30Click(Sender: TObject);
    procedure grdDadosDblClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnAdicionarMouseEnter(Sender: TObject);
    procedure btnAdicionarMouseExit(Sender: TObject);
    procedure Label36Click(Sender: TObject);
    procedure Label31Click(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure lblNatuoperClick(Sender: TObject);
    procedure Label19Click(Sender: TObject);
  private
    { Private declarations }
    WhereArgDynamic: string;
    { chamadas de rotina }
    procedure fldCODCLIENTEmudar(Sender: TField);
    procedure fldCODCLIENTE_PADRAOmudar(Sender: TField);
    procedure fldCODCONTA_COMPRADEBmudar(Sender: TField);
    procedure fldCODCONTA_VENDACREmudar(Sender: TField);
    procedure fldCODDOC_AVISTAmudar(Sender: TField);
    procedure fldCODDOC_PRAZOmudar(Sender: TField);
    procedure fldNOTA_PADRAOmudar(Sender: TField);
    procedure fldOSABERTA_PADRAOmudar(Sender: TField);
    procedure fldOSABERTA_PADRAO_2Amudar(Sender: TField);
    procedure fldRECIBO_PADRAOmudar(Sender: TField);
    procedure fldOSFECHADA_PADRAOmudar(Sender: TField);
    procedure fldMEDIDA_SERmudar(Sender: TField);
    procedure fldGRUPO_SERmudar(Sender: TField);
    procedure fldNATUOPER_PADRAOmudar(Sender: TField);
    procedure fldNATUOPER_COMPRAmudar(Sender: TField);
  public
    { Public declarations }
    procedure SetWhereDynamic(st, stmsg: string);
  end;

var
  formSisConfig: TformSisConfig;

implementation

uses data_principal, clientes, documentos, contas, impnota,
     unidades, grupos, impboleto, dataSisconfig, natuoper;

type
  TCampoStr = string[30];
  TCampoDes = record
     rotulo, fisico: TCampoStr;
     iTab: byte;
  end;

const

{######################################################################
 #                                                                    #
 #   O CODIGO ABAIXO � O �NICO QUE PRECISA SER MODIFICADO!!!          #
 #                                                                    #
 #   Lembre-se, por�m, do seguinte CHECKLIST:                         #
 #   1 - Modificar os par�metros abaixo conforme a tabela usada       #
 #   2 - ...                                                          #
 #                                                                    #
 ######################################################################}

  { tabelas usadas }
  tblCount  = 2;
  ixTabelas : array[1..tblCount] of TCampoStr =
     ( 'SISCONFIG', 'CLIENTES' );

  { entrada no registro do Windows }
  NomeCurto = 'sisconfig';

  { rotulos e nomes fisicos dos campos }
  ixMaximo  = 3;
  ixCampos  : array[1..ixMaximo] of TCampoDes =
     ( (rotulo: 'C�digo'      ; fisico: 'CODIGO'     ; iTab: 1),
       (rotulo: 'Selecionado?'; fisico: 'PADRAO'     ; iTab: 1),
       (rotulo: 'Nome'        ; fisico: 'NOME'       ; iTab: 2) );

  { express�o adicional do where - n�o pode ser mudada em run-time }
  { para acrescentar par�mentos em run-time use SetWhereDynamic!   }
  WhereArgStatic = '( SISCONFIG.CODCLIENTE = CLIENTES.CODIGO )';

  { indexes iniciais padrao para os combos }
  ixDefSel = 3;
  ixDefOrd = 3;

{######################################################################
 #                                                                    #
 #                 FINAL DO C�DIGO CUSTOMIZ�VEL                       #
 #                                                                    #
 ######################################################################}

  { uso interno das rotinas }
  tmpSQLSel : string = '';
  tmpSQLOrd : string = '';

 var
  busca_local: byte;

{$R *.DFM}

function FldQName(i: byte): string;
begin
  result := ixTabelas[ixCampos[i].iTab] + '.' + ixCampos[i].fisico;
end;

procedure TformSisConfig.SetWhereDynamic(st, stmsg: string);
begin
  WhereArgDynamic := st;
  with lblWhere do
   begin
    Visible := (stmsg > '');
    if Visible then Caption := ' ' + stmsg;
   end;
end;

procedure TformSisConfig.btnAdicionarClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with pgcDados do
      begin
       tabDetalhe.TabVisible := True;
       tabDetalhe.Caption := 'Adicionar um registro';
       ActivePage := Pages[1];
       tabVisual.TabVisible := False;
      end;
     btnExcluir.Enabled := False;

     { c�digo de adi��o vai aqui }
     with qryDetalhes do
      begin
       DisableControls;
       ParamByName(ixCampos[1].fisico).Clear;
       Open;
       EnableControls;
       dbnDetalhes.BtnClick(nbInsert);
      end;
     Screen.Cursor := crDefault;
end;

procedure TformSisConfig.FormShow(Sender: TObject);
var
  i: byte;
begin
     { escondo a p�gina de detalhes }
     tabDetalhe.TabVisible := False;

     { se existirem itens no Menu de Impress�o, ligo o bot�o }
     if PrinterMenu.Items.Count > 0 then
       btnImprimir.DropDownMenu := PrinterMenu;

     { carrego os combos com as op��es }
     cmbSelecionar.Clear;
     cmbOrdenar.Clear;
     for i := 1 to ixMaximo do
      begin
       cmbOrdenar.Items.Add(ixCampos[i].rotulo);
       cmbSelecionar.Items.Add(ixCampos[i].rotulo);
      end;
     cmbOrdenar.ItemIndex := pred(ixDefOrd);
     cmbSelecionar.ItemIndex := pred(ixDefSel);

     { desativo os bot�es - nenhuma sele��o inicial }
     btnAdicionar.Enabled := True;
     btnModificar.Enabled := False;
     btnImprimir.Enabled := False;

     { desativo a ordena��o e pesquisa }
     cmbOrdenar.Enabled := False;
     edtPesquisar.Enabled := False;

     { desativo a grid }
     grdDados.Visible := False;

     { preparo a Query }
     qryDetalhes.Prepare;

     { for�o atualiza��o }
     cmbSelecionarChange(Sender);
     Screen.Cursor := crDefault;
end;

procedure TformSisConfig.FormCreate(Sender: TObject);
begin
     { defino a atualiza��o das informa��es }
     with formStorage do
      begin
       IniSection := NomeCurto;
       Active := True;
      end;

     { inicializo a express�o din�mica do WHERE }
     WhereArgDynamic := '';

     { modulo }
     dmoSisconfig := TdmoSisconfig.Create(Self);

end;

procedure TformSisConfig.edtSelecionarKeyPress(Sender: TObject;
  var Key: Char);
var
  i, sel: byte;
  StrSQL: string;
begin
     if (cmbSelecionar.ItemIndex = 0) and (not (Key in ['0'..'9', #8, #13])) then
       Key := chr(0);

     { se foi apertado enter }
     if (key = #13) and (edtSelecionar.Text > '') then
      begin

       Screen.Cursor := crHourGlass;
       sel := succ(cmbSelecionar.ItemIndex);
       with qrySelecionar do
        begin

         { cl�usula SELECT }
         StrSQL := 'SELECT ';
         for i := 1 to ixMaximo do
          begin
           StrSQL := StrSQL + ixTabelas[ixCampos[i].iTab] + '.' +
             ixCampos[i].fisico;
           if i < ixMaximo then StrSQL := StrSQL + ', '
             else StrSQL := StrSQL + ' ';
          end;

         { cl�usula FROM }
         StrSQL := StrSQL + 'FROM ';
         for i := 1 to tblCount do
          begin
           StrSQL := StrSQL + ixTabelas[i];
           if i < tblCount then StrSQL := StrSQL + ', '
             else StrSQL := StrSQL + ' ';
          end;

         { cl�usula WHERE }
         { ATEN��O: ESSA ROTINA FOI MODIFICADA PARA FUNCIONAR
           EXPRESSAO+ E CAMPO NOME (sel=1) USANDO SOUNDBYTES  }
         if (Pos('+', edtSelecionar.Text) > 0) and (sel = 2) then
          StrSQL := StrSQL + ' WHERE (SOUNDBYTES = ' +
            IntToStr(dmoPrincipal.SoundBts(PChar(edtSelecionar.Text))) +
            ')' else
          begin
            { ROTINA COMUM }
            StrSQL := StrSQL + ' WHERE (' +
              ixTabelas[ixCampos[sel].iTab] + '.' + ixCampos[sel].fisico;
            if sel > 1 then StrSQL := StrSQL + ' LIKE ''' +
                dmoPrincipal.Coringa(edtSelecionar.Text) + ''')'
              else StrSQL := StrSQL + ' = ' + edtSelecionar.Text + ')';
          end;

         { argumento especial do WHERE }
         if WhereArgStatic > '' then
           StrSQL := StrSQL + ' AND (' + WhereArgStatic + ')';
         if WhereArgDynamic > '' then
           StrSQL := StrSQL + ' AND (' + WhereArgDynamic + ')';

         { salvo antes do ORDER BY }
         tmpSQLSel := StrSQL;

         { cl�usula ORDER BY }
         tmpSQLOrd := ' ORDER BY ' +
            ixTabelas[ixCampos[succ(cmbOrdenar.ItemIndex)].iTab] + '.' +
            ixCampos[succ(cmbOrdenar.ItemIndex)].fisico;

         SQL.Clear;
         SQL.Add(tmpSQLSel + tmpSQLOrd);
         open;

         if not IsEmpty then
          begin
           btnAdicionar.Enabled := True;
           btnModificar.Enabled := True;
           btnImprimir.Enabled := True;
           edtPesquisar.Enabled := True;
           cmbOrdenar.Enabled := True;
           grdDados.Visible := True;
          end else btnAdicionar.Enabled := True;
        end;

       if edtPesquisar.CanFocus then edtPesquisar.SetFocus;
       Screen.Cursor := crDefault;

      end;
end;

procedure TformSisConfig.cmbOrdenarChange(Sender: TObject);
begin
     edtPesquisar.Clear;
     tmpSQLOrd := ' ORDER BY ' +
       ixTabelas[ixCampos[succ(cmbOrdenar.ItemIndex)].iTab] + '.' +
       ixCampos[succ(cmbOrdenar.ItemIndex)].fisico;
     with qrySelecionar do
      begin
       SQL.Clear;
       SQL.Add(tmpSQLSel + tmpSQLOrd);
       open;
      end;
     edtPesquisar.SetFocus;
end;

procedure TformSisConfig.cmbSelecionarChange(Sender: TObject);
begin
     edtSelecionar.Clear;
     edtSelecionar.SetFocus;
end;

procedure TformSisConfig.btnImprimirMouseEnter(Sender: TObject);
begin
//     if PrinterMenu.Items.Count = 0 then
//      btnImprimir.Enabled := False;
end;

procedure TformSisConfig.edtPesquisarChange(Sender: TObject);
begin
   if edtPesquisar.Text > '' then
     if dmoPrincipal.QueryLocate(qrySelecionar,
       ixCampos[succ(cmbOrdenar.ItemIndex)].fisico,
       edtPesquisar.Text) then beep;
end;

procedure TformSisConfig.GridMenuPopup(Sender: TObject);
begin
     AtivarZebra1.Checked := grdDados.Zebra;
end;

procedure TformSisConfig.Ativarzebra1Click(Sender: TObject);
begin
     grdDados.Zebra := not grdDados.Zebra;
end;

procedure TformSisConfig.Cordalinha1Click(Sender: TObject);
begin
     with ColorDialog do
      begin
       Color := grdDados.ZebraColor;
       if Execute then
        grdDados.ZebraColor := Color;
      end;
end;

procedure TformSisConfig.Cordotexto1Click(Sender: TObject);
begin
     with ColorDialog do
      begin
       Color := grdDados.ZebraFontColor;
       if Execute then
        grdDados.ZebraFontColor := Color;
      end;
end;

procedure TformSisConfig.qrySelecionarAfterOpen(DataSet: TDataSet);
var
  i: byte;
begin
     qrySelecionar.tag := 0;
     { preencho os nomes reais dos campos }
     for i := 1 to ixMaximo do
      qrySelecionar.fieldByName(ixCampos[i].fisico).DisplayLabel :=
        ixCampos[i].rotulo;
end;

procedure TformSisConfig.qryDetalhesAfterInsert(DataSet: TDataSet);
begin
    with Dataset do
     begin
      fieldByName(ixCampos[1].fisico).AsInteger :=
        dmoPrincipal.LerSequencia(ixTabelas[1]);

      { valores iniciais }
      fieldByName('PADRAO').AsString                := 'S';
      fieldByName('ICMSSIMPLES').AsString           := 'N';
      fieldByName('MDI').AsString                   := 'N';
      fieldByName('TECNICOLOGIN_VENDEDOR').AsString := 'N';
      fieldByName('AUTOLAUNCH').AsString            := 'N';
      fieldByName('VALOR_LIMITE').AsFloat           := 30;
      fieldByName('ALIQUOTA_ISS').AsFloat           := 3;
      fieldByName('ALIQUOTA_ICMSSIMPLES').AsFloat   := 2.4375;
      fieldByName('AUTOLAUNCH_TIME').AsInteger      := 2;
      fieldByName('ID').AsInteger                   := 1;

     end;

end;

procedure TformSisConfig.edtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (cmbOrdenar.ItemIndex = 0) and (not (Key in ['0'..'9', #8])) then
       Key := chr(0);
end;


procedure TformSisConfig.btnExcluirClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     { salvo o registro }
     dbnDetalhes.BtnClick(nbDelete);
     dmoPrincipal.SalvarRegistro(qryDetalhes);
     qryDetalhes.Close;

     with pgcDados do
      begin
       tabVisual.TabVisible := True;
       ActivePage := Pages[0];
       tabDetalhe.TabVisible := False;
      end;

     cmbOrdenarChange(Sender);
     Screen.Cursor := crDefault;
end;

procedure TformSisConfig.btnCancelarClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with pgcDados do
      begin
       tabVisual.TabVisible := True;
       ActivePage := Pages[0];
       tabDetalhe.TabVisible := False;
      end;

     { cancelo o registro }
     if qryDetalhes.State = dsInsert then
       dmoPrincipal.CancelarSequencia(ixTabelas[1],
         qryDetalhes.fieldByName(ixCampos[1].fisico).asInteger);
     dbnDetalhes.BtnClick(nbCancel);
     qryDetalhes.Close;

     Screen.Cursor := crDefault;
end;

procedure TformSisConfig.btnModificarClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with pgcDados do
      begin
       tabDetalhe.TabVisible := True;
       tabDetalhe.Caption := 'Modificar um registro';
       ActivePage := Pages[1];
       tabVisual.TabVisible := False;
      end;
     btnExcluir.Enabled := True;

     { c�digo de adi��o vai aqui }
     with qryDetalhes do
      begin
       ParamByName(ixCampos[1].fisico).AsInteger :=
         qrySelecionar.fieldByName(ixCampos[1].fisico).AsInteger;
       Open;
      end;
     dbnDetalhes.BtnClick(nbEdit);
     Screen.Cursor := crDefault;
end;

procedure TformSisConfig.qryDetalhesAfterOpen(DataSet: TDataSet);
begin
     { mascaras }
     with Dataset do
      begin

       (fieldByName('ALIQUOTA_ICMSSIMPLES') as TNumericField).EditFormat    := '##0.0000 "%"';
       (fieldByName('ALIQUOTA_ICMSSIMPLES') as TNumericField).DisplayFormat := '##0.0000 "%"';

       (fieldByName('ALIQUOTA_ISS') as TNumericField).EditFormat    := '##0.0000 "%"';
       (fieldByName('ALIQUOTA_ISS') as TNumericField).DisplayFormat := '##0.0000 "%"';

       (fieldByName('VALOR_LIMITE') as TNumericField).EditFormat    := '#,##0.00';
       (fieldByName('VALOR_LIMITE') as TNumericField).DisplayFormat := '#,##0.00';


       { rotinas de chamada }
       fieldByName('CODCLIENTE').OnChange         := fldCODCLIENTEmudar;
       fieldByName('CODCLIENTE_PADRAO').OnChange  := fldCODCLIENTE_PADRAOmudar;
       fieldByName('CODCONTA_COMPRADEB').OnChange := fldCODCONTA_COMPRADEBmudar;
       fieldByName('CODCONTA_VENDACRE').OnChange  := fldCODCONTA_VENDACREmudar;
       fieldByName('CODDOC_AVISTA').OnChange      := fldCODDOC_AVISTAmudar;
       fieldByName('CODDOC_PRAZO').OnChange       := fldCODDOC_PRAZOmudar;
       fieldByName('NOTA_PADRAO').OnChange        := fldNOTA_PADRAOmudar;
       fieldByName('OSABERTA_PADRAO').OnChange    := fldOSABERTA_PADRAOmudar;
       fieldByName('OSABERTA_PADRAO_2A').OnChange := fldOSABERTA_PADRAO_2Amudar;
       fieldByName('OSFECHADA_PADRAO').OnChange   := fldOSFECHADA_PADRAOmudar;
       fieldByName('RECIBO_PADRAO').OnChange      := fldRECIBO_PADRAOmudar;
       fieldByName('MEDIDA_SER').OnChange         := fldMEDIDA_SERmudar;
       fieldByName('GRUPO_SER').OnChange          := fldGRUPO_SERmudar;
       fieldByName('NATUOPER_PADRAO').OnChange    := fldNATUOPER_PADRAOmudar;
       fieldByName('NATUOPER_COMPRA').OnChange    := fldNATUOPER_COMPRAmudar;

      end;

     busca_local := 0;

     { Empresa }
     with dmoSisConfig.qryEmpresa do
      begin
       if Active then Close;
       Open;
      end;

     { Cliente }
     with dmoSisConfig.qryCliente do
      begin
       if Active then Close;
       Open;
      end;

     { CCD }
     with dmoSisConfig.qryCCD do
      begin
       if Active then Close;
       Open;
      end;

     { CVC }
     with dmoSisConfig.qryCVC do
      begin
       if Active then Close;
       Open;
      end;

     { DOCVISTA }
     with dmoSisConfig.qryDOCVISTA do
      begin
       if Active then Close;
       Open;
      end;

     { DOCPRAZO }
     with dmoSisConfig.qryDOCPRAZO do
      begin
       if Active then Close;
       Open;
      end;

     { IMPNOTA }
     with dmoSisConfig.qryIMPNOTA do
      begin
       if Active then Close;
       Open;
      end;

     { MEDIDA_SER }
     with dmoSisConfig.qryMEDIDA_SER do
      begin
       if Active then Close;
       Open;
      end;

     { GRUPO_SER }
     with dmoSisConfig.qryGRUPO_SER do
      begin
       if Active then Close;
       Open;
      end;

     { OSABERTA }
     with dmoSisConfig.qryOSABERTA do
      begin
       if Active then Close;
       Open;
      end;

     { OSABERTA2 }
     with dmoSisConfig.qryOSABERTA2 do
      begin
       if Active then Close;
       Open;
      end;

     { RECIBO }
     with dmoSisConfig.qryRECIBO do
      begin
       if Active then Close;
       Open;
      end;

     { OSFECHADA }
     with dmoSisConfig.qryOSFECHADA do
      begin
       if Active then Close;
       Open;
      end;

     { NATUOPER_PADRAO }
     with dmoSisConfig.qryNatuoper do
      begin
       if Active then Close;
       Open;
      end;

     { NATUOPER_COMPRA }
     with dmoSisConfig.qryNatuoperC do
      begin
       if Active then Close;
       Open;
      end;

end;

procedure TformSisConfig.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     CanClose := not qryDetalhes.Active;
end;

procedure TformSisConfig.fldCODCLIENTEmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with dmoSisConfig.qryEmpresa do
    begin
     if active then close;
     open;
    end;
end;

procedure TformSisConfig.fldCODCLIENTE_PADRAOmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with dmoSisConfig.qryCliente do
    begin
     if active then close;
     open;
    end;
end;

procedure TformSisConfig.fldCODCONTA_COMPRADEBmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with dmoSisConfig.qryCCD do
    begin
     if active then close;
     open;
    end;
end;

procedure TformSisConfig.fldCODCONTA_VENDACREmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with dmoSisConfig.qryCVC do
    begin
     if active then close;
     open;
    end;
end;

procedure TformSisConfig.fldCODDOC_AVISTAmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with dmoSisConfig.qryDOCVISTA do
    begin
     if active then close;
     open;
    end;
end;

procedure TformSisConfig.fldCODDOC_PRAZOmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with dmoSisConfig.qryDOCPRAZO do
    begin
     if active then close;
     open;
    end;
end;

procedure TformSisConfig.fldNOTA_PADRAOmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with dmoSisConfig.qryIMPNOTA do
    begin
     if active then close;
     open;
    end;
end;

procedure TformSisConfig.fldOSABERTA_PADRAOmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with dmoSisConfig.qryOSABERTA do
    begin
     if active then close;
     open;
    end;
end;

procedure TformSisConfig.fldOSABERTA_PADRAO_2Amudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with dmoSisConfig.qryOSaberta2 do
    begin
     if active then close;
     open;
    end;
end;

procedure TformSisConfig.fldRECIBO_PADRAOmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with dmoSisConfig.qryRecibo do
    begin
     if active then close;
     open;
    end;
end;

procedure TformSisConfig.fldOSFECHADA_PADRAOmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with dmoSisConfig.qryOSFECHADA do
    begin
     if active then close;
     open;
    end;
end;

procedure TformSisConfig.fldMEDIDA_SERmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with dmoSisConfig.qryMEDIDA_SER do
    begin
     if active then close;
     open;
    end;
end;

procedure TformSisConfig.fldGRUPO_SERmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with dmoSisConfig.qryGRUPO_SER do
    begin
     if active then close;
     open;
    end;
end;

procedure TformSisConfig.fldNATUOPER_PADRAOmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with dmoSisConfig.qryNatuoper do
    begin
     if active then close;
     open;
    end;
end;

procedure TformSisConfig.fldNATUOPER_COMPRAmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with dmoSisConfig.qryNatuoperC do
    begin
     if active then close;
     open;
    end;
end;

procedure TformSisConfig.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  atag: byte;
begin
     if key = vk_escape then
       if qryDetalhes.Active then btnCancelarClick(Sender) else
        begin
         Self.ModalResult := mrCancel;
        end;

     if not qryDetalhes.Active then
      begin
       case key of
        vk_F2: btnAdicionarClick(Sender);
        vk_F3: btnModificarClick(Sender);
       end;
      end else
      begin
       case key of
        vk_F9: btnSalvarClick(Sender);
       end;
      end;

     if ActiveControl = nil then atag := 0 else
       atag := ActiveControl.Tag;

     if (key = vk_Return) and (atag < 3) then
      if shift = [] then Perform(wm_NextDlgCtl, 0, 0) else
       if shift = [ssShift] then Perform(wm_NextDlgCtl, 0, 0);

     if not odd(atag) then
      begin
       case key of
        vk_Down: Perform(wm_NextDlgCtl, 0, 0);
        vk_Up: Perform(wm_NextDlgCtl, 1, 0);
       end;
       if (atag = 2) and (key = vk_return) then key := 34; 
      end;

     if key = 34 then
       with pgcDetalhes do
         ActivePage := FindNextPage(ActivePage, True, True);
     if key = 33 then
       with pgcDetalhes do
         ActivePage := FindNextPage(ActivePage, False, True);

end;

procedure TformSisConfig.edtPesquisarEnter(Sender: TObject);
begin
     if Sender is TEdit then
      begin
       TEdit(Sender).Color := clInfoBK;
       TEdit(Sender).Font.Style := [fsBold];
      end;
     if Sender is TDBEdit then
      begin
       TDBEdit(Sender).Color := clInfoBK;
       TDBEdit(Sender).Font.Style := [fsBold];
      end;
     if Sender is TDBMemo then
      begin
       TDBMemo(Sender).Color := clInfoBK;
       TDBMemo(Sender).Font.Style := [fsBold];
      end;
end;

procedure TformSisConfig.edtPesquisarExit(Sender: TObject);
begin
     if Sender is TEdit then
      begin
       TEdit(Sender).Color := clWindow;
       TEdit(Sender).Font.Style := [];
      end;
     if Sender is TDBEdit then
      begin
       TDBEdit(Sender).Color := clWindow;
       TDBEdit(Sender).Font.Style := [];
      end;
     if Sender is TDBMemo then
      begin
       TDBMemo(Sender).Color := clWindow;
       TDBMemo(Sender).Font.Style := [];
      end;
end;

procedure TformSisConfig.btnSalvarClick(Sender: TObject);
const
     myEnter: Char = #13;
begin
     Screen.Cursor := crHourGlass;
     { salvo o registro }
     dbnDetalhes.BtnClick(nbPost);
     try
       dmoPrincipal.SalvarRegistro(qryDetalhes);
     except
       on exception do
        begin
         dbnDetalhes.BtnClick(nbEdit);
         Screen.Cursor := crDefault;
         raise;
        end;
     end;

     with pgcDados do
      begin
       tabVisual.TabVisible := True;
       ActivePage := Pages[0];
       tabDetalhe.TabVisible := False;
      end;

     { verifico se � necessario ativar o grid }
     if not grdDados.Visible then
      begin
       cmbSelecionar.ItemIndex := 0;
       edtSelecionar.Text := qryDetalhes.fieldByName(ixCampos[1].fisico).asstring;
       edtSelecionarKeyPress(Sender, myEnter);
       cmbSelecionar.ItemIndex := pred(ixDefSel);
       edtSelecionar.Clear;
      end;

     if edtPesquisar.Canfocus then cmbOrdenarChange(Sender);
     qrySelecionar.Locate(ixCampos[1].fisico,
         qryDetalhes.fieldByName(ixCampos[1].fisico).AsInteger, []);
     qryDetalhes.Close;
     Screen.Cursor := crDefault;

end;

procedure TformSisConfig.FormDestroy(Sender: TObject);
begin
     if qrySelecionar.Active then qrySelecionar.Close;
     qryDetalhes.Unprepare;
end;

procedure TformSisConfig.Label6Click(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with TformClientes.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       ShowModal;
       if (ModalResult = mrOk) and (cdsSelecionar.Active) then
         Self.qryDetalhes.fieldByName('CODCLIENTE').AsInteger :=
           cdsSelecionar.fieldByName('CODIGO').AsInteger;
      finally
       release;
      end;
end;

procedure TformSisConfig.Label7Click(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with TformClientes.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       ShowModal;
       if (ModalResult = mrOk) and (cdsSelecionar.Active) then
         Self.qryDetalhes.fieldByName('CODCLIENTE_PADRAO').AsInteger :=
           cdsSelecionar.fieldByName('CODIGO').AsInteger;
      finally
       release;
      end;
end;

procedure TformSisConfig.Label13Click(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with TformContas.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       ShowModal;
       if (ModalResult = mrOk) and (qrySelecionar.Active) then
         Self.qryDetalhes.fieldByName('CODCONTA_COMPRADEB').AsInteger :=
           qrySelecionar.fieldByName('CODIGO').AsInteger;
      finally
       release;
      end;
end;

procedure TformSisConfig.Label14Click(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with TformContas.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       ShowModal;
       if (ModalResult = mrOk) and (qrySelecionar.Active) then
         Self.qryDetalhes.fieldByName('CODCONTA_VENDACRE').AsInteger :=
           qrySelecionar.fieldByName('CODIGO').AsInteger;
      finally
       release;
      end;
end;

procedure TformSisConfig.Label20Click(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with TformDocumentos.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       ShowModal;
       if (ModalResult = mrOk) and (qrySelecionar.Active) then
         Self.qryDetalhes.fieldByName('CODDOC_AVISTA').AsInteger :=
           qrySelecionar.fieldByName('CODIGO').AsInteger;
      finally
       release;
      end;
end;

procedure TformSisConfig.Label21Click(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with TformDocumentos.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       ShowModal;
       if (ModalResult = mrOk) and (qrySelecionar.Active) then
         Self.qryDetalhes.fieldByName('CODDOC_PRAZO').AsInteger :=
           qrySelecionar.fieldByName('CODIGO').AsInteger;
      finally
       release;
      end;
end;

procedure TformSisConfig.Label27Click(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with TformImpNota.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       ShowModal;
       if (ModalResult = mrOk) and (qrySelecionar.Active) then
         Self.qryDetalhes.fieldByName('NOTA_PADRAO').AsInteger :=
           qrySelecionar.fieldByName('NUMIMPNOTA').AsInteger;
      finally
       release;
      end;
end;

procedure TformSisConfig.Label28Click(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with TformUnidades.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       ShowModal;
       if (ModalResult = mrOk) and (qrySelecionar.Active) then
         Self.qryDetalhes.fieldByName('MEDIDA_SER').AsString :=
           qrySelecionar.fieldByName('SIGLA').AsString;
      finally
       release;
      end;
end;

procedure TformSisConfig.Label29Click(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with TformGrupos.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       ShowModal;
       if (ModalResult = mrOk) and (qrySelecionar.Active) then
         Self.qryDetalhes.fieldByName('GRUPO_SER').AsInteger :=
           qrySelecionar.fieldByName('CODIGO').AsInteger;
      finally
       release;
      end;
end;

procedure TformSisConfig.Label30Click(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with TformImpNota.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       ShowModal;
       if (ModalResult = mrOk) and (qrySelecionar.Active) then
         Self.qryDetalhes.fieldByName('OSABERTA_PADRAO').AsInteger :=
           qrySelecionar.fieldByName('NUMIMPNOTA').AsInteger;
      finally
       release;
      end;
end;

procedure TformSisConfig.grdDadosDblClick(Sender: TObject);
var
  scap: string;
begin
  scap := Caption;
  if Pos('->', scap) > 0 then
   begin
    scap := copy(scap, Pos('->', scap) + 2, length(scap) - Pos('->', scap) - 1);
    if Pos('->', scap) > 0 then
      ModalResult := mrOk;
   end;
end;

procedure TformSisConfig.btnImprimirClick(Sender: TObject);
begin
   with TformGridReport.Create(Self) do
    try
      DBGrid1.DataSource := Self.dscSelecionar;
      titulo := Self.Caption;
      showmodal;
    finally
      release;
    end;

end;

procedure TformSisConfig.btnAdicionarMouseEnter(Sender: TObject);
begin
   if Sender is TToolbarButton97 then
     (Sender as TToolbarButton97).Font.Style := [fsBold, fsUnderline];
end;

procedure TformSisConfig.btnAdicionarMouseExit(Sender: TObject);
begin
   if Sender is TToolbarButton97 then
     (Sender as TToolbarButton97).Font.Style := [];
end;

procedure TformSisConfig.Label36Click(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with TformImpBoleto.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       ShowModal;
       if (ModalResult = mrOk) and (qrySelecionar.Active) then
         Self.qryDetalhes.fieldByName('RECIBO_PADRAO').AsInteger :=
           qrySelecionar.fieldByName('NUMIMPBOLETO').AsInteger;
      finally
       release;
      end;
end;

procedure TformSisConfig.Label31Click(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with TformImpNota.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       ShowModal;
       if (ModalResult = mrOk) and (qrySelecionar.Active) then
         Self.qryDetalhes.fieldByName('OSFECHADA_PADRAO').AsInteger :=
           qrySelecionar.fieldByName('NUMIMPNOTA').AsInteger;
      finally
       release;
      end;
end;

procedure TformSisConfig.Label26Click(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with TformImpNota.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       ShowModal;
       if (ModalResult = mrOk) and (qrySelecionar.Active) then
         Self.qryDetalhes.fieldByName('OSABERTA_PADRAO_2A').AsInteger :=
           qrySelecionar.fieldByName('NUMIMPNOTA').AsInteger;
      finally
       release;
      end;
end;

procedure TformSisConfig.lblNatuoperClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with TformNatuoper.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       ShowModal;
       if (ModalResult = mrOk) and (qrySelecionar.Active) then
         Self.qryDetalhes.fieldByName('NATUOPER_PADRAO').AsString :=
           qrySelecionar.fieldByName('CODIGO').AsString;
      finally
       release;
      end;
end;

procedure TformSisConfig.Label19Click(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with TformNatuoper.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       ShowModal;
       if (ModalResult = mrOk) and (qrySelecionar.Active) then
         Self.qryDetalhes.fieldByName('NATUOPER_COMPRA').AsString :=
           qrySelecionar.fieldByName('CODIGO').AsString;
      finally
       release;
      end;
end;

end.
