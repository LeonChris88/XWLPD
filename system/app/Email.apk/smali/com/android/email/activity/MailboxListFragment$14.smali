.class Lcom/android/email/activity/MailboxListFragment$14;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxListFragment;->renameMailbox(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxListFragment;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$14;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iput-object p2, p0, Lcom/android/email/activity/MailboxListFragment$14;->val$text:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$14;->val$text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$14;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$14;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1700(Lcom/android/email/activity/MailboxListFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$14;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$14;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$14;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v4, 0x7f080501

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->access$900(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$14;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1100(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->renameFolder(Ljava/lang/String;J)Landroid/os/AsyncTask;

    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$14;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment;->onCancel()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$14;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$14;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v4, 0x7f080369

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method