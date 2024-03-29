.class Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;
.super Landroid/widget/FrameLayout;
.source "AddToWorkspaceBackground.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;
    }
.end annotation


# instance fields
.field private mHeightProviders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->mHeightProviders:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->mHeightProviders:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->mHeightProviders:Ljava/util/LinkedList;

    return-void
.end method

.method private getHeightSum()F
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->mHeightProviders:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;

    invoke-interface {v1}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;->getBackgroundHeight()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public addHeightProvider(Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->mHeightProviders:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 12

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->getHeightSum()F

    move-result v5

    cmpl-float v8, v5, v11

    if-lez v8, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    const v8, 0x3f4ccccd

    invoke-virtual {p1, v11, v11, v11, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFFF)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->getBottom()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p1, v11, v8, v9, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->getChildCount()I

    move-result v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_3

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_2

    :cond_1
    :try_start_0
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    move-object v4, v0

    invoke-virtual {v1}, Landroid/view/View;->computeScroll()V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-interface {v4, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v8, "AddToWorkspaceBackground"

    const-string v9, "Child is not of type GLSurfaceViewGroup.DispatchDrawGL"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    cmpl-float v8, v5, v11

    if-nez v8, :cond_4

    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->setVisibility(I)V

    :cond_4
    return v7
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method
