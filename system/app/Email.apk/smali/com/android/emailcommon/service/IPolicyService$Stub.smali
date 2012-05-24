.class public abstract Lcom/android/emailcommon/service/IPolicyService$Stub;
.super Landroid/os/Binder;
.source "IPolicyService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IPolicyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IPolicyService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.emailcommon.service.IPolicyService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/emailcommon/service/IPolicyService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/emailcommon/service/IPolicyService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v6, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/emailcommon/service/PolicySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/service/PolicySet;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->isActive(Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/IPolicyService$Stub;->policiesRequired(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/IPolicyService$Stub;->updatePolicies(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v6, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v2, v5

    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/emailcommon/service/IPolicyService$Stub;->setAccountHoldFlag(JZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_2

    :sswitch_5
    const-string v6, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v5

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->setRecoverPasswordState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_3

    :sswitch_6
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->reducePolicies()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_7
    const-string v6, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->isActiveAdmin()Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_8
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->remoteWipe()V

    goto/16 :goto_0

    :sswitch_9
    const-string v6, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/android/emailcommon/service/PolicySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/service/PolicySet;

    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->isSupported(Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :sswitch_a
    const-string v6, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/emailcommon/service/PolicySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/service/PolicySet;

    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->clearUnsupportedPolicies(Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_8

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v5}, Lcom/android/emailcommon/service/PolicySet;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string v6, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->getAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_9

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v5}, Lcom/android/emailcommon/service/PolicySet;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_c
    const-string v6, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/IPolicyService$Stub;->getAccountPolicy(J)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_a

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v5}, Lcom/android/emailcommon/service/PolicySet;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
