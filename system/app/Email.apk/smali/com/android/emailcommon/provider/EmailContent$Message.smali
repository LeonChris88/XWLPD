.class public final Lcom/android/emailcommon/provider/EmailContent$Message;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/emailcommon/provider/EmailContent$MessageColumns;
.implements Lcom/android/emailcommon/provider/EmailContent$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_PROJECTION_UP_DEL:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_LIMIT_1:Landroid/net/Uri;

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri;

.field public static final ID_COLUMNS_PROJECTION:[Ljava/lang/String;

.field public static final ID_COLUMN_PROJECTION:[Ljava/lang/String;

.field public static final ID_MAILBOX_PROJECTION:[Ljava/lang/String;

.field public static final ID_SUBJECT_COLUMN_PROJECTION:[Ljava/lang/String;

.field public static final LIST_PROJECTION:[Ljava/lang/String;

.field public static final NOTIFIER_URI:Landroid/net/Uri;

.field public static final SYNCED_CONTENT_URI:Landroid/net/Uri;

.field public static final UPDATED_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field public mAccountKey:J

.field public mAccountSchema:Ljava/lang/String;

.field public transient mAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public mBcc:Ljava/lang/String;

.field public mCc:Ljava/lang/String;

.field public mClientId:Ljava/lang/String;

.field public mConversationId:Ljava/lang/String;

.field public mConversationIndex:[B

.field public mDisplayName:Ljava/lang/String;

.field public mDstMailBoxKey:I

.field public transient mEncrypted:Z

.field public mEncryptionAlgorithm:Ljava/lang/Integer;

.field public mFFlag:Z

.field public mFlagAttachment:Z

.field public mFlagFavorite:Z

.field public mFlagLoaded:I

.field public mFlagMoved:I

.field public mFlagRead:Z

.field public mFlagReply:Z

.field public mFlagStatus:I

.field public mFlagTruncated:I

.field public mFlags:I

.field public transient mFollowupFlag:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

.field public mFrom:Ljava/lang/String;

.field public transient mHtml:Ljava/lang/String;

.field public transient mHtmlReply:Ljava/lang/String;

.field public mIRMContentExpiryDate:Ljava/lang/String;

.field public mIRMContentOwner:Ljava/lang/String;

.field public mIRMLicenseFlag:I

.field public mIRMOwner:I

.field public mIRMRemovalFlag:I

.field public mIRMTemplateDescription:Ljava/lang/String;

.field public mIRMTemplateId:Ljava/lang/String;

.field public mIRMTemplateName:Ljava/lang/String;

.field public mImportance:I

.field public transient mIntroText:Ljava/lang/String;

.field public mIsMimeLoaded:I

.field public transient mLastVerb:I

.field public transient mLastVerbTime:J

.field public mMailboxKey:J

.field public mMailboxType:I

.field public mMeetingInfo:Ljava/lang/String;

.field public mMessageDirty:I

.field public mMessageId:Ljava/lang/String;

.field public mMessageKey:J

.field public mMessageType:I

.field public mMissingBody:I

.field public mMissingHtmlBody:I

.field public mOriginalId:J

.field public transient mProcessed:Z

.field public mReplyTo:Ljava/lang/String;

.field public mRetrySendTimes:I

.field public mServerId:Ljava/lang/String;

.field public mServerTimeStamp:J

.field public mSevenAccountKey:J

.field public mSevenMailboxKey:I

.field public mSevenMessageKey:J

.field public transient mSigned:Z

.field public mSnippet:Ljava/lang/String;

.field public transient mSourceKey:J

.field public mSubject:Ljava/lang/String;

.field public transient mText:Ljava/lang/String;

.field public transient mTextReply:Ljava/lang/String;

.field public mThreadId:J

.field public mThreadName:Ljava/lang/String;

.field public mTimeStamp:J

.field public mTo:Ljava/lang/String;

.field public mTypeMsg:I

.field public mUmCallerId:Ljava/lang/String;

.field public mUmUserNotes:Ljava/lang/String;

.field public mUnkEncoding:I

.field public transient mVerified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->uriWithLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI_LIMIT_1:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/syncedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/deletedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/updatedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_NOTIFIER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    const/16 v0, 0x3e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "timeStamp"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "flagRead"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "clientId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "messageId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fromList"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "toList"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ccList"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "bccList"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "replyToList"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "syncServerTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "meetingInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "threadId"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "threadName"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "istruncated"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "flagMoved"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "dstMailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "isMimeLoaded"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "smimeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "encryptionAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "conversationId"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "conversationIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "followupflag"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "umCallerId"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "umUserNotes"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "lastVerb"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "lastVerbTime"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "messageType"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "messageDirty"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "accountSchema"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "mailboxType"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "flagReply"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "originalId"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "IRMTemplateId"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "IRMContentExpiryDate"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "IRMContentOwner"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "IRMLicenseFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "IRMOwner"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "IRMRemovalFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "IRMTemplateName"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "IRMTemplateDescription"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "EasLocalDeleteFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "EasLocalReadFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "retrySendTimes"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "typeMsg"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "sevenMessageKey"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "missingBody"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "missingHtmlBody"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "unkEncoding"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "sevenAccountKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "timeStamp"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "flagRead"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "clientId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "messageId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fromList"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "toList"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ccList"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "bccList"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "replyToList"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "syncServerTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "meetingInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "threadId"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "threadName"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "istruncated"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "flagMoved"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "dstMailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "isMimeLoaded"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "smimeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "encryptionAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "conversationId"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "conversationIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "followupflag"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "umCallerId"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "umUserNotes"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "lastVerb"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "lastVerbTime"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "messageType"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "messageDirty"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "accountSchema"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "mailboxType"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "flagReply"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "originalId"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "IRMTemplateId"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "IRMContentExpiryDate"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "IRMContentOwner"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "IRMLicenseFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "IRMOwner"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "IRMRemovalFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "IRMTemplateName"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "IRMTemplateDescription"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "EasLocalDeleteFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "EasLocalReadFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "retrySendTimes"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION_UP_DEL:[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "timeStamp"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "flagRead"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "istruncated"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "flagMoved"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dstMailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "isMimeLoaded"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "followupflag"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "lastVerb"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "lastVerbTime"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "snippet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "syncServerId"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "originalId"

    aput-object v1, v0, v3

    const-string v1, "syncServerId"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_SUBJECT_COLUMN_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mailboxKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_MAILBOX_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "originalId"

    aput-object v1, v0, v3

    const-string v1, "syncServerId"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    iput-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    iput v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    iput-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    iput-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    iput-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mOriginalId:J

    iput v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    iput-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFFlag:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    iput v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    iput v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagMoved:I

    iput v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDstMailBoxKey:I

    iput v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    iput v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadId:J

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    iput v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    iput v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mRetrySendTimes:I

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    return-void
.end method

.method public static getFavoriteMessageCount(Landroid/content/Context;)I
    .locals 3

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,4,1)"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getKeyColumnLong(Landroid/content/Context;JLjava/lang/String;)J
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v3

    invoke-static {p0, v1, p1, p2, v2}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public static getLatestIncomingMessage(Landroid/content/Context;Ljava/lang/Long;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 9

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI_LIMIT_1:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey IN (SELECT _id FROM Mailbox WHERE accountKey=? AND type<64 AND flagVisible=1 AND type NOT IN (3,4,5))"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "timeStamp DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restore(Landroid/database/Cursor;)V
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

    move-object v0, v6

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

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

    move-object v0, v1

    goto :goto_1
.end method

.method public static getMailboxId(Landroid/content/Context;J)J
    .locals 8

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/emailcommon/provider/EmailContent;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/emailcommon/provider/EmailContent;->access$100()I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static getThreadIdFromSubject(Ljava/lang/String;)J
    .locals 7

    const-wide/16 v0, 0x0

    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getThreadNameFromSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v3, v3

    const/16 v5, 0xc

    shl-long/2addr v3, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    and-int/lit16 v5, v5, 0xfff

    int-to-long v5, v5

    or-long v0, v3, v5

    goto :goto_0
.end method

.method public static getThreadNameFromSubject(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x3a

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 7

    const/4 v6, 0x0

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resolver"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Landroid/database/CursorWindowAllocationException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static restoreMessageWithSevenMessageId(Landroid/content/Context;I)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 8

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "sevenMessageKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

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

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;
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

    const-string v3, "Exception in restoreMessageWithSevenMessageId"

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

.method public static restoreUnifiedMessageWithUid(Landroid/content/Context;JZ)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 9

    const/4 v6, 0x0

    const-string v0, "EmailContent >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreUnifiedMessageWithUid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "syncServerId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "EmailContent >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing msg obj for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/emailcommon/provider/EmailContent;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v6

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    if-eqz v3, :cond_8

    if-eqz p3, :cond_5

    iget v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    :cond_5
    :goto_4
    move-object v1, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    move-object v6, v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_4
.end method


# virtual methods
.method public addSaveOps(Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Snippet;->fromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "textContent"

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "htmlContent"

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v2, "textReply"

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, "htmlReply"

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    const-string v2, "sourceMessageKey"

    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v2, "introText"

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-string v4, "messageKey"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v4, "messageKey"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Snippet;->fromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    if-nez v0, :cond_9

    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    :cond_9
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "messageKey"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public addUpdateAndDeleteOps(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/Context;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x1

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageKey = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v5, v1

    cmp-long v1, v5, v10

    if-lez v1, :cond_b

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v6, v1

    :goto_1
    new-array v2, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageKey = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v7, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, v1, v10

    if-lez v3, :cond_0

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "textContent"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "htmlContent"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "textReply"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "htmlReply"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    cmp-long v0, v2, v10

    if-eqz v0, :cond_7

    const-string v0, "sourceMessageKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_7
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "introText"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v6, :cond_9

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v2, "messageKey"

    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_3

    :cond_a
    return-void

    :cond_b
    move-object v1, v4

    goto/16 :goto_0

    :cond_c
    move-object v6, v4

    goto/16 :goto_1
.end method

.method public getSmimeFlags()I
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    shl-int/lit8 v0, v1, 0x0

    iget-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mVerified:Z

    if-eqz v1, :cond_3

    :goto_3
    shl-int/lit8 v1, v2, 0x3

    or-int/2addr v0, v1

    return v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 7

    const/16 v6, 0x38

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mClientId:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    const/16 v1, 0x15

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadId:J

    const/16 v1, 0x16

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    const/16 v1, 0x17

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    const/16 v1, 0x18

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    const/16 v1, 0x19

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagMoved:I

    const/16 v1, 0x1a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDstMailBoxKey:I

    const/16 v1, 0x1b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    const/16 v1, 0x1c

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    const/16 v1, 0x1d

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->setSmimeFlags(I)V

    const/16 v1, 0x1e

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    const/16 v1, 0x1f

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mConversationIndex:[B

    const/16 v1, 0x21

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFFlag:Z

    const/16 v1, 0x24

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerb:I

    const/16 v1, 0x25

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerbTime:J

    const/16 v1, 0x26

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    const/16 v1, 0x27

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageDirty:I

    const/16 v1, 0x2b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    :goto_4
    iput-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-le v1, v6, :cond_0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTypeMsg:I

    const/16 v1, 0x39

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    const/16 v1, 0x3a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingBody:I

    const/16 v1, 0x3b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingHtmlBody:I

    const/16 v1, 0x3c

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mUnkEncoding:I

    const/16 v1, 0x3d

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    :cond_0
    const/16 v1, 0x28

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxType:I

    const/16 v1, 0x2a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageKey:J

    const/16 v1, 0x2d

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentExpiryDate:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentOwner:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    const/16 v1, 0x31

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMOwner:I

    const/16 v1, 0x32

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMRemovalFlag:I

    const/16 v1, 0x33

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    const/16 v1, 0x34

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    const/16 v1, 0x37

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mRetrySendTimes:I

    return-void

    :cond_1
    move v1, v3

    goto/16 :goto_0

    :cond_2
    move v1, v3

    goto/16 :goto_1

    :cond_3
    move v1, v3

    goto/16 :goto_2

    :cond_4
    move v1, v3

    goto/16 :goto_3

    :cond_5
    move v2, v3

    goto/16 :goto_4
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_0
    if-eqz v4, :cond_3

    invoke-super/range {p0 .. p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v10

    :cond_1
    :goto_1
    return-object v10

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v10

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)I

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "com.android.email.provider"

    invoke-virtual {v11, v12, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTypeMsg:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "typeMsg"

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTypeMsg:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/android/emailcommon/provider/EmailContent$MessageCB;->CONTENT_URI:Landroid/net/Uri;

    const-string v14, "messageKey=?"

    const/4 v11, 0x1

    new-array v15, v11, [Ljava/lang/String;

    const/16 v16, 0x0

    const/4 v11, 0x0

    aget-object v11, v9, v11

    iget-object v11, v11, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v11

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v15, v16

    invoke-virtual {v12, v13, v3, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_6
    if-eqz v4, :cond_8

    const/4 v11, 0x0

    aget-object v11, v9, v11

    iget-object v10, v11, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v7

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    add-int/lit8 v7, v8, 0x1

    aget-object v11, v9, v8

    iget-object v10, v11, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    :cond_7
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v11, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v7

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v11

    :goto_3
    const/4 v10, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v11

    goto :goto_3
.end method

.method public setSmimeFlags(I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mVerified:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "timeStamp"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "subject"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flagRead"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "flagLoaded"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "flagFavorite"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "flagAttachment"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "flagReply"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "originalId"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mOriginalId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "syncServerId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "syncServerTimeStamp"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "clientId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "messageId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mailboxKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "fromList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "toList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ccList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bccList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "replyToList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "meetingInfo"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "umCallerId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mUmCallerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "umUserNotes"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mUmUserNotes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accountSchema"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mailboxType"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->getThreadIdFromSubject(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadId:J

    :cond_0
    const-string v1, "threadId"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "threadName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "importance"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "istruncated"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "flagMoved"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagMoved:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "dstMailboxKey"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDstMailBoxKey:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "flagStatus"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v1, :cond_1

    const-string v1, "isMimeLoaded"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    const-string v1, "conversationId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "conversationIndex"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mConversationIndex:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v1, "followupflag"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFFlag:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "smimeFlags"

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getSmimeFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "encryptionAlgorithm"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "lastVerb"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "lastVerbTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerbTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "messageType"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "messageDirty"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "snippet"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IRMTemplateId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IRMContentOwner"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentOwner:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IRMLicenseFlag"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "IRMOwner"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMOwner:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "IRMContentExpiryDate"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentExpiryDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IRMRemovalFlag"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMRemovalFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "IRMTemplateName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IRMTemplateDescription"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "retrySendTimes"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mRetrySendTimes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    :cond_1
    const-string v1, "isMimeLoaded"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0
.end method
