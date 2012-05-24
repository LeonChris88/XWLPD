.class public Lcom/android/email/activity/ToolBarScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ToolBarScrollView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ToolBarScrollView$ItemView;,
        Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;,
        Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;,
        Lcom/android/email/activity/ToolBarScrollView$Gesture;,
        Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;
    }
.end annotation


# static fields
.field private static final FONT_SIZE:[Ljava/lang/String;


# instance fields
.field private FontSize:I

.field public FontSizeDialog:Landroid/app/AlertDialog;

.field private OldBGColor:I

.field private OldFontColor:I

.field private OldPicBGColor:I

.field private OldPicFontColor:I

.field private currentState:I

.field private mActivity:Landroid/app/Activity;

.field public mBtnBold:Landroid/widget/ImageButton;

.field public mBtnFontsize:Landroid/widget/ImageButton;

.field public mBtnInsert:Landroid/widget/ImageButton;

.field public mBtnItalic:Landroid/widget/ImageButton;

.field public mBtnRedo:Landroid/widget/ImageButton;

.field public mBtnSpellCheck:Landroid/widget/ImageButton;

.field public mBtnUndo:Landroid/widget/ImageButton;

.field private mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

.field private mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

.field private mContext:Landroid/content/Context;

.field public mFontBgColorLayout:Landroid/widget/LinearLayout;

.field public mFontBgColorPreview:Landroid/widget/LinearLayout;

.field public mFontColorLayout:Landroid/widget/LinearLayout;

.field public mFontColorPreview:Landroid/widget/LinearLayout;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHtmlComposerView:Landroid/webkit/HtmlComposerView;

.field private mIsInterceptionTrue:Z

.field private mList:Landroid/widget/ListView;

.field private mToolBarScrollViewListener:Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;

.field private testResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "14"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "9"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "10"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "12"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "14"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "16"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "24"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "36"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/ToolBarScrollView;->FONT_SIZE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/android/email/activity/ToolBarScrollView;->mIsInterceptionTrue:Z

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->currentState:I

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/ToolBarScrollView;->FontSize:I

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->OldFontColor:I

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->OldPicFontColor:I

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->OldBGColor:I

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->OldPicBGColor:I

    iput-object p1, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/email/activity/ToolBarScrollView;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/email/activity/ToolBarScrollView;->mToolBarScrollViewListener:Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->currentState:I

    invoke-virtual {p0, v2}, Lcom/android/email/activity/ToolBarScrollView;->setSmoothScrollingEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/email/activity/ToolBarScrollView;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setVerticalScrollBarEnabled(Z)V

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/email/activity/ToolBarScrollView$Gesture;

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/ToolBarScrollView$Gesture;-><init>(Lcom/android/email/activity/ToolBarScrollView;Lcom/android/email/activity/ToolBarScrollView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Lcom/android/email/activity/ToolBarScrollView;->init()V

    return-void
.end method

.method private ChangeFontSizeDialog()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/email/activity/ToolBarScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08020a

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getCurrentFontSize()I

    move-result v3

    iput v3, p0, Lcom/android/email/activity/ToolBarScrollView;->FontSize:I

    iget v3, p0, Lcom/android/email/activity/ToolBarScrollView;->FontSize:I

    add-int/lit8 v3, v3, -0x1

    new-instance v4, Lcom/android/email/activity/ToolBarScrollView$5;

    invoke-direct {v4, p0}, Lcom/android/email/activity/ToolBarScrollView$5;-><init>(Lcom/android/email/activity/ToolBarScrollView;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/ToolBarScrollView;)Lcom/android/email/activity/ColorPickerDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    return-object v0
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/email/activity/ToolBarScrollView;->FONT_SIZE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/ToolBarScrollView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/ToolBarScrollView;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/ToolBarScrollView;)Landroid/webkit/HtmlComposerView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/ToolBarScrollView;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/ToolBarScrollView;->OldFontColor:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/ToolBarScrollView;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/ToolBarScrollView;->OldPicFontColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/ToolBarScrollView;)Lcom/android/email/activity/ColorPickerDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/ToolBarScrollView;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/ToolBarScrollView;->OldBGColor:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/ToolBarScrollView;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/ToolBarScrollView;->OldPicBGColor:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/email/activity/ToolBarScrollView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/ToolBarScrollView;->mIsInterceptionTrue:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/email/activity/ToolBarScrollView;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/ToolBarScrollView;->FontSize:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/email/activity/ToolBarScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/ToolBarScrollView;->FontSize:I

    return p1
.end method

