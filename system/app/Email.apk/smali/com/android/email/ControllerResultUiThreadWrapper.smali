.class public Lcom/android/email/ControllerResultUiThreadWrapper;
.super Lcom/android/email/Controller$Result;
.source "ControllerResultUiThreadWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/email/Controller$Result;",
        ">",
        "Lcom/android/email/Controller$Result;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mWrappee:Lcom/android/email/Controller$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    iput-object p1, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/ControllerResultUiThreadWrapper;)Lcom/android/email/Controller$Result;
    .locals 1

    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;

    return-object v0
.end method

.method private run(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    monitor-enter p1

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 7

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$10;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/email/ControllerResultUiThreadWrapper$10;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteAccountCallback(Landroid/os/Bundle;J)V
    .locals 1

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/ControllerResultUiThreadWrapper$8;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Landroid/os/Bundle;J)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deviceInfoCallback(I)V
    .locals 1

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$12;

    invoke-direct {v0, p0, p1}, Lcom/android/email/ControllerResultUiThreadWrapper$12;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;I)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public emptyTrashCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 6

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$9;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/email/ControllerResultUiThreadWrapper$9;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JI)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getWrappee()Lcom/android/email/Controller$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;

    return-object v0
.end method

.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .locals 10

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$2;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/email/ControllerResultUiThreadWrapper$2;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 8

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$3;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/ControllerResultUiThreadWrapper$3;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JJI)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 6

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/email/ControllerResultUiThreadWrapper$1;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JI)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public modifyUserAccountCallback(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$14;

    invoke-direct {v0, p0, p1}, Lcom/android/email/ControllerResultUiThreadWrapper$14;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshIRMTemplatesCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 6

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$11;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/email/ControllerResultUiThreadWrapper$11;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JI)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 8

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$4;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/ControllerResultUiThreadWrapper$4;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JJI)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendMeetingEditedResponseCallback(ZJJ)V
    .locals 7

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$15;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/ControllerResultUiThreadWrapper$15;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;ZJJ)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .locals 10

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$5;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/email/ControllerResultUiThreadWrapper$5;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setRegistered(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, p1}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    return-void
.end method

.method public setupAccountCallback(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$13;

    invoke-direct {v0, p0, p1}, Lcom/android/email/ControllerResultUiThreadWrapper$13;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 9

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$6;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/email/ControllerResultUiThreadWrapper$6;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JJII)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 6

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$7;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/email/ControllerResultUiThreadWrapper$7;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JI)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    return-void
.end method
