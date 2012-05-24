.class public Lcom/sec/android/app/twlauncher/TransRef;
.super Ljava/lang/Object;
.source "TransRef.java"


# static fields
.field private static final mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/TransRef;",
            ">;"
        }
    .end annotation
.end field

.field private static final ploc:[I

.field private static final vloc:[I


# instance fields
.field private mAbsRect:Landroid/graphics/Rect;

.field private mTransRect:Landroid/graphics/Rect;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/twlauncher/TransRef;->mObjects:Ljava/util/List;

    new-array v0, v2, [I

    sput-object v0, Lcom/sec/android/app/twlauncher/TransRef;->vloc:[I

    new-array v0, v2, [I

    sput-object v0, Lcom/sec/android/app/twlauncher/TransRef;->ploc:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/TransRef;->mTransRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/TransRef;->mAbsRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/TransRef;->mView:Landroid/view/View;

    return-void
.end method

.method public static releaseTransRef(Lcom/sec/android/app/twlauncher/TransRef;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/twlauncher/TransRef;->mObjects:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/TransRef;->mView:Landroid/view/View;

    return-void
.end method

.method public static requestTransRef(IIIIIIII)Lcom/sec/android/app/twlauncher/TransRef;
    .locals 4

    sget-object v2, Lcom/sec/android/app/twlauncher/TransRef;->mObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v2, Lcom/sec/android/app/twlauncher/TransRef;->mObjects:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/TransRef;

    :goto_0
    iget-object v2, v0, Lcom/sec/android/app/twlauncher/TransRef;->mTransRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p4, p5, p6, p7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/TransRef;->mAbsRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p0, p1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sec/android/app/twlauncher/TransRef;->mView:Landroid/view/View;

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/TransRef;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/TransRef;-><init>()V

    goto :goto_0
.end method

.method public static requestTransRef(Landroid/view/View;IIII)Lcom/sec/android/app/twlauncher/TransRef;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v4, Lcom/sec/android/app/twlauncher/TransRef;->mObjects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v4, Lcom/sec/android/app/twlauncher/TransRef;->mObjects:Ljava/util/List;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/TransRef;

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    sget-object v5, Lcom/sec/android/app/twlauncher/TransRef;->ploc:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-object v4, Lcom/sec/android/app/twlauncher/TransRef;->vloc:[I

    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-object v4, Lcom/sec/android/app/twlauncher/TransRef;->vloc:[I

    aget v4, v4, v6

    sget-object v5, Lcom/sec/android/app/twlauncher/TransRef;->ploc:[I

    aget v5, v5, v6

    sub-int v2, v4, v5

    sget-object v4, Lcom/sec/android/app/twlauncher/TransRef;->vloc:[I

    aget v4, v4, v7

    sget-object v5, Lcom/sec/android/app/twlauncher/TransRef;->ploc:[I

    aget v5, v5, v7

    sub-int v3, v4, v5

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/TransRef;->mTransRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/TransRef;->mAbsRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iput-object p0, v0, Lcom/sec/android/app/twlauncher/TransRef;->mView:Landroid/view/View;

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/TransRef;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/TransRef;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public adjustEventToView(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/TransRef;->mapXToOriginal(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/TransRef;->mapYToOriginal(I)I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-void
.end method

.method public detectAbsCollision(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TransRef;->mAbsRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public detectTransCollision(Landroid/graphics/Point;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TransRef;->mTransRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public detectTransCollision(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TransRef;->mTransRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public getAbsRefRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TransRef;->mAbsRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTransRefRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TransRef;->mTransRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TransRef;->mView:Landroid/view/View;

    return-object v0
.end method

.method public mapXToOriginal(I)I
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TransRef;->mTransRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TransRef;->mAbsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TransRef;->mTransRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TransRef;->mAbsRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    return v0
.end method

.method public mapYToOriginal(I)I
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TransRef;->mTransRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v0, p1, v1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TransRef;->mAbsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TransRef;->mTransRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TransRef;->mAbsRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    return v0
.end method
