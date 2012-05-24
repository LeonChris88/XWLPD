.class public Lcom/digc/seven/Z7MailHandler;
.super Ljava/lang/Object;
.source "Z7MailHandler.java"


# static fields
.field private static ca:Lcom/android/email/Email;

.field private static z7Handler:Lcom/digc/seven/Z7MailHandler;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Z7MailHandler"

    iput-object v0, p0, Lcom/digc/seven/Z7MailHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/android/email/Email;
    .locals 1

    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    return-object v0
.end method

.method public static getAccountBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_connector"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isp_type"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x6

    if-ne p3, v1, :cond_0

    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    const-string v1, "url"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ignore_cert"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "ignore_cert"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;
    .locals 1

    sget-object v0, Lcom/digc/seven/Z7MailHandler;->z7Handler:Lcom/digc/seven/Z7MailHandler;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/email/Email;->getApplication(Landroid/content/Context;)Lcom/android/email/Email;

    move-result-object v0

    sput-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    new-instance v0, Lcom/digc/seven/Z7MailHandler;

    invoke-direct {v0}, Lcom/digc/seven/Z7MailHandler;-><init>()V

    sput-object v0, Lcom/digc/seven/Z7MailHandler;->z7Handler:Lcom/digc/seven/Z7MailHandler;

    :cond_0
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->z7Handler:Lcom/digc/seven/Z7MailHandler;

    return-object v0
.end method


# virtual methods
.method public addAccount(Landroid/os/Bundle;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v2, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v2}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    sget-object v2, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v2}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v2

    invoke-interface {v2}, Lcom/seven/Z7/common/IZ7Service;->isNetworkAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v2}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/seven/Z7/common/IZ7Service;->addAccount(Landroid/os/Bundle;)I

    move-result v1

    const-string v2, "Z7MailHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add count result :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_1
    const-string v2, "Z7MailHandler"

    const-string v3, "Not connected to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
.end method

