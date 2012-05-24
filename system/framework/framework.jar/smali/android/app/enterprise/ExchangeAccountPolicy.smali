.class public Landroid/app/enterprise/ExchangeAccountPolicy;
.super Ljava/lang/Object;
.source "ExchangeAccountPolicy.java"


# static fields
.field public static final ACTION_CBA_INSTALL_STATUS:Ljava/lang/String; = "android.intent.action.sec.CBA_INSTALL_STATUS"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAccId:J

.field private mDomain:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private final mService:Landroid/app/enterprise/IExchangeAccountPolicy;

.field private mUser:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ExchangeAccountPolicy"

    sput-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eas_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    return-void
.end method


# virtual methods
.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

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

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    move-object/from16 v0, v20

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIIZII[BLjava/lang/String;)J
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

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

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    move/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    invoke-interface/range {v1 .. v31}, Landroid/app/enterprise/IExchangeAccountPolicy;->addNewAccount_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v32

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    move-object/from16 v0, v32

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IExchangeAccountPolicy;->createAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v6

    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public deleteAccount(J)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->deleteAccount(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountDetails(J)Landroid/app/enterprise/Account;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->getAccountDetails(J)Landroid/app/enterprise/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getAllEASAccounts()[Landroid/app/enterprise/Account;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IExchangeAccountPolicy;->getAllEASAccounts()[Landroid/app/enterprise/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IExchangeAccountPolicy;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendAccountsChangedBroadcast()V
    .locals 8

    const-wide/16 v2, 0x0

    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_1

    :try_start_0
    iget-wide v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iget-wide v5, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/enterprise/ExchangeAccountPolicy;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    :cond_0
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v0}, Landroid/app/enterprise/IExchangeAccountPolicy;->sendAccountsChangedBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v7

    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAcceptAllCertificates(ZJ)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAcceptAllCertificates(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 8

    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

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

    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAccountName(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlwaysVibrateOnEmailNotification(ZJ)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAlwaysVibrateOnEmailNotification(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAsDefaultAccount(J)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAsDefaultAccount(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setClientAuthCert([BLjava/lang/String;J)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/IExchangeAccountPolicy;->setClientAuthCert([BLjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDataSyncs(ZZZZJ)Z
    .locals 8

    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/enterprise/IExchangeAccountPolicy;->setDataSyncs(ZZZZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v7

    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDomain(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iput-wide p2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    :cond_0
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;J)Z
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iput-wide p2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setHost(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iput-wide p2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    :cond_0
    return-void
.end method

.method public setPassword(Ljava/lang/String;J)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setPassword(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPastDaysToSync(IJ)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setPastDaysToSync(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProtocolVersion(Ljava/lang/String;J)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setProtocolVersion(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSSL(ZJ)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSSL(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSenderName(Ljava/lang/String;J)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSenderName(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

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

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSignature(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSilentVibrateOnEmailNotification(ZJ)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSilentVibrateOnEmailNotification(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSyncInterval(IJ)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSyncInterval(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSyncPeakTimings(IIIJ)Z
    .locals 7

    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSyncPeakTimings(IIIJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v6

    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSyncSchedules(IIIJ)Z
    .locals 7

    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSyncSchedules(IIIJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v6

    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUser(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    iput-wide p2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    :cond_0
    return-void
.end method
