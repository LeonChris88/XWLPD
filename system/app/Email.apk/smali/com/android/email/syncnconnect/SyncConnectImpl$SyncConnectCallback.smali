.class public abstract Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
.super Ljava/lang/Object;
.source "SyncConnectImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/syncnconnect/SyncConnectImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SyncConnectCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddAccountFinished(Landroid/os/Bundle;J)V
    .locals 0

    return-void
.end method

.method public onAvailableAccountsReceived(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConfiguredAccountsReceived(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onDeactivateSnc()V
    .locals 0

    return-void
.end method

.method public onDeleteAccountFinished(Landroid/os/Bundle;J)V
    .locals 0

    return-void
.end method

.method public onDeleteAccountFromWebPortal(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onGetProfileFinished(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 0

    return-void
.end method

.method public onModifyAccountFinished(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onNewMailNotificationReceived(I)V
    .locals 0

    return-void
.end method

.method public onSyncAccountFinished(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V
    .locals 0

    return-void
.end method

.method public onSyncAllReceived(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncServiceInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onTagsReceived(Landroid/os/Bundle;JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncTag;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateProfileFinished(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onValidateTokenComplete(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
