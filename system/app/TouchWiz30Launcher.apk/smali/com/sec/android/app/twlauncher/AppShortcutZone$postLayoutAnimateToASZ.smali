.class Lcom/sec/android/app/twlauncher/AppShortcutZone$postLayoutAnimateToASZ;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AppShortcutZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "postLayoutAnimateToASZ"
.end annotation


# instance fields
.field private mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

.field private mSrc:Landroid/graphics/PointF;

.field private mView:Lcom/sec/android/app/twlauncher/MenuItemView;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$postLayoutAnimateToASZ;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$postLayoutAnimateToASZ;->mView:Lcom/sec/android/app/twlauncher/MenuItemView;

    iput-object p3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$postLayoutAnimateToASZ;->mSrc:Landroid/graphics/PointF;

    iput-object p4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$postLayoutAnimateToASZ;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$postLayoutAnimateToASZ;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->clearGenericViewAnims(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$postLayoutAnimateToASZ;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$postLayoutAnimateToASZ;->mView:Lcom/sec/android/app/twlauncher/MenuItemView;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$postLayoutAnimateToASZ;->mSrc:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$postLayoutAnimateToASZ;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->animateToASZ(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)Z

    return-void
.end method
