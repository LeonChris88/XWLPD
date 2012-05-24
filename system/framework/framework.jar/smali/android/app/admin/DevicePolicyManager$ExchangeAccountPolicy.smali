.class public Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExchangeAccountPolicy"
.end annotation


# instance fields
.field private mAccId:J

.field private mDomain:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private final mService:Landroid/app/enterprise/IExchangeAccountPolicy;

.field private mUser:Ljava/lang/String;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 1

    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eas_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    invoke-interface/range {v1 .. v19}, Landroid/app/enterprise/IExchangeAccountPolicy;->addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v20

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    move-object/from16 v0, v20

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public deleteAccount(J)Z
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->deleteAccount(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountDetails(J)Landroid/app/enterprise/Account;
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->getAccountDetails(J)Landroid/app/enterprise/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public sendAccountsChangedBroadcast()V
    .locals 8

    const-wide/16 v2, 0x0

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_1

    :try_start_0
    iget-wide v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iget-wide v5, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    :cond_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v0}, Landroid/app/enterprise/IExchangeAccountPolicy;->sendAccountsChangedBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v7

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAcceptAllCertificates(ZJ)Z
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAcceptAllCertificates(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 8

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v7

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAccountName(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlwaysVibrateOnEmailNotification(ZJ)Z
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAlwaysVibrateOnEmailNotification(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAsDefaultAccount(J)Z
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAsDefaultAccount(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setClientAuthCert([BLjava/lang/String;J)V
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/IExchangeAccountPolicy;->setClientAuthCert([BLjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDomain(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iput-wide p2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    :cond_0
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;J)Z
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iput-wide p2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setHost(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iput-wide p2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    :cond_0
    return-void
.end method

.method public setPassword(Ljava/lang/String;J)Z
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setPassword(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPastDaysToSync(IJ)Z
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setPastDaysToSync(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProtocolVersion(Ljava/lang/String;J)Z
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setProtocolVersion(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSSL(ZJ)Z
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSSL(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSenderName(Ljava/lang/String;J)Z
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSenderName(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setServerPathPrefix(Ljava/lang/String;J)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setSignature(Ljava/lang/String;J)Z
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSignature(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSilentVibrateOnEmailNotification(ZJ)Z
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSilentVibrateOnEmailNotification(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSyncInterval(IJ)Z
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSyncInterval(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTLS(ZJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setUser(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    iput-wide p2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    :cond_0
    return-void
.end method
