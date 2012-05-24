.class Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBodyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/String;

.field private mErrorLoadingMessageBody:Z

.field private mExecutePatternMatch:Z

.field private mId:J

.field private mLoadAttach:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V
    .locals 2

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mData:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    iput-boolean p4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mLoadAttach:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mExecutePatternMatch:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 12

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-nez v3, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {v0, v3, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->getIntergratedHTML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    const-string v7, "[lL][iI][nN][eE](-|\\s)?[hH][eE][iI][gG][hH][tT]\\s?(:|=)\\s?[^;|\\\"]+\\s?"

    const-string v8, "line-height:100%"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "(?<=[Ff][Oo][Nn][Tt]:\\s?\\w{2,10})(?:/\\w+\\%?)"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mLoadAttach:Z

    invoke-static {v7, v4, v0, v8}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3000(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mData:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_0
    return-object v6

    :cond_4
    iget-wide v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    iget-object v9, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5

    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LoadBodyTask mId = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], mMessageId = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v7, "Email"

    const-string v8, "Exception while loading message body"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v11, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mErrorLoadingMessageBody:Z

    goto :goto_0

    :cond_5
    const/4 v7, 0x2

    :try_start_1
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v7

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 12

    const/4 v8, 0x0

    const/4 v11, 0x1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Email"

    const-string v2, "onPostExecute : LoadBodyTask is already is canceled!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mErrorLoadingMessageBody:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f080085

    invoke-static {v0, v2, v11}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    goto :goto_0

    :cond_4
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v0, :cond_6

    const/4 v9, 0x0

    :cond_6
    if-eqz v9, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email://LoadBodyTask/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showHTMLITPolicyToast()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    iput-object v10, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mData:Ljava/lang/String;

    :cond_7
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadBodyTask - loadDataWithBaseURL : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mData:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3202(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseHistoryUrl()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mData:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showHTMLITPolicyToast()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3302(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mLoadAttach:Z

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->loadContentFromServer(Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mLoadAttach:Z

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mLoadAttach:Z

    invoke-direct {v2, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3402(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Long;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_b
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mExecutePatternMatch:Z

    if-ne v0, v11, :cond_c

    aget-object v0, p1, v11

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    aget-object v4, p1, v8

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mData:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-direct/range {v2 .. v8}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3502(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    :goto_3
    :try_start_0
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/email/ViewPatternMatching;->pmInit(Landroid/content/Context;IJ)V

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;

    const/16 v2, 0xbb8

    invoke-virtual {v0, v2}, Lcom/android/email/ViewPatternMatching;->pmSettimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0, v11}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3602(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onPostLoadBody()V

    goto/16 :goto_0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mData:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mData:Ljava/lang/String;

    aget-object v5, p1, v11

    iget-wide v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-direct/range {v2 .. v8}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3502(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4
.end method
