.class public Lcom/android/email/activity/AccountFolderListItem;
.super Landroid/widget/LinearLayout;
.source "AccountFolderListItem.java"


# instance fields
.field public mAccountId:J

.field private mAdapter:Lcom/android/email/activity/AccountsAdapter;

.field private mCachedViewPositions:Z

.field private mDownEvent:Z

.field private mFolderLeft:I

.field private mHasFolderButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bindViewInit(Lcom/android/email/activity/AccountsAdapter;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/email/activity/AccountFolderListItem;->mAdapter:Lcom/android/email/activity/AccountsAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/AccountFolderListItem;->mCachedViewPositions:Z

    iput-boolean p2, p0, Lcom/android/email/activity/AccountFolderListItem;->mHasFolderButton:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/email/activity/AccountFolderListItem;->mAdapter:Lcom/android/email/activity/AccountsAdapter;

    iget-wide v6, p0, Lcom/android/email/activity/AccountFolderListItem;->mAccountId:J

    invoke-virtual {v5, v6, v7}, Lcom/android/email/activity/AccountsAdapter;->isOnDeletingAccountView(J)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    :goto_0
    return v1

    :cond_0
    iget-boolean v5, p0, Lcom/android/email/activity/AccountFolderListItem;->mHasFolderButton:Z

    if-nez v5, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    iget-boolean v5, p0, Lcom/android/email/activity/AccountFolderListItem;->mCachedViewPositions:Z

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderListItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x40a0

    mul-float/2addr v5, v2

    float-to-double v5, v5

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v0, v5

    const v5, 0x7f10000f

    invoke-virtual {p0, v5}, Lcom/android/email/activity/AccountFolderListItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v0

    iput v5, p0, Lcom/android/email/activity/AccountFolderListItem;->mFolderLeft:I

    iput-boolean v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mCachedViewPositions:Z

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderListItem;->postInvalidate()V

    goto :goto_0

    :pswitch_1
    iput-boolean v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mDownEvent:Z

    iget v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mFolderLeft:I

    if-le v3, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mDownEvent:Z

    goto :goto_1

    :pswitch_3
    iget-boolean v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mDownEvent:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mFolderLeft:I

    if-le v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mAdapter:Lcom/android/email/activity/AccountsAdapter;

    invoke-virtual {v4, p0}, Lcom/android/email/activity/AccountsAdapter;->onClickFolder(Lcom/android/email/activity/AccountFolderListItem;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
