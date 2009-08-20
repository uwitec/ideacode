object SystemOperationLogForm: TSystemOperationLogForm
  Left = 308
  Top = 270
  Width = 780
  Height = 570
  BorderIcons = [biSystemMenu]
  Caption = #31995#32479#25805#20316#26085#24535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object bskndbgrd1: TbsSkinDBGrid
    Left = 0
    Top = 73
    Width = 753
    Height = 444
    HintImageIndex = 0
    TabOrder = 0
    SkinDataName = 'grid'
    Transparent = False
    WallpaperStretch = False
    UseSkinFont = True
    UseSkinCellHeight = True
    HScrollBar = bsknscrlbr1
    VScrollBar = bsknscrlbr2
    GridLineColor = clWindowText
    DefaultCellHeight = 20
    DrawGraphicFields = False
    UseColumnsFont = False
    DefaultRowHeight = 17
    MouseWheelSupport = False
    SaveMultiSelection = False
    PickListBoxSkinDataName = 'listbox'
    PickListBoxCaptionMode = False
    Align = alClient
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #25805#20316#26102#38388
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = #25805#20316#21592
        Visible = True
      end
      item
        Expanded = False
        FieldName = #20869#23481#25688#35201
        Visible = True
      end
      item
        Expanded = False
        FieldName = #25805#20316#20869#23481
        Width = 700
        Visible = True
      end>
  end
  object bsknpnl1: TbsSkinPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 73
    HintImageIndex = 0
    TabOrder = 1
    SkinDataName = 'panel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    ImagePosition = bsipDefault
    TransparentMode = False
    CaptionImageIndex = -1
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'bsknpnl1'
    Align = alTop
    object lbl1: TbsSkinStdLabel
      Left = 40
      Top = 35
      Width = 57
      Height = 13
      EllipsType = bsetNone
      UseSkinFont = True
      UseSkinColor = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinDataName = 'stdlabel'
      Caption = #26102#38388#33539#22260
    end
    object lbl2: TbsSkinStdLabel
      Left = 218
      Top = 35
      Width = 12
      Height = 13
      EllipsType = bsetNone
      UseSkinFont = True
      UseSkinColor = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinDataName = 'stdlabel'
      Caption = #9472
    end
    object edt1: TbsSkinDateEdit
      Left = 96
      Top = 32
      Width = 119
      Height = 18
      EditMask = '!0000/99/99;1; '
      Text = '2009-08-20'
      AlphaBlend = False
      AlphaBlendAnimation = False
      AlphaBlendValue = 0
      UseSkinFont = True
      Date = 40045.728739143510000000
      TodayDefault = True
      CalendarWidth = 200
      CalendarHeight = 150
      CalendarFont.Charset = DEFAULT_CHARSET
      CalendarFont.Color = clWindowText
      CalendarFont.Height = 14
      CalendarFont.Name = 'Arial'
      CalendarFont.Style = []
      CalendarBoldDays = False
      CalendarUseSkinFont = True
      CalendarSkinDataName = 'panel'
      FirstDayOfWeek = Sun
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = True
      SkinDataName = 'buttonedit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object edt2: TbsSkinDateEdit
      Left = 232
      Top = 32
      Width = 120
      Height = 18
      EditMask = '!0000/99/99;1; '
      Text = '2009-08-20'
      AlphaBlend = False
      AlphaBlendAnimation = False
      AlphaBlendValue = 0
      UseSkinFont = True
      Date = 40045.728739143510000000
      TodayDefault = True
      CalendarWidth = 200
      CalendarHeight = 150
      CalendarFont.Charset = DEFAULT_CHARSET
      CalendarFont.Color = clWindowText
      CalendarFont.Height = 14
      CalendarFont.Name = 'Arial'
      CalendarFont.Style = []
      CalendarBoldDays = False
      CalendarUseSkinFont = True
      CalendarSkinDataName = 'panel'
      FirstDayOfWeek = Sun
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = True
      SkinDataName = 'buttonedit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object btn1: TbsSkinButton
      Left = 368
      Top = 29
      Width = 75
      Height = 25
      HintImageIndex = 0
      TabOrder = 2
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = -1
      AlwaysShowLayeredFrame = False
      UseSkinSize = True
      UseSkinFontColor = True
      RepeatMode = False
      RepeatInterval = 100
      AllowAllUp = False
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Caption = #26597#35810#26085#24535
      NumGlyphs = 1
      Spacing = 1
    end
    object btn2: TbsSkinButton
      Left = 456
      Top = 28
      Width = 75
      Height = 25
      HintImageIndex = 0
      TabOrder = 3
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = -1
      AlwaysShowLayeredFrame = False
      UseSkinSize = True
      UseSkinFontColor = True
      RepeatMode = False
      RepeatInterval = 100
      AllowAllUp = False
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Caption = #21024#38500
      NumGlyphs = 1
      Spacing = 1
    end
  end
  object bsknscrlbr1: TbsSkinScrollBar
    Left = 753
    Top = 73
    Width = 19
    Height = 444
    HintImageIndex = 0
    TabOrder = 2
    SkinDataName = 'vscrollbar'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 19
    DefaultHeight = 0
    UseSkinFont = True
    Both = False
    BothMarkerWidth = 19
    BothSkinDataName = 'bothhscrollbar'
    CanFocused = False
    Align = alRight
    Kind = sbVertical
    PageSize = 0
    Min = 0
    Max = 127
    Position = 0
    SmallChange = 127
    LargeChange = 127
  end
  object bsknscrlbr2: TbsSkinScrollBar
    Left = 0
    Top = 517
    Width = 772
    Height = 19
    HintImageIndex = 0
    TabOrder = 3
    Visible = False
    SkinDataName = 'hscrollbar'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 19
    UseSkinFont = True
    Both = False
    BothMarkerWidth = 19
    BothSkinDataName = 'bothhscrollbar'
    CanFocused = False
    Align = alBottom
    Kind = sbHorizontal
    PageSize = 0
    Min = 0
    Max = 100
    Position = 0
    SmallChange = 1
    LargeChange = 1
  end
end
