.class public Lcom/android/email/Controller$LegacyListener;
.super Lcom/android/email/MessagingListener;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LegacyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method public constructor <init>(Lcom/android/email/Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Lcom/android/email/MessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public checkMailFinished(Landroid/content/Context;JJJ)V
    .locals 13

    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    const-string v3, "Email:Controller:LegacyListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMailFinished() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$Result;

    const/4 v3, 0x0

    const/16 v8, 0x64

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public checkMailStarted(Landroid/content/Context;JJ)V
    .locals 11

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    const-string v1, "Email:Controller:LegacyListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMailStarted() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-wide v2, p2

    move-wide v7, p4

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

.method public deleteUserAccountStatus(Landroid/os/Bundle;J)V
    .locals 6

    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[deleteUserAccountStatus] [bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[accountId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Email:Controller:LegacyListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteUserAccountStatus() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

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

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/MessagingException;I)V
    .locals 6

    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Email:Controller:LegacyListener:folderPushStatus() START : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    invoke-virtual {v1, p2, p1, p3}, Lcom/android/email/Controller$Result;->folderPushCallback(Lcom/android/emailcommon/mail/MessagingException;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

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

.method public foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    .locals 8

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    :pswitch_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    const/16 v5, 0x64

    move v1, p3

    move-object v2, p5

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(ILcom/android/emailcommon/mail/MessagingException;JI)V

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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public listFoldersFailed(JLjava/lang/String;)V
    .locals 5

    const-string v2, "Email:Controller:LegacyListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listFoldersFailed() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v2, p3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, p2, v4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

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

.method public listFoldersFinished(J)V
    .locals 5

    const-string v2, "Email:Controller:LegacyListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listFoldersFinished() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    const/4 v2, 0x0

    const/16 v4, 0x64

    invoke-virtual {v1, v2, p1, p2, v4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

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

.method public listFoldersStarted(J)V
    .locals 5

    const-string v2, "Email:Controller:LegacyListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listFoldersStarted() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, p2, v4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

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

.method public loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    .locals 18

    if-eqz p7, :cond_0

    :try_start_0
    invoke-virtual/range {p7 .. p7}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    :cond_0
    const/16 v7, 0x11

    if-eqz p7, :cond_1

    invoke-virtual/range {p7 .. p7}, Lcom/android/emailcommon/mail/MessagingException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_1

    const/16 v7, 0x20

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v2

    const/4 v8, 0x0

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    const-string v2, "Email:Controller:LegacyListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAttachmentFailed() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/Controller$Result;

    if-eqz p7, :cond_2

    const-string v2, "MessagingException.SECURITY_POLICIES_REQUIRED"

    invoke-virtual/range {p7 .. p7}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v2, 0x7

    invoke-direct {v9, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/16 v16, 0x0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    invoke-virtual/range {v8 .. v16}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    if-eqz p8, :cond_3

    const/4 v9, 0x0

    :goto_2
    const/16 v16, 0x0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    :try_start_2
    invoke-virtual/range {v8 .. v16}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_1

    :cond_3
    move-object/from16 v9, p7

    goto :goto_2

    :cond_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public loadAttachmentFinished(JJJZ)V
    .locals 13

    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v2

    const/4 v7, 0x0

    const/16 v8, 0x64

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v12

    monitor-enter v12

    :try_start_1
    const-string v3, "Email:Controller:LegacyListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAttachmentFinished() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$Result;

    const/4 v3, 0x0

    if-eqz p7, :cond_0

    const/16 v10, 0xc8

    :goto_2
    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_0
    const/16 v10, 0x64

    goto :goto_2

    :cond_1
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public loadAttachmentStarted(JJJZ)V
    .locals 13

    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v12

    monitor-enter v12

    :try_start_1
    const-string v3, "Email:Controller:LegacyListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAttachmentStarted() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$Result;

    const/4 v3, 0x0

    const/4 v10, 0x0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_0
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public loadMessageForViewFailed(JLjava/lang/String;)V
    .locals 9

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    const-string v1, "Email:Controller:LegacyListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadMessageForViewFailed() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    if-eqz p3, :cond_0

    const-string v1, "MessagingException.SECURITY_POLICIES_REQUIRED"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x7

    invoke-direct {v1, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v6, 0x0

    move-wide v4, p1

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
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, p3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    :cond_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public loadMessageForViewFinished(J)V
    .locals 9

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    const-string v1, "Email:Controller:LegacyListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadMessageForViewFinished() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    const/4 v1, 0x0

    const/16 v6, 0x64

    move-wide v4, p1

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

.method public loadMessageForViewStarted(J)V
    .locals 9

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    const-string v1, "Email:Controller:LegacyListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadMessageForViewStarted() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-wide v4, p1

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

.method public declared-synchronized movemessageToOtherAccountCallback(ZJJJJJJII)V
    .locals 29

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v27

    monitor-enter v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "Email:Controller:LegacyListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "movemessageToOtherAccountCallback() : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$1000(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v28

    monitor-enter v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$1000(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$1000(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/email/Controller$AccountMoveMessageInfo;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    cmp-long v4, v4, p2

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$1000(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_4

    const/4 v4, 0x3

    move/from16 v0, p14

    if-ne v0, v4, :cond_4

    const-string v4, "processPendingAccountMoveActions"

    const-string v5, "Target Server Sync Fail. Do not erase original mail from Source Server and Local DB"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    monitor-exit v28
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :cond_4
    const/4 v4, 0x1

    move/from16 v0, p15

    if-eq v0, v4, :cond_5

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v4, "processPendingAccountMoveActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remove Local Message id : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p4 .. p5}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v5}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    move-wide/from16 v7, p4

    move-wide/from16 v10, p2

    move/from16 v12, p14

    move/from16 v13, p15

    move-wide/from16 v14, p8

    move-wide/from16 v16, p10

    invoke-virtual/range {v4 .. v17}, Lcom/android/email/adapter/ProtocolAdapter;->processPendingDeletesForeverSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;JLandroid/content/ContentResolver;JIIJJ)V

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4

    :catchall_1
    move-exception v4

    monitor-exit v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_5
    const/4 v4, 0x3

    move/from16 v0, p14

    if-ne v0, v4, :cond_6

    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "mailboxKey"

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    move-wide/from16 v0, p4

    move-wide/from16 v2, p2

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v26

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x2

    move/from16 v0, p14

    if-ne v0, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v24

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v26

    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    if-eqz v24, :cond_7

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v5, "LocalAccountMoved-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocalAccountMoved-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v4, "syncServerId"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/email/Controller;->bEAS2POP_EASTrashMove_Complete:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static/range {v23 .. v23}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v13

    move-wide/from16 v11, p4

    move-wide/from16 v14, p12

    invoke-virtual/range {v10 .. v15}, Lcom/android/email/Controller;->moveMessage(J[JJ)Landroid/os/AsyncTask;

    const/16 v22, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    iget-boolean v4, v4, Lcom/android/email/Controller;->bEAS2POP_EASTrashMove_Complete:Z

    if-nez v4, :cond_8

    const/16 v4, 0x64

    move/from16 v0, v22

    if-ge v0, v4, :cond_8

    add-int/lit8 v22, v22, 0x1

    const-string v4, "movemovemove"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "max_wait_cnt = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-wide/16 v4, 0x64

    :try_start_8
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_8
    :try_start_9
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "accountKey"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "mailboxKey"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v10

    move-wide/from16 v11, p4

    move-wide/from16 v13, p2

    move-wide/from16 v15, p8

    invoke-static/range {v10 .. v16}, Lcom/android/email/provider/AttachmentProvider;->moveAllAttachmentToOtherAccount(Landroid/content/Context;JJJ)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized sendPendingMessagesCompleted(J)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/email/Controller;->bLoadingMessages:Z

    const-string v1, "Email:Controller:LegacyListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPendingMessagesCompleted() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    const/16 v6, 0x64

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    .locals 19

    monitor-enter p0

    if-eqz p5, :cond_0

    :try_start_0
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object/from16 v0, p5

    instance-of v2, v0, Lcom/android/emailcommon/mail/MessagingException;

    if-eqz v2, :cond_2

    move-object/from16 v0, p5

    check-cast v0, Lcom/android/emailcommon/mail/MessagingException;

    move-object v12, v0

    :goto_0
    invoke-virtual {v12}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    const-string v2, "Controller"

    const-string v3, "[Email] sendPendingMessagesFailed 2131231534"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    const/4 v3, 0x3

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    const/4 v3, 0x4

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v5, 0x0

    aput-wide p3, v3, v5

    iget-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v11, 0x1

    invoke-static/range {v2 .. v11}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;[JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/email/Controller;->bLoadingMessages:Z

    const-string v2, "Email:Controller:LegacyListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendPendingMessagesFailed() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/email/Controller$Result;

    const/16 v17, 0x0

    move-wide/from16 v13, p1

    move-wide/from16 v15, p3

    invoke-virtual/range {v11 .. v17}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_3
    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :cond_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesStarted(JJ)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/email/Controller;->bLoadingMessages:Z

    const-string v1, "Email:Controller:LegacyListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPendingMessagesStarted() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V
    .locals 11

    const-string v1, "Controller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Email:Controller:LegacyListener:syncMailboxStatus() START : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/util/EmailAddressCacheProcessor;->commitCacheInfo(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v9

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v2, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    const/4 v7, -0x1

    move-object v1, p3

    move-wide v4, p1

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    .locals 10

    instance-of v2, p5, Lcom/android/emailcommon/mail/MessagingException;

    if-eqz v2, :cond_0

    move-object v1, p5

    check-cast v1, Lcom/android/emailcommon/mail/MessagingException;

    :goto_0
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/email/Controller;->bLoadingMessages:Z

    const-string v2, "Email:Controller:LegacyListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "synchronizeMailboxFailed() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {p5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public synchronizeMailboxFinished(JJII)V
    .locals 11

    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/email/Controller;->bLoadingMessages:Z

    const-string v2, "Email:Controller:LegacyListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "synchronizeMailboxFinished() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    const/4 v2, 0x0

    const/16 v7, 0x64

    move-wide v3, p1

    move-wide v5, p3

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public synchronizeMailboxStarted(JJ)V
    .locals 10

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/email/Controller;->bLoadingMessages:Z

    const-string v1, "Email:Controller:LegacyListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "synchronizeMailboxStarted() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, p1

    move-wide v4, p3

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

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 10

    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    const/4 v1, 0x0

    const/16 v6, 0x64

    move-wide v2, p2

    move-wide v4, p4

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
