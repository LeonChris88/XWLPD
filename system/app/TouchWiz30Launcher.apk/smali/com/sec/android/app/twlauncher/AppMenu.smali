.class public Lcom/sec/android/app/twlauncher/AppMenu;
.super Landroid/view/ViewGroup;
.source "AppMenu.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/AppMenu$Animate;
    }
.end annotation


# instance fields
.field private mAppHeight:I

.field private mAppWidth:I

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

.field private mColumnNum:I

.field private mEnabledChildAnimation:Z

.field private mHasFolderOpen:Z

.field private mItemsOnPage:I

.field private mLRPadding:I

.field protected mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mOrientation:I

.field private mScreenClipExtendedEdge:I

.field private mSkiaDrawing:Z

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopOffset:I

.field private mVerticalSpace:I

.field private mWasShifted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTmpRect:Landroid/graphics/Rect;

    iput v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mScreenClipExtendedEdge:I

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mSkiaDrawing:Z

    iput p2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemsOnPage:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemsOnPage:I

    new-array v1, v1, [Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->init()V

    return-void
.end method

.method private init()V
    .locals 7

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v3, -0x1

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    if-eq v5, v6, :cond_0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    iput v5, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    const v5, 0x7f0b0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    const v5, 0x7f0b001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    const v5, 0x7f0b000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    const v5, 0x7f0b000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput v3, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemsOnPage:I

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    new-instance v6, Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    invoke-direct {v6, p0}, Lcom/sec/android/app/twlauncher/AppMenu$Animate;-><init>(Lcom/sec/android/app/twlauncher/AppMenu;)V

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setAnimationCacheEnabled(Z)V

    return-void
.end method


# virtual methods
.method cellToPoint(I[I)V
    .locals 6

    iget v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    div-int v0, p1, v2

    iget v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    rem-int v1, p1, v2

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    aput v3, p2, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    aput v3, p2, v2

    return-void
.end method

.method cellToPoint(Landroid/view/View;[I)V
    .locals 4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->cellToPoint(I[I)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    aput v3, p2, v2

    const/4 v2, 0x1

    iget v3, v1, Landroid/graphics/Rect;->top:I

    aput v3, p2, v2

    goto :goto_0
.end method

.method public clearFocus()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->clearFocus()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolder;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/UserFolder;->setDescendantFocusability(I)V

    invoke-super {p0}, Landroid/view/ViewGroup;->clearFocus()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolder;->setDescendantFocusability(I)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mSkiaDrawing:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScrollX()I

    move-result v8

    sub-int v3, v9, v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getMeasuredWidth()I

    move-result v7

    :goto_0
    if-nez p3, :cond_0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    :cond_0
    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int v2, v3, v8

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int v5, v2, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mScreenClipExtendedEdge:I

    add-int/2addr v8, v7

    if-ge v2, v8, :cond_1

    iget v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mScreenClipExtendedEdge:I

    neg-int v8, v8

    if-gt v5, v8, :cond_3

    :cond_1
    if-nez p2, :cond_3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/DragLayer;->getWidth()I

    move-result v7

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    instance-of v8, v6, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    check-cast v6, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    invoke-interface {v6, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v8

    or-int/2addr v4, v8

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto :goto_2

    :cond_5
    return v4
.end method

.method public freeResources()V
    .locals 6

    const-string v4, "AppMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freeResources "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->cancelPreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->cancelPreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    :cond_0
    instance-of v3, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->freeResources()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-nez v3, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolder;

    if-nez v3, :cond_1

    const-string v3, "DebugPlacement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Owner = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public getChildHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    return v0
.end method

.method public getChildWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    return v0
.end method

.method public getLRPadding()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    return v0
.end method

.method public getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->hasFolderOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolder;

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getWasShifted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mWasShifted:Z

    return v0
.end method

.method public hasFolderOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mHasFolderOpen:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTmpRect:Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v6

    iget v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    const/4 v0, 0x0

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mHasFolderOpen:Z

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    instance-of v11, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->stop()V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_0

    invoke-virtual {v1, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    add-int v11, v3, v5

    add-int v12, v4, v2

    invoke-virtual {v8, v3, v4, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEnabledChildAnimation:Z

    if-eqz v11, :cond_2

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    add-int v11, v3, v5

    add-int v12, v4, v2

    invoke-virtual {v9, v3, v4, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    aget-object v11, v11, v7

    const/16 v12, 0x12c

    invoke-virtual {v11, v1, v9, v12}, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;I)V

    :goto_1
    add-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    iget v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    rem-int v11, v0, v11

    if-nez v11, :cond_0

    add-int v11, v4, v2

    add-int v4, v11, v10

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    :cond_0
    instance-of v11, v1, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v11, :cond_1

    sub-int v5, p4, p2

    sub-int v2, p5, p3

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12, v5, v2}, Landroid/view/View;->layout(IIII)V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mHasFolderOpen:Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    add-int v11, v3, v5

    add-int v12, v4, v2

    invoke-virtual {v1, v3, v4, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    const/high16 v10, 0x4000

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v7, v8

    iget v9, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    div-int/2addr v8, v9

    iput v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v8, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getFolderMeasuredHeight()I

    move-result v4

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, p1, v8}, Landroid/view/View;->measure(II)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeMissingApps(Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    instance-of v4, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v4, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public setEnabledChildAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEnabledChildAnimation:Z

    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-void
.end method

.method public setScreenClipExtendedEdge(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mScreenClipExtendedEdge:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolder;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/UserFolder;->setDescendantFocusability(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolder;->setDescendantFocusability(I)V

    goto :goto_0
.end method

.method public setWasShifted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mWasShifted:Z

    return-void
.end method
