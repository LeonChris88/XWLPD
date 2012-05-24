.class public Lcom/android/email/Controller$ServiceCallback;
.super Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method public constructor <init>(Lcom/android/email/Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method private mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;
    .locals 5

    const/4 v1, 0x1

    const/16 v4, 0x3c

    const/16 v3, 0x19

    const/16 v2, 0xa

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/high16 v1, 0x10

    invoke-direct {v0, v3, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x63

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/high16 v1, 0x4

    invoke-direct {v0, v3, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/high16 v1, 0x3

    invoke-direct {v0, v3, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x29

    invoke-direct {v0, v2, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    :sswitch_9
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x2a

    invoke-direct {v0, v2, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    :sswitch_a
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x2b

    invoke-direct {v0, v2, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    :sswitch_b
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x35

    invoke-direct {v0, v4, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    :sswitch_c
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x36

    invoke-direct {v0, v4, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    :sswitch_d
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x3a

    invoke-direct {v0, v4, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    :sswitch_e
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50001

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_0

    :sswitch_f
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50002

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_0

    :sswitch_10
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50003

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_0

    :sswitch_11
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50004

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_0

    :sswitch_12
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50005

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_0

    :sswitch_13
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_0

    :sswitch_14
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50006

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_0

    :sswitch_15
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x6f

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_a
        -0x5 -> :sswitch_9
        -0x4 -> :sswitch_8
        -0x3 -> :sswitch_13
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_3
        0x18 -> :sswitch_0
        0x20 -> :sswitch_2
        0x27 -> :sswitch_14
        0xa8 -> :sswitch_e
        0xa9 -> :sswitch_f
        0xaa -> :sswitch_10
        0xab -> :sswitch_11
        0xac -> :sswitch_12
        0xad -> :sswitch_15
        0x10000 -> :sswitch_b
        0x20000 -> :sswitch_c
        0x30000 -> :sswitch_7
        0x40000 -> :sswitch_6
        0x60000 -> :sswitch_d
        0x100000 -> :sswitch_4
        0x120000 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public addUserAccountStatus(Landroid/os/Bundle;J)V
    .locals 5

    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addUserAccountStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " accountId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

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

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/Controller$Result;->addUserAccountCallback(Landroid/os/Bundle;J)V

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

.method public checkMailStatus(JJIIJ)V
    .locals 14

    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    move/from16 v0, p5

    invoke-direct {v12, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const-string v3, "EVENT@CONTR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[checkMailStatus] [accId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [mbId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [exceptionType - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [progress - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [tag - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v13

    monitor-enter v13

    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

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

    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public deactivateSnc()V
    .locals 4

    const-string v2, "EVENT@CONTR"

    const-string v3, "[deactivateSnc]"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

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

    invoke-virtual {v1}, Lcom/android/email/Controller$Result;->deactivateSncCallback()V

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

.method public deleteAccountFromWebPortal(JLjava/lang/String;)V
    .locals 5

    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[deleteAccountFromWebPortal] [accountId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " emailId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

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

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/Controller$Result;->deleteAccountFromWebCallback(JLjava/lang/String;)V

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

.method public deleteUserAccountStatus(Landroid/os/Bundle;J)V
    .locals 5

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

    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

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

.method public deviceInfoStatus(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

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

.method public emptyTrashStatus(JII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    invoke-virtual {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->emptyTrashCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :pswitch_0
    const/16 p4, 0x64

    goto :goto_0

    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v3, 0x64

    if-lt p4, v3, :cond_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public folderCommandStatus(IJI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p4}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;II)V
    .locals 7

    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v2, p2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const-string v3, "EVENT@CONTR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[folderPushStatus] [mailboxId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [exceptionType - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " [progress - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    invoke-direct {p0, p2}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    invoke-virtual {v1, v3, p1, p3}, Lcom/android/email/Controller$Result;->folderPushCallback(Lcom/android/emailcommon/mail/MessagingException;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public getAvailableAccountStatus(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;)V"
        }
    .end annotation

    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getAvailableAccountStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SncEndpointList "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

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

    invoke-virtual {v1, p1, p2}, Lcom/android/email/Controller$Result;->getAvailableAccountCallback(Landroid/os/Bundle;Ljava/util/List;)V

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

.method public getUserConfiguredAccountStatus(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getUserConfiguredAccountStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SncUserEndpointList "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

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

    invoke-virtual {v1, p1, p2}, Lcom/android/email/Controller$Result;->getUserConfiguredAccountCallback(Landroid/os/Bundle;Ljava/util/List;)V

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

.method public getUserProfileStatus(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 5

    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getUserProfileStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SncProfile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

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

    invoke-virtual {v1, p1, p2}, Lcom/android/email/Controller$Result;->getUserProfileCallback(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V

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

.method public loadAttachmentStatus(JJII)V
    .locals 12

    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    packed-switch p5, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v5}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v5}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v11

    monitor-enter v11

    :try_start_0
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v5}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    move-wide v5, p1

    move-wide v7, p3

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :pswitch_0
    const/16 p6, 0x64

    goto :goto_0

    :pswitch_1
    if-ltz p6, :cond_1

    const/16 v5, 0x64

    move/from16 v0, p6

    if-lt v0, v5, :cond_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadMessageForViewStatus(JII)V
    .locals 11

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v9, p3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const-string v1, "Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadMessageForViewStatus] [msgId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [exceptionType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [progress - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v8

    iget-object v1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

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

    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v1

    iget-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide v4, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

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

.method public loadMoreStatus(JII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    invoke-virtual {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :pswitch_0
    const/16 p4, 0x64

    goto :goto_0

    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v3, 0x64

    if-lt p4, v3, :cond_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public modifyUserAccountStatus(Landroid/os/Bundle;)V
    .locals 5

    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[modifyUserAccountStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

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

    invoke-virtual {v1, p1}, Lcom/android/email/Controller$Result;->modifyUserAccountCallback(Landroid/os/Bundle;)V

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

.method public moveConvAlwaysStatus([BIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public moveItemStatus(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public oOOfStatus(JIILandroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v1

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    move-wide v2, p1

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller$Result;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :pswitch_0
    const/16 p4, 0x64

    goto :goto_0

    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v2, 0x64

    if-lt p4, v2, :cond_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public refreshIRMTemplatesStatus(JII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    packed-switch p3, :pswitch_data_0

    move p4, p3

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    sget-boolean v3, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v3, :cond_1

    const-string v3, "IRM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Controller:refreshIRMTemplatesStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->refreshIRMTemplatesCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :pswitch_0
    const/16 p4, 0x64

    goto :goto_0

    :pswitch_1
    if-ltz p4, :cond_2

    const/16 v3, 0x64

    if-lt p4, v3, :cond_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public searchMailboxStatus(JII)V
    .locals 15

    new-instance v11, Lcom/android/emailcommon/mail/MessagingException;

    move/from16 v0, p3

    invoke-direct {v11, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const-string v6, "EVENT@CONTR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[searchMailboxStatus] [mbId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [exceptionType - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [progress - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[statuscode - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;

    move-result-object v10

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v6, p1, v6

    if-nez v6, :cond_2

    const-string v6, "Controller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid MailboxId - mailboxId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    const/16 p4, 0x64

    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v6}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/util/EmailAddressCacheProcessor;->commitCacheInfo(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v6, 0x64

    move/from16 v0, p4

    if-lt v0, v6, :cond_0

    goto :goto_1

    :pswitch_2
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/email/Controller;->bEAS2POP_EASTrashMove_Complete:Z

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v6}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-static {v6, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v13

    if-eqz v13, :cond_1

    iget-wide v4, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v6}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v14

    monitor-enter v14

    :try_start_0
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v6}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$Result;

    const/4 v9, 0x0

    move-wide/from16 v6, p1

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/Controller$Result;->searchMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_3
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v6}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/util/EmailAddressCacheProcessor;->commitCacheInfo(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sendMeetingEditedResponseCallback(ZJJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

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

.method public sendMessageStatus(JLjava/lang/String;II)V
    .locals 9

    invoke-direct {p0, p4}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v1

    packed-switch p4, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    move-wide v4, p1

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :pswitch_0
    const/16 p5, 0x64

    goto :goto_0

    :pswitch_1
    if-ltz p5, :cond_1

    const/16 v4, 0x64

    if-lt p5, v4, :cond_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDeviceInfoStatus(JII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public syncMailboxListStatus(JII)V
    .locals 5

    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    invoke-virtual {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :pswitch_0
    const/16 p4, 0x64

    goto :goto_0

    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v3, 0x64

    if-lt p4, v3, :cond_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public syncMailboxStatus(JII)V
    .locals 11

    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v1

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v9

    if-nez v9, :cond_2

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    const/16 p4, 0x64

    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/util/EmailAddressCacheProcessor;->commitCacheInfo(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v4, 0x64

    if-lt p4, v4, :cond_0

    goto :goto_1

    :cond_2
    iget-wide v2, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    const/4 v7, -0x1

    move-wide v4, p1

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateUserProfileStatus(Landroid/os/Bundle;)V
    .locals 5

    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateUserProfileStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

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

    invoke-virtual {v1, p1}, Lcom/android/email/Controller$Result;->updateUserProfileCallback(Landroid/os/Bundle;)V

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
