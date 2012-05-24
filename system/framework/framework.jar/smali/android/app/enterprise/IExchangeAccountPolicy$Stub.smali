.class public abstract Landroid/app/enterprise/IExchangeAccountPolicy$Stub;
.super Landroid/os/Binder;
.source "IExchangeAccountPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IExchangeAccountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IExchangeAccountPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IExchangeAccountPolicy"

.field static final TRANSACTION_addNewAccount:I = 0x2

.field static final TRANSACTION_addNewAccount_ex:I = 0x3

.field static final TRANSACTION_createAccount:I = 0x1

.field static final TRANSACTION_deleteAccount:I = 0x14

.field static final TRANSACTION_getAccountDetails:I = 0x13

.field static final TRANSACTION_getAccountId:I = 0x12

.field static final TRANSACTION_getAllEASAccounts:I = 0x19

.field static final TRANSACTION_getDeviceId:I = 0x1a

.field static final TRANSACTION_sendAccountsChangedBroadcast:I = 0x15

.field static final TRANSACTION_setAcceptAllCertificates:I = 0x6

.field static final TRANSACTION_setAccountBaseParameters:I = 0x4

.field static final TRANSACTION_setAccountName:I = 0x11

.field static final TRANSACTION_setAlwaysVibrateOnEmailNotification:I = 0x7

.field static final TRANSACTION_setAsDefaultAccount:I = 0x10

.field static final TRANSACTION_setClientAuthCert:I = 0xc

.field static final TRANSACTION_setDataSyncs:I = 0x18

.field static final TRANSACTION_setPassword:I = 0x9

.field static final TRANSACTION_setPastDaysToSync:I = 0xd

.field static final TRANSACTION_setProtocolVersion:I = 0xa

.field static final TRANSACTION_setSSL:I = 0x5

.field static final TRANSACTION_setSenderName:I = 0xf

.field static final TRANSACTION_setSignature:I = 0xb

.field static final TRANSACTION_setSilentVibrateOnEmailNotification:I = 0x8

.field static final TRANSACTION_setSyncInterval:I = 0xe

.field static final TRANSACTION_setSyncPeakTimings:I = 0x16

