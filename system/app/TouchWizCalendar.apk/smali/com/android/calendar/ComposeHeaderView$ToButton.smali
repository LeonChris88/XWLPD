.class public Lcom/android/calendar/ComposeHeaderView$ToButton;
.super Landroid/widget/Button;
.source "ComposeHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ComposeHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToButton"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteButton:Z

.field private mEmail:Ljava/lang/String;

.field private mFormattedNumber:Z

.field private mHeight:I

.field private mKeepTextFocus:Z

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mWidth:I

.field private mXPos:I

.field private mYPos:I

.field final synthetic this$0:Lcom/android/calendar/ComposeHeaderView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/ComposeHeaderView;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-direct {p0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mEmail:Ljava/lang/String;

    iput v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mXPos:I

    iput v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mYPos:I

    iput v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mWidth:I

    iput v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mHeight:I

    iput-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mFormattedNumber:Z

    iput-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mDeleteButton:Z

    iput-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mKeepTextFocus:Z

    iput-object p2, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mContext:Landroid/content/Context;

    const v0, 0x7f0200b1

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setBackgroundResource(I)V

    invoke-virtual {p1}, Lcom/android/calendar/ComposeHeaderView;->ToBtnCreateAnim()Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setAnimation(Landroid/view/animation/Animation;)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setLines(I)V

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->initButton()V

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/ComposeHeaderView;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/ComposeHeaderView$ToButton;-><init>(Lcom/android/calendar/ComposeHeaderView;Landroid/content/Context;)V

    if-nez p4, :cond_0

    iput-boolean v1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mFormattedNumber:Z

    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    :goto_0
    iput-object p5, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mNumber:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mEmail:Ljava/lang/String;

    iput p7, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mXPos:I

    iput p8, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mYPos:I

    invoke-virtual {p0, p3}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setId(I)V

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->refreshToBtntag()V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0, v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setLines(I)V

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->initButton()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mFormattedNumber:Z

    iput-object p4, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/calendar/ComposeHeaderView$ToButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mDeleteButton:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/calendar/ComposeHeaderView$ToButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mDeleteButton:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/ComposeHeaderView$ToButton;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/calendar/ComposeHeaderView$ToButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/calendar/ComposeHeaderView$ToButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mFormattedNumber:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/ComposeHeaderView$ToButton;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/ComposeHeaderView$ToButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->resetDeleteButtonBoolean()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/ComposeHeaderView$ToButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mKeepTextFocus:Z

    return v0
.end method

.method private initButton()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setKeyListen()V

    invoke-virtual {p0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setFocusListen()V

    return-void
.end method

.method private resetDeleteButtonBoolean()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mDeleteButton:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public refreshToBtntag()V
    .locals 4

    const-string v1, "%d;%s;%s;%s"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    aput-object v0, v2, v3

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mEmail:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mNumber:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mEmail:Ljava/lang/String;

    goto :goto_2
.end method

.method public setFocusListen()V
    .locals 1

    new-instance v0, Lcom/android/calendar/ComposeHeaderView$ToButton$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/ComposeHeaderView$ToButton$2;-><init>(Lcom/android/calendar/ComposeHeaderView$ToButton;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public setKeepTextFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mKeepTextFocus:Z

    return-void
.end method

.method public setKeyListen()V
    .locals 1

    new-instance v0, Lcom/android/calendar/ComposeHeaderView$ToButton$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/ComposeHeaderView$ToButton$1;-><init>(Lcom/android/calendar/ComposeHeaderView$ToButton;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
