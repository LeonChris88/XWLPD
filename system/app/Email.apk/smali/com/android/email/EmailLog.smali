.class public Lcom/android/email/EmailLog;
.super Ljava/lang/Object;
.source "EmailLog.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static DEBUG_LEGACY_TRANSPORT:Z

.field public static DEBUG_LOG_PRIVACY:Z

.field public static DEBUG_POP3_LOG_RAW_STREAM:Z

.field public static LOG_PRIVACY:Ljava/lang/String;

.field public static LOG_STATS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/android/email/EmailLog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/email/EmailLog;->$assertionsDisabled:Z

    sput-boolean v2, Lcom/android/email/EmailLog;->LOG_STATS:Z

    sput-boolean v2, Lcom/android/email/EmailLog;->DEBUG_POP3_LOG_RAW_STREAM:Z

    sput-boolean v1, Lcom/android/email/EmailLog;->DEBUG_LEGACY_TRANSPORT:Z

    sput-boolean v2, Lcom/android/email/EmailLog;->DEBUG_LOG_PRIVACY:Z

    const-string v0, "PRIVACY_LOGS_OMITTED"

    sput-object v0, Lcom/android/email/EmailLog;->LOG_PRIVACY:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/android/email/EmailLog;->dumpStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-boolean v0, Lcom/android/email/EmailLog;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public static assertException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0, p1}, Lcom/android/email/EmailLog;->assertException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/email/EmailLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/email/EmailLog;->getCallerClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static dumpException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/email/EmailLog;->dumpStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0, p1}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private static dumpStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/email/EmailLog;->getCallerClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/email/EmailLog;->getCallerClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static getCallerClassName()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/email/EmailLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/email/EmailLog;->getCallerClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static isLoggable(Ljava/lang/String;I)Z
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/email/Email;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/email/EmailLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/email/EmailLog;->getCallerClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
