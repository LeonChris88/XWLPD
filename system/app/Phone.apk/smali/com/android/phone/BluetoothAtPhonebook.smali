.class public Lcom/android/phone/BluetoothAtPhonebook;
.super Ljava/lang/Object;
.source "BluetoothAtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    }
.end annotation


# static fields
.field private static final CALLS_PROJECTION:[Ljava/lang/String;

.field private static final PHONES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCharacterSet:Ljava/lang/String;

.field private mCheckingAccessPermission:Z

.field private final mContext:Landroid/content/Context;

.field private mCpbrIndex1:I

.field private mCpbrIndex2:I

.field private mCurrentPhonebook:Ljava/lang/String;

.field private final mHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private final mPhonebooks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSimSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/BluetoothAtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/BluetoothAtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "DC"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "RC"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "MC"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "ME"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "SM"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ME"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    iput v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/BluetoothAtPhonebook;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/BluetoothAtPhonebook;->checkAccessPermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothAtPhonebook;)Landroid/bluetooth/AtCommandResult;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/BluetoothAtPhonebook;->processCpbrCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothAtPhonebook;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothAtPhonebook;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtPhonebook;->getMaxPhoneBookSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothAtPhonebook;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/BluetoothAtPhonebook;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/phone/BluetoothAtPhonebook;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/phone/BluetoothAtPhonebook;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z

    return p1
.end method

.method private checkAccessPermission()Z
    .locals 5

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->getHeadset()Landroid/bluetooth/HeadsetBase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getMaxPhoneBookSize(I)I
    .locals 2

    const/16 v0, 0x64

    monitor-enter p0

    if-ge p1, v0, :cond_0

    :goto_0
    :try_start_0
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothAtPhonebook;->roundUpToPowerOfTwo(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    :cond_0
    move v0, p1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static getPhoneType(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "O"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "H"

    goto :goto_0

    :pswitch_1
    const-string v0, "M"

    goto :goto_0

    :pswitch_2
    const-string v0, "W"

    goto :goto_0

    :pswitch_3
    const-string v0, "F"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    if-nez p1, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    :cond_2
    if-nez p2, :cond_3

    iget-object v2, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/phone/BluetoothAtPhonebook;->queryPhonebook(Ljava/lang/String;Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private processCpbrCommand()Landroid/bluetooth/AtCommandResult;
    .locals 17

    const-string v1, "SM"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z

    if-nez v1, :cond_1

    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    :cond_0
    :goto_0
    return-object v15

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothAtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v15

    goto :goto_0

    :cond_2
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    if-lt v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    iget-object v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v1, v2, :cond_4

    :cond_3
    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    iget-object v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v1, v2, :cond_5

    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    :cond_5
    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    const/4 v8, -0x1

    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    if-gt v9, v1, :cond_0

    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x0

    const/16 v16, -0x1

    iget v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v2, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_2
    if-nez v10, :cond_8

    const-string v10, ""

    :cond_8
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1c

    if-le v1, v2, :cond_9

    const/4 v1, 0x0

    const/16 v2, 0x1c

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_9
    iget v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Lcom/android/phone/BluetoothAtPhonebook;->getPhoneType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_a
    if-nez v12, :cond_b

    const-string v12, ""

    :cond_b
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_c

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_c
    const-string v1, "-1"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v12, ""

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_d
    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    const-string v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v11

    if-nez v11, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_e
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CPBR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_f
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :cond_10
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    goto :goto_3
.end method

.method private declared-synchronized queryPhonebook(Ljava/lang/String;Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;)Z
    .locals 8

    const/4 v7, 0x0

    monitor-enter p0

    const/4 v6, 0x1

    :try_start_0
    const-string v0, "ME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    const-string v3, "in_visible_group=1 AND account_type!= \'vnd.sec.contact.sim\'"

    :goto_0
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    :cond_0
    if-eqz v6, :cond_7

    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/BluetoothAtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 16384"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_6

    move v0, v7

    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string v0, "DC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "type=2"

    goto :goto_0

    :cond_2
    const-string v0, "RC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "type=1"

    goto :goto_0

    :cond_3
    const-string v0, "MC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v3, "type=3"

    goto :goto_0

    :cond_4
    const-string v0, "SM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z

    if-eqz v0, :cond_5

    const/4 v6, 0x0

    const-string v3, "in_visible_group=1 AND account_type= \'vnd.sec.contact.sim\'"

    goto :goto_0

    :cond_5
    move v0, v7

    goto :goto_1

    :cond_6
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    const/4 v0, -0x1

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    const/4 v0, -0x1

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    :goto_2
    const-string v0, "BluetoothAtPhonebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshed phonebook "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " results"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/BluetoothAtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1 LIMIT 16384"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_8

    move v0, v7

    goto/16 :goto_1

    :cond_8
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "data2"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private roundUpToPowerOfTwo(I)I
    .locals 1

    shr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    shr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    shr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    shr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    shr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    add-int/lit8 v0, p1, 0x1

    return v0
.end method


# virtual methods
.method public getLastDialledNumber()Ljava/lang/String;
    .locals 10

    const/4 v9, 0x1

    const/4 v4, 0x0

    new-array v2, v9, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "number"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type=2"

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-object v4

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v9, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v4, v8

    goto :goto_0
.end method

.method handleAccessPermissionResult(Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->getHeadset()Landroid/bluetooth/HeadsetBase;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const-string v3, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothAtPhonebook;->processCpbrCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    :cond_2
    :goto_1
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    iput v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    iput-boolean v5, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z

    goto :goto_0

    :cond_3
    const-string v3, "ERROR"

    invoke-virtual {v1, v3}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public register(Landroid/bluetooth/AtParser;)V
    .locals 2

    const-string v0, "+CSCS"

    new-instance v1, Lcom/android/phone/BluetoothAtPhonebook$1;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtPhonebook$1;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    const-string v0, "+CPBS"

    new-instance v1, Lcom/android/phone/BluetoothAtPhonebook$2;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtPhonebook$2;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    const-string v0, "+CPBR"

    new-instance v1, Lcom/android/phone/BluetoothAtPhonebook$3;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtPhonebook$3;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    return-void
.end method

.method declared-synchronized resetAtState()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    iput v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
