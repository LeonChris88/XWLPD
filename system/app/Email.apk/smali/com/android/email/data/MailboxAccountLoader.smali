.class public Lcom/android/email/data/MailboxAccountLoader;
.super Landroid/content/AsyncTaskLoader;
.source "MailboxAccountLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/data/MailboxAccountLoader$1;,
        Lcom/android/email/data/MailboxAccountLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/email/data/MailboxAccountLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMailboxId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/android/email/data/MailboxAccountLoader;->mMailboxId:J

    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/email/data/MailboxAccountLoader$Result;
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mMailboxId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    const/4 v1, 0x1

    iget-wide v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mMailboxId:J

    const-wide/16 v9, -0x2

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    const/4 v5, 0x1

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v8}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v6

    new-instance v0, Lcom/android/email/data/MailboxAccountLoader$Result;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/email/data/MailboxAccountLoader$Result;-><init>(ZLcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZILcom/android/email/data/MailboxAccountLoader$1;)V

    return-object v0

    :cond_1
    iget-object v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/android/email/data/MailboxAccountLoader;->mMailboxId:J

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    iget-wide v8, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    iget-object v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v4

    iget-object v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/android/email/data/MailboxAccountLoader;->mMailboxId:J

    invoke-static {v7, v8, v9, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isRefreshable(Landroid/content/Context;JZ)Z

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/data/MailboxAccountLoader;->loadInBackground()Lcom/android/email/data/MailboxAccountLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/data/MailboxAccountLoader;->stopLoading()V

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/data/MailboxAccountLoader;->cancelLoad()Z

    invoke-virtual {p0}, Lcom/android/email/data/MailboxAccountLoader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/data/MailboxAccountLoader;->cancelLoad()Z

    return-void
.end method