.method private createDialog(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/ToolBarScrollView;->OldFontColor:I

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->GetCurColorIdx()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/ToolBarScrollView;->OldPicFontColor:I

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->show()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/ToolBarScrollView;->OldBGColor:I

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->GetCurColorIdx()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/ToolBarScrollView;->OldPicBGColor:I

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f10025d
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 10

    const/4 v9, -0x1

    const/16 v8, 0xff

    const/4 v7, -0x2

    const v5, 0x3f19999a

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f040096

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100256

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    const v3, 0x7f100258

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    const v3, 0x7f100259

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    const v3, 0x7f10025a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    const v3, 0x7f10025b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    const v3, 0x7f10025c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    const v3, 0x7f10025d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const v3, 0x7f10025f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorPreview:Landroid/widget/LinearLayout;

    const v3, 0x7f100260

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const v3, 0x7f100262

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorPreview:Landroid/widget/LinearLayout;

    const v3, 0x7f100263

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const-string v3, "VZW_LTE"

    invoke-static {v3}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x13

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v2, v1}, Lcom/android/email/activity/ToolBarScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/android/email/activity/ColorPickerDialog;

    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/email/activity/ColorPickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v3, v6}, Lcom/android/email/activity/ColorPickerDialog;->setIcon(I)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    const v4, 0x7f080212

    invoke-virtual {v3, v4}, Lcom/android/email/activity/ColorPickerDialog;->setTitle(I)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    const v5, 0x7f080042

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/ToolBarScrollView$1;

    invoke-direct {v5, p0}, Lcom/android/email/activity/ToolBarScrollView$1;-><init>(Lcom/android/email/activity/ToolBarScrollView;)V

    invoke-virtual {v3, v9, v4, v5}, Lcom/android/email/activity/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    const v5, 0x7f080043

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/ToolBarScrollView$2;

    invoke-direct {v5, p0}, Lcom/android/email/activity/ToolBarScrollView$2;-><init>(Lcom/android/email/activity/ToolBarScrollView;)V

    invoke-virtual {v3, v7, v4, v5}, Lcom/android/email/activity/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v3}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/email/activity/ColorPickerDialog;->SetSelectedColor(I)V

    :cond_2
    new-instance v3, Lcom/android/email/activity/ColorPickerDialog;

    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/email/activity/ColorPickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v3, v6}, Lcom/android/email/activity/ColorPickerDialog;->setIcon(I)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    const v4, 0x7f080213

    invoke-virtual {v3, v4}, Lcom/android/email/activity/ColorPickerDialog;->setTitle(I)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    const v5, 0x7f080042

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/ToolBarScrollView$3;

    invoke-direct {v5, p0}, Lcom/android/email/activity/ToolBarScrollView$3;-><init>(Lcom/android/email/activity/ToolBarScrollView;)V

    invoke-virtual {v3, v9, v4, v5}, Lcom/android/email/activity/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    iget-object v4, p0, Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;

    const v5, 0x7f080043

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/ToolBarScrollView$4;

    invoke-direct {v5, p0}, Lcom/android/email/activity/ToolBarScrollView$4;-><init>(Lcom/android/email/activity/ToolBarScrollView;)V

    invoke-virtual {v3, v7, v4, v5}, Lcom/android/email/activity/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v3}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/email/activity/ColorPickerDialog;->SetSelectedColor(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public SetEASIconDisplay(Z)V
    .locals 0

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method public changeSpellcheckBtnState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnSpellCheck:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    return-void
.end method

.method public changeToolBarFontBgColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ColorPickerDialog;->SetSelectedColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public changeToolBarFontColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ColorPickerDialog;->SetSelectedColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public changeToolBarState(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput p1, p0, Lcom/android/email/activity/ToolBarScrollView;->currentState:I

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    :goto_1
    sget-boolean v0, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ToolBarScrollView;->changeSpellcheckBtnState(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_1
.end method

.method public getToolBarFontBgColor()I
    .locals 2

    const/16 v1, 0xff

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0
.end method

.method public getToolBarFontColor()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0
.end method

.method public getToolBarState()I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/ToolBarScrollView;->currentState:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const v2, 0x3f19999a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->undo()V

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->canUndo()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->redo()V

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->canRedo()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/ToolBarScrollView;->ChangeFontSizeDialog()V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose;->onComposerInsert()V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->toggleBold()V

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->toggleItalic()V

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/ToolBarScrollView;->testResult:I

    goto/16 :goto_0

    :pswitch_7
    const v1, 0x7f10025d

    invoke-direct {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->createDialog(I)V

    goto/16 :goto_0

    :pswitch_8
    const v1, 0x7f100260

    invoke-direct {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->createDialog(I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->onSpellCheck()Z

    sget-boolean v1, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeSpellcheckBtnState(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100256
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mIsInterceptionTrue:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mIsInterceptionTrue:Z

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    iget-object v2, p0, Lcom/android/email/activity/ToolBarScrollView;->mToolBarScrollViewListener:Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/ToolBarScrollView;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/email/activity/ToolBarScrollView;->computeHorizontalScrollRange()I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/ToolBarScrollView;->mToolBarScrollViewListener:Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-interface {v2, v3, v4}, Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;->leftRightEdge(FF)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Lcom/android/email/activity/ToolBarScrollView;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/email/activity/ToolBarScrollView;->computeHorizontalScrollRange()I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/ToolBarScrollView;->mToolBarScrollViewListener:Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-interface {v2, v3, v4}, Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;->leftRightEdge(FF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    return-void
.end method
