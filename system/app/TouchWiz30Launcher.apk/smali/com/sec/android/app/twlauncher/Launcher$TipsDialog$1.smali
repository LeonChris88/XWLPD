.class Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->createDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->saveMenuMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->saveMenuMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->removeDialog(I)V

    return-void
.end method
