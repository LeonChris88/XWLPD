.class public Lcom/android/emailcommon/provider/MailboxData;
.super Ljava/lang/Object;
.source "MailboxData.java"


# static fields
.field public static final MAILBOX_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mDepth:I

.field private mDisplayName:Ljava/lang/String;

.field private mId:I

.field private mMessageCount:I

.field private mParentServId:Ljava/lang/String;

.field private mServerId:Ljava/lang/String;

.field private mType:I

.field private mUnreadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "parentServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "messageCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/MailboxData;->MAILBOX_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/emailcommon/provider/MailboxData;->mId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/emailcommon/provider/MailboxData;->mType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/emailcommon/provider/MailboxData;->mDepth:I

    iput v1, p0, Lcom/android/emailcommon/provider/MailboxData;->mUnreadCount:I

    iput v1, p0, Lcom/android/emailcommon/provider/MailboxData;->mMessageCount:I

    iput-object v2, p0, Lcom/android/emailcommon/provider/MailboxData;->mDisplayName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/emailcommon/provider/MailboxData;->mServerId:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/emailcommon/provider/MailboxData;->mParentServId:Ljava/lang/String;

    return-void
.end method
