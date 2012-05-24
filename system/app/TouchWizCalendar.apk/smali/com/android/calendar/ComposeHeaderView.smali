.class public Lcom/android/calendar/ComposeHeaderView;
.super Ljava/lang/Object;
.source "ComposeHeaderView.java"

# interfaces
.implements Lcom/android/calendar/ToBtnLayout$OnConfigurationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ComposeHeaderView$ToButton;
    }
.end annotation


# static fields
.field private static mRecipients:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/ComposeHeaderView$ToButton;",
            ">;"
        }
    .end annotation
.end field

.field private static mToButtonId:I

.field private static sInstance:Lcom/android/calendar/ComposeHeaderView;


# instance fields
.field private final TAG:Ljava/lang/String;

.field invalidEmail:Z

.field private mAlreadyValidatedAddress:Z

.field private mBtnMaxWidthLandscape:I

.field private mBtnMaxWidthLandscapeEas:I

.field private mBtnMaxWidthPortrait:I

.field private mBtnMaxWidthPortraitEas:I

.field private mContext:Landroid/content/Context;

.field private mDefaultRowHeight:I

.field private mDuplicatedRecipientsToast:Landroid/widget/Toast;

.field private mKeepToBoxVisible:Z

.field private mParentActivity:Lcom/android/calendar/EditEvent;

.field private mRecipientAddedToast:Landroid/widget/Toast;

.field private mRecipientLimitToast:Landroid/widget/Toast;

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mScheduleButton:Landroid/view/View;

.field private mSelectedToButtonId:I

.field private mToBtnContainer:Landroid/widget/LinearLayout;

.field private final mToBtnDelHandler:Landroid/os/Handler;

.field private mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

.field mToEdit:Lcom/android/calendar/ConvNameEditText;

.field public final mToEditHandler:Landroid/os/Handler;

.field private mToLayout:Landroid/widget/LinearLayout;

.field private mWrongAttendee:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/ComposeHeaderView;->sInstance:Lcom/android/calendar/ComposeHeaderView;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/EditEvent;Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "ComposeHeaderView"

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->TAG:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/calendar/ComposeHeaderView;->invalidEmail:Z

    iput-boolean v4, p0, Lcom/android/calendar/ComposeHeaderView;->mAlreadyValidatedAddress:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    iput-boolean v4, p0, Lcom/android/calendar/ComposeHeaderView;->mKeepToBoxVisible:Z

    const/16 v1, 0x179

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthPortraitEas:I

    const/16 v1, 0x2b9

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthLandscapeEas:I

    const/16 v1, 0x1ca

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthPortrait:I

    const/16 v1, 0x30a

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthLandscape:I

    const/16 v1, 0x2e

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDefaultRowHeight:I

    new-instance v1, Lcom/android/calendar/ComposeHeaderView$5;

    invoke-direct {v1, p0}, Lcom/android/calendar/ComposeHeaderView$5;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEditHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/calendar/ComposeHeaderView$10;

    invoke-direct {v1, p0}, Lcom/android/calendar/ComposeHeaderView$10;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnDelHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView;->mParentActivity:Lcom/android/calendar/EditEvent;

    iput-object p2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/calendar/ComposeHeaderView;->mRootLayout:Landroid/widget/LinearLayout;

    sput-object p0, Lcom/android/calendar/ComposeHeaderView;->sInstance:Lcom/android/calendar/ComposeHeaderView;

    const v1, 0x7f0f0023

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0027

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/ToBtnLayout;

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v1, p0}, Lcom/android/calendar/ToBtnLayout;->setConfigListener(Lcom/android/calendar/ComposeHeaderView;)V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v1, p0}, Lcom/android/calendar/ToBtnLayout;->setParentClass(Lcom/android/calendar/ComposeHeaderView;)V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0026

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0028

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mScheduleButton:Landroid/view/View;

    const v1, 0x7f0f002a

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/ConvNameEditText;

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->setImeOptions(I)V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1, p0}, Lcom/android/calendar/ConvNameEditText;->setComposeHeaderView(Lcom/android/calendar/ComposeHeaderView;)V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->setSingleLine()V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-instance v2, Lcom/android/calendar/ComposeHeaderView$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/ComposeHeaderView$1;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-instance v2, Lcom/android/calendar/ComposeHeaderView$2;

    invoke-direct {v2, p0}, Lcom/android/calendar/ComposeHeaderView$2;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/ConvNameEditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-instance v2, Lcom/android/calendar/ComposeHeaderView$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/ComposeHeaderView$3;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-instance v2, Lcom/android/calendar/ComposeHeaderView$4;

    invoke-direct {v2, p0}, Lcom/android/calendar/ComposeHeaderView$4;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->clear()V

    sput v4, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthPortraitEas:I

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthLandscapeEas:I

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthPortrait:I

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthLandscape:I

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDefaultRowHeight:I

    return-void
