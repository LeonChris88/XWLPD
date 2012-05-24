.class Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "unPhanAnimLstnr"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimEnd(Lcom/sec/android/app/twlauncher/GLAnim;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLAnim;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    :cond_0
    return-void
.end method

.method public onAnimStart(Lcom/sec/android/app/twlauncher/GLAnim;)V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLAnim;->getDst()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLAnim;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/GLAnim;->setDst(Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method
