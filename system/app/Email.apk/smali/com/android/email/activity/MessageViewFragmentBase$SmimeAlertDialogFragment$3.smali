.class Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$3;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$3;->this$0:Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    sput-boolean v3, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialogCancelled:Z

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$3;->this$0:Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Controller;->loadMoreCancel()V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$3;->this$0:Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return v3
.end method