.end method

.method private CheckDuplicateOfRecipient(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    sget-object v3, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-object v3, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$1100(Lcom/android/calendar/ComposeHeaderView$ToButton;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/calendar/ComposeHeaderView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/ComposeHeaderView;->addRecipientFromEditText(ZZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/calendar/ComposeHeaderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/ComposeHeaderView;->mAlreadyValidatedAddress:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/calendar/ComposeHeaderView;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/calendar/ComposeHeaderView;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    return p1
.end method

.method static synthetic access$1500()Ljava/util/SortedMap;
    .locals 1

    sget-object v0, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/ComposeHeaderView;)Lcom/android/calendar/EditEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mParentActivity:Lcom/android/calendar/EditEvent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/ComposeHeaderView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnDelHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/ComposeHeaderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->looseFocusFromEditText()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/ComposeHeaderView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView;->mKeepToBoxVisible:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/calendar/ComposeHeaderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/ComposeHeaderView;->mKeepToBoxVisible:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/calendar/ComposeHeaderView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/ComposeHeaderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->rebuildToBtn()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/calendar/ComposeHeaderView;)Lcom/android/calendar/ToBtnLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/ComposeHeaderView;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/ComposeHeaderView;->removeSpaceAndAddRecipient(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/ComposeHeaderView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addRecipientFromEditText(ZZ)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v2}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_2

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ge v2, v4, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->showErrorMessage()V

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/calendar/ConvNameEditText;->getEmailForContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, v4}, Lcom/android/calendar/ComposeHeaderView;->removeSpaceAndAddRecipient(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private checkRecipientInEditText(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v2}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v2}, Lcom/android/calendar/ToBtnLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v2}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void

    :cond_3
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/calendar/ComposeHeaderView;
    .locals 1

    sget-object v0, Lcom/android/calendar/ComposeHeaderView;->sInstance:Lcom/android/calendar/ComposeHeaderView;

    return-object v0
.end method

