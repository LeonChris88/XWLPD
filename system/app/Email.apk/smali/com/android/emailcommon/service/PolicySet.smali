.class public Lcom/android/emailcommon/service/PolicySet;
.super Ljava/lang/Object;
.source "PolicySet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/service/PolicySet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAllowBluetoothMode:I

.field public mAllowBrowser:Z

.field public mAllowCamera:Z

.field public mAllowDesktopSync:Z

.field public mAllowHTMLEmail:Z

.field public mAllowInternetSharing:Z

.field public mAllowIrDA:Z

.field public mAllowPOPIMAPEmail:Z

.field public mAllowSMIMEEncryptionAlgorithmNegotiation:I

.field public mAllowSMIMESoftCerts:Z

.field public mAllowStorageCard:Z

.field public mAllowTextMessaging:Z

.field public mAllowWifi:Z

.field public mAttachmentsEnabled:Z

.field public mDeviceEncryptionEnabled:Z

.field public mMaxAttachmentSize:I

.field public mMaxCalendarAgeFilter:I

.field public mMaxEmailAgeFilter:I

.field public mMaxEmailBodyTruncationSize:I

.field public mMaxEmailHtmlBodyTruncationSize:I

.field public mMaxPasswordFails:I

.field public mMaxScreenLockTime:I

.field public mMinPasswordLength:I

.field public mPasswordComplexChars:I

.field public mPasswordExpirationDays:I

.field public mPasswordHistory:I

.field public mPasswordMode:I

.field public mPasswordRecoverable:Z

.field public mRequireEncryptedSMIMEMessages:Z

.field public mRequireEncryption:Z

.field public mRequireEncryptionSMIMEAlgorithm:I

.field public mRequireManualSyncWhenRoaming:Z

.field public mRequireRemoteWipe:Z

.field public mRequireSignedSMIMEAlgorithm:I

.field public mRequireSignedSMIMEMessages:Z

