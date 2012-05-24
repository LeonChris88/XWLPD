.class public Lcom/android/email/GroupMessagingListener;
.super Lcom/android/email/MessagingListener;
.source "GroupMessagingListener.java"


# instance fields
.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/email/MessagingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/android/email/MessagingListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/email/MessagingListener;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/android/email/MessagingListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkMailFinished(Landroid/content/Context;JJJ)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingListener;->checkMailFinished(Landroid/content/Context;JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized checkMailStarted(Landroid/content/Context;JJ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingListener;->checkMailStarted(Landroid/content/Context;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized controllerCommandCompleted(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    invoke-virtual {v1, p1}, Lcom/android/email/MessagingListener;->controllerCommandCompleted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public deleteUserAccountStatus(Landroid/os/Bundle;J)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/MessagingListener;->deleteUserAccountStatus(Landroid/os/Bundle;J)V

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

.method public folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/MessagingException;I)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/MessagingListener;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/MessagingException;I)V

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

.method public declared-synchronized foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized isActiveListener(Lcom/android/email/MessagingListener;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listFoldersFailed(JLjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/MessagingListener;->listFoldersFailed(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized listFoldersFinished(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->listFoldersFinished(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized listFoldersStarted(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->listFoldersStarted(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/MessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadAttachmentFinished(JJJZ)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingListener;->loadAttachmentFinished(JJJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadAttachmentStarted(JJJZ)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingListener;->loadAttachmentStarted(JJJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadMessageForViewFailed(JLjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/MessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadMessageForViewFinished(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->loadMessageForViewFinished(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadMessageForViewStarted(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->loadMessageForViewStarted(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized movemessageToOtherAccountCallback(ZJJJJJJII)V
    .locals 18

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move/from16 v15, p14

    move/from16 v16, p15

    invoke-virtual/range {v1 .. v16}, Lcom/android/email/MessagingListener;->movemessageToOtherAccountCallback(ZJJJJJJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeListener(Lcom/android/email/MessagingListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendPendingMessagesCompleted(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->sendPendingMessagesCompleted(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesStarted(JJ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/MessagingListener;->sendPendingMessagesStarted(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/MessagingListener;->syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V

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

.method public declared-synchronized synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synchronizeMailboxFinished(JJII)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/MessagingListener;->synchronizeMailboxFinished(JJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synchronizeMailboxStarted(JJ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/MessagingListener;->synchronizeMailboxStarted(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 10

    iget-object v9, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    monitor-enter v9

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingListener;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

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
