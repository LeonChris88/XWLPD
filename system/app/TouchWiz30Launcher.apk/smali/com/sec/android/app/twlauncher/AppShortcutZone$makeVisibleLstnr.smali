.class Lcom/sec/android/app/twlauncher/AppShortcutZone$makeVisibleLstnr;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AppShortcutZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "makeVisibleLstnr"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$makeVisibleLstnr;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

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

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimStart(Lcom/sec/android/app/twlauncher/GLAnim;)V
    .locals 0

    return-void
.end method
