.class public Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/CustomViewFlipper$CustomFlipView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;,
        Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;
    }
.end annotation


# static fields
.field private static mTransparent:Landroid/graphics/Bitmap;


# instance fields
.field private customDrawLock:Ljava/lang/Object;

.field private mCustomCache:Landroid/graphics/Bitmap;

.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsCustomDrawing:Z

.field private mOnUpdateListener:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;

.field private mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

.field private mUpdated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->customDrawLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mUpdated:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setDrawingCacheEnabled(Z)V

    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v3, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setChildrenDrawingCacheEnabled(Z)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setPersistentDrawingCache(I)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)Landroid/view/ViewParent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private buildCustomCache()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    const-string v2, "LauncherAppWidgetHostView"

    const-string v3, "Fail to create custom cache bitmap!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->customDrawLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->draw(Landroid/graphics/Canvas;)V

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private postCheckForLongClick()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;-><init>(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;->rememberWindowAttachCount()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public buildDrawingCache(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->customDrawLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->buildDrawingCache(Z)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelLongPress()V
    .locals 1

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method destroyLauncherReferences()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setOnUpdateListener(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LauncherAppWidgetHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchRestoreInstanceState: widgetid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LauncherAppWidgetHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSaveInstanceState: widgetid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->customDrawLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mUpdated:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mUpdated:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mOnUpdateListener:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mOnUpdateListener:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;->onWidgetUpdated(Lcom/sec/android/app/twlauncher/CustomViewFlipper$CustomFlipView;)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getCustomCache()Landroid/graphics/Bitmap;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->buildCustomCache()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->customDrawLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    if-nez v1, :cond_0

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCustomFlipEnd()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    return-void
.end method

.method public onCustomFlipStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->postCheckForLongClick()V

    goto :goto_0

    :pswitch_2
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnUpdateListener(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mOnUpdateListener:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;

    return-void
.end method

.method public declared-synchronized updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->isRestricted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sTextureUploadLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mUpdated:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->invalidate()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method
