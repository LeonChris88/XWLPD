.class public Lcom/android/email/RefreshManager;
.super Ljava/lang/Object;
.source "RefreshManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/RefreshManager$1;,
        Lcom/android/email/RefreshManager$ControllerResult;,
        Lcom/android/email/RefreshManager$SendPendingMessagesForAllAccountsImpl;,
        Lcom/android/email/RefreshManager$RefreshStatusMap;,
        Lcom/android/email/RefreshManager$Status;,
        Lcom/android/email/RefreshManager$Listener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/email/RefreshManager;


# instance fields
.field private mClock:Lcom/android/email/Clock;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mControllerResult:Lcom/android/email/Controller$Result;

.field private mErrorMessage:Ljava/lang/String;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/RefreshManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMailboxListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;

.field private mMessageListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/email/Controller;Lcom/android/email/Clock;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/RefreshManager;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/email/RefreshManager$RefreshStatusMap;

    invoke-direct {v0, v2}, Lcom/android/email/RefreshManager$RefreshStatusMap;-><init>(Lcom/android/email/RefreshManager$1;)V

    iput-object v0, p0, Lcom/android/email/RefreshManager;->mMailboxListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;

    new-instance v0, Lcom/android/email/RefreshManager$RefreshStatusMap;

    invoke-direct {v0, v2}, Lcom/android/email/RefreshManager$RefreshStatusMap;-><init>(Lcom/android/email/RefreshManager$1;)V

    iput-object v0, p0, Lcom/android/email/RefreshManager;->mMessageListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;

    iput-object p3, p0, Lcom/android/email/RefreshManager;->mClock:Lcom/android/email/Clock;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/RefreshManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/email/RefreshManager;->mController:Lcom/android/email/Controller;

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Lcom/android/email/RefreshManager$ControllerResult;

    invoke-direct {v1, p0, v2}, Lcom/android/email/RefreshManager$ControllerResult;-><init>(Lcom/android/email/RefreshManager;Lcom/android/email/RefreshManager$1;)V

    invoke-direct {v0, p4, v1}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/RefreshManager;->mControllerResult:Lcom/android/email/Controller$Result;

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/RefreshManager;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/RefreshManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/RefreshManager;)Lcom/android/email/Clock;
    .locals 1

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mClock:Lcom/android/email/Clock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/RefreshManager;)Lcom/android/email/RefreshManager$RefreshStatusMap;
    .locals 1

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mMailboxListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/RefreshManager;JJLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/email/RefreshManager;->reportError(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/RefreshManager;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/RefreshManager;->notifyRefreshStatusChanged(JJ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/RefreshManager;)Lcom/android/email/RefreshManager$RefreshStatusMap;
    .locals 1

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mMessageListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;
    .locals 5

    const-class v1, Lcom/android/email/RefreshManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/RefreshManager;->sInstance:Lcom/android/email/RefreshManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/RefreshManager;

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    sget-object v3, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/email/RefreshManager;-><init>(Landroid/content/Context;Lcom/android/email/Controller;Lcom/android/email/Clock;Landroid/os/Handler;)V

    sput-object v0, Lcom/android/email/RefreshManager;->sInstance:Lcom/android/email/RefreshManager;

    :cond_0
    sget-object v0, Lcom/android/email/RefreshManager;->sInstance:Lcom/android/email/RefreshManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyRefreshStatusChanged(JJ)V
    .locals 3

    iget-object v2, p0, Lcom/android/email/RefreshManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/RefreshManager$Listener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/email/RefreshManager$Listener;->onRefreshStatusChanged(JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private refreshMessageList(JJZZ)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/RefreshManager;->mMessageListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;

    invoke-virtual {v1, p3, p4}, Lcom/android/email/RefreshManager$RefreshStatusMap;->get(J)Lcom/android/email/RefreshManager$Status;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/RefreshManager$Status;->canRefresh()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/email/RefreshManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v8, :cond_1

    move v6, v8

    :goto_1
    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p5, :cond_2

    const-string v1, "Email"

    const-string v2, "loadMoreMessages is truerefreshMessageList AIRPLANE MODE IS ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/email/RefreshManager;->mContext:Landroid/content/Context;

    const v2, 0x7f080556

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    move v6, v0

    goto :goto_1

    :cond_2
    const-string v1, "Email"

    const-string v2, "loadMoreMessages is falserefreshMessageList AIRPLANE MODE IS ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Lcom/android/email/RefreshManager$Status;->onRefreshRequested()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/RefreshManager;->notifyRefreshStatusChanged(JJ)V

    if-eqz p5, :cond_4

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p3, p4}, Lcom/android/email/Controller;->loadMoreMessages(J)V

    :goto_2
    move v0, v8

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/email/RefreshManager;->mController:Lcom/android/email/Controller;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJZ)V

    goto :goto_2
.end method

