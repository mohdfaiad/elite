object formCentros: TformCentros
  Left = 255
  Top = 125
  Width = 475
  Height = 363
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Centros'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcDados: TPageControl
    Left = 0
    Top = 0
    Width = 467
    Height = 329
    ActivePage = tabVisual
    Align = alClient
    HotTrack = True
    TabOrder = 0
    object tabVisual: TTabSheet
      Caption = '&Pesquisa e Sele��o'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 459
        Height = 301
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object Dock971: TDock97
          Left = 1
          Top = 1
          Width = 457
          Height = 46
          BoundLines = [blTop, blLeft, blRight]
          object ToolWindow971: TToolWindow97
            Left = 0
            Top = 0
            Caption = 'ToolWindow971'
            ClientAreaHeight = 41
            ClientAreaWidth = 444
            DockPos = 0
            TabOrder = 0
            object Label1: TLabel
              Left = 4
              Top = 1
              Width = 41
              Height = 13
              Caption = '&Campo'
              Transparent = True
            end
            object Label2: TLabel
              Left = 135
              Top = 1
              Width = 78
              Height = 13
              Caption = '&Pesquisar por'
              Transparent = True
            end
            object cmbOrdenar: TComboBox
              Tag = 1
              Left = 3
              Top = 16
              Width = 118
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 0
              OnChange = cmbOrdenarChange
            end
            object edtPesquisar: TEdit
              Left = 134
              Top = 16
              Width = 283
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtPesquisarChange
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
              OnKeyPress = edtPesquisarKeyPress
            end
          end
        end
        object Dock972: TDock97
          Left = 372
          Top = 47
          Width = 86
          Height = 253
          BoundLines = [blTop, blBottom, blLeft, blRight]
          Position = dpRight
          object Toolbar972: TToolbar97
            Left = 0
            Top = 0
            Caption = 'Toolbar972'
            Color = clBtnHighlight
            DockPos = 0
            FullSize = True
            TabOrder = 0
            object btnSair: TToolbarButton97
              Left = 0
              Top = 186
              Width = 80
              Height = 60
              Cursor = crHandPoint
              Hint = 'Sair desta janela'
              Caption = '&Sa�da'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ImageIndex = 6
              Images = dmoPrincipal.imgBotoes
              Layout = blGlyphTop
              ModalResult = 1
              Opaque = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = btnSairClick
              OnMouseEnter = btnAdicionarMouseEnter
              OnMouseExit = btnAdicionarMouseExit
            end
            object ToolbarSep971: TToolbarSep97
              Left = 0
              Top = 180
            end
            object btnAdicionar: TToolbarButton97
              Left = 0
              Top = 0
              Width = 80
              Height = 60
              Cursor = crHandPoint
              Hint = 'Adiciona um novo registro'
              Caption = '&Adicionar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ImageIndex = 0
              Images = dmoPrincipal.imgBotoes
              Layout = blGlyphTop
              Opaque = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = btnAdicionarClick
              OnMouseEnter = btnAdicionarMouseEnter
              OnMouseExit = btnAdicionarMouseExit
            end
            object btnImprimir: TToolbarButton97
              Left = 0
              Top = 120
              Width = 80
              Height = 60
              Cursor = crHandPoint
              Hint = 'Op��es de Impress�o'
              Caption = '&Impress�o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ImageIndex = 2
              Images = dmoPrincipal.imgBotoes
              Layout = blGlyphTop
              Opaque = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = btnImprimirClick
              OnMouseEnter = btnAdicionarMouseEnter
              OnMouseExit = btnAdicionarMouseExit
            end
            object btnModificar: TToolbarButton97
              Left = 0
              Top = 60
              Width = 80
              Height = 60
              Cursor = crHandPoint
              Hint = 'Modifica os dados do registro selecionado'
              Caption = '&Detalhes'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ImageIndex = 1
              Images = dmoPrincipal.imgBotoes
              Layout = blGlyphTop
              Opaque = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = btnModificarClick
              OnMouseEnter = btnAdicionarMouseEnter
              OnMouseExit = btnAdicionarMouseExit
            end
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 47
          Width = 371
          Height = 253
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object lblWhere: TLabel
            Left = 0
            Top = 0
            Width = 371
            Height = 13
            Align = alTop
            Caption = 'lblWhere'
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Visible = False
          end
          object grdDados: Tzebdbgrid
            Tag = 1
            Left = 0
            Top = 13
            Width = 371
            Height = 240
            Align = alClient
            DataSource = dscSelecionar
            PopupMenu = GridMenu
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
            Zebra = True
            ZebraColor = clAqua
            ZebraFontColor = clWindowText
            OnDblClick = grdDadosDblClick
          end
        end
      end
    end
    object tabDetalhe: TTabSheet
      Tag = 1
      Caption = '&Detalhes'
      object Dock975: TDock97
        Left = 373
        Top = 0
        Width = 86
        Height = 301
        BoundLines = [blTop, blBottom, blLeft, blRight]
        Position = dpRight
        object Toolbar971: TToolbar97
          Left = 0
          Top = 0
          Caption = 'Toolbar972'
          Color = clBtnHighlight
          DockPos = 0
          FullSize = True
          TabOrder = 0
          object ToolbarSep972: TToolbarSep97
            Left = 0
            Top = 120
          end
          object btnSalvar: TToolbarButton97
            Left = 0
            Top = 0
            Width = 80
            Height = 60
            Cursor = crHandPoint
            Caption = 'Sal&var'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ImageIndex = 3
            Images = dmoPrincipal.imgBotoes
            Layout = blGlyphTop
            Opaque = False
            ParentFont = False
            OnClick = btnSalvarClick
            OnMouseEnter = btnAdicionarMouseEnter
            OnMouseExit = btnAdicionarMouseExit
          end
          object btnExcluir: TToolbarButton97
            Left = 0
            Top = 126
            Width = 80
            Height = 60
            Cursor = crHandPoint
            Caption = '&Excluir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ImageIndex = 5
            Images = dmoPrincipal.imgBotoes
            Layout = blGlyphTop
            Opaque = False
            ParentFont = False
            OnClick = btnExcluirClick
            OnMouseEnter = btnAdicionarMouseEnter
            OnMouseExit = btnAdicionarMouseExit
          end
          object btnCancelar: TToolbarButton97
            Left = 0
            Top = 60
            Width = 80
            Height = 60
            Cursor = crHandPoint
            Caption = '&Cancelar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ImageIndex = 4
            Images = dmoPrincipal.imgBotoes
            Layout = blGlyphTop
            Opaque = False
            ParentFont = False
            OnClick = btnCancelarClick
            OnMouseEnter = btnAdicionarMouseEnter
            OnMouseExit = btnAdicionarMouseExit
          end
        end
      end
      object panDados: TPanel
        Left = 0
        Top = 0
        Width = 373
        Height = 301
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 1
        object dbnDetalhes: TDBNavigator
          Left = 8
          Top = 320
          Width = 240
          Height = 25
          DataSource = dsrDetalhes
          TabOrder = 0
          Visible = False
        end
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 371
          Height = 192
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label6: TLabel
            Left = 8
            Top = 3
            Width = 94
            Height = 13
            Caption = 'Nome do Centro'
            FocusControl = dedNOME
          end
          object dedNOME: TDBEdit
            Left = 8
            Top = 19
            Width = 265
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESCRICAO'
            DataSource = dsrDetalhes
            TabOrder = 0
            OnEnter = edtPesquisarEnter
            OnExit = edtPesquisarExit
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 8
            Top = 48
            Width = 265
            Height = 73
            Caption = ' Tipo do Centro '
            DataField = 'TIPO'
            DataSource = dsrDetalhes
            Items.Strings = (
              'Custo'
              'Lucro')
            TabOrder = 1
            Values.Strings = (
              'C'
              'L')
          end
        end
      end
    end
  end
  object formStorage: TFormStorage
    Active = False
    MinMaxInfo.MinTrackHeight = 365
    MinMaxInfo.MinTrackWidth = 477
    UseRegistry = True
    StoredProps.Strings = (
      'grdDados.Zebra'
      'grdDados.ZebraColor'
      'grdDados.ZebraFontColor')
    StoredValues = <>
    Left = 148
    Top = 129
  end
  object PrinterMenu: TPopupMenu
    Left = 156
    Top = 185
  end
  object qrySelecionar: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traSelecionar
    AfterOpen = qrySelecionarAfterOpen
    BufferChunks = 100
    CachedUpdates = False
    Left = 244
    Top = 129
  end
  object dscSelecionar: TDataSource
    AutoEdit = False
    DataSet = qrySelecionar
    Left = 244
    Top = 185
  end
  object GridMenu: TPopupMenu
    OnPopup = GridMenuPopup
    Left = 156
    Top = 297
    object Ativarzebra1: TMenuItem
      Caption = '&Ativar zebra'
      OnClick = Ativarzebra1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Cordalinha1: TMenuItem
      Caption = 'Cor da li&nha'
      OnClick = Cordalinha1Click
    end
    object Cordotexto1: TMenuItem
      Caption = 'Cor do t&exto'
      OnClick = Cordotexto1Click
    end
  end
  object ColorDialog: TColorDialog
    Ctl3D = True
    Left = 156
    Top = 241
  end
  object qryDetalhes: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traDetalhes
    AfterInsert = qryDetalhesAfterInsert
    BufferChunks = 100
    CachedUpdates = True
    SQL.Strings = (
      'SELECT *'
      'FROM centros'
      'WHERE ( CODIGO = :CODIGO )')
    UniDirectional = True
    UpdateObject = updDetalhes
    Left = 324
    Top = 129
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
  end
  object updDetalhes: TIBUpdateSQL
    ModifySQL.Strings = (
      'update centros'
      'set'
      '  DESCRICAO  = :DESCRICAO,'
      '  TIPO = :TIPO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into centros'
      '  (CODIGO, DESCRICAO, TIPO)'
      'values'
      '  (:CODIGO, :DESCRICAO, :TIPO)')
    DeleteSQL.Strings = (
      'delete from centros'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 324
    Top = 241
  end
  object dsrDetalhes: TDataSource
    AutoEdit = False
    DataSet = qryDetalhes
    Left = 324
    Top = 185
  end
  object traSelecionar: TIBTransaction
    Active = False
    DefaultDatabase = dmoPrincipal.Database
    IdleTimer = 1024
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version'
      'wait')
    AutoStopAction = saCommit
    Left = 241
    Top = 77
  end
  object traDetalhes: TIBTransaction
    Active = False
    DefaultDatabase = dmoPrincipal.Database
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'write'
      'read_committed'
      'rec_version'
      'wait')
    AutoStopAction = saCommit
    Left = 321
    Top = 77
  end
end