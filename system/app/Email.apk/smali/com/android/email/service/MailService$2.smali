.class Lcom/android/email/service/MailService$2;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/MailService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/MailService;

.field final synthetic val$accountId:J

.field final synthetic val$alarmManager:Landroid/app/AlarmManager;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;Landroid/content/Intent;JLandroid/app/AlarmManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iput-object p2, p0, Lcom/android/email/service/MailService$2;->val$intent:Landroid/content/Intent;

    iput-wide p3, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    iput-object p5, p0, Lcom/android/email/service/MailService$2;->val$alarmManager:Landroid/app/AlarmManager;

    iput p6, p0, Lcom/android/email/service/MailService$2;->val$startId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-wide/16 v9, -0x1

    iget-object v3, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget-object v4, p0, Lcom/android/email/service/MailService$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/android/email/service/MailService;->restoreSyncReports(Landroid/content/Intent;)V

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "Email-MailService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action: check mail for id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v3, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget-wide v4, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    iget-object v6, p0, Lcom/android/email/service/MailService$2;->val$alarmManager:Landroid/app/AlarmManager;

    invoke-static {v3, v4, v5, v6}, Lcom/android/email/service/MailService;->access$000(Lcom/android/email/service/MailService;JLandroid/app/AlarmManager;)V

    :cond_1
    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    cmp-long v3, v3, v9

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    invoke-static {v3}, Lcom/android/email/service/MailService;->access$100(Lcom/android/email/service/MailService;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v4, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/service/MailService$AccountSyncReport;

    iget-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    iget-wide v7, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_2

    const-string v3, "eas"

    iget-object v5, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    invoke-static {v5}, Lcom/android/email/service/MailService;->access$200(Lcom/android/email/service/MailService;)Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, v1, Lcom/android/email/service/MailService$AccountSyncReport;->syncEnabled:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget-object v5, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget-object v5, v5, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    iget-wide v6, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    iget v8, p0, Lcom/android/email/service/MailService$2;->val$startId:I

    invoke-static {v3, v5, v6, v7, v8}, Lcom/android/email/service/MailService;->access$300(Lcom/android/email/service/MailService;Lcom/android/email/Controller;JI)Z

    move-result v2

    :cond_3
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-nez v2, :cond_6

    iget-wide v3, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    cmp-long v3, v3, v9

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget-wide v4, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    :cond_5
    iget-object v3, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget-object v4, p0, Lcom/android/email/service/MailService$2;->val$alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v4}, Lcom/android/email/service/MailService;->reschedule(Landroid/app/AlarmManager;)V

    iget-object v3, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget v4, p0, Lcom/android/email/service/MailService$2;->val$startId:I

    invoke-virtual {v3, v4}, Lcom/android/email/service/MailService;->stopSelf(I)V

    :cond_6
    return-void

    :cond_7
    :try_start_1
    iget-object v3, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget-object v5, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget-object v5, v5, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    iget-wide v6, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    iget v8, p0, Lcom/android/email/service/MailService$2;->val$startId:I

    invoke-static {v3, v5, v6, v7, v8}, Lcom/android/email/service/MailService;->access$300(Lcom/android/email/service/MailService;Lcom/android/email/Controller;JI)Z

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