.method private reportError(JJLjava/lang/String;)V
    .locals 7

    iput-object p5, p0, Lcom/android/email/RefreshManager;->mErrorMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/RefreshManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/RefreshManager$Listener;

    iget-object v5, p0, Lcom/android/email/RefreshManager;->mErrorMessage:Ljava/lang/String;

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/email/RefreshManager$Listener;->onMessagingError(JJLjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUpForTest()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/RefreshManager;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    return-void
.end method

.method public getLastMailboxListRefreshTime(J)J
    .locals 2

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mMailboxListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/RefreshManager$RefreshStatusMap;->get(J)Lcom/android/email/RefreshManager$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/RefreshManager$Status;->getLastRefreshTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastMessageListRefreshTime(J)J
    .locals 2

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mMessageListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/RefreshManager$RefreshStatusMap;->get(J)Lcom/android/email/RefreshManager$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/RefreshManager$Status;->getLastRefreshTime()J

    move-result-wide v0

    return-wide v0
.end method

.method getListenersForTest()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/email/RefreshManager$Listener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method getMailboxListStatusForTest(J)Lcom/android/email/RefreshManager$Status;
    .locals 1

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mMailboxListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/RefreshManager$RefreshStatusMap;->get(J)Lcom/android/email/RefreshManager$Status;

    move-result-object v0

    return-object v0
.end method

.method getMessageListStatusForTest(J)Lcom/android/email/RefreshManager$Status;
    .locals 1

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mMessageListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/RefreshManager$RefreshStatusMap;->get(J)Lcom/android/email/RefreshManager$Status;

    move-result-object v0

    return-object v0
.end method

.method public isMailboxListRefreshing(J)Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mMailboxListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/RefreshManager$RefreshStatusMap;->get(J)Lcom/android/email/RefreshManager$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/RefreshManager$Status;->isRefreshing()Z

    move-result v0

    return v0
.end method

.method public isMailboxListStale(J)Z
    .locals 6

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v0}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/email/RefreshManager;->mMailboxListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/email/RefreshManager$RefreshStatusMap;->get(J)Lcom/android/email/RefreshManager$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/RefreshManager$Status;->getLastRefreshTime()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMailboxStale(J)Z
    .locals 6

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v0}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/email/RefreshManager;->mMessageListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/email/RefreshManager$RefreshStatusMap;->get(J)Lcom/android/email/RefreshManager$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/RefreshManager$Status;->getLastRefreshTime()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMessageListRefreshing(J)Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mMessageListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/RefreshManager$RefreshStatusMap;->get(J)Lcom/android/email/RefreshManager$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/RefreshManager$Status;->isRefreshing()Z

    move-result v0

    return v0
.end method

.method public isRefreshingAnyMailboxListForTest()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mMailboxListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;

    invoke-virtual {v0}, Lcom/android/email/RefreshManager$RefreshStatusMap;->isRefreshingAny()Z

    move-result v0

    return v0
.end method

.method public isRefreshingAnyMessageListForTest()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mMessageListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;

    invoke-virtual {v0}, Lcom/android/email/RefreshManager$RefreshStatusMap;->isRefreshingAny()Z

    move-result v0

    return v0
.end method

.method public loadMoreMessages(JJ)Z
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZZ)Z

    move-result v0

    return v0
.end method

.method public refreshMailboxList(J)Z
    .locals 3

    iget-object v1, p0, Lcom/android/email/RefreshManager;->mMailboxListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/RefreshManager$RefreshStatusMap;->get(J)Lcom/android/email/RefreshManager$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/RefreshManager$Status;->canRefresh()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/email/RefreshManager$Status;->onRefreshRequested()V

    const-wide/16 v1, -0x1

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/email/RefreshManager;->notifyRefreshStatusChanged(JJ)V

    iget-object v1, p0, Lcom/android/email/RefreshManager;->mController:Lcom/android/email/Controller;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/Controller;->updateMailboxList(J)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public refreshMessageList(JJZ)Z
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZZ)Z

    move-result v0

    return v0
.end method

.method public registerListener(Lcom/android/email/RefreshManager$Listener;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/RefreshManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendPendingMessages(J)Z
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/email/RefreshManager;->notifyRefreshStatusChanged(JJ)V

    iget-object v0, p0, Lcom/android/email/RefreshManager;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/Controller;->sendPendingMessages(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public sendPendingMessagesForAllAccounts()V
    .locals 2

    new-instance v0, Lcom/android/email/RefreshManager$SendPendingMessagesForAllAccountsImpl;

    invoke-direct {v0, p0}, Lcom/android/email/RefreshManager$SendPendingMessagesForAllAccountsImpl;-><init>(Lcom/android/email/RefreshManager;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/RefreshManager$SendPendingMessagesForAllAccountsImpl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public unregisterListener(Lcom/android/email/RefreshManager$Listener;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/RefreshManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
