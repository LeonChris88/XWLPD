.class public Lcom/android/calendar/ToBtnLayout;
.super Landroid/widget/ScrollView;
.source "ToBtnLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ToBtnLayout$OnConfigurationChangedListener;
    }
.end annotation


# instance fields
.field private mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

.field private mConfigListener:Lcom/android/calendar/ToBtnLayout$OnConfigurationChangedListener;

.field private mContext:Landroid/content/Context;

.field private mCurLines:I

.field private mDefaultRowHeight:I

.field private mMaxLines:I

.field private mPosY:I

.field private mToBtnPanel:Landroid/widget/AbsoluteLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x2e

    iput v0, p0, Lcom/android/calendar/ToBtnLayout;->mDefaultRowHeight:I

    iput v1, p0, Lcom/android/calendar/ToBtnLayout;->mPosY:I

    iput-object v2, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    iput v1, p0, Lcom/android/calendar/ToBtnLayout;->mCurLines:I

    iput-object v2, p0, Lcom/android/calendar/ToBtnLayout;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iput-object p1, p0, Lcom/android/calendar/ToBtnLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->IsScreenPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/android/calendar/ToBtnLayout;->mMaxLines:I

    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/ToBtnLayout;->mDefaultRowHeight:I

    new-instance v0, Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p0, v0}, Lcom/android/calendar/ToBtnLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/android/calendar/ToBtnLayout;->setSmoothScrollingEnabled(Z)V

    invoke-virtual {p0, v4}, Lcom/android/calendar/ToBtnLayout;->setFillViewport(Z)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public addButton(Landroid/view/View;ILandroid/widget/AbsoluteLayout$LayoutParams;)V
    .locals 4

    iget v2, p3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v2, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget v2, p3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v3, p0, Lcom/android/calendar/ToBtnLayout;->mDefaultRowHeight:I

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/calendar/ToBtnLayout;->mCurLines:I

    invoke-virtual {p0}, Lcom/android/calendar/ToBtnLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/android/calendar/ToBtnLayout;->mDefaultRowHeight:I

    iget v3, p0, Lcom/android/calendar/ToBtnLayout;->mCurLines:I

    mul-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/ToBtnLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getToButtonCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->IsScreenPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/android/calendar/ToBtnLayout;->mMaxLines:I

    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->onSizeChanged()V

    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mConfigListener:Lcom/android/calendar/ToBtnLayout$OnConfigurationChangedListener;

    invoke-interface {v0}, Lcom/android/calendar/ToBtnLayout$OnConfigurationChangedListener;->onConfigurationChanged()V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public releaseResources()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    :cond_0
    iput-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iput-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mConfigListener:Lcom/android/calendar/ToBtnLayout$OnConfigurationChangedListener;

    return-void
.end method

.method public removeAllButton()V
    .locals 5

    const/4 v4, -0x2

    iget-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p0, v1}, Lcom/android/calendar/ToBtnLayout;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    new-instance v1, Landroid/widget/AbsoluteLayout;

    iget-object v2, p0, Lcom/android/calendar/ToBtnLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p0, v1}, Lcom/android/calendar/ToBtnLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/ToBtnLayout;->mCurLines:I

    invoke-virtual {p0}, Lcom/android/calendar/ToBtnLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/ToBtnLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setConfigListener(Lcom/android/calendar/ComposeHeaderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ToBtnLayout;->mConfigListener:Lcom/android/calendar/ToBtnLayout$OnConfigurationChangedListener;

    return-void
.end method

.method public setParentClass(Lcom/android/calendar/ComposeHeaderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ToBtnLayout;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    return-void
.end method
