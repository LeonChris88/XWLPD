.class Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$3;
.super Ljava/lang/Object;
.source "SyncNConnStore.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->downloadSmallMessages(Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field final synthetic val$opsList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$3;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    iput-object p2, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object p3, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$3;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p4, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$3;->val$opsList:Ljava/util/ArrayList;

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

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$3;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$3;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v1}, Lcom/android/email/esp/ServiceProvider;->getProviderFromType(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$3;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    invoke-static {v0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->access$400(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;

    if-eqz v10, :cond_0

    invoke-static {v10}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$600(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)J

    move-result-wide v2

    invoke-static {v10}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$700(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)J

    move-result-wide v4

    invoke-static {v10}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$500(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)I

    move-result v6

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$3;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    move-object v1, p1

    move v8, v7

    move v9, v7

    invoke-static/range {v0 .. v9}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->access$800(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;Lcom/android/emailcommon/mail/Message;JJIIZZ)V

    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$3;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    iget-object v1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$3;->val$opsList:Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-virtual {v0, v1, v7}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->applyBatchOperationInIntervals(Ljava/util/ArrayList;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$3;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/emailcommon/mail/Flag;->SENT:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/emailcommon/mail/Flag;->DRAFT:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$3;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    invoke-static {v0}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->access$400(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;

    if-eqz v10, :cond_0

    invoke-static {v10}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$600(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)J

    move-result-wide v2

    invoke-static {v10}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$700(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)J

    move-result-wide v4

    invoke-static {v10}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$500(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)I

    move-result v6

    goto :goto_0
.end method
