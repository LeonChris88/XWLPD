.class Lcom/sec/android/app/twlauncher/DragAnimation$DummyLstnr;
.super Ljava/lang/Object;
.source "DragAnimation.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/DragAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyLstnr"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/DragAnimation;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/DragAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragAnimation$DummyLstnr;->this$0:Lcom/sec/android/app/twlauncher/DragAnimation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/DragAnimation;Lcom/sec/android/app/twlauncher/DragAnimation$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/DragAnimation$DummyLstnr;-><init>(Lcom/sec/android/app/twlauncher/DragAnimation;)V

    return-void
.end method


# virtual methods
.method public onAnimEnd(Lcom/sec/android/app/twlauncher/DragAnimation;FF)V
    .locals 0

    return-void
.end method

.method public onAnimStart(Lcom/sec/android/app/twlauncher/DragAnimation;)V
    .locals 0

    return-void
.end method
