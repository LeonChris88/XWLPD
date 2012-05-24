.class Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;
.super Landroid/os/AsyncTask;
.source "MessageFileViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageFileViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadFileMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMessageUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/email/activity/MessageFileViewFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageFileViewFragment;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;->this$0:Lcom/android/email/activity/MessageFileViewFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;->mMessageUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    :goto_0
    return-object v4

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;->this$0:Lcom/android/email/activity/MessageFileViewFragment;

    iget-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;->this$0:Lcom/android/email/activity/MessageFileViewFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageFileViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;->mMessageUri:Landroid/net/Uri;

    sget v3, Lcom/android/email/activity/MessageFileViewFragment;->EML_ACCOUNTID:I

    invoke-virtual {v1, v2, v3}, Lcom/android/email/Controller;->loadMessageFromUri(Landroid/net/Uri;I)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageFileViewFragment;->access$002(Lcom/android/email/activity/MessageFileViewFragment;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;->this$0:Lcom/android/email/activity/MessageFileViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageFileViewFragment;->loadMessageIfResumed()V

    goto :goto_0
.end method
