.class Lcom/android/email/Controller$9;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->loadMoreMessages(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$mailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/Controller$9;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$9;->val$mailboxId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-wide/16 v2, -0x1

    const/4 v14, 0x0

    const/16 v13, 0x3d

    const/4 v6, 0x0

    const/4 v7, -0x1

    iget-object v0, p0, Lcom/android/email/Controller$9;->this$0:Lcom/android/email/Controller;

    invoke-static {v0}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/email/Controller$9;->val$mailboxId:J

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v11

    if-nez v11, :cond_1

    iget-object v0, p0, Lcom/android/email/Controller$9;->this$0:Lcom/android/email/Controller;

    iget-object v0, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v13}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v4, p0, Lcom/android/email/Controller$9;->val$mailboxId:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/ControllerUtility$CallbackWrapper;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/Controller$9;->this$0:Lcom/android/email/Controller;

    invoke-static {v0}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    iget-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v0, p0, Lcom/android/email/Controller$9;->this$0:Lcom/android/email/Controller;

    iget-object v0, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v13}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v4, p0, Lcom/android/email/Controller$9;->val$mailboxId:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/ControllerUtility$CallbackWrapper;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/Controller$9;->this$0:Lcom/android/email/Controller;

    invoke-static {v0}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller$9;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v10

    if-eqz v10, :cond_0

    iget v0, v10, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitIncrement:I

    if-lez v0, :cond_0

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "field"

    const-string v1, "visibleLimit"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "add"

    iget v1, v10, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitIncrement:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->ADD_TO_FIELD_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/email/Controller$9;->val$mailboxId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    iget-object v0, p0, Lcom/android/email/Controller$9;->this$0:Lcom/android/email/Controller;

    invoke-static {v0}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v12, v9, v14, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget v0, v11, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    iget v1, v10, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitIncrement:I

    add-int/2addr v0, v1

    iput v0, v11, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, v8, v11}, Lcom/android/email/adapter/ProtocolAdapter;->loadMoreMessages(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto :goto_0
.end method
