.class Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;
.super Ljava/lang/Object;
.source "AccountCheckSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

.field final synthetic val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;->val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;->val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$100(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;->val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    return-void
.end method