.method public cancelDownloadMailAttachment(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/seven/Z7/common/IZ7Service;->cancelDownloadMailAttachment(III)V

    return-void

    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Z7MailHandler"

    const-string v2, "Cancel failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public cancelDownloadMailBody(IJI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/seven/Z7/common/IZ7Service;->cancelDownloadMailBody(IJI)V

    return-void

    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Z7MailHandler"

    const-string v2, "cancelDownloadMailBody()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public cancelTask(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/seven/Z7/common/IZ7Service;->cancelTask(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public checkContentUpdates(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    const/16 v2, 0x100

    invoke-interface {v1, p1, v2}, Lcom/seven/Z7/common/IZ7Service;->checkContentUpdates(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "Z7MailHandler"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public clearDownloadNotification(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/seven/Z7/common/IZ7Service;->clearDownloadNotification(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public delete(IIIJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Z7MailHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete mail :256:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v0

    const/16 v2, 0x100

    move v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/seven/Z7/common/IZ7Service;->delete(IIIJ)V

    return-void

    :cond_0
    const-string v0, "Z7MailHandler"

    const-string v1, "Not connected to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public downloadMailAttachment(IIILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/seven/Z7/common/IZ7Service;->downloadMailAttachment(IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public downloadMailBody(IJIZLjava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/seven/Z7/common/IZ7Service;->downloadMailBody(IJIZLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    return v8

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    const-string v0, "Z7MailHandler"

    const-string v1, "Not connected to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public downloadMailContentAttachments(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/seven/Z7/common/IZ7Service;->downloadMailContentAttachments(II)V

    return-void

    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Z7MailHandler"

    const-string v2, "downloadMailContentAttachments"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public getAvailableConnectors(Landroid/os/Handler;Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;Ljava/lang/Runnable;)V
    .locals 8

    sget-object v7, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    new-instance v0, Lcom/digc/seven/Z7MailHandler$2;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/digc/seven/Z7MailHandler$2;-><init>(Lcom/digc/seven/Z7MailHandler;Ljava/lang/Runnable;Landroid/os/Handler;Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v7, p1, v0}, Lcom/android/email/Email;->callWhenServiceConnected(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public isNetworkAvailable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v2, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v2}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v2}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v2

    invoke-interface {v2}, Lcom/seven/Z7/common/IZ7Service;->isNetworkAvailable()Z

    move-result v1

    const-string v2, "Z7MailHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkStatus :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_0
    const-string v2, "Z7MailHandler"

    const-string v3, "Not connected to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
.end method

.method public markFavorite([Lcom/seven/Z7/common/Z7EmailId;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/seven/Z7/common/IZ7Service;->markFavorite([Lcom/seven/Z7/common/Z7EmailId;Z)V

    return-void

    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public markRead(IIJZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Z7MailHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markRead :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/seven/Z7/common/IZ7Service;->markRead(IIJZ)V

    return-void

    :cond_0
    const-string v0, "Z7MailHandler"

    const-string v1, "Not connected to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public moveMail(IIJI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/seven/Z7/common/IZ7Service;->moveMail(IIJI)V

    return-void

    :cond_0
    const-string v0, "Z7MailHandler"

    const-string v1, "Not connected to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V
    .locals 1

    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0, p1}, Lcom/android/email/Email;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    return-void
.end method

.method public relogin(ILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, -0x1

    sget-object v2, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v2}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v2}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/seven/Z7/common/IZ7Service;->relogin(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    throw v0

    :cond_0
    const-string v2, "Z7MailHandler"

    const-string v3, "Not connected to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
.end method

.method public removeAccount(Landroid/os/Handler;ILandroid/app/Activity;)V
    .locals 2

    const-string v0, "Z7MailHandler"

    const-string v1, "begin removeAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    new-instance v1, Lcom/digc/seven/Z7MailHandler$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/digc/seven/Z7MailHandler$1;-><init>(Lcom/digc/seven/Z7MailHandler;ILandroid/app/Activity;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/email/Email;->callWhenServiceConnected(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendMessage(Lcom/android/emailcommon/provider/EmailContent$Message;[Lcom/android/emailcommon/provider/EmailContent$Attachment;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v3, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v3}, Lcom/android/email/Email;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Lcom/digc/seven/SevenMessageManager;->saveforSeven(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;[Lcom/android/emailcommon/provider/EmailContent$Attachment;I)I

    move-result v1

    :try_start_0
    sget-object v3, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v3}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v3}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    long-to-int v4, v4

    const/16 v5, 0x100

    const/4 v6, 0x2

    invoke-interface {v3, v4, v5, v6, v1}, Lcom/seven/Z7/common/IZ7Service;->sendMessage(IIII)I

    move-result v2

    const-string v3, "soundchan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Z7MailHandler: z7service sendMessage result= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v3, "Z7MailHandler"

    const-string v4, "Not connected to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3}, Landroid/os/RemoteException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3}, Landroid/os/RemoteException;-><init>()V

    throw v3
.end method

.method public setMookSevenNoti()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "checkbox_beep"

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "checkbox_visual"

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "checkbox_vibrate"

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v0}, Lcom/digc/seven/Z7MailHandler;->updateSettings(ILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setServiceState(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/seven/Z7/common/IZ7Service;->setServiceState(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string v1, "Z7MailHandler"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public unRegisterListener(Lcom/android/email/Email$Z7ConnectionListener;)V
    .locals 1

    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0, p1}, Lcom/android/email/Email;->unregisterListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    return-void
.end method

.method public updateFolderSyncModes(ILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/seven/Z7/common/IZ7Service;->updateFolderSyncModes(ILjava/util/Map;)V

    return-void

    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Z7MailHandler"

    const-string v2, "Failed to update folder sync modes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public updateSettings(ILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/seven/Z7/common/IZ7Service;->updateSettings(ILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method
