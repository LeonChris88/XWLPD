.class public final Lcom/android/emailcommon/provider/EmailContent$Account;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$AccountColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Account"
.end annotation


# static fields
.field public static final ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

.field public static final ADD_TO_FIELD_URI:Landroid/net/Uri;

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ID_PROJECTION:[Ljava/lang/String;

.field public static DEVICE_IS_ALLOWED:I

.field public static DEVICE_IS_BLOCKED:I

.field public static DEVICE_IS_QUARANTINED:I

.field public static final ID_TYPE_PROJECTION:[Ljava/lang/String;

.field public static final RESET_NEW_MESSAGE_COUNT_URI:Landroid/net/Uri;

.field public static mEmailMessageDiffEnabled:I

.field public static mIRMTemplateTimeStamp:Ljava/lang/String;


# instance fields
.field public accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

.field public mAccountKey:J

.field public mAccountType:I

.field public mAttachmentEnabled:I

.field public mAutoDownload:Z

.field public mAutoRetryTimes:I

.field public mCalendarSyncLookback:I

.field public mCbaCertificateAlias:Ljava/lang/String;

.field public mCompatibilityUuid:Ljava/lang/String;

.field public mConflictFlags:I

.field public mConversationMode:I

.field public mDays:Ljava/lang/String;

.field public mDeviceInfoSent:I

.field public mDisplayName:Ljava/lang/String;

.field public mEasLocalChangeEnabled:Z

.field public mEmailAddress:Ljava/lang/String;

.field public mEmailRetrieveSizeValues:[Ljava/lang/String;

.field public mEmailSize:I

.field public mFlags:I

.field public mForwardWithFiles:Z

.field public mHostAuthKeyRecv:J

.field public mHostAuthKeySend:J

.field public transient mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

.field public transient mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

.field public mIsDefault:Z

.field public mIsInPeakPeriod:Z

.field public mMessageFormat:I

.field public mNewMessageCount:I

.field public mOffPeakTime:I

.field public mPeakEndTime:Ljava/lang/String;

.field public mPeakStartTime:Ljava/lang/String;

.field public mPeakTime:I

.field public mPolicyKey:Ljava/lang/String;

.field public mProtocolVersion:Ljava/lang/String;

.field public mRecentMessages:I

.field public mRingtoneUri:Ljava/lang/String;

.field public mSecurityFlags:J

.field public mSecuritySyncKey:Ljava/lang/String;

.field public mSenderName:Ljava/lang/String;

.field public mSevenAccountKey:J

.field public mShowImage:Z

.field public mSignature:Ljava/lang/String;

.field public mSizeLimit:J

.field public mSmimeEncryptAll:Z

.field public mSmimeEncryptionAlgorithm:I

.field public mSmimeOwnCertificateAlias:Ljava/lang/String;

.field public mSmimeSignAlgorithm:I

.field public mSmimeSignAll:Z

.field public mSyncInterval:I

.field public mSyncKey:Ljava/lang/String;

.field public mSyncLookback:I

.field private mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

.field public mTextPreviewSize:I

.field public mTimeLimit:J

.field public mTypeMsg:I

.field public mWhileroaming:I

.field public mdeviceBlockedType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/accountIdAddToField"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->ADD_TO_FIELD_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/resetNewMessageCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->RESET_NEW_MESSAGE_COUNT_URI:Landroid/net/Uri;

    sput v3, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    sput v4, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    sput v5, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_QUARANTINED:I

    const/16 v0, 0x39

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "emailAddress"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "syncKey"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "syncLookback"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "syncInterval"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hostAuthKeyRecv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hostAuthKeySend"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "isDefault"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "compatibilityUuid"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "senderName"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ringtoneUri"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "protocolVersion"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "newMessageCount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "securityFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "securitySyncKey"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "signature"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "emailsize"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "policyKey"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "peakDays"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "peakStartMinute"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "peakEndMinute"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "peakSchedule"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "offPeakSchedule"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "roamingSchedule"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "calendarSyncLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "typeMsg"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "sevenAccountKey"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "sizeLimit"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "timeLimit"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "peakTime"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "offPeakTime"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "days"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "peakStartTime"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "peakEndTime"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "whileRoaming"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "attachmentEnabled"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "smimeOwnCertificateAlias"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "smimeOptionsFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "smimeSignAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "smimeEncryptionAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "conversationMode"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "textPreview"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "deviceInfoSent"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "deviceBlockedType"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "conflict"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "IRMTemplateTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "cbaCertificateAlias"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "messageFormat"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "accountType"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "easLocalChange"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "forwardWithFiles"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "autoDownload"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "recentMessages"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "showImage"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "autoRetryTimes"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_TYPE_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "flags"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "isDefault"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->DEFAULT_ID_PROJECTION:[Ljava/lang/String;

    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Account$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Account$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v4, -0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    iput v8, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    iput v9, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    const-string v0, "VZW_LTE"

    invoke-static {v0}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    const/16 v0, 0x2001

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    const-string v0, "U1_NA_SPR"

    invoke-static {v0}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    :cond_0
    sput v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailMessageDiffEnabled:I

    iput v8, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v1, 0x1e0

    const/16 v2, 0x3fc

    const/16 v3, 0x3e

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    iput-boolean v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsInPeakPeriod:Z

    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    iput v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    iput v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    const/16 v0, 0x80

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    iput v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDeviceInfoSent:I

    iput v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    iput-boolean v8, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    iput-boolean v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    iput v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    iput-boolean v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    iput v9, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    return-void

    :cond_1
    const-string v0, "content://media/internal/audio/media/32"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    iput-object v5, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    const-class v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDeviceInfoSent:I

    iput-object v5, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    :cond_0
    iput-object v5, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_6

    :goto_4
    sput v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailMessageDiffEnabled:I

    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_4
.end method

.method public static clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V
    .locals 12

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    and-int/lit8 v1, v10, 0x20

    if-eqz v1, :cond_0

    and-int/lit16 v1, v10, 0x4000

    if-nez v1, :cond_0

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "flags"

    and-int/lit8 v2, v10, -0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public static getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 4

    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAccountIdForMessageId(Landroid/content/Context;J)J
    .locals 2

    const-string v0, "accountKey"

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getKeyColumnLong(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAccountIdFromShortcutSafeUri(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 12

    const/4 v4, 0x1

    const-wide/16 v10, -0x1

    const/4 v6, 0x0

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.email.provider"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-wide v0, v10

    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "account"

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-wide v0, v10

    goto :goto_0

    :cond_3
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :try_start_0
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "compatibilityUuid =?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v8, v4, v6

    const/4 v5, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getDefaultAccountId(Landroid/content/Context;)J
    .locals 4

    const-string v2, "isDefault=1"

    invoke-static {p0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v2, "displayName is not \'##snc##\'"

    invoke-static {p0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private static getDefaultAccountWhere(Landroid/content/Context;Ljava/lang/String;)J
    .locals 9

    const/4 v4, 0x0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->DEFAULT_ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getEmailSize(B)I
    .locals 2

    const v0, 0xf000

    if-nez p0, :cond_1

    const/16 v0, 0x600

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const v0, 0x19000

    goto :goto_0
.end method

.method private getId(Landroid/net/Uri;)J
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInboxId(Landroid/content/Context;J)J
    .locals 9

    const/4 v6, 0x0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "type = 0 AND accountKey =?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getProtocol(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getShortcutSafeUriFromUuid(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isSecurityHold(Landroid/content/Context;J)Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static isValidId(Landroid/content/Context;J)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return v7

    :cond_0
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id =?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    move v6, v7

    :cond_1
    move v7, v6

    goto :goto_0
.end method

.method public static restoreAccountWithEmailAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emailAddress=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_2
    const-string v2, "EmailContent >>"

    const-string v3, "IllegalStateException in restoreAccountWithId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 7

    const/4 v6, 0x0

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_1

    move-object v0, v6

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EmailContent >>"

    const-string v2, "RuntimeException in restoreAccountWithId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_4

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public static restoreAccountWithSevenAccountId(Landroid/content/Context;I)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sevenAccountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_2
    const-string v2, "EmailContent >>"

    const-string v3, "IllegalStateException in restoreAccountWithSevenAccountId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static restoreAccounts(Landroid/content/Context;)[Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_2
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v1, v0, [Lcom/android/emailcommon/provider/EmailContent$Account;

    const/4 v0, 0x0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v0

    :goto_1
    add-int/lit8 v4, v3, 0x1

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    aput-object v0, v1, v3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-nez v0, :cond_a

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_4
    const-string v2, "EmailContent >>"

    const-string v3, "IllegalStateException in restoreAccounts(Context context)"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v6

    :goto_3
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_a
    move v3, v4

    goto :goto_1
.end method

.method public static restoreAccounts(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_2
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v1, v0, [Lcom/android/emailcommon/provider/EmailContent$Account;

    const/4 v0, 0x0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v0

    :goto_1
    add-int/lit8 v4, v3, 0x1

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    aput-object v0, v1, v3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-nez v0, :cond_a

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_4
    const-string v2, "EmailContent >>"

    const-string v3, "IllegalStateException in restoreAccounts(Context context, String where)"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v6

    :goto_3
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_a
    move v3, v4

    goto :goto_1
.end method

.method public static restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 2

    const-string v1, "snc@snc.snc"

    invoke-static {p0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithEmailAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    return-object v0
.end method

.method public static setSyncStatus(Landroid/content/Context;Ljava/lang/Long;I)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "isInitSyncComplete"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dumpAccountInfo()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x5b

    const/16 v5, 0x5d

    const/16 v4, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " *** ACCOUNT ***\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[SyncSchedule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[SMIME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSmimeFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[ mMessageFormat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "[ mAccountType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[ mForwardWithFiles = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "[ mAutoDownload = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "[ mRecentMessages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "[ mShowImage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dumpHostAuthInfo(Lcom/android/emailcommon/provider/EmailContent$HostAuth;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " *** HOSTAUTH *** ::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    return v0
.end method

.method public getAutoRetryTimes()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    return v0
.end method

.method public getCalendarSyncLookback()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    return v0
.end method

.method public getConflictresolution()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    return v0
.end method

.method public getConversationMode()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    return v0
.end method

.method public getDefaultEmailRetrieveSize(Landroid/content/Context;)I
    .locals 2

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0xc800

    goto :goto_0
.end method

.method public getDeletePolicy()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailRetrieveSize()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    return v0
.end method

.method public getEmailSize()B
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    int-to-byte v0, v0

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    return v0
.end method

.method public getForwardWithFiles()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    return v0
.end method

.method public getLargeMsgCriSize(Landroid/content/Context;)I
    .locals 4

    const-string v1, "EmailContent >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current EmailRetrieveSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getMinEmailRetrieveSize(Landroid/content/Context;)I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultEmailRetrieveSize(Landroid/content/Context;)I

    move-result v0

    :goto_0
    const-string v1, "EmailContent >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LargeMsg criterion size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    goto :goto_0
.end method

.method public getMessageFormat()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    return v0
.end method

.method public getMinEmailRetrieveSize(Landroid/content/Context;)I
    .locals 2

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x800

    goto :goto_0
.end method

.method public getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .locals 4

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    goto :goto_0
.end method

.method public getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .locals 4

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    goto :goto_0
.end method

.method public getProtocol(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRingtone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityFlags()J
    .locals 2

    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    return-wide v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSenderUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    :cond_0
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getStoreUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getSevenAccountKey()J
    .locals 2

    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSmimeEncryptionAlgorithm()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    return v0
.end method

.method public getSmimeFlags()I
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    shl-int/lit8 v0, v1, 0x0

    iget-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAll:Z

    if-eqz v1, :cond_1

    :goto_1
    shl-int/lit8 v1, v2, 0x1

    or-int/2addr v0, v1

    return v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public getSmimeOwnCertificate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getSmimeSignAlgorithm()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    return v0
.end method

.method public getStoreUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    :cond_0
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getStoreUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getSyncInterval()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    return v0
.end method

.method public getSyncLookback()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    return v0
.end method

.method public getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    return-object v0
.end method

.method public getTextPreviewSize()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    return v0
.end method

.method public getTypeMsg()I
    .locals 1

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    return-object v0
.end method

.method public isEasAccount(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "eas"

    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 7

    const/16 v6, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    if-ne v1, v6, :cond_1

    move v1, v2

    :goto_1
    sput v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailMessageDiffEnabled:I

    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    const/16 v1, 0x2a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    const/16 v1, 0x2b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x14

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->setPeakDay(I)V

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x15

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->setStartMinute(I)V

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x16

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->setEndMinute(I)V

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x17

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->setPeakSchedule(I)V

    const/16 v1, 0x18

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x2

    :sswitch_0
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->setOffPeakSchedule(I)V

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x19

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->setRoamingSchedule(I)V

    const/16 v1, 0x1a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    const/16 v1, 0x1b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    const/16 v1, 0x1c

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    const/16 v1, 0x1e

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    const/16 v1, 0x1d

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSizeLimit:J

    const/16 v1, 0x1f

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    const/16 v1, 0x20

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    const/16 v1, 0x21

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDays:Ljava/lang/String;

    const/16 v1, 0x22

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakStartTime:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakEndTime:Ljava/lang/String;

    const/16 v1, 0x24

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mWhileroaming:I

    const/16 v1, 0x25

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAttachmentEnabled:I

    const/16 v1, 0x26

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    const/16 v1, 0x27

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeFlags(I)V

    const/16 v1, 0x28

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    const/16 v1, 0x29

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    const/16 v1, 0x2c

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDeviceInfoSent:I

    const/16 v1, 0x2d

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mdeviceBlockedType:I

    const/16 v1, 0x2e

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    const/16 v1, 0x2f

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mIRMTemplateTimeStamp:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    const/16 v1, 0x31

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    const/16 v1, 0x32

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    const/16 v1, 0x33

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEasLocalChangeEnabled:Z

    const/16 v1, 0x34

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    const/16 v1, 0x35

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    :goto_4
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    const/16 v1, 0x36

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    const/16 v1, 0x37

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_5

    :goto_5
    iput-boolean v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    const/16 v1, 0x38

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    return-void

    :cond_0
    move v1, v3

    goto/16 :goto_0

    :cond_1
    move v1, v3

    goto/16 :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4

    :cond_5
    move v3, v2

    goto :goto_5

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x5 -> :sswitch_0
        0xf -> :sswitch_0
        0x3c -> :sswitch_0
        0xf0 -> :sswitch_0
        0x2d0 -> :sswitch_0
    .end sparse-switch
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v21

    if-eqz v21, :cond_0

    new-instance v21, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v21

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    invoke-super/range {p0 .. p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v20

    :goto_0
    return-object v20

    :cond_1
    const/4 v9, 0x0

    const/16 v17, -0x1

    const/16 v19, -0x1

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    add-int/lit8 v10, v9, 0x1

    move/from16 v17, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v10

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    add-int/lit8 v10, v9, 0x1

    move/from16 v19, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v10

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v5

    const-wide/16 v21, -0x1

    cmp-long v21, v5, v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v21, v0

    cmp-long v21, v5, v21

    if-eqz v21, :cond_4

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v12

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v21, "isDefault"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v21, "emailsize"

    iget v0, v12, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v21, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v7, 0x0

    if-gez v17, :cond_5

    if-ltz v19, :cond_7

    :cond_5
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    if-ltz v17, :cond_6

    const-string v21, "hostAuthKeyRecv"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    if-ltz v19, :cond_7

    const-string v21, "hostAuthKeySend"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    if-eqz v7, :cond_8

    invoke-virtual {v4, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    :cond_8
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "com.android.email.provider"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v18

    if-ltz v17, :cond_9

    aget-object v21, v18, v17

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getId(Landroid/net/Uri;)J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    :cond_9
    if-ltz v19, :cond_a

    aget-object v21, v18, v19

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getId(Landroid/net/Uri;)J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    :cond_a
    aget-object v21, v18, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getId(Landroid/net/Uri;)J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    new-instance v21, Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    invoke-direct/range {v21 .. v21}, Lcom/android/emailcommon/provider/EmailContent$AccountCB;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mAccountKey:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mSevenAccountKey:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mTimeLimit:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mTypeMsg:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mPeakTime:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mOffPeakTime:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDays:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mDays:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakStartTime:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mPeakStartTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakEndTime:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mPeakEndTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mWhileroaming:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mWhileroaming:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAttachmentEnabled:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mAttachmentEnabled:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v21, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->toContentValues()Landroid/content/ContentValues;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "com.android.email.provider"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v18

    move-object/from16 v15, v16

    :cond_b
    :try_start_2
    const-string v3, "com.android.email.action.ACCOUNT_UPDATED"

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v21

    :goto_1
    const/16 v20, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v21

    goto :goto_1

    :catch_2
    move-exception v21

    move-object/from16 v15, v16

    goto :goto_1

    :catch_3
    move-exception v21

    move-object/from16 v15, v16

    goto :goto_1
.end method

.method public setAccountKey(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountKey:J

    return-void
.end method

.method public setAccountType(I)V
    .locals 0

    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    return-void
.end method

.method public setAutoDownload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    return-void
.end method

.method public setAutoRetryTimes(I)V
    .locals 0

    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    return-void
.end method

.method public setCalendarSyncLookback(I)Z
    .locals 3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    :goto_0
    return v0

    :cond_1
    iput v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCbaCertificate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    return-void
.end method

.method public setConflictresolution(I)V
    .locals 0

    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    return-void
.end method

.method public setConversationMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    return-void
.end method

.method public setDefaultAccount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    return-void
.end method

.method public setDeletePolicy(I)V
    .locals 2

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, -0xd

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    shl-int/lit8 v1, p1, 0x2

    and-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    return-void
.end method

.method public setEmailSize(B)V
    .locals 0

    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    return-void
.end method

.method public setForwardWithFiles(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    return-void
.end method

.method public setMessageFormat(I)V
    .locals 0

    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    return-void
.end method

.method public setRingtone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    return-void
.end method

.method public setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setStoreUri(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    goto :goto_0
.end method

.method public setSevenAccountKey(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    return-void
.end method

.method public setShowImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    return-void
.end method

.method public setSizeLimit(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSizeLimit:J

    return-void
.end method

.method public setSmimeEncryptAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    return-void
.end method

.method public setSmimeEncryptionAlgorithm(I)V
    .locals 0

    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    return-void
.end method

.method public setSmimeFlags(I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAll:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setSmimeOwnCertificate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    return-void
.end method

.method public setSmimeSignAlgorithm(I)V
    .locals 0

    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    return-void
.end method

.method public setSmimeSignAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAll:Z

    return-void
.end method

.method public setStoreUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setStoreUri(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    goto :goto_0
.end method

.method public setSyncInterval(I)V
    .locals 0

    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    return-void
.end method

.method public setSyncLookback(I)V
    .locals 0

    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    return-void
.end method

.method public setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V
    .locals 2

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setPeakDay(I)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setStartMinute(I)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setEndMinute(I)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setPeakSchedule(I)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setOffPeakSchedule(I)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setRoamingSchedule(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    return-void
.end method

.method public setTextPreviewSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    return-void
.end method

.method public setTimeLimit(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    return-void
.end method

.method public setTypeMsg(I)V
    .locals 0

    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "emailAddress"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "syncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "syncInterval"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "hostAuthKeyRecv"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "hostAuthKeySend"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "isDefault"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "compatibilityUuid"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "senderName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ringtoneUri"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "protocolVersion"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "newMessageCount"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "securityFlags"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "securitySyncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "signature"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "emailsize"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "conflict"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "policyKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "peakDays"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "peakStartMinute"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "peakEndMinute"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "peakSchedule"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "offPeakSchedule"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "roamingSchedule"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "calendarSyncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "smimeOwnCertificateAlias"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "smimeOptionsFlags"

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSmimeFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "conversationMode"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "textPreview"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "deviceInfoSent"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDeviceInfoSent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cbaCertificateAlias"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "messageFormat"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "accountType"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "forwardWithFiles"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "autoDownload"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "recentMessages"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "showImage"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "autoRetryTimes"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x3a

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 9

    const/4 v5, 0x0

    const-string v6, "isDefault"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "isDefault"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "isDefault"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "emailsize"

    iget v7, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.android.email.provider"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v5

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDeviceInfoSent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method
