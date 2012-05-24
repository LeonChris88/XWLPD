.class Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckSenderTask"
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
.field private errorCode:I

.field private mTriggered:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->errorCode:I

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->mTriggered:Z

    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->mTriggered:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getContactProviderStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->errorCode:I

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;)Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->mTriggered:Z

    invoke-direct {v3, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    invoke-static {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;)Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->errorCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->mTriggered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$102(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
