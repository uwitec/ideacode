object LoginForm: TLoginForm
  Left = 556
  Top = 270
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #30331#24405#31383#21475
  ClientHeight = 137
  ClientWidth = 253
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TbsSkinStdLabel
    Left = 24
    Top = 24
    Width = 60
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
    Caption = #29992#25143#21517#31216#65306
  end
  object lbl2: TbsSkinStdLabel
    Left = 24
    Top = 62
    Width = 60
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
    Caption = #29992#25143#23494#30721#65306
  end
  object btn1: TbsSkinButton
    Left = 40
    Top = 89
    Width = 75
    Height = 25
    HintImageIndex = 0
    TabOrder = 2
    SkinData = HDHouseDataModule.bsSkinData1
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
    Caption = #30331#24405
    NumGlyphs = 1
    Spacing = 1
    Default = True
    OnClick = btn1Click
  end
  object btn2: TbsSkinButton
    Left = 144
    Top = 89
    Width = 75
    Height = 25
    HintImageIndex = 0
    TabOrder = 3
    SkinData = HDHouseDataModule.bsSkinData1
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
    Caption = #21462#28040
    NumGlyphs = 1
    Spacing = 1
    OnClick = btn2Click
  end
  object cbb1: TbsSkinComboBox
    Left = 88
    Top = 22
    Width = 145
    Height = 18
    HintImageIndex = 0
    TabOrder = 0
    SkinData = HDHouseDataModule.bsSkinData1
    SkinDataName = 'combobox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    UseSkinSize = True
    ToolButtonStyle = False
    AlphaBlend = False
    AlphaBlendValue = 0
    AlphaBlendAnimation = False
    ListBoxCaptionMode = False
    ListBoxDefaultFont.Charset = DEFAULT_CHARSET
    ListBoxDefaultFont.Color = clWindowText
    ListBoxDefaultFont.Height = 14
    ListBoxDefaultFont.Name = 'Arial'
    ListBoxDefaultFont.Style = []
    ListBoxDefaultCaptionFont.Charset = DEFAULT_CHARSET
    ListBoxDefaultCaptionFont.Color = clWindowText
    ListBoxDefaultCaptionFont.Height = 14
    ListBoxDefaultCaptionFont.Name = 'Arial'
    ListBoxDefaultCaptionFont.Style = []
    ListBoxDefaultItemHeight = 20
    ListBoxCaptionAlignment = taLeftJustify
    ListBoxUseSkinFont = True
    ListBoxUseSkinItemHeight = True
    ListBoxWidth = 0
    HideSelection = True
    AutoComplete = True
    ImageIndex = -1
    CharCase = ecNormal
    DefaultColor = clWindow
    ItemIndex = -1
    DropDownCount = 8
    HorizontalExtent = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    Sorted = False
    Style = bscbEditStyle
  end
  object bsknpswrdt1: TbsSkinPasswordEdit
    Left = 88
    Top = 60
    Width = 145
    Height = 18
    Cursor = crIBeam
    HintImageIndex = 0
    TabOrder = 1
    SkinData = HDHouseDataModule.bsSkinData1
    SkinDataName = 'edit'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    DefaultColor = clWindow
    PasswordKind = pkRoundRect
  end
  object bsSkinGauge1: TbsSkinGauge
    Left = 0
    Top = 113
    Width = 253
    Height = 12
    HintImageIndex = 0
    TabOrder = 4
    Visible = False
    SkinData = HDHouseDataModule.bsSkinData1
    SkinDataName = 'gauge'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    UseSkinSize = True
    ShowProgressText = False
    ShowPercent = False
    MinValue = 0
    MaxValue = 100
    Value = 50
    Vertical = False
    ProgressAnimationPause = 3000
    Align = alBottom
  end
  object bsSkinAnimateGauge1: TbsSkinAnimateGauge
    Left = 0
    Top = 125
    Width = 253
    Height = 12
    HintImageIndex = 0
    TabOrder = 5
    Visible = False
    SkinData = HDHouseDataModule.bsSkinData1
    SkinDataName = 'gauge'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    ShowProgressText = False
    AnimationPause = 1000
    Align = alBottom
  end
  object bsbsnsknfrm1: TbsBusinessSkinForm
    ClientInActiveEffect = False
    ClientInActiveEffectType = bsieSemiTransparent
    DisableSystemMenu = False
    AlwaysResize = False
    PositionInMonitor = bspDefault
    UseFormCursorInNCArea = False
    MaxMenuItemsInWindow = 0
    ClientWidth = 0
    ClientHeight = 0
    HideCaptionButtons = False
    AlwaysShowInTray = False
    LogoBitMapTransparent = False
    AlwaysMinimizeToTray = False
    UseSkinFontInMenu = True
    ShowIcon = False
    MaximizeOnFullScreen = False
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    ShowObjectHint = False
    MenusAlphaBlend = False
    MenusAlphaBlendAnimation = False
    MenusAlphaBlendValue = 200
    DefCaptionFont.Charset = DEFAULT_CHARSET
    DefCaptionFont.Color = clBtnText
    DefCaptionFont.Height = 14
    DefCaptionFont.Name = 'Arial'
    DefCaptionFont.Style = [fsBold]
    DefInActiveCaptionFont.Charset = DEFAULT_CHARSET
    DefInActiveCaptionFont.Color = clBtnShadow
    DefInActiveCaptionFont.Height = 14
    DefInActiveCaptionFont.Name = 'Arial'
    DefInActiveCaptionFont.Style = [fsBold]
    DefMenuItemHeight = 20
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = 14
    DefMenuItemFont.Name = 'Arial'
    DefMenuItemFont.Style = []
    UseDefaultSysMenu = True
    SkinData = HDHouseDataModule.bsSkinData1
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = []
    Left = 8
    Top = 8
  end
  object qry_login: TADOQuery
    Connection = HDHouseDataModule.con1
    Parameters = <>
    Left = 8
    Top = 64
  end
end
