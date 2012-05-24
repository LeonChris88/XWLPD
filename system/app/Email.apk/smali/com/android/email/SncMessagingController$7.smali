.class Lcom/android/email/SncMessagingController$7;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/SncMessagingController;->syncSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/EmailSearchAdapter;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/SncMessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field final synthetic val$localMapCopy:Ljava/util/HashMap;

.field final synthetic val$newMessages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/email/SncMessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/SncMessagingController$7;->this$0:Lcom/android/email/SncMessagingController;

    iput-object p2, p0, Lcom/android/email/SncMessagingController$7;->val$localMapCopy:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/android/email/SncMessagingController$7;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object p4, p0, Lcom/android/email/SncMessagingController$7;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p5, p0, Lcom/android/email/SncMessagingController$7;->val$newMessages:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V
    .locals 0

    return-void
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .locals 11

    iget-object v0, p0, Lcom/android/email/SncMessagingController$7;->this$0:Lcom/android/email/SncMessagingController;

    invoke-static {v0}, Lcom/android/email/SncMessagingController;->access$600(Lcom/android/email/SncMessagingController;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SncMessagingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Sync is not enabled: mRemoteSync -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/SncMessagingController$7;->this$0:Lcom/android/email/SncMessagingController;

    invoke-static {v3}, Lcom/android/email/SncMessagingController;->access$600(Lcom/android/email/SncMessagingController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/email/SncMessagingController$7;->val$localMapCopy:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/SncMessagingController$LocalMessageInfo;

    const/4 v1, 0x0

    if-nez v9, :cond_2

    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-eqz v1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/email/SncMessagingController$7;->this$0:Lcom/android/email/SncMessagingController;

    invoke-static {v0}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/SncMessagingController$7;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v2, p0, Lcom/android/email/SncMessagingController$7;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v2, p0, Lcom/android/email/SncMessagingController$7;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v7, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/android/email/LegacyConversions;->updateMessageFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJI)Z

    sget-object v0, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/SncMessagingController$7;->val$newMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_2
    const-string v0, "SncMessagingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while copying downloaded message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v8

    const-string v0, "EVENT@LEGACY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncSearchOnServer [accId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/SncMessagingController$7;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][mbId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/SncMessagingController$7;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Got exception - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/email/SncMessagingController$7;->this$0:Lcom/android/email/SncMessagingController;

    invoke-static {v0}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v2, v9, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    goto/16 :goto_1
.end method
