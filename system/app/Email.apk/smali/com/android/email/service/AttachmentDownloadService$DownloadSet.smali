.class Lcom/android/email/service/AttachmentDownloadService$DownloadSet;
.super Ljava/util/TreeSet;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeSet",
        "<",
        "Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field final mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchdogPendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/email/service/AttachmentDownloadService;


# direct methods
.method constructor <init>(Lcom/android/email/service/AttachmentDownloadService;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    invoke-direct {p0, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/service/AttachmentDownloadService$DownloadSet;J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->getDownloadInProgress(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/service/AttachmentDownloadService$DownloadSet;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->onWatchdogAlarm()V

    return-void
.end method

.method private cancelDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v1, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    return-void
.end method

.method private declared-synchronized getDownloadInProgress(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onWatchdogAlarm()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    iget-wide v6, v3, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    sub-long v4, v1, v6

    const-wide/16 v6, 0x7530

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "AttachmentService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "== Download of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v3, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " timed out"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->cancelDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mWatchdogPendingIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mWatchdogPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_3
    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v6, v6, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    invoke-virtual {v6}, Lcom/android/email/EmailConnectivityManager;->hasConnectivity()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->processQueue()V

    :cond_4
    return-void
.end method

.method private startDownload(Landroid/content/Intent;Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v4, 0x3a98

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->startTime:J

    iput-boolean v0, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/emailcommon/service/EmailServiceProxy;

    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    invoke-static {v3}, Lcom/android/email/service/AttachmentDownloadService;->access$500(Lcom/android/email/service/AttachmentDownloadService;)Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;

    move-result-object v3

    invoke-direct {v7, v2, p1, v3}, Lcom/android/emailcommon/service/EmailServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    iget-wide v2, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    iget v6, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    const/4 v8, 0x2

    if-eq v6, v8, :cond_1

    :goto_0
    invoke-virtual {v7, v2, v3, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->loadAttachment(JZ)V

    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mWatchdogPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->createWatchdogPendingIntent(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mWatchdogPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method createWatchdogPendingIntent(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/service/AttachmentDownloadService$Watchdog;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mWatchdogPendingIntent:Landroid/app/PendingIntent;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method declared-synchronized downloadsForAccount(J)I
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    iget-wide v3, v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized endDownload(JI)V
    .locals 22

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentFailureMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz p3, :cond_1

    if-nez v9, :cond_0

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :cond_0
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentFailureMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v12

    const/16 v16, 0x20

    move/from16 v0, p3

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    sget-boolean v16, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v16, :cond_2

    const-string v16, "AttachmentService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "== The download for attachment #"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " will be retried"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v12, :cond_3

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v12, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/email/service/AttachmentDownloadService;->access$300(Lcom/android/email/service/AttachmentDownloadService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    if-eqz v12, :cond_5

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->remove(Ljava/lang/Object;)Z

    :cond_5
    sget-boolean v16, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v16, :cond_7

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget-wide v0, v12, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    const-wide/16 v18, 0x3e8

    div-long v13, v16, v18

    :cond_6
    if-nez p3, :cond_d

    const-string v15, "Success"

    :goto_1
    const-string v16, "AttachmentService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<< Download finished for attachment #"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "; "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " seconds from request, status: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-wide v3, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_8

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    iget v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x4

    if-eqz v16, :cond_b

    const/16 v16, 0x11

    move/from16 v0, p3

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Lcom/android/emailcommon/provider/EmailContent;->delete(Landroid/content/Context;Landroid/net/Uri;J)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/android/email/NotificationController;->showDownloadForwardFailedNotification(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    const/4 v8, 0x1

    :cond_9
    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-wide/from16 v17, v0

    invoke-static/range {v16 .. v18}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v16

    if-nez v16, :cond_b

    sget-boolean v16, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v16, :cond_a

    const-string v16, "AttachmentService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "== Downloads finished for outgoing msg #"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-wide v0, v12, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->messageId:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    iget-wide v0, v12, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    move-wide/from16 v17, v0

    invoke-static/range {v16 .. v18}, Lcom/android/email/service/MailService;->actionSendPendingMail(Landroid/content/Context;J)V

    :cond_b
    const/16 v16, 0x10

    move/from16 v0, p3

    move/from16 v1, v16

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Lcom/android/emailcommon/provider/EmailContent;->delete(Landroid/content/Context;Landroid/net/Uri;J)I

    :cond_c
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/email/service/AttachmentDownloadService;->access$300(Lcom/android/email/service/AttachmentDownloadService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    :cond_d
    :try_start_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    :cond_e
    if-nez v8, :cond_c

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const/4 v10, 0x6

    const-string v16, "flags"

    iget v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x7

    move/from16 v0, v17

    iput v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method declared-synchronized findDownloadRequest(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v3, v3, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v3}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    iget-wide v3, v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized onChange(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v3, v4}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v2

    invoke-static {p2}, Lcom/android/email/service/AttachmentDownloadService;->access$100(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v3

    int-to-long v0, v3

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "AttachmentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "== Attachment changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v2, :cond_2

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "AttachmentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "== Attachment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was in queue, removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    invoke-static {v3}, Lcom/android/email/service/AttachmentDownloadService;->access$300(Lcom/android/email/service/AttachmentDownloadService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_3

    if-nez v2, :cond_5

    new-instance v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/email/service/AttachmentDownloadService$1;)V

    invoke-virtual {p0, v2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "AttachmentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "== Download queued for attachment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", priority time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized processQueue()V
    .locals 21

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AttachmentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== Checking attachment queue, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v4, v4, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v4}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v1, v1, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->clone()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->downloadsForAccount(J)I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_2

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "AttachmentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== Skip #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; maxed for acct #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_1
    move-object/from16 v0, v19

    iget-boolean v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v1, v1, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->tryStartDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)Z

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v1, v1, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    invoke-virtual {v1}, Lcom/android/email/EmailConnectivityManager;->isBackgroundDataAllowed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v1, v1, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    invoke-virtual {v1}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    rsub-int/lit8 v11, v1, 0x2

    const/4 v1, 0x1

    if-le v11, v1, :cond_4

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/16 v3, 0x19

    invoke-static {v1, v3}, Lcom/android/emailcommon/provider/EmailContent;->uriWithLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v1, v1, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/email/AttachmentInfo;->PROJECTION:[Ljava/lang/String;

    const-string v4, "contentUri isnull AND flags=0 AND messageKey IN (SELECT _id FROM Message WHERE mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,4,1))"

    const/4 v5, 0x0

    const-string v6, "_id DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v1, v1, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    :cond_6
    :goto_2
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x4

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v1, v1, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    if-nez v7, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v1, v1, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v3, v14, v15}, Lcom/android/emailcommon/provider/EmailContent;->delete(Landroid/content/Context;Landroid/net/Uri;J)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    invoke-virtual {v1, v7, v13}, Lcom/android/email/service/AttachmentDownloadService;->canPrefetchForAccount(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v16, Lcom/android/email/AttachmentInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v1, v1, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v12}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/email/AttachmentInfo;->isEligibleForDownload()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v1, v1, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-static {v1, v14, v15}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v10

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v1, v1, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentFailureMap:Ljava/util/HashMap;

    iget-wide v3, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x5

    if-gt v1, v3, :cond_6

    :cond_8
    new-instance v19, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v1, v1, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v10, v3}, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/email/service/AttachmentDownloadService$1;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v1, v1, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->tryStartDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_9
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method declared-synchronized tryStartDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-wide v6, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    invoke-static {v5, v6, v7}, Lcom/android/email/service/AttachmentDownloadService;->access$400(Lcom/android/email/service/AttachmentDownloadService;J)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v6, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_3

    move v0, v4

    :goto_1
    if-nez v0, :cond_0

    :try_start_2
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "AttachmentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> Starting download for attachment #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->startDownload(Landroid/content/Intent;Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    move v3, v4

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->cancelDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
