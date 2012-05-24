.class Lcom/sec/android/app/twlauncher/Launcher$TextDialog;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextDialog"
.end annotation


# instance fields
.field mId:I

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method createDialog(I)Landroid/app/Dialog;
    .locals 4

    iput p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->mId:I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;-><init>(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;-><init>(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v1

    :sswitch_0
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v3, 0x7f08000a

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f08004d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :sswitch_1
    const v2, 0x7f08004e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :sswitch_2
    const v2, 0x7f080057

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :sswitch_3
    const v2, 0x7f080058

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :sswitch_4
    const v2, 0x7f0800b9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x12 -> :sswitch_4
    .end sparse-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method
