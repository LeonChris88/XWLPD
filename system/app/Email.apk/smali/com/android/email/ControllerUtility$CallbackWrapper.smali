.class public Lcom/android/email/ControllerUtility$CallbackWrapper;
.super Lcom/android/email/Controller$Result;
.source "ControllerUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/ControllerUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/Controller$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/Controller$Result;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    iput-object p1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 8

    iget-object v7, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v7

    :try_start_0
    iget-object v1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller$Result;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public deleteAccountCallback(Landroid/os/Bundle;J)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/Controller$Result;->deleteAccountCallback(Landroid/os/Bundle;J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public deviceInfoCallback(I)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    invoke-virtual {v1, p1}, Lcom/android/email/Controller$Result;->deviceInfoCallback(I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public emptyTrashCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/Controller$Result;->emptyTrashCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .locals 11

    iget-object v10, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v10

    :try_start_0
    iget-object v1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 9

    iget-object v8, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v8

    :try_start_0
    iget-object v1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/Controller$Result;->loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public moveConvAlwaysCallback(Lcom/android/emailcommon/mail/MessagingException;[BII)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/Controller$Result;->moveConvAlwaysCallback(Lcom/android/emailcommon/mail/MessagingException;[BII)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public searchMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/lang/String;)V
    .locals 11

    iget-object v10, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v10

    :try_start_0
    iget-object v1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->searchMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 9

    iget-object v8, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v8

    :try_start_0
    iget-object v1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public sendMeetingEditedResponseCallback(ZJJ)V
    .locals 8

    iget-object v7, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v7

    :try_start_0
    iget-object v1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller$Result;->sendMeetingEditedResponseCallback(ZJJ)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .locals 11

    iget-object v10, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v10

    :try_start_0
    iget-object v1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setupAccountCallback(Landroid/os/Bundle;)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    invoke-virtual {v1, p1}, Lcom/android/email/Controller$Result;->setupAccountCallback(Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 10

    iget-object v9, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v9

    :try_start_0
    iget-object v1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
