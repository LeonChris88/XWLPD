.class public Lcom/android/email/irm/IRMEnforcer;
.super Ljava/lang/Object;
.source "IRMEnforcer.java"


# static fields
.field static sInstance:Lcom/android/email/irm/IRMEnforcer;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/email/irm/IRMEnforcer;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;
    .locals 2

    const-class v1, Lcom/android/email/irm/IRMEnforcer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/irm/IRMEnforcer;->sInstance:Lcom/android/email/irm/IRMEnforcer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/irm/IRMEnforcer;

    invoke-direct {v0, p0}, Lcom/android/email/irm/IRMEnforcer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/irm/IRMEnforcer;->sInstance:Lcom/android/email/irm/IRMEnforcer;

    :cond_0
    sget-object v0, Lcom/android/email/irm/IRMEnforcer;->sInstance:Lcom/android/email/irm/IRMEnforcer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isForwardAllowed(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isReplyAllAllowed(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isReplyAllowed(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIRMLicenseFlag(J)I
    .locals 9

    const/4 v4, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/email/irm/IRMEnforcer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "IRMLicenseFlag"

    aput-object v3, v2, v8

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v6, -0x1

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "IRMLicenseFlag"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return v6
.end method

.method public isExportAllowed(J)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isExtractAllowed(J)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isForwardAllowed(J)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIRMEnabled(J)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/irm/IRMEnforcer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IRMTemplateId"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v9, 0x0

    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_1
    return v9

    :cond_1
    const/4 v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "IRM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IRMEnforcer: exception in querying db:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public isPrintAllowed(J)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isReplyAllAllowed(J)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isReplyAllowed(J)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
