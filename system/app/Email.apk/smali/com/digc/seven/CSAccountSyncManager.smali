.class public Lcom/digc/seven/CSAccountSyncManager;
.super Ljava/lang/Object;
.source "CSAccountSyncManager.java"


# static fields
.field private static mInstance:Lcom/digc/seven/CSAccountSyncManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/digc/seven/CSAccountSyncManager;
    .locals 1

    sget-object v0, Lcom/digc/seven/CSAccountSyncManager;->mInstance:Lcom/digc/seven/CSAccountSyncManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/digc/seven/CSAccountSyncManager;

    invoke-direct {v0}, Lcom/digc/seven/CSAccountSyncManager;-><init>()V

    sput-object v0, Lcom/digc/seven/CSAccountSyncManager;->mInstance:Lcom/digc/seven/CSAccountSyncManager;

    :cond_0
    sget-object v0, Lcom/digc/seven/CSAccountSyncManager;->mInstance:Lcom/digc/seven/CSAccountSyncManager;

    return-object v0
.end method


# virtual methods
.method public getCBAccount(Landroid/content/Context;)[[Ljava/lang/String;
    .locals 11

    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    check-cast v10, [[Ljava/lang/String;

    const/4 v7, 0x0

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "emailaddress"

    aput-object v1, v3, v2

    const-string v1, "sevenaccountkey"

    aput-object v1, v3, v4

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "typeMsg = 1 "

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_2

    const/4 v1, 0x2

    filled-new-array {v8, v1}, [I

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    move-object v10, v0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    aget-object v1, v10, v9

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    aget-object v1, v10, v9

    const/4 v2, 0x1

    const/4 v4, 0x1

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    :catch_0
    move-exception v1

    if-eqz v7, :cond_1

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v10

    :cond_2
    if-eqz v7, :cond_1

    goto :goto_1
.end method

.method public getSevenAccount(Landroid/content/Context;)Ljava/util/Hashtable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "email"

    aput-object v0, v2, v1

    const-string v0, "account_id"

    aput-object v0, v2, v3

    const/4 v7, 0x0

    :try_start_0
    const-string v0, "CSAccountSyncManager"

    const-string v1, "query : status = 5 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/seven/Z7/provider/Z7Content$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, " status != ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "5"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    if-eqz v6, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v9

    :catch_0
    move-exception v8

    :try_start_1
    const-string v0, "CSAccountSyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public sync(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/digc/seven/CSAccountSyncManager;->getCBAccount(Landroid/content/Context;)[[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/digc/seven/CSAccountSyncManager;->getSevenAccount(Landroid/content/Context;)Ljava/util/Hashtable;

    move-result-object v3

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    aget-object v4, v0, v2

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v4, v0, v2

    aget-object v5, v4, v7

    aget-object v4, v0, v2

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/email/adapter/SevenAdapter;->getAccountFacade()Lcom/android/email/combined/AccountFacade;

    move-result-object v4

    aget-object v5, v0, v2

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/email/combined/AccountFacade;->quietRemoveAccount(I)V

    const/4 v1, 0x0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method
