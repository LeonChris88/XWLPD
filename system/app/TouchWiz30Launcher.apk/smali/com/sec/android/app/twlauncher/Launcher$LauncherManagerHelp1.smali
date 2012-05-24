.class Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherManagerHelp1"
.end annotation


# instance fields
.field private mDone:Landroid/widget/Button;

.field private mDontShowAgain:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->mDontShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->dialogRes(Z)V

    return-void
.end method

.method private dialogRes(Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->help1DlgRes(Z)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected createDialog()Landroid/app/Dialog;
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v4, 0x7f030011

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f06003b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->mDontShowAgain:Landroid/widget/CheckBox;

    const v3, 0x7f06003c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->mDone:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->mDone:Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$2;-><init>(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->help1DlgRes(Z)V

    return-void
.end method
