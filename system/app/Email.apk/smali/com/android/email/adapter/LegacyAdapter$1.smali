.class Lcom/android/email/adapter/LegacyAdapter$1;
.super Ljava/lang/Object;
.source "LegacyAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/LegacyAdapter;->updateMailbox(JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/adapter/LegacyAdapter;

.field final synthetic val$accountId:J

.field final synthetic val$mailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/adapter/LegacyAdapter;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/adapter/LegacyAdapter$1;->this$0:Lcom/android/email/adapter/LegacyAdapter;

    iput-wide p2, p0, Lcom/android/email/adapter/LegacyAdapter$1;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/adapter/LegacyAdapter$1;->val$mailboxId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/adapter/LegacyAdapter$1;->val$accountId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/adapter/LegacyAdapter$1;->val$mailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v9

    if-eqz v8, :cond_0

    if-nez v9, :cond_1

    :cond_0
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v2, p0, Lcom/android/email/adapter/LegacyAdapter$1;->val$accountId:J

    iget-wide v4, p0, Lcom/android/email/adapter/LegacyAdapter$1;->val$mailboxId:J

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    sget-object v1, Lcom/android/email/adapter/ProtocolAdapter;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/email/MessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/MessagingListener;)V

    goto :goto_0
.end method
