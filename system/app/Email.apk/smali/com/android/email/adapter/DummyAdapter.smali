.class public Lcom/android/email/adapter/DummyAdapter;
.super Lcom/android/email/adapter/ProtocolAdapter;
.source "DummyAdapter.java"


# instance fields
.field private mDisableLegacy:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/email/adapter/ProtocolAdapter;-><init>()V

    iput-boolean v0, p0, Lcom/android/email/adapter/DummyAdapter;->mDisableLegacy:Z

    iput-boolean v0, p0, Lcom/android/email/adapter/DummyAdapter;->mDisableLegacy:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/email/adapter/ProtocolAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/adapter/DummyAdapter;->mDisableLegacy:Z

    iput-boolean p1, p0, Lcom/android/email/adapter/DummyAdapter;->mDisableLegacy:Z

    return-void
.end method


# virtual methods
.method public addUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public deleteMessage(Ljava/util/HashSet;JJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getAvailableAccounts()V
    .locals 0

    return-void
.end method

.method public getUserConfiguredAccounts()V
    .locals 0

    return-void
.end method

.method public getUserProfile()V
    .locals 0

    return-void
.end method

.method public initProtocol()V
    .locals 0

    return-void
.end method

.method public loadAttachment(JJJJZZZ)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/email/adapter/DummyAdapter;->mDisableLegacy:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/adapter/DummyAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v8, 0x0

    move-wide/from16 v2, p7

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    :cond_0
    return-void
.end method

.method public loadMessageForView(J)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/email/adapter/DummyAdapter;->mDisableLegacy:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/adapter/DummyAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    :cond_0
    return-void
.end method

.method public loadMore(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/email/adapter/DummyAdapter;->mDisableLegacy:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/adapter/DummyAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/email/Controller$Result;->loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    :cond_0
    return-void
.end method

.method public modifyUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public refreshIRMTemplates(J)V
    .locals 0

    return-void
.end method

.method public sendMessage(JJJ)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/email/adapter/DummyAdapter;->mDisableLegacy:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/adapter/DummyAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v6, 0x0

    move-wide v2, p5

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    :cond_0
    return-void
.end method

.method public sendPendingMessages(J)V
    .locals 0

    return-void
.end method

.method public updateMailbox(JJZ)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/email/adapter/DummyAdapter;->mDisableLegacy:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/adapter/DummyAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    :cond_0
    return-void
.end method

.method public updateMailboxList(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/email/adapter/DummyAdapter;->mDisableLegacy:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/adapter/DummyAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    :cond_0
    return-void
.end method

.method public updateUserProfile(Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 0

    return-void
.end method
