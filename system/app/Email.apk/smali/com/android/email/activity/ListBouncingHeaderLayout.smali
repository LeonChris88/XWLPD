.class public Lcom/android/email/activity/ListBouncingHeaderLayout;
.super Landroid/widget/FrameLayout;
.source "ListBouncingHeaderLayout.java"


# static fields
.field private static sMessageListHeadTextStateColorDarkTheme:I

.field private static sMessageListHeadTextStateColorWhiteTheme:I

.field private static sMessageListHeadTextTimeColorDarkTheme:I

.field private static sMessageListHeadTextTimeColorWhiteTheme:I


# instance fields
.field private TAG:Ljava/lang/String;

.field mActivity:Landroid/app/Activity;

.field mBgColor:I

.field public mHeader:Landroid/widget/LinearLayout;

.field private final mHeaderParam:Landroid/widget/FrameLayout$LayoutParams;

.field mImageStatus:Landroid/widget/ImageView;

.field mListHeaderShadow:Landroid/view/View;

.field mManageView:Landroid/view/View;

.field mProgress:Landroid/widget/ProgressBar;

.field mResource:Landroid/content/res/Resources;

.field mTextStatus:Landroid/widget/TextView;

.field mTextUpdateTime:Landroid/widget/TextView;

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextStateColorWhiteTheme:I

    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextTimeColorWhiteTheme:I

    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextStateColorDarkTheme:I

    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextTimeColorDarkTheme:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/LayoutInflater;I)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "ListBouncingHeaderLayout"

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mHeader:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextStatus:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextUpdateTime:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mActivity:Landroid/app/Activity;

    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mResource:Landroid/content/res/Resources;

    iput v3, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mBgColor:I

    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mProgress:Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mImageStatus:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mManageView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mListHeaderShadow:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x49

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mHeaderParam:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mResource:Landroid/content/res/Resources;

    sget v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextStateColorWhiteTheme:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextStateColorWhiteTheme:I

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextTimeColorWhiteTheme:I

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextStateColorDarkTheme:I

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextTimeColorDarkTheme:I

    :cond_0
    iput p3, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mBgColor:I

    const v0, 0x7f0400a2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mHeaderParam:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/ListBouncingHeaderLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    const v1, 0x7f10027f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mHeader:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    const v1, 0x7f100283

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    const v1, 0x7f100284

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextUpdateTime:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mBgColor:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextStatus:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextStateColorDarkTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextUpdateTime:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextTimeColorDarkTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    const v1, 0x7f100282

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mProgress:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    const v1, 0x7f100281

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mImageStatus:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    const v1, 0x7f100285

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mListHeaderShadow:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->displayUpdate()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextStatus:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextStateColorWhiteTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextUpdateTime:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextTimeColorWhiteTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public disableHeader()V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disableShadow()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mListHeaderShadow:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mListHeaderShadow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public displayRelease(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f0805a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mImageStatus:Landroid/widget/ImageView;

    const v2, 0x7f0202a7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mImageStatus:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public displayUpdate()V
    .locals 3

    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0804fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mImageStatus:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public enableHeader()V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->TAG:Ljava/lang/String;

    const-string v2, "enableHeader()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableShadow()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mListHeaderShadow:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mListHeaderShadow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getHeaderVisible()I
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setBackgroundColorForHeader(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setLastUpdate(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextUpdateTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextUpdateTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f08030d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextUpdateTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextUpdateTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f0805a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