.method private looseFocusFromEditText()V
    .locals 4

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->getConvName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private rebuildToBtn()V
    .locals 15

    const/4 v14, 0x0

    const/4 v13, -0x2

    iget-object v11, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v11}, Lcom/android/calendar/ConvNameEditText;->hasFocus()Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v11}, Lcom/android/calendar/ToBtnLayout;->removeAllButton()V

    const/4 v0, 0x4

    sget-object v11, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v11}, Ljava/util/SortedMap;->size()I

    move-result v11

    if-lez v11, :cond_3

    iget-object v11, p0, Lcom/android/calendar/ComposeHeaderView;->mParentActivity:Lcom/android/calendar/EditEvent;

    invoke-virtual {v11}, Lcom/android/calendar/EditEvent;->setScheduleButtonVisible()V

    :goto_0
    iget-object v11, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/calendar/Utils;->IsScreenPortrait(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/calendar/ComposeHeaderView;->mScheduleButton:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_4

    iget v5, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthPortraitEas:I

    :goto_1
    move v6, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    sget-object v11, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v11}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/ComposeHeaderView$ToButton;

    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$1300(Lcom/android/calendar/ComposeHeaderView$ToButton;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$1400(Lcom/android/calendar/ComposeHeaderView$ToButton;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/calendar/Utils;->getNameByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {v1, v7}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$1102(Lcom/android/calendar/ComposeHeaderView$ToButton;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$1100(Lcom/android/calendar/ComposeHeaderView$ToButton;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->refreshToBtntag()V

    :cond_2
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v4, v13, v13, v14, v14}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v4}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/calendar/Utils;->GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v11

    add-int/lit8 v8, v11, 0x14

    const/4 v2, -0x2

    if-le v8, v6, :cond_9

    if-nez v9, :cond_7

    move v2, v6

    const/4 v6, 0x0

    :goto_3
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v9, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iput v10, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget-object v11, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    iget-object v12, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v12}, Lcom/android/calendar/ToBtnLayout;->getToButtonCount()I

    move-result v12

    invoke-virtual {v11, v1, v12, v4}, Lcom/android/calendar/ToBtnLayout;->addButton(Landroid/view/View;ILandroid/widget/AbsoluteLayout$LayoutParams;)V

    if-nez v6, :cond_a

    iget v11, p0, Lcom/android/calendar/ComposeHeaderView;->mDefaultRowHeight:I

    add-int/2addr v10, v11

    const/4 v9, 0x0

    move v6, v5

    goto :goto_2

    :cond_3
    iget-object v11, p0, Lcom/android/calendar/ComposeHeaderView;->mParentActivity:Lcom/android/calendar/EditEvent;

    invoke-virtual {v11}, Lcom/android/calendar/EditEvent;->setScheduleButtonGone()V

    goto/16 :goto_0

    :cond_4
    iget v5, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthPortrait:I

    goto :goto_1

    :cond_5
    iget-object v11, p0, Lcom/android/calendar/ComposeHeaderView;->mScheduleButton:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_6

    iget v5, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthLandscapeEas:I

    goto/16 :goto_1

    :cond_6
    iget v5, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthLandscape:I

    goto/16 :goto_1

    :cond_7
    iget v11, p0, Lcom/android/calendar/ComposeHeaderView;->mDefaultRowHeight:I

    add-int/2addr v10, v11

    const/4 v9, 0x0

    move v6, v5

    if-le v8, v6, :cond_8

    move v2, v6

    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    move v2, v8

    add-int v11, v2, v0

    sub-int/2addr v6, v11

    goto :goto_3

    :cond_9
    move v2, v8

    add-int v11, v2, v0

    sub-int/2addr v6, v11

    goto :goto_3

    :cond_a
    add-int v11, v2, v0

    add-int/2addr v9, v11

    goto/16 :goto_2
.end method

.method private removeSpaceAndAddRecipient(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v6, ","

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/calendar/ConvNameEditText;->getEmailForContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz p4, :cond_2

    iget-boolean v6, p0, Lcom/android/calendar/ComposeHeaderView;->mAlreadyValidatedAddress:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00d3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00d4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/calendar/Utils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/calendar/ComposeHeaderView;->invalidEmail:Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/calendar/ComposeHeaderView;->CheckDuplicateOfRecipient(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v3}, Lcom/android/calendar/Utils;->getNameByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, p2, v3, v5, p3}, Lcom/android/calendar/ComposeHeaderView;->addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v6, p2}, Lcom/android/calendar/ConvNameEditText;->getEmailForContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2, v3, v6, p3}, Lcom/android/calendar/ComposeHeaderView;->addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showErrorMessage()V
    .locals 4

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ToBtnCreateAnim()Landroid/view/animation/AnimationSet;
    .locals 12

    const v1, 0x3f19999a

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v10, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v10}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v10}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v11, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v11
.end method

.method public ToBtnDeleteAnim()Landroid/view/animation/AnimationSet;
    .locals 12

    const/high16 v6, 0x3f00

    const v2, 0x3e99999a

    const/4 v5, 0x1

    const/high16 v1, 0x3f80

    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v10, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v10}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v10}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v11, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v11
.end method

