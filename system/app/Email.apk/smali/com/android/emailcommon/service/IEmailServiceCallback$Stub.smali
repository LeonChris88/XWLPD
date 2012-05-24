.class public abstract Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IEmailServiceCallback.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IEmailServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IEmailServiceCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.emailcommon.service.IEmailServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailServiceCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/emailcommon/service/IEmailServiceCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/emailcommon/service/IEmailServiceCallback;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxListStatus(JII)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v8, p0

    move-wide v9, v2

    move-object v11, v4

    move v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->sendMessageStatus(JLjava/lang/String;II)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->moveItemStatus(JI)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    :goto_1
    move-object v8, p0

    move-wide v9, v2

    move v11, v4

    move v12, v6

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->oOOfStatus(JIILandroid/os/Bundle;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :sswitch_7
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->folderCommandStatus(IJI)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->emptyTrashStatus(JII)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadMoreStatus(JII)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->moveConvAlwaysStatus([BIII)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->setDeviceInfoStatus(JII)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->deviceInfoStatus(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->refreshIRMTemplatesStatus(JII)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    move-object v8, p0

    move v9, v2

    move-wide v10, v4

    invoke-virtual/range {v8 .. v13}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->sendMeetingEditedResponseCallback(ZJJ)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
