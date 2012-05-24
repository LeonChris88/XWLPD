.class public Lcom/android/email/activity/ToolBarView;
.super Landroid/widget/FrameLayout;
.source "ToolBarView.java"

# interfaces
.implements Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mHtmlComposerView:Landroid/webkit/HtmlComposerView;

.field private mToolBarScrollView:Lcom/android/email/activity/ToolBarScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/ToolBarView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    iput-object p1, p0, Lcom/android/email/activity/ToolBarView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/email/activity/ToolBarView;->init()V

    return-void
.end method

.method private createEdge()V
    .locals 4

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x33

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x35

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/ToolBarView;->createEdge()V

    return-void
.end method

.method private setToolBarScrollView()V
    .locals 3

    new-instance v0, Lcom/android/email/activity/ToolBarScrollView;

    iget-object v1, p0, Lcom/android/email/activity/ToolBarView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/ToolBarView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/email/activity/ToolBarScrollView;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/email/activity/ToolBarScrollView$ToolBarScrollViewListener;)V

    iput-object v0, p0, Lcom/android/email/activity/ToolBarView;->mToolBarScrollView:Lcom/android/email/activity/ToolBarScrollView;

    iget-object v0, p0, Lcom/android/email/activity/ToolBarView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/ToolBarView;->mToolBarScrollView:Lcom/android/email/activity/ToolBarScrollView;

    iget-object v1, p0, Lcom/android/email/activity/ToolBarView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/ToolBarView;->mToolBarScrollView:Lcom/android/email/activity/ToolBarScrollView;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ToolBarView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ToolBarView;->mToolBarScrollView:Lcom/android/email/activity/ToolBarScrollView;

    return-object v0
.end method

.method public leftRightEdge(FF)V
    .locals 0

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ToolBarView;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/email/activity/ToolBarView;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/email/activity/ToolBarView;->setToolBarScrollView()V

    :cond_0
    return-void
.end method

.method public setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/ToolBarView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    return-void
.end method
