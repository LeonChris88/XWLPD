.class public Lcom/sec/android/app/calculator/Calculator;
.super Landroid/app/Activity;
.source "Calculator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/calculator/Calculator$TextSizeAdapter;,
        Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;
    }
.end annotation


# static fields
.field private static final ACCEPTED_CHARS:[C

.field private static POPUP_TEXT_SIZE_LARGE:F

.field private static POPUP_TEXT_SIZE_MEDIUM:F

.field private static POPUP_TEXT_SIZE_SMALL:F

.field private static TEXT_SIZE_LARGE_LAND:F

.field private static TEXT_SIZE_LARGE_PORT:F

.field private static TEXT_SIZE_MEDIUM_LAND:F

.field private static TEXT_SIZE_MEDIUM_PORT:F

.field private static TEXT_SIZE_SMALL_LAND:F

.field private static TEXT_SIZE_SMALL_PORT:F

.field static error:I

.field private static local_clip:Ljava/lang/String;

.field private static mAutoRotateSetting:I

.field private static mBackspaceSoundID:I

.field private static mButtonSoundPool:Landroid/media/SoundPool;

.field private static mCurrentSoundID:I

.field private static mCurrentTextSize:I

.field private static mFont:Landroid/graphics/Typeface;


# instance fields
.field private bt_id:[I

.field private bundle:Landroid/os/Bundle;

.field private clipboard:Landroid/text/ClipboardManager;

.field protected cursorHandler:Landroid/os/Handler;

.field private customObserver:Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;

.field private isActionBarShown:Z

.field private isDialogShow:Z

.field private isInitialTouchMode:Z

.field private isPause:Z

.field private isQwerty:Z

.field private isRotationCheck:Z

.field private isTouch:Z

.field private isTouchMode:Z

.field private lastFocusId:I

.field private mActionBarHeight:I

.field private mAudioManager:Landroid/media/AudioManager;

.field mDTMFToneEnabled:Z

.field private mDisplay:Landroid/widget/EditText;

.field private mHistory:Lcom/sec/android/app/calculator/History;

.field private mHistoryScreen:Landroid/widget/EditText;

.field private mListener:Lcom/sec/android/app/calculator/EventListener;

.field private mLogic:Lcom/sec/android/app/calculator/EventHandler;

.field private mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

.field private mPersist:Lcom/sec/android/app/calculator/Persist;

.field private review:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/calculator/Calculator;->local_clip:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/calculator/Calculator;->mCurrentTextSize:I

    const/high16 v0, 0x423c

    sput v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_SMALL_PORT:F

    const/high16 v0, 0x428c

    sput v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_PORT:F

    const/high16 v0, 0x430d

    sput v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_LARGE_PORT:F

    const/high16 v0, 0x41e8

    sput v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_SMALL_LAND:F

    const/high16 v0, 0x4234

    sput v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_LAND:F

    const/high16 v0, 0x42c4

    sput v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_LARGE_LAND:F

    const/high16 v0, 0x4180

    sput v0, Lcom/sec/android/app/calculator/Calculator;->POPUP_TEXT_SIZE_SMALL:F

    const v0, 0x41955c29

    sput v0, Lcom/sec/android/app/calculator/Calculator;->POPUP_TEXT_SIZE_MEDIUM:F

    const/high16 v0, 0x41b0

    sput v0, Lcom/sec/android/app/calculator/Calculator;->POPUP_TEXT_SIZE_LARGE:F

    const-string v0, "0123456789.+-*/\u2212\u00d7\u00f7()!%^="

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/calculator/Calculator;->ACCEPTED_CHARS:[C

    sput v1, Lcom/sec/android/app/calculator/Calculator;->mCurrentSoundID:I

    sput v1, Lcom/sec/android/app/calculator/Calculator;->mBackspaceSoundID:I

    sput v1, Lcom/sec/android/app/calculator/Calculator;->mAutoRotateSetting:I

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/calculator/Calculator;->error:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isTouch:Z

    iput-boolean v2, p0, Lcom/sec/android/app/calculator/Calculator;->isRotationCheck:Z

    const/16 v0, 0x23

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bt_id:[I

    iput-boolean v2, p0, Lcom/sec/android/app/calculator/Calculator;->isPause:Z

    iput-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isDialogShow:Z

    iput-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isTouchMode:Z

    iput-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isInitialTouchMode:Z

    iput-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isActionBarShown:Z

    new-instance v0, Lcom/sec/android/app/calculator/Calculator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/calculator/Calculator$1;-><init>(Lcom/sec/android/app/calculator/Calculator;)V

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->cursorHandler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 0x4
        0x1at 0x0t 0x5t 0x7ft
        0x16t 0x0t 0x5t 0x7ft
        0x17t 0x0t 0x5t 0x7ft
        0x18t 0x0t 0x5t 0x7ft
        0x12t 0x0t 0x5t 0x7ft
        0x13t 0x0t 0x5t 0x7ft
        0x14t 0x0t 0x5t 0x7ft
        0xet 0x0t 0x5t 0x7ft
        0xft 0x0t 0x5t 0x7ft
        0x10t 0x0t 0x5t 0x7ft
        0x1bt 0x0t 0x5t 0x7ft
        0x1ct 0x0t 0x5t 0x7ft
        0x1dt 0x0t 0x5t 0x7ft
        0x15t 0x0t 0x5t 0x7ft
        0x11t 0x0t 0x5t 0x7ft
        0xct 0x0t 0x5t 0x7ft
        0xbt 0x0t 0x5t 0x7ft
        0xat 0x0t 0x5t 0x7ft
        0xdt 0x0t 0x5t 0x7ft
        0x19t 0x0t 0x5t 0x7ft
        0x1et 0x0t 0x5t 0x7ft
        0x1ft 0x0t 0x5t 0x7ft
        0x20t 0x0t 0x5t 0x7ft
        0x21t 0x0t 0x5t 0x7ft
        0x23t 0x0t 0x5t 0x7ft
        0x25t 0x0t 0x5t 0x7ft
        0x24t 0x0t 0x5t 0x7ft
        0x22t 0x0t 0x5t 0x7ft
        0x26t 0x0t 0x5t 0x7ft
        0x27t 0x0t 0x5t 0x7ft
        0x28t 0x0t 0x5t 0x7ft
        0x29t 0x0t 0x5t 0x7ft
        0x2at 0x0t 0x5t 0x7ft
        0x2bt 0x0t 0x5t 0x7ft
        0x2ct 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    sget v0, Lcom/sec/android/app/calculator/Calculator;->mCurrentTextSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/calculator/Calculator;)Landroid/text/ClipboardManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->clipboard:Landroid/text/ClipboardManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/calculator/Calculator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/calculator/Calculator;->isActionBarShown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/calculator/Calculator;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/calculator/Calculator;->mActionBarHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/calculator/Calculator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/calculator/Calculator;->isDialogShow:Z

    return p1
.end method

.method static synthetic access$900()F
    .locals 1

    sget v0, Lcom/sec/android/app/calculator/Calculator;->POPUP_TEXT_SIZE_MEDIUM:F

    return v0
.end method

.method private deleteSavedText()V
    .locals 3

    const-string v0, "backup_dsp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/calculator/Calculator;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "display"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private initControls()V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/calculator/Panel;

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-direct {p0}, Lcom/sec/android/app/calculator/Calculator;->initTrueFont()V

    new-instance v0, Lcom/sec/android/app/calculator/EventListener;

    invoke-direct {v0}, Lcom/sec/android/app/calculator/EventListener;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    new-instance v0, Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator;->mHistory:Lcom/sec/android/app/calculator/History;

    sget-object v5, Lcom/sec/android/app/calculator/Calculator;->mFont:Landroid/graphics/Typeface;

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/calculator/EventHandler;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/sec/android/app/calculator/History;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->clipboard:Landroid/text/ClipboardManager;

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/sec/android/app/calculator/Calculator;->mHistory:Lcom/sec/android/app/calculator/History;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/calculator/EventListener;->setHandler(Lcom/sec/android/app/calculator/EventHandler;Lcom/sec/android/widgetapp/calculator/Panel;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/sec/android/app/calculator/History;)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->setOnPanelListener(Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->getHandle()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Lcom/sec/android/app/calculator/Calculator$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/calculator/Calculator$2;-><init>(Lcom/sec/android/app/calculator/Calculator;)V

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    new-array v2, v7, [Landroid/text/InputFilter;

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/calculator/Calculator$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/calculator/Calculator$3;-><init>(Lcom/sec/android/app/calculator/Calculator;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/calculator/Calculator$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/calculator/Calculator$4;-><init>(Lcom/sec/android/app/calculator/Calculator;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isQwerty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    move v0, v6

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->bt_id:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->bt_id:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v2, 0x7f05000d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->forceHideSoftInput(Z)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->forceHideSoftInput(Z)V

    return-void
.end method

.method private initTrueFont()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/calculator/Calculator;->mFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/HelveticaNeueRegular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/calculator/Calculator;->mFont:Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    sget-object v1, Lcom/sec/android/app/calculator/Calculator;->mFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    sget-object v1, Lcom/sec/android/app/calculator/Calculator;->mFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private loadCurrentText()V
    .locals 3

    const-string v0, "backup_dsp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/calculator/Calculator;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "display"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/calculator/Calculator;->deleteSavedText()V

    return-void
.end method

.method private loadPanelState()V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "backup_dsp"

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/calculator/Calculator;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "dialogShow"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/calculator/Calculator;->isDialogShow:Z

    const-string v2, "fontSize"

    sget v3, Lcom/sec/android/app/calculator/Calculator;->mCurrentTextSize:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/calculator/Calculator;->mCurrentTextSize:I

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    int-to-float v3, v0

    iput v3, v2, Lcom/sec/android/app/calculator/EventHandler;->SelectedTextSize:F

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "dialogShow"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "fontSize"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private saveCurrentText()V
    .locals 5

    const/16 v4, 0x3d

    const-string v0, "backup_dsp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/calculator/Calculator;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "display"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private savePanelState()V
    .locals 5

    const-string v3, "backup_dsp"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/calculator/Calculator;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isDialogShow:Z

    sget v1, Lcom/sec/android/app/calculator/Calculator;->mCurrentTextSize:I

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "dialogShow"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "fontSize"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setActionBarHeight()V
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/calculator/Calculator;->mActionBarHeight:I

    return-void
.end method


# virtual methods
.method public button_image_change(Landroid/view/View;I)V
    .locals 5

    const/16 v4, 0x23

    const/16 v3, 0x14

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v2, v0, v2

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x3

    :cond_0
    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    move-object v1, v0

    :goto_1
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move v0, v2

    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->bt_id:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_1
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    move-object v1, v0

    goto :goto_1

    :pswitch_2
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    move-object v1, v0

    goto :goto_1

    :pswitch_3
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    move-object v1, v0

    goto :goto_1

    :pswitch_4
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    move-object v1, v0

    goto :goto_1

    :pswitch_5
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    move-object v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :array_0
    .array-data 0x4
        0x8ft 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xaat 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x8dt 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0xdft 0x0t 0x2t 0x7ft
        0xe0t 0x0t 0x2t 0x7ft
        0xe1t 0x0t 0x2t 0x7ft
        0xe2t 0x0t 0x2t 0x7ft
        0xe3t 0x0t 0x2t 0x7ft
        0xe4t 0x0t 0x2t 0x7ft
        0xe5t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
        0xe7t 0x0t 0x2t 0x7ft
        0xe8t 0x0t 0x2t 0x7ft
        0xedt 0x0t 0x2t 0x7ft
        0xf1t 0x0t 0x2t 0x7ft
        0xeet 0x0t 0x2t 0x7ft
        0xe9t 0x0t 0x2t 0x7ft
        0xf2t 0x0t 0x2t 0x7ft
        0xeft 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
        0xebt 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xf0t 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x82t 0x0t 0x2t 0x7ft
        0x6dt 0x0t 0x2t 0x7ft
        0x70t 0x0t 0x2t 0x7ft
        0x73t 0x0t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
        0x85t 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x4ft 0x0t 0x2t 0x7ft
        0x52t 0x0t 0x2t 0x7ft
        0x55t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
        0x79t 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x80t 0x0t 0x2t 0x7ft
        0x6bt 0x0t 0x2t 0x7ft
        0x6et 0x0t 0x2t 0x7ft
        0x71t 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x41t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x83t 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
        0x89t 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
        0x2ft 0x0t 0x2t 0x7ft
        0x2ct 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x74t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x29t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
        0x50t 0x0t 0x2t 0x7ft
        0x53t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0xb8t 0x0t 0x2t 0x7ft
        0xb9t 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
        0xbct 0x0t 0x2t 0x7ft
        0xbdt 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
        0xbft 0x0t 0x2t 0x7ft
        0xc0t 0x0t 0x2t 0x7ft
        0xc1t 0x0t 0x2t 0x7ft
        0xc2t 0x0t 0x2t 0x7ft
        0xc9t 0x0t 0x2t 0x7ft
        0xd4t 0x0t 0x2t 0x7ft
        0xcbt 0x0t 0x2t 0x7ft
        0xc4t 0x0t 0x2t 0x7ft
        0xd7t 0x0t 0x2t 0x7ft
        0xd0t 0x0t 0x2t 0x7ft
        0xc8t 0x0t 0x2t 0x7ft
        0xc6t 0x0t 0x2t 0x7ft
        0xc5t 0x0t 0x2t 0x7ft
        0xd1t 0x0t 0x2t 0x7ft
        0xd5t 0x0t 0x2t 0x7ft
        0xd2t 0x0t 0x2t 0x7ft
        0xcdt 0x0t 0x2t 0x7ft
        0xd6t 0x0t 0x2t 0x7ft
        0xc7t 0x0t 0x2t 0x7ft
        0xd8t 0x0t 0x2t 0x7ft
        0xcet 0x0t 0x2t 0x7ft
        0xcft 0x0t 0x2t 0x7ft
        0xbat 0x0t 0x2t 0x7ft
        0xcct 0x0t 0x2t 0x7ft
        0xd9t 0x0t 0x2t 0x7ft
        0xdat 0x0t 0x2t 0x7ft
        0xc3t 0x0t 0x2t 0x7ft
        0xd3t 0x0t 0x2t 0x7ft
        0xcat 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public checkOrientation()V
    .locals 5

    const/4 v4, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/calculator/Calculator;->setRequestedOrientation(I)V

    :goto_0
    sput v0, Lcom/sec/android/app/calculator/Calculator;->mAutoRotateSetting:I

    invoke-direct {p0}, Lcom/sec/android/app/calculator/Calculator;->setActionBarHeight()V

    return-void

    :cond_0
    sget v1, Lcom/sec/android/app/calculator/Calculator;->mAutoRotateSetting:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/Calculator;->setRequestedOrientation(I)V

    iput v3, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/calculator/Calculator;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/Calculator;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/Calculator;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public filter(Landroid/view/KeyEvent;)V
    .locals 9

    const/16 v8, 0x21

    const/16 v7, 0xf7

    const/16 v6, 0x2d

    const/16 v5, 0x2b

    const/16 v4, 0x25

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/calculator/Calculator;->ACCEPTED_CHARS:[C

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    if-eq v0, v5, :cond_1

    const/16 v2, 0x28

    if-eq v0, v2, :cond_1

    const/16 v2, 0x29

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x78

    if-eq v0, v2, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v6, :cond_1

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_1

    if-eq v0, v4, :cond_1

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x78

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x78

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    const/16 v3, 0xd7

    invoke-virtual {v2, v3}, Lcom/sec/android/app/calculator/EventListener;->onKeypressClick(C)V

    goto :goto_0

    :cond_3
    if-eq v0, v7, :cond_4

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/calculator/EventListener;->onKeypressClick(C)V

    goto :goto_0

    :cond_5
    if-ne v0, v5, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/calculator/EventListener;->onKeypressClick(C)V

    goto :goto_0

    :cond_6
    if-ne v0, v4, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/EventListener;->onKeypressClick(C)V

    goto/16 :goto_0

    :cond_7
    if-ne v0, v6, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/calculator/EventListener;->onKeypressClick(C)V

    goto/16 :goto_0

    :cond_8
    if-ne v0, v8, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/calculator/EventListener;->onKeypressClick(C)V

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    const v3, 0x7f05001b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/calculator/EventListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    const v3, 0x7f05001d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/calculator/EventListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/calculator/EventListener;->onKeypressClick(C)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    if-ne p1, v0, :cond_2

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/calculator/Calculator;->isTouch:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->getmContent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/calculator/Calculator;->lastFocusId:I

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isTouch:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/calculator/Calculator;->button_image_change(Landroid/view/View;I)V

    :cond_3
    iput-object p1, p0, Lcom/sec/android/app/calculator/Calculator;->review:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/calculator/EventListener;->onClick(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/sec/android/app/calculator/Calculator;->isTouch:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/app/calculator/Calculator;->mButtonSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v3, v5}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/sec/android/app/calculator/Calculator;->mButtonSoundPool:Landroid/media/SoundPool;

    sget-object v0, Lcom/sec/android/app/calculator/Calculator;->mButtonSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lcom/sec/android/app/calculator/Calculator;->mCurrentSoundID:I

    sget-object v0, Lcom/sec/android/app/calculator/Calculator;->mButtonSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lcom/sec/android/app/calculator/Calculator;->mBackspaceSoundID:I

    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;-><init>(Lcom/sec/android/app/calculator/Calculator;)V

    iput-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->customObserver:Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->customObserver:Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->customObserver:Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Lcom/sec/android/app/calculator/Persist;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/calculator/Persist;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPersist:Lcom/sec/android/app/calculator/Persist;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPersist:Lcom/sec/android/app/calculator/Persist;

    iget-object v0, v0, Lcom/sec/android/app/calculator/Persist;->history:Lcom/sec/android/app/calculator/History;

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistory:Lcom/sec/android/app/calculator/History;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/Calculator;->requestWindowFeature(I)Z

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iput-boolean v3, p0, Lcom/sec/android/app/calculator/Calculator;->isQwerty:Z

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/calculator/Calculator;->initControls()V

    if-eqz p1, :cond_3

    const-string v0, "EXTRA_START"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "EXTRA_END"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    const-string v3, "EXTRA_ENTER_END"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    const-string v0, "EXTRA_PANEL_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    :goto_1
    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/calculator/Panel;->getContent()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/calculator/Panel;->getHandle()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->getClosedHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v3}, Lcom/sec/android/app/calculator/EventListener;->onPanelClosedForConfig()V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    const-string v4, "EXTRA_CURSOR_STATE"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/calculator/EventHandler;->setmCursorState(Z)V

    const-string v3, "EXTRA_CURSOR_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    const-string v4, "EXTRA_STRING"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v2, v0, :cond_2

    move v2, v0

    :cond_2
    if-le v1, v0, :cond_6

    :goto_2
    if-ne v2, v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    :goto_3
    const-string v0, "EXTRA_START_DIS"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "EXTRA_END_DIS"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iput v0, v2, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionS:I

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iput v1, v0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionE:I

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    const-string v1, "EXTRA_DISPLAY_SELECT_ALL"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectAll:Z

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    const-string v1, "EXTRA_IS_SELECTING_ALL"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelectingAll(Z)V

    const-string v0, "EXTRA_IS_TOUCHMODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isInitialTouchMode:Z

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_SMALL_PORT:F

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_PORT:F

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_LARGE_PORT:F

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_SMALL_LAND:F

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_LAND:F

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_LARGE_LAND:F

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/Calculator;->POPUP_TEXT_SIZE_SMALL:F

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/Calculator;->POPUP_TEXT_SIZE_MEDIUM:F

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/calculator/Calculator;->POPUP_TEXT_SIZE_LARGE:F

    return-void

    :cond_4
    iput-boolean v5, p0, Lcom/sec/android/app/calculator/Calculator;->isQwerty:Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v3, "EXTRA_START"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v2, "EXTRA_END"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v1, "EXTRA_IS_SELECTING"

    const-string v2, "EXTRA_IS_SELECTING"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/calculator/Calculator$TextSizeAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/calculator/Calculator$TextSizeAdapter;-><init>(Lcom/sec/android/app/calculator/Calculator;Lcom/sec/android/app/calculator/Calculator$1;)V

    new-instance v2, Lcom/sec/android/app/calculator/Calculator$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/calculator/Calculator$6;-><init>(Lcom/sec/android/app/calculator/Calculator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/calculator/Calculator$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/calculator/Calculator$5;-><init>(Lcom/sec/android/app/calculator/Calculator;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    const/4 v0, 0x1

    const v1, 0x7f070014

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200dd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v1, 0x7f07000a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200db

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f07000b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200dc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const v1, 0x7f070017

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200de

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isRotationCheck:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/calculator/Calculator;->saveCurrentText()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->customObserver:Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    const/4 v4, 0x3

    const/4 v2, 0x0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isTouch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isInitialTouchMode:Z

    if-eqz v0, :cond_8

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isTouchMode:Z

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/calculator/Calculator;->isInitialTouchMode:Z

    if-eqz p2, :cond_5

    iget v0, p0, Lcom/sec/android/app/calculator/Calculator;->lastFocusId:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v1, "EXTRA_START"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v1, "EXTRA_END"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gez v3, :cond_1

    move v3, v2

    :cond_1
    if-le v3, v0, :cond_2

    move v3, v0

    :cond_2
    if-gez v1, :cond_3

    move v1, v2

    :cond_3
    if-le v1, v0, :cond_a

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v0}, Landroid/widget/EditText;->setSelection(II)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/calculator/Calculator;->lastFocusId:I

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isTouchMode:Z

    if-nez v0, :cond_9

    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/calculator/Calculator;->button_image_change(Landroid/view/View;I)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpenClick()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iput v2, v0, Lcom/sec/android/app/calculator/EventListener;->mStart:I

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iput v2, v0, Lcom/sec/android/app/calculator/EventListener;->mEnd:I

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isTouchMode:Z

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isPause:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpenClick()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isTouch:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/Calculator;->onClick(Landroid/view/View;)V

    :cond_7
    return-void

    :cond_8
    iput-boolean v2, p0, Lcom/sec/android/app/calculator/Calculator;->isTouchMode:Z

    goto :goto_0

    :cond_9
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/calculator/Calculator;->button_image_change(Landroid/view/View;I)V

    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x42

    if-eq p2, v1, :cond_0

    const/16 v1, 0x17

    if-eq p2, v1, :cond_0

    const/16 v1, 0x13

    if-eq p2, v1, :cond_0

    const/16 v1, 0x14

    if-eq p2, v1, :cond_0

    const/16 v1, 0x15

    if-eq p2, v1, :cond_0

    const/16 v1, 0x16

    if-eq p2, v1, :cond_0

    const/16 v1, 0x3b

    if-ne p2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/calculator/Calculator;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v2, 0x17

    const v3, 0x7f05000d

    const/16 v1, 0x52

    if-ne v1, p1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->closeOptionsMenu()V

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isQwerty:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isQwerty:Z

    if-eqz v1, :cond_1

    if-ne p1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/app/calculator/Calculator;->lastFocusId:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/calculator/EventListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x42

    if-eq p1, v1, :cond_5

    if-eq p1, v2, :cond_5

    const/16 v1, 0x13

    if-eq p1, v1, :cond_5

    const/16 v1, 0x14

    if-eq p1, v1, :cond_5

    const/16 v1, 0x15

    if-eq p1, v1, :cond_5

    const/16 v1, 0x16

    if-eq p1, v1, :cond_5

    const/16 v1, 0x3b

    if-ne p1, v1, :cond_6

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/calculator/EventListener;->onClick(Landroid/view/View;)V

    :cond_8
    invoke-virtual {p0, p2}, Lcom/sec/android/app/calculator/Calculator;->filter(Landroid/view/KeyEvent;)V

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isLongClick()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    const v1, 0x7f05001d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventListener;->onClick(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f050004

    if-ne v3, v4, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    :goto_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/calculator/EventHandler;->getmCursorState()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/calculator/EventHandler;->setLongClick(Z)V

    :goto_1
    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v3}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v3}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/calculator/EventHandler;->setLongClick(Z)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->onHisClear()V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iput v1, v0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionS:I

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iput v1, v0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionE:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/Calculator;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/Calculator;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_3
    iput-boolean v2, p0, Lcom/sec/android/app/calculator/Calculator;->isDialogShow:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->showDialog(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPersist:Lcom/sec/android/app/calculator/Persist;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/Persist;->save()V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->clipboard:Landroid/text/ClipboardManager;

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v1}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/app/calculator/Calculator;->isPause:Z

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iget v0, v0, Lcom/sec/android/app/calculator/EventHandler;->lastError:I

    sput v0, Lcom/sec/android/app/calculator/Calculator;->error:I

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v1, "EXTRA_IS_SELECTING"

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v2, "EXTRA_START"

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    :goto_0
    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v2, "EXTRA_END"

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/sec/android/app/calculator/Calculator;->savePanelState()V

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isDialogShow:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->removeDialog(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->onShift(Landroid/view/View;Z)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "accelerometer_rotation"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isDisplayScreen()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isHistoryScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v2

    :goto_1
    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-nez v5, :cond_5

    packed-switch v6, :pswitch_data_0

    move v0, v4

    move v4, v3

    :goto_2
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :pswitch_0
    move v0, v3

    goto :goto_2

    :cond_5
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDTMFToneEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v3, "EXTRA_REVIEW"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v4, "EXTRA_START"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v5, "EXTRA_END"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iget-boolean v5, v5, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    iget-object v6, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v6}, Lcom/sec/android/app/calculator/EventHandler;->isSelectingAll()Z

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v8, "EXTRA_IS_SELECTING"

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v9, "EXTRA_ORIENTATION"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v9, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->review:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "="

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v8, v0

    if-le v8, v1, :cond_1

    iget-object v8, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    sget v8, Lcom/sec/android/app/calculator/Calculator;->error:I

    invoke-virtual {v0, v2, v8}, Lcom/sec/android/app/calculator/EventHandler;->onEnter(ZI)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iput-boolean v5, v0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    sput v2, Lcom/sec/android/app/calculator/Calculator;->error:I

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventListener;->updateHistory()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/calculator/Calculator;->loadCurrentText()V

    invoke-direct {p0}, Lcom/sec/android/app/calculator/Calculator;->loadPanelState()V

    sget v0, Lcom/sec/android/app/calculator/Calculator;->mCurrentTextSize:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->setTextSize(I)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    if-eqz v7, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    :goto_1
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-eqz v6, :cond_7

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v5

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ne v5, v3, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelectingAll(Z)V

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    :goto_4
    iget v1, p0, Lcom/sec/android/app/calculator/Calculator;->lastFocusId:I

    if-eqz v1, :cond_c

    const v1, 0x7f050008

    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/calculator/Calculator;->lastFocusId:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_b

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_3
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->setTouchInteraction(Z)V

    iput-boolean v2, p0, Lcom/sec/android/app/calculator/Calculator;->isPause:Z

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isDialogShow:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->showDialog(I)V

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v5, "Calculator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TXT = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " s-pos = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " e-pos = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    new-instance v3, Landroid/view/KeyEvent;

    const/16 v4, 0x3b

    invoke-direct {v3, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    :goto_6
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/calculator/EventHandler;->onShift(Landroid/view/View;Z)V

    :try_start_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_7
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto :goto_6

    :catch_1
    move-exception v1

    const-string v1, "Calculator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TXT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " s-pos = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " e-pos = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto/16 :goto_4

    :cond_b
    if-nez v7, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isTouchInteraction()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/calculator/Calculator;->lastFocusId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_5

    :cond_c
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_5
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isRotationCheck:Z

    const-string v0, "EXTRA_PANEL_STATE"

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "EXTRA_ENTER_END"

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iget-boolean v2, v2, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "EXTRA_CURSOR_STATE"

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->getmCursorState()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "EXTRA_IS_SELECTING"

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v3, "EXTRA_REVIEW"

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->review:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->review:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v2, "EXTRA_ORIENTATION"

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "EXTRA_START"

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "EXTRA_END"

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    :goto_2
    invoke-virtual {v3, v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "EXTRA_STRING"

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EXTRA_START_DIS"

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iget v1, v1, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionS:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EXTRA_END_DIS"

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iget v1, v1, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionE:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EXTRA_DISPLAY_SELECT_ALL"

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iget-boolean v1, v1, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectAll:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "EXTRA_IS_SELECTING_ALL"

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->isSelectingAll()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "EXTRA_IS_TOUCHMODE"

    iget-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isTouchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move v0, v1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const v3, 0x7f050004

    const/4 v8, 0x2

    const/high16 v2, 0x3f00

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iput-boolean v7, p0, Lcom/sec/android/app/calculator/Calculator;->isTouch:Z

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f050005

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f050005

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v3, :cond_8

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/calculator/EventHandler;->isMultiSelection(Landroid/widget/EditText;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->isLongClick()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->showCursor()V

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->isLongClick()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/calculator/EventHandler;->setLongClick(Z)V

    :cond_4
    :goto_2
    return v4

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->isSelectingAll()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1, v0, v4}, Lcom/sec/android/app/calculator/EventHandler;->onShift(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/Calculator;->onVibrator(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v8, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f05000d

    if-ne v0, v1, :cond_b

    sget-object v0, Lcom/sec/android/app/calculator/Calculator;->mButtonSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/sec/android/app/calculator/Calculator;->mBackspaceSoundID:I

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->review:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->review:Landroid/view/View;

    invoke-virtual {p0, v0, v8}, Lcom/sec/android/app/calculator/Calculator;->button_image_change(Landroid/view/View;I)V

    :cond_a
    invoke-virtual {p0, p1, v7}, Lcom/sec/android/app/calculator/Calculator;->button_image_change(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iput-boolean v7, v0, Lcom/sec/android/app/calculator/EventHandler;->delst:Z

    iput-object p1, p0, Lcom/sec/android/app/calculator/Calculator;->review:Landroid/view/View;

    goto :goto_2

    :cond_b
    sget-object v0, Lcom/sec/android/app/calculator/Calculator;->mButtonSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/sec/android/app/calculator/Calculator;->mCurrentSoundID:I

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0, p1, v8}, Lcom/sec/android/app/calculator/Calculator;->button_image_change(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iput-boolean v4, v0, Lcom/sec/android/app/calculator/EventHandler;->delst:Z

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onVibrator(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isActionBarShown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    sget v1, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_PORT:F

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    sget v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_PORT:F

    :goto_0
    sput p1, Lcom/sec/android/app/calculator/Calculator;->mCurrentTextSize:I

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iput v0, v1, Lcom/sec/android/app/calculator/EventHandler;->SelectedTextSize:F

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventListener;->updateHistory()V

    :cond_0
    return-void

    :pswitch_0
    sget v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_LARGE_PORT:F

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_PORT:F

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_SMALL_PORT:F

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_1

    sget v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_LAND:F

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_LARGE_LAND:F

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_LAND:F

    goto :goto_0

    :pswitch_5
    sget v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_SMALL_LAND:F

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
