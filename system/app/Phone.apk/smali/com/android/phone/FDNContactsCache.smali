.class public Lcom/android/phone/FDNContactsCache;
.super Ljava/lang/Object;
.source "FDNContactsCache.java"


# static fields
.field protected static sInstance:Lcom/android/phone/FDNContactsCache;


# instance fields
.field private mCacheLock:Ljava/lang/Object;

.field protected mFDNRecordsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMessageQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueLock:Ljava/lang/Object;

.field protected mbDone:Z

.field protected mbLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/FDNContactsCache;->sInstance:Lcom/android/phone/FDNContactsCache;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/FDNContactsCache;->mCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/FDNContactsCache;->mQueueLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/phone/FDNContactsCache;->mbDone:Z

    iput-boolean v1, p0, Lcom/android/phone/FDNContactsCache;->mbLoading:Z

    return-void
.end method

.method public static getInstance()Lcom/android/phone/FDNContactsCache;
    .locals 1

    sget-object v0, Lcom/android/phone/FDNContactsCache;->sInstance:Lcom/android/phone/FDNContactsCache;

    if-nez v0, :cond_0

    const-string v0, "get new instance"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/android/phone/FDNContactsCache;

    invoke-direct {v0}, Lcom/android/phone/FDNContactsCache;-><init>()V

    sput-object v0, Lcom/android/phone/FDNContactsCache;->sInstance:Lcom/android/phone/FDNContactsCache;

    :cond_0
    sget-object v0, Lcom/android/phone/FDNContactsCache;->sInstance:Lcom/android/phone/FDNContactsCache;

    return-object v0
.end method

.method public static getNameFromMsg(Landroid/os/Message;)Ljava/lang/String;
    .locals 3

    const-string v1, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "NAME_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getNameIfNumberIsInFDNCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmNumberIfFDN - given_number - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    move-object v0, p0

    invoke-static {}, Lcom/android/phone/FDNContactsCache;->getInstance()Lcom/android/phone/FDNContactsCache;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/phone/FDNContactsCache;->queryFDNContactByNumberOnlyIfLoaded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmNumberIfFDN - found - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "confirmNumberIfFDN - not found"

    invoke-static {v2}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNumberFromMsg(Landroid/os/Message;)Ljava/lang/String;
    .locals 3

    const-string v1, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "NUMBER_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private getRecord(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/phone/FDNContactsCache;->mCacheLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    :cond_0
    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "record not found for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    :cond_1
    return-object v3

    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FDNContactsCache"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendResultForFDNContactQueryToMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    const-string v2, "sendResultForFDNContactQueryToMessage"

    invoke-static {v2}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/phone/FDNContactsCache;->getRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "NUMBER_KEY"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "NAME_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendResultForFDNContactQueryToMessage - sendToTarget name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private startLoading(Landroid/content/Context;)V
    .locals 1

    const-string v0, "startLoading"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/FDNContactsCache;->mbLoading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/FDNContactsCache;->mbDone:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/FDNContactsCache;->mbLoading:Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "startLoading - already loading"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "clear cache"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/FDNContactsCache;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/phone/FDNContactsCache;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-boolean v2, p0, Lcom/android/phone/FDNContactsCache;->mbDone:Z

    iput-boolean v2, p0, Lcom/android/phone/FDNContactsCache;->mbLoading:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public queryFDNContactByNumber(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/phone/FDNContactsCache;->mbDone:Z

    if-eqz v0, :cond_0

    const-string v0, "queryFDNContactByNumber - mloaded"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/android/phone/FDNContactsCache;->sendResultForFDNContactQueryToMessage(Ljava/lang/String;Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "queryFDNContactByNumber - !mloaded"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/FDNContactsCache;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/phone/FDNContactsCache;->startLoading(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public queryFDNContactByNumberOnlyIfLoaded(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v1, "queryFDNContactByNumberOnlyIfLoaded"

    invoke-static {v1}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/phone/FDNContactsCache;->mbDone:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/FDNContactsCache;->getRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "not yet loaded..."

    invoke-static {v1}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
