.class Lcom/android/email/activity/MailboxList$6;
.super Ljava/lang/Object;
.source "MailboxList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxList;->renameMailbox()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxList;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxList;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MailboxList$6;->this$0:Lcom/android/email/activity/MailboxList;

    iput-object p2, p0, Lcom/android/email/activity/MailboxList$6;->val$text:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/android/email/activity/MailboxList$6;->val$text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MailboxList$6;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/MailboxList$6;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2, v1}, Lcom/android/email/activity/MailboxList;->access$402(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/MailboxList$6;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$500(Lcom/android/email/activity/MailboxList;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MailboxList$6;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v2, p0, Lcom/android/email/activity/MailboxList$6;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v3, p0, Lcom/android/email/activity/MailboxList$6;->this$0:Lcom/android/email/activity/MailboxList;

    const v4, 0x7f080501

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$700(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/MailboxList$6;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$800(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->renameFolder(Ljava/lang/String;J)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$6;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$900(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MailboxList$6;->this$0:Lcom/android/email/activity/MailboxList;

    const v4, 0x7f080369

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
