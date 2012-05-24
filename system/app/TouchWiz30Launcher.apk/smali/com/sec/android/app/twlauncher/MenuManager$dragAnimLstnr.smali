.class Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dragAnimLstnr"
.end annotation


# instance fields
.field private mAnimView:Landroid/view/View;

.field private mDragInfo:Ljava/lang/Object;

.field private mSource:Lcom/sec/android/app/twlauncher/DragSource;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->mAnimView:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->mSource:Lcom/sec/android/app/twlauncher/DragSource;

    iput-object p4, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->mDragInfo:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onAnimEnd(Lcom/sec/android/app/twlauncher/DragAnimation;FF)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->mAnimView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->mAnimView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setIsDragging(Z)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->mDragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToNormalModeDelayedIfNeeded(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimStart(Lcom/sec/android/app/twlauncher/DragAnimation;)V
    .locals 0

    return-void
.end method
