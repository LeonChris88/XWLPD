.class public Lcom/android/email/NotificationController;
.super Lcom/android/email/variant/NotificationController;
.source "NotificationController.java"


# static fields
.field protected static sInstance:Lcom/android/email/NotificationController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/Clock;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/variant/NotificationController;-><init>(Landroid/content/Context;Lcom/android/email/Clock;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;
    .locals 3

    const-class v1, Lcom/android/email/NotificationController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/NotificationController;

    sget-object v2, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    invoke-direct {v0, p0, v2}, Lcom/android/email/NotificationController;-><init>(Landroid/content/Context;Lcom/android/email/Clock;)V

    sput-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    :cond_0
    sget-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public cancelLoginFailedNotification(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->cancelLoginFailedNotification(J)V

    return-void
.end method

.method public cancelNewMessageNotification(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->cancelNewMessageNotification(J)V

    return-void
.end method

.method public cancelNotification(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/email/variant/NotificationController;->cancelNotification(I)V

    return-void
.end method

.method public postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/android/email/variant/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method

.method public showDownloadForwardFailedNotification(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/email/variant/NotificationController;->showDownloadForwardFailedNotification(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method public showLoginFailedNotification(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->showLoginFailedNotification(J)V

    return-void
.end method

.method public showNewMessageNotification(JII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/email/variant/NotificationController;->showNewMessageNotification(JII)V

    return-void
.end method

.method public showSendFailedNotification(JJI)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/email/variant/NotificationController;->showSendFailedNotification(JJI)V

    return-void
.end method
