.class public Lcom/android/email/ExchangeUtils;
.super Ljava/lang/Object;
.source "ExchangeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/ExchangeUtils$NullEmailService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableEasCalendarSync(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;
    .locals 2

    const/4 v0, 0x0

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy;

    const-string v1, "com.android.email.EXCHANGE_INTENT"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/emailcommon/service/EmailServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    return-object v0
.end method

.method public static isExchangeAvailable(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy;

    const-string v1, "com.android.email.EXCHANGE_INTENT"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/emailcommon/service/EmailServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    invoke-virtual {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->test()Z

    move-result v0

    return v0
.end method

.method public static startExchangeService(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.email.EXCHANGE_INTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