.field static final TRANSACTION_setSyncSchedules:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.enterprise.IExchangeAccountPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.app.enterprise.IExchangeAccountPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/enterprise/IExchangeAccountPolicy;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/enterprise/IExchangeAccountPolicy$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 55
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->createAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v10, 0x1

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v14, 0x1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v15, 0x1

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/16 v17, 0x1

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v18, 0x1

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    const/16 v19, 0x1

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v21}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    goto :goto_4

    :cond_4
    const/16 v18, 0x0

    goto :goto_5

    :cond_5
    const/16 v19, 0x0

    goto :goto_6

    :sswitch_3
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v10, 0x1

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v14, 0x1

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    const/4 v15, 0x1

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    const/16 v17, 0x1

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    const/16 v18, 0x1

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    const/16 v19, 0x1

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    const/16 v29, 0x1

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v33}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->addNewAccount_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J

    move-result-wide v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_7
    const/4 v14, 0x0

    goto :goto_8

    :cond_8
    const/4 v15, 0x0

    goto :goto_9

    :cond_9
    const/16 v17, 0x0

    goto :goto_a

    :cond_a
    const/16 v18, 0x0

    goto :goto_b

    :cond_b
    const/16 v19, 0x0

    goto :goto_c

    :cond_c
    const/16 v29, 0x0

    goto :goto_d

    :sswitch_4
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v39

    move-object/from16 v34, p0

    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    invoke-virtual/range {v34 .. v40}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    const/4 v4, 0x1

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSSL(ZJ)Z

    move-result v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_e

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v4, 0x0

    goto :goto_e

    :cond_e
    const/4 v3, 0x0

    goto :goto_f

    :sswitch_6
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    const/4 v4, 0x1

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAcceptAllCertificates(ZJ)Z

    move-result v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_10

    const/4 v3, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v4, 0x0

    goto :goto_10

    :cond_10
    const/4 v3, 0x0

    goto :goto_11

    :sswitch_7
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    const/4 v4, 0x1

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAlwaysVibrateOnEmailNotification(ZJ)Z

    move-result v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_12

    const/4 v3, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v4, 0x0

    goto :goto_12

    :cond_12
    const/4 v3, 0x0

    goto :goto_13

    :sswitch_8
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    const/4 v4, 0x1

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSilentVibrateOnEmailNotification(ZJ)Z

    move-result v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_14

    const/4 v3, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_13
    const/4 v4, 0x0

    goto :goto_14

    :cond_14
    const/4 v3, 0x0

    goto :goto_15

    :sswitch_9
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setPassword(Ljava/lang/String;J)Z

    move-result v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_15

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_15
    const/4 v3, 0x0

    goto :goto_16

    :sswitch_a
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setProtocolVersion(Ljava/lang/String;J)Z

    move-result v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_16

    const/4 v3, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v3, 0x0

    goto :goto_17

    :sswitch_b
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSignature(Ljava/lang/String;J)Z

    move-result v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_17

    const/4 v3, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_17
    const/4 v3, 0x0

    goto :goto_18

    :sswitch_c
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v51

    move-object/from16 v0, p0

    move-wide/from16 v1, v51

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setClientAuthCert([BLjava/lang/String;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setPastDaysToSync(IJ)Z

    move-result v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_18

    const/4 v3, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_18
    const/4 v3, 0x0

    goto :goto_19

    :sswitch_e
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSyncInterval(IJ)Z

    move-result v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_19

    const/4 v3, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_19
    const/4 v3, 0x0

    goto :goto_1a

    :sswitch_f
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSenderName(Ljava/lang/String;J)Z

    move-result v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_1a

    const/4 v3, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_1a
    const/4 v3, 0x0

    goto :goto_1b

    :sswitch_10
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v47

    move-object/from16 v0, p0

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAsDefaultAccount(J)Z

    move-result v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_1b

    const/4 v3, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1c

    :sswitch_11
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAccountName(Ljava/lang/String;J)Z

    move-result v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_1c

    const/4 v3, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1d

    :sswitch_12
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_13
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v47

    move-object/from16 v0, p0

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->getAccountDetails(J)Landroid/app/enterprise/Account;

    move-result-object v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_1d

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/app/enterprise/Account;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1e
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_1d
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    :sswitch_14
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v47

    move-object/from16 v0, p0

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->deleteAccount(J)Z

    move-result v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_1e

    const/4 v3, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_1e
    const/4 v3, 0x0

    goto :goto_1f

    :sswitch_15
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->sendAccountsChangedBroadcast()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_16
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v45

    move-object/from16 v41, p0

    move/from16 v42, v4

    move/from16 v43, v5

    move/from16 v44, v6

    invoke-virtual/range {v41 .. v46}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSyncPeakTimings(IIIJ)Z

    move-result v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_1f

    const/4 v3, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_1f
    const/4 v3, 0x0

    goto :goto_20

    :sswitch_17
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v45

    move-object/from16 v41, p0

    move/from16 v42, v4

    move/from16 v43, v5

    move/from16 v44, v6

    invoke-virtual/range {v41 .. v46}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSyncSchedules(IIIJ)Z

    move-result v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_20

    const/4 v3, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_20
    const/4 v3, 0x0

    goto :goto_21

    :sswitch_18
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21

    const/4 v4, 0x1

    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22

    const/4 v5, 0x1

    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_23

    const/4 v6, 0x1

    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_24

    const/4 v7, 0x1

    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v39

    move-object/from16 v34, p0

    move/from16 v35, v4

    move/from16 v36, v5

    move/from16 v37, v6

    move/from16 v38, v7

    invoke-virtual/range {v34 .. v40}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setDataSyncs(ZZZZJ)Z

    move-result v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_25

    const/4 v3, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_21
    const/4 v4, 0x0

    goto :goto_22

    :cond_22
    const/4 v5, 0x0

    goto :goto_23

    :cond_23
    const/4 v6, 0x0

    goto :goto_24

    :cond_24
    const/4 v7, 0x0

    goto :goto_25

    :cond_25
    const/4 v3, 0x0

    goto :goto_26

    :sswitch_19
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->getAllEASAccounts()[Landroid/app/enterprise/Account;

    move-result-object v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_1a
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
