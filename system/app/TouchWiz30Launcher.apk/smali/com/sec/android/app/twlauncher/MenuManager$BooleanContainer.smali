.class Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;
.super Ljava/lang/Object;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BooleanContainer"
.end annotation


# instance fields
.field private mValue:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->mValue:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    return-void
.end method


# virtual methods
.method public get()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->mValue:Z

    return v0
.end method

.method public or(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->mValue:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->mValue:Z

    return-void
.end method

.method public set(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->mValue:Z

    return-void
.end method
