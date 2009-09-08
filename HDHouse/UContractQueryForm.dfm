object ContractQueryForm: TContractQueryForm
  Left = 272
  Top = 141
  Width = 996
  Height = 556
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #31614#32422#26597#35810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    988
    522)
  PixelsPerInch = 96
  TextHeight = 13
  object btn6: TbsSkinSpeedButton
    Left = 24
    Top = 5
    Width = 64
    Height = 64
    HintImageIndex = 0
    SkinDataName = 'toolbutton'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 64
    DefaultHeight = 64
    UseSkinFont = True
    UseSkinSize = True
    UseSkinFontColor = True
    WidthWithCaption = 0
    WidthWithoutCaption = 0
    ImageIndex = 0
    RepeatMode = False
    RepeatInterval = 100
    Transparent = True
    Flat = True
    AllowAllUp = False
    Down = False
    GroupIndex = 0
    Caption = #25171#24320#21512#21516
    ShowCaption = True
    NumGlyphs = 1
    Spacing = 1
    Layout = blGlyphTop
  end
  object btn1: TbsSkinSpeedButton
    Left = 112
    Top = 5
    Width = 64
    Height = 64
    HintImageIndex = 0
    SkinDataName = 'toolbutton'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 64
    DefaultHeight = 64
    UseSkinFont = True
    UseSkinSize = True
    UseSkinFontColor = True
    WidthWithCaption = 0
    WidthWithoutCaption = 0
    ImageIndex = 0
    RepeatMode = False
    RepeatInterval = 100
    Transparent = True
    Flat = True
    AllowAllUp = False
    Down = False
    GroupIndex = 0
    Caption = #23548#20986
    ShowCaption = True
    NumGlyphs = 1
    Spacing = 1
    Layout = blGlyphTop
  end
  object btn2: TbsSkinSpeedButton
    Left = 184
    Top = 5
    Width = 64
    Height = 64
    HintImageIndex = 0
    SkinDataName = 'toolbutton'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 64
    DefaultHeight = 64
    UseSkinFont = True
    UseSkinSize = True
    UseSkinFontColor = True
    WidthWithCaption = 0
    WidthWithoutCaption = 0
    ImageIndex = 0
    RepeatMode = False
    RepeatInterval = 100
    Transparent = True
    Flat = True
    AllowAllUp = False
    Down = False
    GroupIndex = 0
    Caption = #25171#21360
    ShowCaption = True
    NumGlyphs = 1
    Spacing = 1
    Layout = blGlyphTop
  end
  inline cntrctqryfrm1: TContractQueryFrame
    Left = 0
    Top = 56
    Width = 988
    Height = 238
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    inherited bsSkinStdLabel2: TbsSkinStdLabel
      Left = 272
    end
    inherited btn1: TbsSkinButtonLabel
      Left = 536
      OnClick = cntrctqryfrm1btn1Click
    end
    inherited bvl1: TBevel
      Width = 988
    end
    inherited bsknchckrdbx1: TbsSkinCheckRadioBox
      Left = 592
      SkinDataName = 'radiobox'
      Radio = True
      GroupIndex = 1
      OnClick = cntrctqryfrm1bsknchckrdbx1Click
    end
    inherited bsknchckrdbx2: TbsSkinCheckRadioBox
      Left = 704
      SkinDataName = 'radiobox'
      Radio = True
      GroupIndex = 1
      OnClick = cntrctqryfrm1bsknchckrdbx2Click
    end
    inherited bskndbgrd1: TbsSkinDBGrid
      Top = 37
      Width = 985
      Height = 182
      Align = alCustom
      DataSource = dsCjxx
      PopupMenu = pmContract
      Columns = <
        item
          Expanded = False
          FieldName = 'cjxx_htbh'
          Title.Caption = #21512#21516#32534#21495
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 129
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cjxx_czssqk'
          Title.Caption = #31199#21806
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cjxx_fybh'
          Title.Caption = #25151#28304#32534#21495
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cjxx_wymc'
          Title.Caption = #29289#19994#21517#31216
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cjxx_yzxm'
          Title.Caption = #19994#20027#22995#21517
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cjxx_khbh'
          Title.Caption = #23458#25143#32534#21495
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cjxx_khxm'
          Title.Caption = #23458#25143#22995#21517
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = #29289#19994#29992#36884
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cjxx_fcmj'
          Title.Caption = #38754#31215
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cjxx_zygw'
          Title.Caption = #32622#19994#39038#38382
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cjxx_date'
          Title.Caption = #31614#32422#26085#26399
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cjxx_enddate'
          Title.Caption = #21512#21516#21040#26399#26085
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end>
    end
    inherited bsknscrlbr1: TbsSkinScrollBar
      Top = 219
      Width = 988
      SmallChange = 127
      LargeChange = 127
    end
    inherited edtSearch: TbsSkinEdit
      Left = 392
    end
    inherited edtBeginDate: TbsSkinDateEdit
      Date = 40064.622299074070000000
    end
    inherited edtEndDate: TbsSkinDateEdit
      Left = 168
      Date = 40064.622299074070000000
    end
  end
  object bsknpgcntrl2: TbsSkinPageControl
    Left = 0
    Top = 303
    Width = 989
    Height = 219
    ActivePage = bskntbsht4
    Anchors = [akLeft, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TabExtededDraw = False
    TabSpacing = 1
    TextInHorizontal = False
    TabsInCenter = False
    FreeOnClose = False
    ShowCloseButtons = False
    TabsBGTransparent = False
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBtnText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultItemHeight = 20
    SkinDataName = 'tab'
    object bskntbsht4: TbsSkinTabSheet
      Caption = #25151#28304#35814#32454#20449#24687
      inline hsdtlnfvw1: THouseDetailInfoView
        Left = 0
        Top = 0
        Width = 987
        Height = 197
        Align = alClient
        TabOrder = 0
        inherited bsknpnl1: TbsSkinPanel
          inherited edt1: TbsSkinDBEdit
            Text = '3680'
            DataField = 'fczy_zj'
            DataSource = dsFyxxxx
          end
          inherited edt2: TbsSkinDBEdit
            Text = '0'
            DataField = 'fczy_sj'
            DataSource = dsFyxxxx
          end
          inherited edt3: TbsSkinDBEdit
            Text = #20928#20215#65292#20080#26041#36127#36131#31246#36153
            DataField = 'fczy_cssm'
            DataSource = dsFyxxxx
          end
          inherited edt4: TbsSkinDBEdit
            Text = #20928#20215#65292#20080#26041#36127#36131#31246#36153
            DataField = 'fczy_cssm'
            DataSource = dsFyxxxx
          end
          inherited edt5: TbsSkinDBEdit
            Text = #24050#32463#25104#20132
            DataField = 'fczy_dqzt'
            DataSource = dsFyxxxx
          end
          inherited edt6: TbsSkinDBEdit
            Text = #27946#22478#23567#21306
            DataField = 'fczy_wymc'
            DataSource = dsFyxxxx
          end
          inherited edt7: TbsSkinDBEdit
            Text = #19996#22478#21306
            DataField = 'fczy_qy'
            DataSource = dsFyxxxx
          end
          inherited edt8: TbsSkinDBEdit
            Text = '3'#23460'1'#21381'1'#21355'1'#38451
            DataField = 'fczy_hxjg'
            DataSource = dsFyxxxx
          end
          inherited edt9: TbsSkinDBEdit
            Text = #23567#29579
            DataField = 'cjxx_zygw'
            DataSource = dsCjxx
          end
          inherited edt10: TbsSkinDBEdit
            Text = #26222#36890#20303#23429
            DataField = 'fczy_wyyt'
            DataSource = dsFyxxxx
          end
          inherited edt11: TbsSkinDBEdit
            Text = #26222#35013
            DataField = 'fczy_zxcd'
            DataSource = dsFyxxxx
          end
          inherited edt12: TbsSkinDBEdit
            Text = '126'
            DataField = 'fczy_jzmj'
            DataSource = dsFyxxxx
          end
          inherited edt13: TbsSkinDBEdit
            Text = '2003'
            DataField = 'fczy_jcnf'
            DataSource = dsFyxxxx
          end
          inherited edt14: TbsSkinDBEdit
            Text = #24179#23618
            DataField = 'fczy_fx'
            DataSource = dsFyxxxx
          end
          inherited edt15: TbsSkinDBEdit
            Text = #39640#23618
            DataField = 'fczy_wylb'
            DataSource = dsFyxxxx
          end
          inherited edt16: TbsSkinDBEdit
            Text = '6/7'
            DataField = 'fczy_lccg'
            DataSource = dsFyxxxx
          end
        end
        inherited bsknpnl2: TbsSkinPanel
          inherited edt17: TbsSkinDBEdit
            Text = #29123#27668';'#26262#27668';'
            DataField = 'fczy_ptss1'
            DataSource = dsFyxxxx
          end
          inherited edt18: TbsSkinDBEdit
            Text = #26080
            DataField = 'fczy_ptss2'
            DataSource = dsFyxxxx
          end
          inherited edt19: TbsSkinDBEdit
            DataField = 'fczy_jtdz'
          end
          inherited mmoxxxx: TbsSkinDBMemo2
            Lines.Strings = (
              #26080)
            DataField = 'fczy_xxbz'
            DataSource = dsFyxxxx
          end
        end
      end
    end
    object bskntbsht5: TbsSkinTabSheet
      Caption = #25151#28304#20445#23494#20449#24687
      inline hscrnfvw1: THouseSecureInfoView
        Left = 0
        Top = 0
        Width = 987
        Height = 197
        Align = alClient
        TabOrder = 0
        inherited bsknpnl1: TbsSkinPanel
          Width = 987
          Height = 197
        end
      end
    end
    object bskntbsht1: TbsSkinTabSheet
      Caption = #25151#28304#36319#36827#20449#24687
      object bskndbgrd1: TbsSkinDBGrid
        Left = 0
        Top = 0
        Width = 877
        Height = 197
        HintImageIndex = 0
        TabOrder = 0
        SkinDataName = 'grid'
        Transparent = False
        WallpaperStretch = False
        UseSkinFont = True
        UseSkinCellHeight = True
        GridLineColor = clWindowText
        DefaultCellHeight = 20
        DrawGraphicFields = False
        UseColumnsFont = False
        DefaultRowHeight = 18
        MouseWheelSupport = False
        SaveMultiSelection = False
        PickListBoxSkinDataName = 'listbox'
        PickListBoxCaptionMode = False
        Align = alClient
        DataSource = dsFygj
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBtnText
        TitleFont.Height = 14
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'fcgj_date'
            Title.Caption = #36319#36827#26102#38388
            Width = 131
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'fcgj_gjr'
            Title.Caption = #36319#36827#20154
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'fcgj_fs'
            Title.Caption = #36319#36827#26041#24335
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'fcgj_ms'
            Title.Caption = #36319#36827#20869#23481
            Width = 522
            Visible = True
          end>
      end
    end
  end
  object qryCjxx: TADOQuery
    Active = True
    Connection = HDHouseDataModule.con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cjxx')
    Left = 697
    Top = 9
  end
  object dsCjxx: TDataSource
    DataSet = qryCjxx
    Left = 657
    Top = 9
  end
  object tblFyxxxx: TADOTable
    Active = True
    Connection = HDHouseDataModule.con1
    CursorType = ctStatic
    IndexFieldNames = 'fczy_bh'
    MasterFields = 'cjxx_fybh'
    MasterSource = dsCjxx
    TableName = 'fczy'
    Left = 608
    Top = 8
  end
  object dsFyxxxx: TDataSource
    DataSet = tblFyxxxx
    OnDataChange = dsFyxxxxDataChange
    Left = 544
    Top = 8
  end
  object tblFygj: TADOTable
    Active = True
    Connection = HDHouseDataModule.con1
    CursorType = ctStatic
    IndexFieldNames = 'fcgj_fybh'
    MasterFields = 'fczy_bh'
    MasterSource = dsFyxxxx
    TableName = 'fcgj'
    Left = 776
    Top = 8
  end
  object dsFygj: TDataSource
    DataSet = tblFygj
    Left = 736
    Top = 8
  end
  object pmContract: TPopupMenu
    Left = 824
    Top = 8
    object V1: TMenuItem
      Caption = '  '#25171#24320#21512#21516'  '
    end
    object W1: TMenuItem
      Caption = '  '#23548' '#20986'  '
    end
    object X1: TMenuItem
      Caption = '  '#25171' '#21360'  '
    end
  end
end
