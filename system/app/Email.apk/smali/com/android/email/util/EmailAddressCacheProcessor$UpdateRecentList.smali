.class Lcom/android/email/util/EmailAddressCacheProcessor$UpdateRecentList;
.super Ljava/lang/Object;
.source "EmailAddressCacheProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/util/EmailAddressCacheProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateRecentList"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/util/EmailAddressCacheProcessor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/util/EmailAddressCacheProcessor$UpdateRecentList;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    const/16 v13, 0x13

    invoke-static {v13}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Lcom/android/email/util/EmailAddressCacheProcessor;->access$100()Ljava/util/HashMap;

    move-result-object v14

    monitor-enter v14

    :try_start_0
    invoke-static {}, Lcom/android/email/util/EmailAddressCacheProcessor;->access$100()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-string v13, "EmailAddressCacheProcessor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Size of cache  - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/android/email/util/EmailAddressCacheProcessor;->access$100()Ljava/util/HashMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Lcom/android/email/util/EmailAddressCacheProcessor;->access$100()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    iget-object v13, v1, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mEmailAddress:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    if-nez v10, :cond_1

    const-string v13, "EmailAddressCacheProcessor"

    const-string v15, "UpdateEmailCacheTask | Received Sender null"

    invoke-static {v13, v15}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    :cond_1
    :try_start_1
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v13, "EmailAddressCacheProcessor"

    const-string v15, "UpdateEmailCacheTask | Received null email address"

    invoke-static {v13, v15}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    const-string v13, "EmailAddressCacheProcessor"

    const-string v15, "UpdateEmailCacheTask | Received null Sender Name"

    invoke-static {v13, v15}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v5

    :cond_3
    const-string v13, "accountAddress"

    invoke-virtual {v2, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "accountName"

    invoke-virtual {v2, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "accountSource"

    iget v15, v1, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mSourceType:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "operationType"

    iget v15, v1, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mOperationType:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "timeStamp"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v13, "usageCount"

    iget v15, v1, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mUsageCount:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v13, Lcom/android/emailcommon/provider/EmailContent$EmailAddressCache;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    const/16 v15, 0xa

    if-lt v13, v15, :cond_0

    :try_start_2
    sget-object v13, Lcom/android/email/util/EmailAddressCacheProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "com.android.email.provider"

    invoke-virtual {v13, v15, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string v13, "EmailAddressCacheProcessor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "UpdateEmailCacheTask | exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v13

    if-nez v13, :cond_5

    :try_start_4
    sget-object v13, Lcom/android/email/util/EmailAddressCacheProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "com.android.email.provider"

    invoke-virtual {v13, v15, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    :try_start_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    :cond_5
    invoke-static {}, Lcom/android/email/util/EmailAddressCacheProcessor;->access$100()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    monitor-exit v14

    return-void

    :catch_1
    move-exception v4

    const-string v13, "EmailAddressCacheProcessor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "UpdateEmailCacheTask | exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method