.method public addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11

    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00d5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    :goto_0
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00d5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move-object v9, p2

    if-eqz p3, :cond_2

    move-object p2, p3

    :cond_2
    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00d6

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    :goto_2
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    const v2, 0x7f0a00d6

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2

    :cond_6
    invoke-static {p2}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p2}, Lcom/android/calendar/Utils;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_7

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_7
    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00d6

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    :goto_3
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    const v2, 0x7f0a00d6

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_3

    :cond_a
    iget-boolean v1, p0, Lcom/android/calendar/ComposeHeaderView;->mAlreadyValidatedAddress:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mWrongAttendee:Landroid/widget/Toast;

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00d4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mWrongAttendee:Landroid/widget/Toast;

    :goto_4
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mWrongAttendee:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/ComposeHeaderView;->invalidEmail:Z

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_c
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mWrongAttendee:Landroid/widget/Toast;

    const v2, 0x7f0a00d4

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_4

    :cond_d
    new-instance v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/ComposeHeaderView$ToButton;-><init>(Lcom/android/calendar/ComposeHeaderView;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v1, Lcom/android/calendar/ComposeHeaderView$6;

    invoke-direct {v1, p0}, Lcom/android/calendar/ComposeHeaderView$6;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v1, Lcom/android/calendar/ComposeHeaderView$7;

    invoke-direct {v1, p0}, Lcom/android/calendar/ComposeHeaderView$7;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    sget v2, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->rebuildToBtn()V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v1}, Lcom/android/calendar/ToBtnLayout;->requestLayout()V

    :goto_5
    if-eqz p4, :cond_10

    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {p2}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_e
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientAddedToast:Landroid/widget/Toast;

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00d7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_f

    move-object p1, p2

    :cond_f
    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientAddedToast:Landroid/widget/Toast;

    :goto_6
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientAddedToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_10
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mParentActivity:Lcom/android/calendar/EditEvent;

    iget-object v1, v1, Lcom/android/calendar/EditEvent;->deleteContacts:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mParentActivity:Lcom/android/calendar/EditEvent;

    invoke-virtual {v1}, Lcom/android/calendar/EditEvent;->setScheduleButtonVisible()V

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_11
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/android/calendar/ConvNameEditText;->getConvName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_12
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientAddedToast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00d7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_13

    move-object p1, p2

    :cond_13
    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method public addRecipientQuickly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const v5, 0x7f0a00d5

    const/16 v4, 0x1e

    const/4 v9, 0x1

    const/4 v7, 0x0

    sget v1, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    if-le v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    :goto_0
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_1
    return v7

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    move-object p2, p3

    :cond_3
    invoke-static {p2}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p2}, Lcom/android/calendar/Utils;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :cond_4
    new-instance v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/ComposeHeaderView$ToButton;-><init>(Lcom/android/calendar/ComposeHeaderView;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v1, Lcom/android/calendar/ComposeHeaderView$8;

    invoke-direct {v1, p0}, Lcom/android/calendar/ComposeHeaderView$8;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v1, Lcom/android/calendar/ComposeHeaderView$9;

    invoke-direct {v1, p0}, Lcom/android/calendar/ComposeHeaderView$9;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    sget v2, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mParentActivity:Lcom/android/calendar/EditEvent;

    iget-object v1, v1, Lcom/android/calendar/EditEvent;->deleteContacts:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mParentActivity:Lcom/android/calendar/EditEvent;

    invoke-virtual {v1}, Lcom/android/calendar/EditEvent;->setScheduleButtonVisible()V

    move v7, v9

    goto :goto_1
.end method

.method public addRecipientQuicklyDone()V
    .locals 4

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->rebuildToBtn()V

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v0}, Lcom/android/calendar/ToBtnLayout;->requestLayout()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->getConvName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public clearFocusAllBtn()V
    .locals 6

    const/4 v5, 0x0

    sget-object v3, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setKeepTextFocus(Z)V

    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$1800(Lcom/android/calendar/ComposeHeaderView$ToButton;)V

    invoke-virtual {v0, v5}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setFocusable(Z)V

    invoke-virtual {v0, v5}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, v5}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setKeepTextFocus(Z)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v3}, Lcom/android/calendar/ConvNameEditText;->requestFocus()Z

    return-void
