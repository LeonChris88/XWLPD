.class Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PatternMatchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mId:J

.field private mPosition:I

.field private mPreHtml:Ljava/lang/String;

.field private mPreText:Ljava/lang/String;

.field private mResultText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mId:J

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreText:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreHtml:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mResultText:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPosition:I

    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreText:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreHtml:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mId:J

    iput p6, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPosition:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreText:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreHtml:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PatternMatchTask mId = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], mMessageId = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Z7App"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while copying downloaded message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreHtml:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, "MessageViewFragmentBase >>"

    const-string v4, "PatternMatchTask : plain text"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreText:Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPosition:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/email/ViewPatternMatching;->pmDataMatching(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mResultText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mResultText:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v3, "MessageViewFragmentBase >>"

    const-string v4, "PatternMatchTask : html"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreHtml:Ljava/lang/String;

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPosition:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/email/ViewPatternMatching;->pmDataMatching(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mResultText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mResultText:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v3, "Z7App"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while pattern matching "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 13

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "Z7App"

    const-string v3, "Pattern Matching is failed"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showHTMLITPolicyToast()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    move-object p1, v12

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getScrollX()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3702(Lcom/android/email/activity/MessageViewFragmentBase;I)I

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getScrollY()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3802(Lcom/android/email/activity/MessageViewFragmentBase;I)I

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageWebView;->setPreserveZoom(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3902(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    if-eqz p1, :cond_4

    move-object v2, p1

    :goto_1
    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "email://PatternMatchTask/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v0, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PatternMatchTask - loadDataWithBaseURL : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3202(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseHistoryUrl()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;

    invoke-virtual {v0}, Lcom/android/email/ViewPatternMatching;->pmFindPos()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3502(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;

    const/16 v3, 0x7d0

    invoke-virtual {v0, v3}, Lcom/android/email/ViewPatternMatching;->pmSettimeout(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreHtml:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3200(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreHtml:Ljava/lang/String;

    iget-wide v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mId:J

    sget-object v9, Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;

    invoke-virtual {v9}, Lcom/android/email/ViewPatternMatching;->pmFindPos()I

    move-result v9

    invoke-direct/range {v3 .. v9}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3502(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    :goto_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "email://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v6, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const-string v9, "text/html"

    const-string v10, "utf-8"

    move-object v7, v1

    move-object v8, v2

    move-object v11, v1

    invoke-virtual/range {v6 .. v11}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    const-string v0, "Z7App"

    const-string v3, "mMessageWebView is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreText:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3200(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mId:J

    sget-object v9, Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;

    invoke-virtual {v9}, Lcom/android/email/ViewPatternMatching;->pmFindPos()I

    move-result v9

    invoke-direct/range {v3 .. v9}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3502(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    goto :goto_4
.end method
