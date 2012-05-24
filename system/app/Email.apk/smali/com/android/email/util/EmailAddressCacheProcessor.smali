.class public Lcom/android/email/util/EmailAddressCacheProcessor;
.super Ljava/lang/Object;
.source "EmailAddressCacheProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/util/EmailAddressCacheProcessor$1;,
        Lcom/android/email/util/EmailAddressCacheProcessor$UpdateRecentList;,
        Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;
    }
.end annotation


# static fields
.field private static mCacheAddressInfoArrayList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mContext:Landroid/content/Context;

.field public static newEntryBcc:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

.field public static newEntryCc:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

.field public static newEntryTo:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/util/EmailAddressCacheProcessor;->newEntryTo:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    sput-object v0, Lcom/android/email/util/EmailAddressCacheProcessor;->newEntryCc:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    sput-object v0, Lcom/android/email/util/EmailAddressCacheProcessor;->newEntryBcc:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/util/EmailAddressCacheProcessor;->mCacheAddressInfoArrayList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/email/util/EmailAddressCacheProcessor;->mCacheAddressInfoArrayList:Ljava/util/HashMap;

    return-object v0
.end method

.method public static addFromAddressToCache(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/android/email/util/EmailAddressCacheProcessor;->populateMCacheAddressInfoArrayList(Ljava/lang/String;II)V

    return-void
.end method

.method public static commitCacheInfo(Landroid/content/Context;)V
    .locals 3

    sput-object p0, Lcom/android/email/util/EmailAddressCacheProcessor;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/email/util/EmailAddressCacheProcessor$UpdateRecentList;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/email/util/EmailAddressCacheProcessor$UpdateRecentList;-><init>(Lcom/android/email/util/EmailAddressCacheProcessor$1;)V

    new-instance v1, Ljava/lang/Thread;

    const-string v2, "UpdateRecentList"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static insertAllContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 12

    sput-object p3, Lcom/android/email/util/EmailAddressCacheProcessor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    invoke-static {p1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "@"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    aget-object v5, v6, v9

    array-length v9, v8

    new-array v9, v9, [Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    sput-object v9, Lcom/android/email/util/EmailAddressCacheProcessor;->newEntryTo:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    array-length v9, v2

    new-array v9, v9, [Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    sput-object v9, Lcom/android/email/util/EmailAddressCacheProcessor;->newEntryCc:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    array-length v9, v0

    new-array v9, v9, [Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    sput-object v9, Lcom/android/email/util/EmailAddressCacheProcessor;->newEntryBcc:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    const/4 v3, 0x0

    :goto_0
    array-length v9, v8

    if-ge v3, v9, :cond_1

    aget-object v9, v8, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_0

    aget-object v9, v8, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/email/util/EmailAddressCacheProcessor;->populateMCacheAddressInfoArrayList(Ljava/lang/String;II)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aget-object v9, v8, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/email/util/EmailAddressCacheProcessor;->populateMCacheAddressInfoArrayList(Ljava/lang/String;II)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_2
    array-length v9, v2

    if-ge v3, v9, :cond_3

    aget-object v9, v2, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_2

    aget-object v9, v2, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/email/util/EmailAddressCacheProcessor;->populateMCacheAddressInfoArrayList(Ljava/lang/String;II)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    aget-object v9, v2, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/email/util/EmailAddressCacheProcessor;->populateMCacheAddressInfoArrayList(Ljava/lang/String;II)V

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_4
    array-length v9, v0

    if-ge v3, v9, :cond_5

    aget-object v9, v0, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_4

    aget-object v9, v0, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Lcom/android/email/util/EmailAddressCacheProcessor;->populateMCacheAddressInfoArrayList(Ljava/lang/String;II)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    aget-object v9, v0, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Lcom/android/email/util/EmailAddressCacheProcessor;->populateMCacheAddressInfoArrayList(Ljava/lang/String;II)V

    goto :goto_5

    :cond_5
    new-instance v1, Lcom/android/email/util/EmailAddressCacheProcessor$UpdateRecentList;

    const/4 v9, 0x0

    invoke-direct {v1, v9}, Lcom/android/email/util/EmailAddressCacheProcessor$UpdateRecentList;-><init>(Lcom/android/email/util/EmailAddressCacheProcessor$1;)V

    new-instance v7, Ljava/lang/Thread;

    const-string v9, "UpdateRecentList"

    invoke-direct {v7, v1, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static populateMCacheAddressInfoArrayList(Ljava/lang/String;II)V
    .locals 7

    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v5, "EmailAddressCacheProcessor"

    const-string v6, "populateMCacheAddressInfoArrayList sender null"

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v5, "EmailAddressCacheProcessor"

    const-string v6, "populateMCacheAddressInfoArrayList received null email address"

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/android/email/util/EmailAddressCacheProcessor;->mCacheAddressInfoArrayList:Ljava/util/HashMap;

    monitor-enter v6

    const/4 v1, 0x0

    :try_start_0
    sget-object v5, Lcom/android/email/util/EmailAddressCacheProcessor;->mCacheAddressInfoArrayList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/email/util/EmailAddressCacheProcessor;->mCacheAddressInfoArrayList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    move-object v1, v0

    iget v5, v1, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mUsageCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mUsageCount:I

    :goto_1
    sget-object v5, Lcom/android/email/util/EmailAddressCacheProcessor;->mCacheAddressInfoArrayList:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    new-instance v2, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    const/4 v5, 0x1

    invoke-direct {v2, p0, p1, p2, v5}, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;-><init>(Ljava/lang/String;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_1
.end method