.end method

.method public dismissDropDown()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->dismissDropDown()V

    :cond_0
    return-void
.end method

.method public getNumberOfRecipients()I
    .locals 1

    sget-object v0, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    return v0
.end method

.method public getRecipients(Z)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    if-nez p1, :cond_0

    iget-object v7, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v7}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/calendar/Utils;->IsScreenPortrait(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    :goto_0
    invoke-direct {p0, v8, v7}, Lcom/android/calendar/ComposeHeaderView;->addRecipientFromEditText(ZZ)V

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v7}, Ljava/util/SortedMap;->size()I

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x0

    invoke-direct {p0, v4, v7}, Lcom/android/calendar/ComposeHeaderView;->checkRecipientInEditText(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v7}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    const-string v7, "/,/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v5}, Lcom/android/calendar/ComposeHeaderView;->checkRecipientInEditText(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    const-string v7, "/,/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, v6}, Lcom/android/calendar/ComposeHeaderView;->checkRecipientInEditText(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/~/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getToRecipientLayout()Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->getConvName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSizeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v0}, Lcom/android/calendar/ToBtnLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->rebuildToBtn()V

    :cond_0
    return-void
.end method

.method public procToButtonMenu(I)V
    .locals 5

    sget-object v2, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    iget v3, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v2, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    invoke-virtual {p0, v2}, Lcom/android/calendar/ComposeHeaderView;->removeToBtn(I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->keypadShow(Landroid/content/Context;Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v2}, Lcom/android/calendar/ConvNameEditText;->moveCursorToEnd()V

    sget-object v2, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    iget v3, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->rebuildToBtn()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/android/calendar/Utils;->addToContact(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->rebuildToBtn()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->sendEmail(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0f00d5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public refreshRecipientButton()V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->rebuildToBtn()V

    return-void
.end method

.method public releaseResources()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mRootLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRootLayout:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToLayout:Landroid/widget/LinearLayout;

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v0}, Lcom/android/calendar/ToBtnLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v0}, Lcom/android/calendar/ToBtnLayout;->releaseResources()V

    :cond_2
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->releaseResource()V

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    :cond_3
    sput-object v1, Lcom/android/calendar/ComposeHeaderView;->sInstance:Lcom/android/calendar/ComposeHeaderView;

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientAddedToast:Landroid/widget/Toast;

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mWrongAttendee:Landroid/widget/Toast;

    return-void
.end method

.method public removeToBtn(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/calendar/ComposeHeaderView;->ToBtnDeleteAnim()Landroid/view/animation/AnimationSet;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/ComposeHeaderView$11;

    invoke-direct {v1, p0}, Lcom/android/calendar/ComposeHeaderView$11;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    iget v2, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    iget v2, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/ComposeHeaderView$ToButton;

    invoke-virtual {v1, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public setFocusOnLastRecipientBtn()V
    .locals 5

    const/4 v4, 0x1

    sget-object v2, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v2}, Lcom/android/calendar/ConvNameEditText;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v2}, Lcom/android/calendar/ConvNameEditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v2}, Lcom/android/calendar/ConvNameEditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lcom/android/calendar/ComposeHeaderView;->mKeepToBoxVisible:Z

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v2}, Lcom/android/calendar/ConvNameEditText;->clearComposingText()V

    :cond_1
    sget-object v2, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    invoke-virtual {v0, v4}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setFocusable(Z)V

    invoke-virtual {v0, v4}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->requestFocus()Z

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    goto :goto_0
.end method

.method public setFocusToRecipient()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->requestFocus()Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public validateEmailAddress()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/ComposeHeaderView;->mAlreadyValidatedAddress:Z

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/calendar/ComposeHeaderView;->removeSpaceAndAddRecipient(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :goto_0
    iput-boolean v3, p0, Lcom/android/calendar/ComposeHeaderView;->mAlreadyValidatedAddress:Z

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/calendar/ComposeHeaderView;->invalidEmail:Z

    goto :goto_0
.end method