.field public mSimplePasswordEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/emailcommon/service/PolicySet$1;

    invoke-direct {v0}, Lcom/android/emailcommon/service/PolicySet$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/service/PolicySet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_1

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p1, 0x0

    const/16 p21, 0x0

    const/4 p8, 0x0

    const/4 p7, 0x0

    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    const/16 v1, 0x40

    if-ne p2, v1, :cond_9

    const/4 v1, 0x1

    move/from16 v0, p21

    if-le v0, v1, :cond_9

    const/16 v1, 0x60

    iput v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    :goto_1
    iput p3, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    iput p4, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    iput-boolean p5, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    iput p7, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    iput p8, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    move/from16 v0, p21

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    move/from16 v0, p34

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    iput-boolean p6, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    iput-boolean p9, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    move/from16 v0, p36

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    iput p10, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    iput-boolean p11, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    iput-boolean p12, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    move/from16 v0, p20

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    move/from16 v0, p22

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    move/from16 v0, p23

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    move/from16 v0, p24

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    move/from16 v0, p25

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    move/from16 v0, p28

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    move/from16 v0, p29

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    move/from16 v0, p30

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    move/from16 v0, p31

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    return-void

    :cond_1
    const/16 v1, 0x20

    if-eq p2, v1, :cond_2

    const/16 v1, 0x40

    if-eq p2, v1, :cond_2

    const/16 v1, 0x60

    if-eq p2, v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/16 v1, 0x20

    if-ne p2, v1, :cond_3

    const/16 p21, 0x0

    :cond_3
    const/16 v1, 0x1e

    if-le p1, v1, :cond_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/16 v1, 0x3ff

    if-le p7, v1, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password expiration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/16 v1, 0xff

    if-le p8, v1, :cond_6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password history"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 v1, 0x1f

    move/from16 v0, p21

    if-le v0, v1, :cond_7

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "complex chars"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    const/16 v1, 0x1f

    if-le p3, v1, :cond_8

    const/16 p3, 0x1f

    :cond_8
    const/16 v1, 0x7ff

    if-le p4, v1, :cond_0

    const/16 p4, 0x7ff

    goto/16 :goto_0

    :cond_9
    iput p2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    goto/16 :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 13

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const-string v0, "SecurityPolicy"

    const-string v1, "PolicySet(): account is null or context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v11, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :cond_3
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v0, "Integer"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v0, "PasswordMode"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    goto :goto_1

    :cond_4
    const-string v0, "MaxDevicePasswordFailedAttempts"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    goto :goto_1

    :cond_5
    const-string v0, "MinDevicePasswordLength"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    goto :goto_1

    :cond_6
    const-string v0, "MaxInactivityTime"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    goto :goto_1

    :cond_7
    const-string v0, "MaxAttachmentSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    goto :goto_1

    :cond_8
    const-string v0, "DevicePasswordExpiration"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    goto/16 :goto_1

    :cond_9
    const-string v0, "DevicePasswordHistory"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    goto/16 :goto_1

    :cond_a
    const-string v0, "AllowBluetoothMode"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    goto/16 :goto_1

    :cond_b
    const-string v0, "MinPasswordComplexCharacters"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    goto/16 :goto_1

    :cond_c
    const-string v0, "MaxCalendarAgeFilter"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    goto/16 :goto_1

    :cond_d
    const-string v0, "MaxEmailAgeFilter"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    goto/16 :goto_1

    :cond_e
    const-string v0, "MaxEmailBodyTruncationSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    goto/16 :goto_1

    :cond_f
    const-string v0, "MaxEmailHtmlBodyTruncationSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    goto/16 :goto_1

    :cond_10
    const-string v0, "RequireSignedSMIMEAlgorithm"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    goto/16 :goto_1

    :cond_11
    const-string v0, "RequireEncryptionSMIMEAlgorithm"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    goto/16 :goto_1

    :cond_12
    const-string v0, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    goto/16 :goto_1

    :cond_13
    const-string v0, "Boolean"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v0, "PasswordRecoveryEnabled"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    goto/16 :goto_1

    :cond_14
    const-string v0, "RequireDeviceEncryption"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    goto/16 :goto_1

    :cond_15
    const-string v0, "AttachmentsEnabled"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    goto/16 :goto_1

    :cond_16
    const-string v0, "RemoteWipe"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    goto/16 :goto_1

    :cond_17
    const-string v0, "AllowSimpleDevicePassword"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    goto/16 :goto_1

    :cond_18
    const-string v0, "AllowStorageCard"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    goto/16 :goto_1

    :cond_19
    const-string v0, "AllowCamera"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    goto/16 :goto_1

    :cond_1a
    const-string v0, "AllowWifi"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    goto/16 :goto_1

    :cond_1b
    const-string v0, "AllowTextMessaging"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    goto/16 :goto_1

    :cond_1c
    const-string v0, "AllowPOPIMAPEmail"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    goto/16 :goto_1

    :cond_1d
    const-string v0, "AllowHTMLEmail"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    goto/16 :goto_1

    :cond_1e
    const-string v0, "AllowBrowser"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    goto/16 :goto_1

    :cond_1f
    const-string v0, "AllowInternetSharing"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    goto/16 :goto_1

    :cond_20
    const-string v0, "RequireManualSyncWhenRoaming"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    goto/16 :goto_1

    :cond_21
    const-string v0, "RequireSignedSMIMEMessages"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    goto/16 :goto_1

    :cond_22
    const-string v0, "RequireEncryptedSMIMEMessages"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    goto/16 :goto_1

    :cond_23
    const-string v0, "AllowSMIMESoftCerts"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    goto/16 :goto_1

    :cond_24
    const-string v0, "AllowDesktopSync"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    goto/16 :goto_1

    :cond_25
    const-string v0, "AllowIrDA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    goto/16 :goto_1

    :cond_26
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_b

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_c

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_d

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_e

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_f

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_10

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_11

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_12

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_13

    :goto_13
    iput-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v0, v2

    goto/16 :goto_7

    :cond_8
    move v0, v2

    goto/16 :goto_8

    :cond_9
    move v0, v2

    goto/16 :goto_9

    :cond_a
    move v0, v2

    goto :goto_a

    :cond_b
    move v0, v2

    goto :goto_b

    :cond_c
    move v0, v2

    goto :goto_c

    :cond_d
    move v0, v2

    goto :goto_d

    :cond_e
    move v0, v2

    goto :goto_e

    :cond_f
    move v0, v2

    goto :goto_f

    :cond_10
    move v0, v2

    goto :goto_10

    :cond_11
    move v0, v2

    goto :goto_11

    :cond_12
    move v0, v2

    goto :goto_12

    :cond_13
    move v1, v2

    goto :goto_13
.end method

.method private populateHash(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x7

    const/4 v2, 0x2

    const/4 v1, 0x0

    const-string v3, "PasswordMode"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    if-eqz v3, :cond_0

    const-string v3, "PasswordRecoveryEnabled"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "MaxDevicePasswordFailedAttempts"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "DevicePasswordExpiration"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "DevicePasswordHistory"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "MinPasswordComplexCharacters"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "MinDevicePasswordLength"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "RequireDeviceEncryption"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v3, "MaxAttachmentSize"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AttachmentsEnabled"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AllowSimpleDevicePassword"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "DeviceEncryptionEnabled"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    const-string v3, "MaxInactivityTime"

    const/16 v4, 0x270f

    if-lt v0, v4, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "RemoteWipe"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AllowStorageCard"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AllowCamera"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AllowWifi"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AllowTextMessaging"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AllowPOPIMAPEmail"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AllowHTMLEmail"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AllowBrowser"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AllowInternetSharing"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "RequireManualSyncWhenRoaming"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AllowBluetoothMode"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    if-le v4, v2, :cond_5

    :cond_2
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "MaxCalendarAgeFilter"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    if-le v2, v5, :cond_6

    :cond_3
    move v2, v1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "MaxEmailAgeFilter"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    if-le v2, v5, :cond_7

    :cond_4
    move v2, v1

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "MaxEmailBodyTruncationSize"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    if-gez v2, :cond_8

    move v2, v1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MaxEmailHtmlBodyTruncationSize"

    iget v3, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    if-gez v3, :cond_9

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RequireSignedSMIMEMessages"

    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RequireEncryptedSMIMEMessages"

    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RequireSignedSMIMEAlgorithm"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RequireEncryptionSMIMEAlgorithm"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AllowSMIMEEncryptionAlgorithmNegotiation"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AllowSMIMESoftCerts"

    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AllowDesktopSync"

    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AllowIrDA"

    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    goto/16 :goto_0

    :cond_6
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    goto/16 :goto_1

    :cond_7
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    goto/16 :goto_2

    :cond_8
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    goto :goto_3

    :cond_9
    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    goto :goto_4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDPManagerPasswordExpirationTimeout()J
    .locals 6

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    int-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long v0, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public getDPManagerPasswordQuality()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/high16 v0, 0x2

    goto :goto_0

    :sswitch_1
    const/high16 v0, 0x5

    goto :goto_0

    :sswitch_2
    const/high16 v0, 0x6

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x40 -> :sswitch_1
        0x60 -> :sswitch_2
    .end sparse-switch
.end method

.method public getMaxPasswordFailsForTest()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    return v0
.end method

.method public getMaxScreenLockTimeForTest()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    return v0
.end method

.method public getMinPasswordLengthForTest()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    return v0
.end method

.method public getPasswordModeForTest()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    return v0
.end method

.method public getSecurityCode()J
    .locals 5

    const-wide/16 v0, 0x0

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    int-to-long v2, v2

    const/4 v4, 0x0

    shl-long v0, v2, v4

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    int-to-long v2, v2

    const/16 v4, 0x9

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    int-to-long v2, v2

    const/16 v4, 0xe

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x2000000

    or-long/2addr v0, v2

    :cond_0
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    int-to-long v2, v2

    const/16 v4, 0x24

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    int-to-long v2, v2

    const/16 v4, 0x1a

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    int-to-long v2, v2

    const/16 v4, 0x2c

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    if-eqz v2, :cond_1

    const-wide/high16 v2, 0x2

    or-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicySet;->getSecurityCode()J

    move-result-wide v0

    long-to-int v2, v0

    return v2
.end method

.method public isRequireEncryptionForTest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    return v0
.end method

.method public isRequireRemoteWipeForTest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    return v0
.end method

.method public removePolicyRules(Landroid/content/Context;J)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "account_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public storePolicyRules(Landroid/content/Context;J)V
    .locals 8

    const-class v2, Lcom/android/emailcommon/service/PolicySet;

    monitor-enter v2

    :try_start_0
    const-string v0, "SecurityPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storePolicyRules() - accountId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/emailcommon/service/PolicySet;->populateHash(Ljava/util/HashMap;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/emailcommon/service/PolicySet;->removePolicyRules(Landroid/content/Context;J)V

    const-string v1, "SecurityPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " storePolicyRules: removed policies for accountId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v5, Lcom/android/emailcommon/provider/EmailContent$Policies;

    invoke-direct {v5}, Lcom/android/emailcommon/provider/EmailContent$Policies;-><init>()V

    iput-wide p2, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mAccountId:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v1, :cond_1

    const-string v1, "SecurityPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "policy Name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", policyValue:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Policies;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ pw-len-min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pw-mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pw-fails-max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenlock-max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remote-wipe-req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pw-expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pw-history="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pw-complex-chars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recoveryEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", require-encryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", require-SD-encryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attachmentsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxAttachmentsSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowHTML="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requireManualSyncWhenRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxCalendarAgeFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxEmailAgeFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxEmailBodyTruncationSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxEmailHtmlBodyTruncationSize= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requireSignMessage= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requireEncryptMessage= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowEncryptionNegotiation= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signAlgorithm= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encryptAlgorithm= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowCamera= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowSDcard= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowWiFi= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowSMS= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowPopImap= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowIrDA= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowBrowser= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowInternetSharing= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowBT= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowKIES= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowSMIMEsoftCert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAccount(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z
    .locals 14

    new-instance v7, Lcom/android/emailcommon/service/PolicySet;

    move-object/from16 v0, p4

    invoke-direct {v7, v0, p1}, Lcom/android/emailcommon/service/PolicySet;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p2

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    if-eqz p3, :cond_8

    const/4 v1, 0x0

    iget v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-static {v11}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(I)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->toEas12Value()I

    move-result v2

    iget v8, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "plainTextSize = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v11, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    div-int/lit16 v5, v11, 0x400

    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "htmlSize = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isHtmlAllowed = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_a

    if-lez v5, :cond_a

    move v9, v5

    :goto_1
    if-lez v9, :cond_b

    mul-int/lit16 v9, v9, 0x400

    :goto_2
    if-ge v9, v2, :cond_1

    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exchange IT Policy has restricted SyncSize, CurrentSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Bytes, restrictedSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Bytes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    if-lez v11, :cond_0

    invoke-static {v9}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parseToByte(I)B

    move-result v11

    iput v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    :cond_0
    const/4 v1, 0x1

    :cond_1
    const/4 v10, 0x6

    iget v10, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    if-gtz v10, :cond_2

    const/4 v10, 0x6

    :cond_2
    iget v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    if-ge v10, v11, :cond_3

    const-string v11, "AccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exchange IT Policy has restricted SyncLookback, current:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", restricted="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v10, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    const/4 v1, 0x1

    :cond_3
    iget v10, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    if-lez v10, :cond_5

    iget v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    if-eqz v11, :cond_4

    iget v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    if-ge v10, v11, :cond_5

    :cond_4
    const-string v11, "AccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exchange IT Policy has restricted CalendarSyncLookback, current:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", restricted="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v10, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    const/4 v1, 0x1

    :cond_5
    iget-boolean v11, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    if-eqz v11, :cond_6

    iget v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    const v12, 0x8000

    or-int/2addr v11, v12

    iput v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    :cond_6
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v11

    if-eqz v11, :cond_c

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "securitySyncKey"

    iget-object v12, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    const-string v11, "isDefault"

    iget-boolean v12, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v11, "emailsize"

    iget v12, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "syncLookback"

    iget v12, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "calendarSyncLookback"

    iget v12, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    :goto_3
    iget-wide v11, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v11, v12}, Lcom/android/emailcommon/service/PolicySet;->storePolicyRules(Landroid/content/Context;J)V

    :cond_8
    return v4

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_a
    move v9, v8

    goto/16 :goto_1

    :cond_b
    const v9, 0x7fffffff

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    if-eqz v0, :cond_13

    :goto_13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v0, v2

    goto/16 :goto_7

    :cond_8
    move v0, v2

    goto/16 :goto_8

    :cond_9
    move v0, v2

    goto/16 :goto_9

    :cond_a
    move v0, v2

    goto :goto_a

    :cond_b
    move v0, v2

    goto :goto_b

    :cond_c
    move v0, v2

    goto :goto_c

    :cond_d
    move v0, v2

    goto :goto_d

    :cond_e
    move v0, v2

    goto :goto_e

    :cond_f
    move v0, v2

    goto :goto_f

    :cond_10
    move v0, v2

    goto :goto_10

    :cond_11
    move v0, v2

    goto :goto_11

    :cond_12
    move v0, v2

    goto :goto_12

    :cond_13
    move v1, v2

    goto :goto_13
.end method
