.class public Lcom/android/email/provider/EmailProvider;
.super Landroid/content/ContentProvider;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/EmailProvider$DatabaseHelper;,
        Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;
    }
.end annotation


# static fields
.field private static final CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

.field private static final CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

.field private static final GB_FLAGS_UPGRADE_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final ORPHANS_PROJECTION:[Ljava/lang/String;

.field private static final RESETSECURITYSYNCKEY_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final TABLE_NAMES:[Ljava/lang/String;

.field private static final V21_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final V21_HOSTAUTH_PROJECTION:[Ljava/lang/String;

.field private static sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

.field private static final sCacheAccount:Lcom/android/email/provider/ContentCache;

.field private static final sCacheHostAuth:Lcom/android/email/provider/ContentCache;

.field static final sCacheMailbox:Lcom/android/email/provider/ContentCache;

.field private static final sCacheMessage:Lcom/android/email/provider/ContentCache;

.field private static sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    sput-object v4, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    sput-object v4, Lcom/android/email/provider/EmailProvider;->sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "mailboxKey"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/email/provider/EmailProvider;->ORPHANS_PROJECTION:[Ljava/lang/String;

    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Account"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sCacheAccount:Lcom/android/email/provider/ContentCache;

    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "HostAuth"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sCacheHostAuth:Lcom/android/email/provider/ContentCache;

    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Mailbox"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sCacheMailbox:Lcom/android/email/provider/ContentCache;

    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Message"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v8}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sCacheMessage:Lcom/android/email/provider/ContentCache;

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Account"

    aput-object v1, v0, v5

    const-string v1, "Mailbox"

    aput-object v1, v0, v6

    const-string v1, "Message"

    aput-object v1, v0, v7

    const-string v1, "Attachment"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "HostAuth"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Message_Updates"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Message_Deletes"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FollowupFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "FollowupFlag_Updates"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "FollowupFlag_Deletes"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Policies"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Mailbox_CB"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Message_CB"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Account_CB"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CertificateCache"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "RecipientInformation"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "historyAccount"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "EmailAddressCache"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "QuickResponse"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Document"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Body"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "IRMTemplate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/16 v0, 0x16

    new-array v0, v0, [Lcom/android/email/provider/ContentCache;

    sget-object v1, Lcom/android/email/provider/EmailProvider;->sCacheAccount:Lcom/android/email/provider/ContentCache;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/email/provider/EmailProvider;->sCacheMailbox:Lcom/android/email/provider/ContentCache;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/email/provider/EmailProvider;->sCacheMessage:Lcom/android/email/provider/ContentCache;

    aput-object v1, v0, v7

    aput-object v4, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/android/email/provider/EmailProvider;->sCacheHostAuth:Lcom/android/email/provider/ContentCache;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v4, v0, v1

    const/4 v1, 0x6

    aput-object v4, v0, v1

    const/4 v1, 0x7

    aput-object v4, v0, v1

    const/16 v1, 0x8

    aput-object v4, v0, v1

    const/16 v1, 0x9

    aput-object v4, v0, v1

    const/16 v1, 0xa

    aput-object v4, v0, v1

    const/16 v1, 0xb

    aput-object v4, v0, v1

    const/16 v1, 0xc

    aput-object v4, v0, v1

    const/16 v1, 0xd

    aput-object v4, v0, v1

    const/16 v1, 0xe

    aput-object v4, v0, v1

    const/16 v1, 0xf

    aput-object v4, v0, v1

    const/16 v1, 0x10

    aput-object v4, v0, v1

    const/16 v1, 0x11

    aput-object v4, v0, v1

    const/16 v1, 0x12

    aput-object v4, v0, v1

    const/16 v1, 0x13

    aput-object v4, v0, v1

    const/16 v1, 0x14

    aput-object v4, v0, v1

    const/16 v1, 0x15

    aput-object v4, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailProvider;->CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.email.provider"

    const-string v2, "account"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "account/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "resetNewMessageCount"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "resetNewMessageCount/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "account/#/mailbox"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "mailbox"

    const/16 v3, 0x1000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "mailbox/#"

    const/16 v3, 0x1001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "mailbox/#/message"

    const/16 v3, 0x1003

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "message"

    const/16 v3, 0x2000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "message/#"

    const/16 v3, 0x2001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "attachment"

    const/16 v3, 0x3000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "attachment/#"

    const/16 v3, 0x3001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "attachment/message/#"

    const/16 v3, 0x3002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "attachment/content/*"

    const/16 v3, 0x3003

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "body"

    const v3, 0x14000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "body/#"

    const v3, 0x14001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "body/message/#"

    const v3, 0x14002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "body/#/html"

    const v3, 0x14003

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "body/#/text"

    const v3, 0x14004

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "hostauth"

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "hostauth/#"

    const/16 v3, 0x4001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxIdAddToField/#"

    const/16 v3, 0x1002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "accountIdAddToField/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "syncedMessage/#"

    const/16 v3, 0x2002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "deletedMessage"

    const/16 v3, 0x6000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "deletedMessage/#"

    const/16 v3, 0x6001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "deletedMessage/mailbox/#"

    const/16 v3, 0x6002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "updatedMessage"

    const/16 v3, 0x5000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "updatedMessage/#"

    const/16 v3, 0x5001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "followupFlag"

    const/16 v3, 0x7000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "updatedFollowupFlag"

    const v3, 0x8000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "deletedFollowupFlag"

    const v3, 0x9000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "followupFlag/#"

    const/16 v3, 0x7001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "updatedFollowupFlag/#"

    const v3, 0x8001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "deletedFollowupFlag/#"

    const v3, 0x9001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "syncedFollowupFlag/#"

    const/16 v3, 0x7002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "policies"

    const v3, 0xa000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "policies/#"

    const v3, 0xa001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxcb"

    const v3, 0xb000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxcb/#"

    const v3, 0xb001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxcb/#/mailbox"

    const v3, 0xb002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "messagecb"

    const v3, 0xc000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "messagecb/#"

    const v3, 0xc001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "accountcb"

    const v3, 0xd000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "accountcb/#"

    const v3, 0xd001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "accountcb/protocol"

    const v3, 0xd002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "certificateCache"

    const v3, 0xe000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "syncedMessage"

    const/16 v3, 0x2003

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "recipientInformation"

    const v3, 0xf000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "recipientInformation/#"

    const v3, 0xf001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "recipientInformation/filter/*"

    const v3, 0xf002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "document"

    const v3, 0x13000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "document/#"

    const v3, 0x13001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "historyAccount"

    const/high16 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "IRMTemplate"

    const v3, 0x15000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "IRMTemplate/#"

    const v3, 0x15001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "emailaddresscache"

    const v3, 0x11000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "emailaddresscache/filter"

    const v3, 0x11001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "emailaddresscache/filter/*"

    const v3, 0x11001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "emailaddresscache/#"

    const v3, 0x11002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "quickresponse"

    const v3, 0x12000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "quickresponse/#"

    const v3, 0x12001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.email.provider"

    const-string v2, "quickresponse/account/#"

    const v3, 0x12002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    sget-object v0, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    const-string v1, "newMessageCount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/provider/EmailProvider;->RESETSECURITYSYNCKEY_ACCOUNT_PROJECTION:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "hostAuthKeyRecv"

    aput-object v1, v0, v5

    const-string v1, "emailAddress"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/email/provider/EmailProvider;->V21_ACCOUNT_PROJECTION:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "protocol"

    aput-object v1, v0, v5

    const-string v1, "password"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/email/provider/EmailProvider;->V21_HOSTAUTH_PROJECTION:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "flags"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/email/provider/EmailProvider;->GB_FLAGS_UPGRADE_ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider;->populateFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static convertAccountFlagsFromGB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string v1, "Account"

    sget-object v2, Lcom/android/email/provider/EmailProvider;->GB_FLAGS_UPGRADE_ACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id>0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_4

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    and-int/lit16 v4, v3, -0xf81

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    :goto_1
    or-int/2addr v4, v0

    and-int/lit16 v0, v3, 0x100

    if-eqz v0, :cond_1

    const/16 v0, 0x400

    :goto_2
    or-int/2addr v4, v0

    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_2

    const/16 v0, 0x800

    :goto_3
    or-int/2addr v4, v0

    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_3

    const/16 v0, 0x2000

    :goto_4
    or-int/2addr v0, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update Account set flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " where "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_5
    :try_start_2
    const-string v2, "EmailProvider"

    const-string v3, "Exception during converting account flags from GB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_6
    return-void

    :cond_0
    move v0, v9

    goto :goto_1

    :cond_1
    move v0, v9

    goto :goto_2

    :cond_2
    move v0, v9

    goto :goto_3

    :cond_3
    move v0, v9

    goto :goto_4

    :cond_4
    :try_start_3
    const-string v0, "EmailProvider"

    const-string v2, "convertAccountFlagsFromGB(): null account cursor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_5
.end method

.method static createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " (_id integer primary key autoincrement, accountKey integer, sevenAccountKey integer, typeMsg integer, timeLimit integer default 7, sizeLimit integer default 50, peakTime integer default 0, offPeakTime integer default 1, days text default \'0111110\', peakStartTime text default \'09:00\', peakEndTime text default \'18:00\', whileRoaming integer default 1, attachmentEnabled integer default 5000 );"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS  Account_CB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "Account_CB"

    const-string v1, "accountKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "Account_CB"

    const-string v1, "sevenAccountKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "Account_CB"

    const-string v1, "typeMsg"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " (_id integer primary key autoincrement, displayName text, emailAddress text, syncKey text, syncLookback integer, syncInterval text, hostAuthKeyRecv integer, hostAuthKeySend integer, flags integer, isDefault integer, compatibilityUuid text, senderName text, ringtoneUri text, protocolVersion text, newMessageCount integer, securityFlags integer, securitySyncKey text, signature text, emailsize integer default 3, policyKey text, peakDays integer, peakStartMinute integer, peakEndMinute integer, peakSchedule integer, offPeakSchedule integer, roamingSchedule integer, calendarSyncLookback integer default 0, conflict integer default 0, smimeOwnCertificateAlias text, smimeOptionsFlags integer default 0, smimeSignAlgorithm integer default 0, smimeEncryptionAlgorithm integer default 0, conversationMode integer default 0, textPreview integer  default 0,deviceInfoSent integer default 0, deviceBlockedType integer default 0,IRMTemplateTimeStamp text, cbaCertificateAlias text, messageFormat integer default 0, accountType integer default -1, easLocalChange integer default 0, forwardWithFiles integer default 1, autoDownload integer default 0, recentMessages integer default 0, showImage integer default 1, autoRetryTimes integer default 3);"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Account"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "create trigger account_delete before delete on Account begin delete from Mailbox where accountKey=old._id; delete from HostAuth where _id=old.hostAuthKeyRecv; delete from HostAuth where _id=old.hostAuthKeySend; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "create trigger account_delete_policy before delete on Account begin delete from Policies where account_id=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "create trigger account_insert after insert on Account begin  update HostAuth set accountKey = new._id where accountKey = 0; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "create trigger account_delete_recipientinformation before delete on Account begin delete from RecipientInformation where accountkey=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "create trigger account_delete_irm before delete on Account begin delete from IRMTemplate where AccountKey=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " (_id integer primary key autoincrement, fileName text, mimeType text, size integer, contentId text, contentUri text, messageKey integer, location text, encoding text, content text, flags integer, content_bytes blob, vmAttOrder integer default 0,vmAttDuration integer default 0,accountKey integer,isInline integer);"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Attachment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "Attachment"

    const-string v1, "messageKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static createBodyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " (_id integer primary key autoincrement, messageKey integer, htmlContent text, textContent text, htmlReply text, textReply text, sourceMessageKey text, introText text);"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "Body"

    const-string v1, "messageKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static createCertificateCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " (_id integer primary key autoincrement, email text UNIQUE, certificate text );"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table CertificateCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static createDocumentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "linkId text UNIQUE, displayName text, isFolder integer, creationDate integer, lastModifiedDate integer, ishidden integer, contentLength integer, contentType text, mailboxKey integer, accountKey integer,parentFolderLinkId integer);"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (_id integer primary key autoincrement, syncServerId text, syncServerTimeStamp integer, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table Document"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "creationDate"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "isFolder"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ishidden"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "mailboxKey"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "syncServerId"

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    const-string v4, "Document"

    invoke-static {v4, v3}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static createEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " (_id integer primary key autoincrement, accountAddress text constraint email unique not null, accountName text, accountSource text, accountPrefix text, timeStamp integer, usageCount integer, operationType  integer, accountRank integer );"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table EmailAddressCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TRIGGER email_cache_delete BEFORE INSERT ON EmailAddressCache WHEN ((SELECT COUNT(*) FROM EmailAddressCache)  >= 50 )  begin delete from EmailAddressCache  where timeStamp= (SELECT min(timeStamp) from EmailAddressCache ) AND usageCount= (SELECT min(usageCount) from EmailAddressCache );end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TRIGGER email_cache_update AFTER UPDATE ON EmailAddressCache begin update EmailAddressCache set usageCount = NEW.usageCount + OLD.usageCount where _id=NEW._id;end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " (_id integer primary key autoincrement, messageKey integer, messageSyncServerId text, taskKey integer, taskSyncServerId text, ringtoneUri text, status integer, flagType text, completeTime text, dateCompleted text, startDate text, dueDate text, UTCStartDate text, UTCDueDate text, reminderSet integer, reminderTime text, ordinalDate text, sub_ordinaldate text );"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table FollowupFlag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table FollowupFlag_Updates"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table FollowupFlag_Deletes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "create trigger message_delete_followup before delete on Message begin delete from FollowupFlag where messageKey=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static createHistoryAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " (_id integer primary key autoincrement, EmailAddress text UNIQUE, TimeDate text );"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table historyAccount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " (_id integer primary key autoincrement, protocol text, address text, port integer, flags integer, login text, password text, domain text, accountKey integer);"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table HostAuth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static createIRMTemplateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " (_id integer primary key autoincrement, AccountKey integer, IRMTemplateDescription text, IRMTemplateId text, IRMTemplateName text);"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table IRMTemplate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " (_id integer primary key autoincrement, mailboxKey integer, typeMsg integer, sevenMailboxKey integer, syncFlag integer);"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS  Mailbox_CB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "Mailbox_CB"

    const-string v1, "mailboxKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "Mailbox_CB"

    const-string v1, "typeMsg"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " (_id integer primary key autoincrement, displayName text, serverId text, parentServerId text, parentKey integer, accountKey integer, type integer, delimiter integer, syncKey text, syncLookback integer, syncInterval integer, syncTime integer, unreadCount integer, flagVisible integer, flags integer, visibleLimit integer, syncStatus text, messageCount integer not null default 0,flagChanged integer, dstMailboxId text, newDisplayName text, flagNoSelect integer default 0, lastTouchedTime integer default 0 ,offpeakSyncSchedule integer ,peakSyncSchedule integer ,SyncIntervalReference integer default -1 );"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Mailbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "create index mailbox_serverId on Mailbox (serverId)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "create index mailbox_accountKey on Mailbox (accountKey)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " (_id integer primary key autoincrement, messageKey integer, typeMsg integer,sevenMessageKey integer, missingBody integer, missingHtmlBody integer, unkEncoding integer, sevenAccountKey integer );"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS  Message_CB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "Message_CB"

    const-string v1, "messageKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "Message_CB"

    const-string v1, "typeMsg"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "displayName text, timeStamp integer, subject text, flagRead integer, flagLoaded integer, flagFavorite integer, flagAttachment integer, flagReply integer, originalId integer, flags integer, clientId integer, messageId text, mailboxKey integer, accountKey integer, fromList text, toList text, ccList text, bccList text, replyToList text, meetingInfo text, threadId integer, threadName text, importance integer default 1, istruncated integer default 0, flagMoved integer default 0, dstMailboxKey integer default -1,flagStatus integer default 0, isMimeLoaded integer default 0, smimeFlags integer default 0, encryptionAlgorithm integer default 0, conversationId text, conversationIndex blob, followupflag integer default 0, umCallerId text, umUserNotes text,lastVerb integer default 0, lastVerbTime integer default 0,messageType integer default 0, messageDirty integer default 0, accountSchema text, mailboxType integer default -1, IRMTemplateId text, IRMContentExpiryDate text, IRMContentOwner text, IRMLicenseFlag integer default -1, IRMOwner integer, IRMRemovalFlag integer default 0, IRMTemplateName text, IRMTemplateDescription text, EasLocalDeleteFlag integer default 0, EasLocalReadFlag integer default 0, snippet text, retrySendTimes integer default 0);"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (_id integer primary key autoincrement, syncServerId text, syncServerTimeStamp integer, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (_id integer unique, syncServerId text, syncServerTimeStamp integer, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create table Message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table Message_Updates"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table Message_Deletes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "timeStamp"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "flagRead"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "flagLoaded"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "mailboxKey"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "syncServerId"

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    const-string v4, "Message"

    invoke-static {v4, v3}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "create trigger message_delete before delete on Message begin delete from Attachment  where messageKey=old._id; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create trigger unread_message_insert before insert on Message when NEW.flagRead=0 begin update Mailbox set unreadCount=unreadCount+1  where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create trigger unread_message_delete before delete on Message when OLD.flagRead=0 begin update Mailbox set unreadCount=unreadCount-1  where _id=OLD.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create trigger unread_message_move before update of mailboxKey on Message when OLD.flagRead=0 begin update Mailbox set unreadCount=unreadCount-1  where _id=OLD.mailboxKey; update Mailbox set unreadCount=unreadCount+1 where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create trigger unread_message_read before update of flagRead on Message when OLD.flagRead!=NEW.flagRead begin update Mailbox set unreadCount=unreadCount+ case OLD.flagRead when 0 then -1 else 1 end  where _id=OLD.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create trigger message_count_message_insert after insert on Message begin update Mailbox set messageCount=messageCount+1  where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create trigger message_count_message_delete after delete on Message begin update Mailbox set messageCount=messageCount-1  where _id=OLD.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create trigger message_count_message_move after update of mailboxKey on Message begin update Mailbox set messageCount=messageCount-1  where _id=OLD.mailboxKey; update Mailbox set messageCount=messageCount+1 where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static createPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " (_id integer primary key autoincrement, name text, type text, value text, account_id integer , CONSTRAINT policyconstraint UNIQUE(account_id,name));"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Policies"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static createQuickResponseTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " (_id integer primary key autoincrement, quickResponse text, accountKey integer);"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table QuickResponse"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static createRecipientInformationTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " (_id integer primary key autoincrement, server_id text, accountkey integer, email_address text, fileas text, alias text, weightedrank integer );"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table RecipientInformation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static deleteOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 20

    if-eqz p0, :cond_0

    sget-object v4, Lcom/android/email/provider/EmailProvider;->ORPHANS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    :cond_2
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_3
    :try_start_2
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const-string v3, "Mailbox"

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_5
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const/4 v2, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const-string v2, "_id=?"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method static dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drop trigger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static enableEmailSyncFromGB(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .locals 9

    :try_start_0
    const-string v1, "Account"

    sget-object v2, Lcom/android/email/provider/EmailProvider;->V21_ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    const/4 v0, 0x1

    :try_start_1
    new-array v4, v0, [Ljava/lang/String;

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v1, "HostAuth"

    sget-object v2, Lcom/android/email/provider/EmailProvider;->V21_HOSTAUTH_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "eas"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/accounts/Account;

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.exchange"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.android.email.provider"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v2, "com.android.email.provider"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception enabling Sync Email option from GB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method

.method private static findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public static getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;
    .locals 5

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(J)I

    move-result v1

    if-ne v2, v1, :cond_0

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const-string v0, "Trash"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "UnifiedInbox"

    goto :goto_0
.end method

.method private populateFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method static recalculateMessageCount(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "update Mailbox set messageCount= (select count(*) from Message where mailboxKey = Mailbox._id)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static resetAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    :try_start_0
    const-string v0, "drop table Account_CB"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetAccountTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    :try_start_0
    const-string v0, "drop table Account"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    :try_start_0
    const-string v0, "drop table Attachment"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resetEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    :try_start_0
    const-string v0, "drop table EmailAddressCache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    :try_start_0
    const-string v0, "drop table HostAuth"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetMailboxTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    :try_start_0
    const-string v0, "drop table Mailbox"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetMessageTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    :try_start_0
    const-string v0, "drop table Message"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "drop table Message_Updates"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "drop table Message_Deletes"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "drop table Message_CB"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static updatePasswordModeFromGB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "update Policies set value=\'32\' where name = \'PasswordMode\' AND (value = \'2\' OR value = \'1\');"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "update Policies set value=\'64\' where name = \'PasswordMode\' AND value = \'4\';"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static upgradeBodyTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const/4 v1, 0x5

    if-ge p1, v1, :cond_1

    :try_start_0
    const-string v1, "drop table Body"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createBodyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v1, :cond_0

    :try_start_1
    const-string v1, "alter table Body add introText text"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/4 p1, 0x6

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProviderBody.db from v5 to v6"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    move-object v3, v4

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_2
    move-object v3, v4

    goto :goto_0

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v4

    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :goto_3
    throw v4

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public checkDatabases()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "EmailProvider.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "EmailProviderBody.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "EmailProvider"

    const-string v2, "Deleting orphaned EmailProvider database..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "EmailProvider"

    const-string v2, "Deleting orphaned EmailProviderBody database..."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, " create trigger mailbox_delete_cb before delete on Mailbox begin delete from Mailbox_CB where mailboxKey = old._id; end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, " create trigger mailbox_insert_cb after insert on Mailbox begin insert into Mailbox_CB(mailboxKey  ,typeMsg) values (new._id  , (select typeMsg from Account_CB where accountKey = new.accountKey)); end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create trigger message_delete_cb before delete on Message begin  delete from Message_CB  where messageKey=old._id; end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create trigger message_insert_cb after insert on Message begin  insert into Message_CB(messageKey,typeMsg)  values (new._id, 0); end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create trigger account_delete_cb before delete on Account begin  delete from Account_CB where accountKey=old._id; delete from Mailbox_CB where mailboxKey    in ( select _id from Mailbox          where accountKey=old._id); end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11

    const-string v0, "delete"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    shr-int/lit8 v6, v4, 0xc

    const-string v3, "0"

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v0, Lcom/android/email/provider/EmailProvider;->CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

    aget-object v8, v0, v6

    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v9, v0, v6

    sparse-switch v4, :sswitch_data_0

    :goto_0
    sparse-switch v4, :sswitch_data_1

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    move v1, v2

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v0, -0x1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_2
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v0

    :sswitch_0
    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_6

    move v2, v1

    goto :goto_0

    :sswitch_1
    :try_start_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2002

    if-ne v4, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert or replace into Message_Deletes select * from Message where _id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from Message_Updates where _id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete"

    const-string v3, " message_delete_deletes start "

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "delete from Message_Deletes where _id in (select messageKey from Message_CB where typeMsg = 1)"

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete"

    const-string v3, " message_delete_deletes end "

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8, v0}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :try_start_5
    invoke-direct {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v9, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    if-eqz v8, :cond_3

    sparse-switch v4, :sswitch_data_2

    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    :try_start_6
    invoke-virtual {v8, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;)V

    :cond_4
    move v10, v1

    move-object v1, v0

    move v0, v10

    :goto_4
    if-eqz v2, :cond_6

    const/4 v3, 0x1

    if-ne v4, v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete from Document where accountKey="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    const/16 v3, 0x2001

    if-ne v4, v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from Body where messageKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_6
    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    goto/16 :goto_2

    :sswitch_2
    :try_start_8
    sget-object v3, Lcom/android/email/provider/EmailProvider;->sCacheMailbox:Lcom/android/email/provider/ContentCache;

    const-string v6, "Delete"

    invoke-virtual {v3, v6, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sget-object v3, Lcom/android/email/provider/EmailProvider;->sCacheHostAuth:Lcom/android/email/provider/ContentCache;

    const-string v6, "Delete"

    invoke-virtual {v3, v6, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :sswitch_3
    sget-object v3, Lcom/android/email/provider/EmailProvider;->sCacheMessage:Lcom/android/email/provider/ContentCache;

    const-string v6, "Delete"

    invoke-virtual {v3, v6, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :sswitch_4
    const-string v3, "Delete"

    invoke-virtual {v8, v3, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_7

    :try_start_9
    invoke-virtual {v8, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;)V

    :cond_7
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception v0

    :goto_6
    :try_start_a
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v0, -0x1

    if-eqz v2, :cond_0

    :try_start_b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v1

    goto/16 :goto_2

    :sswitch_5
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert or replace into Message_Deletes select * from Message where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete from Message_Updates where "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v5, v9, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    goto/16 :goto_4

    :sswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageKey="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v9, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v10, v1

    move-object v1, v0

    move v0, v10

    goto/16 :goto_4

    :sswitch_7
    sparse-switch v4, :sswitch_data_3

    :goto_7
    invoke-virtual {v5, v9, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    goto/16 :goto_4

    :sswitch_8
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sCacheMailbox:Lcom/android/email/provider/ContentCache;

    const-string v1, "Delete"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sget-object v0, Lcom/android/email/provider/EmailProvider;->sCacheHostAuth:Lcom/android/email/provider/ContentCache;

    const-string v1, "Delete"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :sswitch_9
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sCacheMessage:Lcom/android/email/provider/ContentCache;

    const-string v1, "Delete"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :sswitch_a
    const-string v0, "Delete"

    invoke-virtual {v8, v0, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v2, :cond_8

    :try_start_d
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    :cond_8
    :goto_9
    throw v0

    :sswitch_b
    :try_start_e
    const-string v0, "Policies"

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    goto/16 :goto_4

    :sswitch_c
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Policies"

    invoke-direct {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v10, v1

    move-object v1, v0

    move v0, v10

    goto/16 :goto_4

    :sswitch_d
    invoke-virtual {v5, v9, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    goto/16 :goto_4

    :sswitch_e
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x7002

    if-ne v4, v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert or replace into FollowupFlag_Deletes select * from FollowupFlag where _id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from FollowupFlag_Updates where _id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v9, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v10, v1

    move-object v1, v0

    move v0, v10

    goto/16 :goto_4

    :sswitch_f
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    goto/16 :goto_4

    :sswitch_10
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-direct {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v10, v1

    move-object v1, v0

    move v0, v10

    goto/16 :goto_4

    :sswitch_11
    invoke-virtual {v5, v9, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    goto/16 :goto_4

    :sswitch_12
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    goto/16 :goto_4

    :sswitch_13
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    goto/16 :goto_4

    :sswitch_14
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    goto/16 :goto_4

    :sswitch_15
    const-string v0, "EmailAddressCache"

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    goto/16 :goto_4

    :sswitch_16
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "EmailAddressCache"

    invoke-direct {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v10, v1

    move-object v1, v0

    move v0, v10

    goto/16 :goto_4

    :cond_a
    const-string v1, "delete from Body where messageKey in (select messageKey from Body except select _id from Message)"

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_5

    :catch_4
    move-exception v1

    goto/16 :goto_2

    :catch_5
    move-exception v1

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    move v2, v1

    goto/16 :goto_8

    :catch_6
    move-exception v0

    move v2, v1

    goto/16 :goto_6

    :catch_7
    move-exception v0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x1001 -> :sswitch_0
        0x2000 -> :sswitch_0
        0x2001 -> :sswitch_0
        0x2002 -> :sswitch_0
        0x2003 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_1
        0x1000 -> :sswitch_7
        0x1001 -> :sswitch_1
        0x2000 -> :sswitch_7
        0x2001 -> :sswitch_1
        0x2002 -> :sswitch_1
        0x2003 -> :sswitch_5
        0x3000 -> :sswitch_7
        0x3001 -> :sswitch_1
        0x3002 -> :sswitch_6
        0x4000 -> :sswitch_7
        0x4001 -> :sswitch_1
        0x5000 -> :sswitch_7
        0x5001 -> :sswitch_1
        0x6000 -> :sswitch_7
        0x6001 -> :sswitch_1
        0x7000 -> :sswitch_d
        0x7001 -> :sswitch_e
        0x7002 -> :sswitch_e
        0x8000 -> :sswitch_d
        0x8001 -> :sswitch_e
        0x9000 -> :sswitch_d
        0x9001 -> :sswitch_e
        0xa000 -> :sswitch_b
        0xa001 -> :sswitch_c
        0xe000 -> :sswitch_11
        0xf000 -> :sswitch_12
        0x10000 -> :sswitch_13
        0x11000 -> :sswitch_15
        0x11002 -> :sswitch_16
        0x12001 -> :sswitch_1
        0x13000 -> :sswitch_f
        0x13001 -> :sswitch_10
        0x14000 -> :sswitch_7
        0x14001 -> :sswitch_1
        0x15000 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_2
        0x1001 -> :sswitch_3
        0x2001 -> :sswitch_4
        0x2002 -> :sswitch_4
        0x4001 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_8
        0x1000 -> :sswitch_9
        0x2000 -> :sswitch_a
        0x4000 -> :sswitch_a
    .end sparse-switch
.end method

.method public declared-synchronized getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    if-nez v2, :cond_1

    :goto_1
    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDB first open?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    :try_start_2
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "EmailProvider"

    const-string v1, "get used db ok"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->printStackTrace()V

    const-string v0, "EmailProvider"

    const-string v1, "After 1 second, try again to get to database instance!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    sget-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_6
    const-string v0, "EmailProvider"

    const-string v2, "it is first db, go on normal process"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    sget-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    const-string v2, "EmailProvider.db"

    invoke-direct {v0, p0, p1, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;-><init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    :cond_3
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    const-string v2, "EmailProviderBody.db"

    invoke-direct {v0, p0, p1, v2}, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;-><init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    :try_start_7
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_4
    :try_start_8
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    sget-object v0, Lcom/android/email/provider/EmailProvider;->sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attach \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\" as BodyDatabase"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Message_Updates"

    invoke-static {v0, v2}, Lcom/android/email/provider/EmailProvider;->deleteOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Message_Deletes"

    invoke-static {v0, v2}, Lcom/android/email/provider/EmailProvider;->deleteOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/digc/seven/SevenSyncProvider;->getAccountCount(Landroid/content/Context;)I

    move-result v0

    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "savenCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_7

    const-string v0, "EmailProvider"

    const-string v2, "saven Account Delete Start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT name FROM sqlite_master where type=\'table\' and name=\'Account_CB\'"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "delete from Account where _id in (select accountKey from Account_CB where typeMsg = 1)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "delete from Body where messageKey in (select messageKey from Body except select _id from Message)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_6
    if-eqz v1, :cond_7

    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_5
    invoke-static {p1}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    :catch_2
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->printStackTrace()V

    const-string v0, "EmailProvider"

    const-string v2, "After 1 second, try again to get to database instance!!!!!!!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    sget-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_4

    :catch_4
    move-exception v0

    :try_start_d
    const-string v2, "EmailProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v1, :cond_7

    :try_start_e
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const-string v0, "getType"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string v0, "vnd.android.cursor.item/email-body"

    :cond_0
    :goto_0
    return-object v0

    :sswitch_1
    const-string v0, "vnd.android.cursor.dir/email-body"

    goto :goto_0

    :sswitch_2
    const-string v0, "vnd.android.cursor.item/email-message"

    const-string v1, "mailboxId"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const-string v0, "vnd.android.cursor.dir/email-message"

    goto :goto_0

    :sswitch_4
    const-string v0, "vnd.android.cursor.dir/email-mailbox"

    goto :goto_0

    :sswitch_5
    const-string v0, "vnd.android.cursor.item/email-mailbox"

    goto :goto_0

    :sswitch_6
    const-string v0, "vnd.android.cursor.dir/email-account"

    goto :goto_0

    :sswitch_7
    const-string v0, "vnd.android.cursor.item/email-account"

    goto :goto_0

    :sswitch_8
    const-string v0, "vnd.android.cursor.dir/email-attachment"

    goto :goto_0

    :sswitch_9
    const-string v0, "vnd.android.cursor.item/email-attachment"

    goto :goto_0

    :sswitch_a
    const-string v0, "vnd.android.cursor.dir/email-hostauth"

    goto :goto_0

    :sswitch_b
    const-string v0, "vnd.android.cursor.item/email-hostauth"

    goto :goto_0

    :sswitch_c
    const-string v0, "vnd.android.cursor.dir/email-policies"

    goto :goto_0

    :sswitch_d
    const-string v0, "vnd.android.cursor.item/email-policies"

    goto :goto_0

    :sswitch_e
    const-string v0, "vnd.android.cursor.dir/email-followupflags"

    goto :goto_0

    :sswitch_f
    const-string v0, "vnd.android.cursor.item/email-followupflags"

    goto :goto_0

    :sswitch_10
    const-string v0, "vnd.android.cursor.dir/email-document"

    goto :goto_0

    :sswitch_11
    const-string v0, "vnd.android.cursor.item/email-document"

    goto :goto_0

    :sswitch_12
    const-string v0, "vnd.android.cursor.dir/email-recipientinformation"

    goto :goto_0

    :sswitch_13
    const-string v0, "vnd.android.cursor.item/email-recipientinformation"

    goto :goto_0

    :sswitch_14
    const-string v0, "vnd.android.cursor.item/email-IRMTemplate"

    goto :goto_0

    :sswitch_15
    const-string v0, "vnd.android.cursor.dir/email-IRMTemplate"

    goto :goto_0

    :sswitch_16
    const-string v0, "vnd.android.cursor.dir/email-emailaddresscache"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_7
        0x5 -> :sswitch_4
        0x1000 -> :sswitch_4
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_3
        0x2000 -> :sswitch_3
        0x2001 -> :sswitch_2
        0x3000 -> :sswitch_8
        0x3001 -> :sswitch_9
        0x3002 -> :sswitch_8
        0x4000 -> :sswitch_a
        0x4001 -> :sswitch_b
        0x5000 -> :sswitch_3
        0x5001 -> :sswitch_2
        0x7000 -> :sswitch_e
        0x7001 -> :sswitch_f
        0x8000 -> :sswitch_e
        0x8001 -> :sswitch_f
        0xa000 -> :sswitch_c
        0xa001 -> :sswitch_d
        0xf000 -> :sswitch_12
        0xf001 -> :sswitch_13
        0x11000 -> :sswitch_16
        0x13000 -> :sswitch_10
        0x13001 -> :sswitch_11
        0x14000 -> :sswitch_1
        0x14001 -> :sswitch_0
        0x15000 -> :sswitch_15
        0x15001 -> :sswitch_14
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v0, "insert"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    shr-int/lit8 v5, v2, 0xc

    const/16 v0, 0x1001

    if-eq v2, v0, :cond_0

    const/16 v0, 0x1000

    if-ne v2, v0, :cond_1

    :cond_0
    const-string v0, "unreadCount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "messageCount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    sparse-switch v2, :sswitch_data_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    throw v0

    :sswitch_0
    :try_start_1
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :sswitch_1
    const-string v5, "foo"

    invoke-virtual {v4, v0, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/16 v6, 0x5000

    if-eq v2, v6, :cond_2

    const/16 v6, 0x6000

    if-ne v2, v6, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v6, 0x3000

    if-ne v2, v6, :cond_5

    const-string v2, "flags"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "flags"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_4
    invoke-static {v4, v5, v1}, Lcom/android/email/service/AttachmentDownloadService;->attachmentChanged(JI)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_0
    invoke-virtual {v3, p1, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :goto_1
    return-object v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "mailboxKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "messageKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "accountKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :sswitch_5
    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_9
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_a
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Document;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_b
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_c
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "accountAddress"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v0, -0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select count(*) from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " where "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "accountAddress"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-nez v7, :cond_7

    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    :cond_6
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$EmailAddressCache;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    if-eqz v2, :cond_6

    const-string v7, "accountAddress"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    sget-object v7, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v5, v7, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "accountAddress is \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, p2, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_4
        0x1000 -> :sswitch_1
        0x1001 -> :sswitch_2
        0x2000 -> :sswitch_0
        0x2001 -> :sswitch_3
        0x3000 -> :sswitch_1
        0x3002 -> :sswitch_5
        0x4000 -> :sswitch_1
        0x5000 -> :sswitch_1
        0x6000 -> :sswitch_1
        0x7000 -> :sswitch_7
        0x7001 -> :sswitch_8
        0xa000 -> :sswitch_6
        0xc000 -> :sswitch_1
        0xd000 -> :sswitch_1
        0xe000 -> :sswitch_1
        0xf000 -> :sswitch_9
        0x10000 -> :sswitch_1
        0x11000 -> :sswitch_d
        0x12000 -> :sswitch_1
        0x13000 -> :sswitch_a
        0x14000 -> :sswitch_1
        0x15000 -> :sswitch_b
        0x15001 -> :sswitch_c
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    const/4 v0, 0x0

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    new-instance v1, Ljava/io/File;

    const-string v0, "file:///data/data/com.android.email/files/keystore"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    const/4 v0, 0x0

    const/high16 v2, 0x1000

    :try_start_0
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "EmailProvider"

    const-string v3, "key store was not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19

    const-wide/16 v3, 0x0

    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    move-wide v13, v3

    :goto_0
    const/4 v15, 0x0

    :try_start_0
    const-string v3, "query"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    shr-int/lit8 v12, v6, 0xc

    const-string v4, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v12

    if-nez p3, :cond_e

    sget-object v5, Lcom/android/email/provider/EmailProvider;->CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

    aget-object v5, v5, v12

    move-object/from16 v17, v5

    :goto_1
    if-nez v17, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/email/provider/ContentCache;->notCacheable(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    sparse-switch v6, :sswitch_data_0

    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :catch_0
    move-exception v3

    move-object v4, v15

    :goto_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    move-object v15, v4

    :goto_3
    if-eqz v17, :cond_1

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v4, v5}, Lcom/android/email/provider/ContentCache;->recordQueryTime(Landroid/database/Cursor;J)V

    :cond_1
    throw v3

    :catch_1
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "/-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "query"

    invoke-static {v4, v5}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_2
    throw v3

    :sswitch_0
    new-instance v3, Landroid/database/MatrixCursor;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    :cond_3
    :goto_4
    return-object v3

    :sswitch_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    :try_start_3
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v15

    :cond_4
    :goto_5
    if-eqz v17, :cond_8

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v3, v4}, Lcom/android/email/provider/ContentCache;->recordQueryTime(Landroid/database/Cursor;J)V

    move-object v3, v15

    :goto_6
    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->isTemporary()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v3, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_4

    :sswitch_2
    :try_start_4
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/email/combined/common/QueryUtil;->getMessageQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_5

    :sswitch_3
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/email/combined/common/QueryUtil;->getAccountQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_5

    :sswitch_4
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/email/combined/common/QueryUtil;->getProtocolQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_5

    :sswitch_5
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/email/combined/common/QueryUtil;->getMailboxQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v4

    :try_start_5
    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v15

    goto :goto_5

    :catch_2
    move-exception v3

    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v3

    :goto_7
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception v3

    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v17, :cond_8

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v3, v4}, Lcom/android/email/provider/ContentCache;->recordQueryTime(Landroid/database/Cursor;J)V

    move-object v3, v15

    goto :goto_6

    :sswitch_6
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1}, Lcom/android/email/provider/ContentCache;->getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-result-object v15

    :cond_5
    if-nez v15, :cond_4

    const/4 v5, 0x0

    if-eqz v17, :cond_d

    :try_start_b
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/email/provider/ContentCache;->getCacheToken(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    move-result-object v3

    if-eqz v17, :cond_6

    :try_start_c
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v0, v3, v12, v1, v2}, Lcom/android/email/provider/ContentCache;->putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    move-result-object v3

    :cond_6
    move-object v15, v3

    goto/16 :goto_5

    :sswitch_7
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    const-string v4, "Attachment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "messageKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_5

    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    const-string v4, "QuickResponse"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accountKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_5

    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1}, Lcom/android/email/combined/common/QueryUtil;->getAccountQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_5

    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1}, Lcom/android/email/combined/common/QueryUtil;->getMailboxQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_5

    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1}, Lcom/android/email/combined/common/QueryUtil;->getMessageQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_5

    :sswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "email_address LIKE \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_5

    :sswitch_d
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    move-result-object v15

    goto/16 :goto_5

    :sswitch_e
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    :try_start_e
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    move-result-object v15

    goto/16 :goto_5

    :catch_5
    move-exception v3

    :try_start_f
    const-string v4, "Email"

    const-string v5, "========== IllegalStateException occur POLICIES ~ MEETING_INVITATION=========="

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "========== IllegalStateException occur TABLE_NAMES[table] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v12

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_c

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    const/4 v4, 0x0

    :try_start_10
    const-string v5, "Email"

    const-string v6, "========== IllegalStateException occur cursor closed =========="

    invoke-static {v5, v6}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    move-object v15, v4

    goto/16 :goto_5

    :sswitch_f
    const/4 v4, 0x0

    :try_start_11
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v4, 0x0

    move-object v5, v4

    :goto_a
    if-nez v5, :cond_7

    const-string v4, "accountAddress is null "
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    move-object v5, v4

    move-object/from16 v7, p4

    :goto_b
    :try_start_12
    const-string v4, "EmailAddressCache"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    move-result-object v15

    goto/16 :goto_5

    :cond_7
    :try_start_13
    const-string v4, "accountAddress LIKE  ?  OR accountName LIKE  ?"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x25

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v6, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v8, 0x25

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v6

    move-object v5, v4

    goto :goto_b

    :catch_6
    move-exception v3

    const-string v4, "Email"

    const-string v5, "========== IllegalStateException occur EMAIL_ADDRESS_CACHE_FILTER=========="

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Email"

    const-string v5, "========== IllegalStateException occur EmailAddressCache = EmailAddressCache"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_9

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    const/4 v4, 0x0

    :try_start_14
    const-string v5, "Email"

    const-string v6, "========== IllegalStateException occur cursor closed =========="

    invoke-static {v5, v6}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    move-object v15, v4

    goto/16 :goto_5

    :catchall_1
    move-exception v3

    goto/16 :goto_3

    :catchall_2
    move-exception v4

    move-object v15, v3

    move-object v3, v4

    goto/16 :goto_3

    :catchall_3
    move-exception v3

    move-object v15, v4

    goto/16 :goto_3

    :catch_7
    move-exception v4

    move-object v15, v3

    move-object v3, v4

    goto/16 :goto_7

    :catch_8
    move-exception v3

    move-object v15, v4

    goto/16 :goto_7

    :catch_9
    move-exception v3

    move-object v4, v15

    goto/16 :goto_2

    :catch_a
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    goto/16 :goto_2

    :catch_b
    move-exception v3

    goto/16 :goto_2

    :cond_8
    move-object v3, v15

    goto/16 :goto_6

    :cond_9
    move-object v4, v15

    goto :goto_c

    :cond_a
    move-object v5, v4

    goto/16 :goto_a

    :cond_b
    move-object v5, v4

    goto/16 :goto_a

    :cond_c
    move-object v4, v15

    goto/16 :goto_9

    :cond_d
    move-object/from16 v16, v5

    goto/16 :goto_8

    :cond_e
    move-object/from16 v17, v5

    goto/16 :goto_1

    :cond_f
    move-wide v13, v3

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_9
        0x1000 -> :sswitch_5
        0x1001 -> :sswitch_a
        0x2000 -> :sswitch_2
        0x2001 -> :sswitch_b
        0x3000 -> :sswitch_1
        0x3001 -> :sswitch_6
        0x3002 -> :sswitch_7
        0x4000 -> :sswitch_1
        0x4001 -> :sswitch_6
        0x5000 -> :sswitch_1
        0x5001 -> :sswitch_6
        0x6000 -> :sswitch_1
        0x6001 -> :sswitch_6
        0x7000 -> :sswitch_1
        0x7001 -> :sswitch_6
        0x8000 -> :sswitch_1
        0x8001 -> :sswitch_6
        0x9000 -> :sswitch_1
        0x9001 -> :sswitch_6
        0xa000 -> :sswitch_1
        0xa001 -> :sswitch_6
        0xb000 -> :sswitch_1
        0xc000 -> :sswitch_1
        0xd000 -> :sswitch_1
        0xd001 -> :sswitch_9
        0xd002 -> :sswitch_4
        0xe000 -> :sswitch_1
        0xf000 -> :sswitch_1
        0xf001 -> :sswitch_6
        0xf002 -> :sswitch_c
        0x10000 -> :sswitch_1
        0x11000 -> :sswitch_e
        0x11001 -> :sswitch_f
        0x12000 -> :sswitch_1
        0x12001 -> :sswitch_6
        0x12002 -> :sswitch_8
        0x13000 -> :sswitch_1
        0x13001 -> :sswitch_6
        0x14000 -> :sswitch_1
        0x14001 -> :sswitch_6
        0x15000 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_0
        0x1001 -> :sswitch_0
        0x2001 -> :sswitch_0
        0x3001 -> :sswitch_0
        0x4001 -> :sswitch_0
        0x5001 -> :sswitch_0
        0x6001 -> :sswitch_0
        0x14001 -> :sswitch_0
    .end sparse-switch
.end method

.method public resetSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "mailbox_delete_cb"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "mailbox_insert_cb"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "message_updates_delete"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "message_deletes_delete"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "message_delete_cb"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "message_insert_cb"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "account_delete_cb"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 21

    sget-object v3, Lcom/android/emailcommon/EmailProviderRefs;->INTEGRITY_CHECK_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    sget-object v12, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    :try_start_0
    const-string v3, "update"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    shr-int/lit8 v5, v13, 0xc

    const/16 v4, 0x1001

    if-eq v13, v4, :cond_1

    const/16 v4, 0x1000

    if-ne v13, v4, :cond_2

    :cond_1
    const-string v4, "unreadCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v4, "messageCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_2
    sget-object v4, Lcom/android/emailcommon/EmailProviderRefs;->INTEGRITY_CHECK_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/email/provider/EmailProvider;->CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

    aget-object v15, v4, v5

    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v5

    sparse-switch v13, :sswitch_data_0

    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v3

    move-object v4, v3

    const/4 v3, -0x1

    const-string v5, "EmailContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQLiteDiskIOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v14, v12, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    :sswitch_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    const-string v5, "field"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v5, "add"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    if-eqz v16, :cond_4

    if-nez v17, :cond_5

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No field/add specified "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v3

    move-object v4, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    const/4 v3, -0x1

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_1

    :cond_5
    :try_start_3
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    if-eqz v15, :cond_6

    invoke-virtual {v15, v11}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v5, 0x2

    :try_start_5
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v16, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v11, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    const/4 v5, 0x0

    :try_start_6
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    add-long v9, v9, v19

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "_id=?"

    invoke-virtual {v3, v4, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v15, :cond_8

    :try_start_9
    move-object/from16 v0, v18

    invoke-virtual {v15, v11, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_8
    move v3, v5

    move-object v4, v12

    :goto_3
    move-object v12, v4

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    :try_start_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v3

    if-eqz v15, :cond_9

    :try_start_c
    move-object/from16 v0, v18

    invoke-virtual {v15, v11, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_9
    throw v3

    :sswitch_1
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v15, :cond_a

    invoke-virtual {v15, v5}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_2

    :cond_a
    const/16 v6, 0x2002

    if-ne v13, v6, :cond_d

    :try_start_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert or ignore into Message_Updates select * from Message where _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v6, "delete"

    const-string v7, " message_update_deletes start "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "delete from Message_Updates where _id in (select messageKey from Message_CB where typeMsg = 1)"

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v6, "delete"

    const-string v7, " message_update_deletes end "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_3

    move-result v3

    if-eqz v15, :cond_c

    :try_start_e
    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_c
    :goto_5
    const/16 v4, 0x3001

    if-ne v13, v4, :cond_14

    const-string v4, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6, v4}, Lcom/android/email/service/AttachmentDownloadService;->attachmentChanged(JI)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_2

    move-object v4, v12

    goto/16 :goto_3

    :cond_d
    const/16 v6, 0x2001

    if-ne v13, v6, :cond_b

    :try_start_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete from Message_Updates where _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    const/16 p2, 0x0

    const/4 v4, -0x1

    :try_start_10
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v15, :cond_15

    :try_start_11
    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    move v3, v4

    goto :goto_5

    :catchall_3
    move-exception v3

    if-eqz v15, :cond_e

    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_e
    throw v3

    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mailboxKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move-object v4, v12

    goto/16 :goto_3

    :sswitch_4
    sparse-switch v13, :sswitch_data_1

    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move-object v4, v12

    goto/16 :goto_3

    :sswitch_5
    const-string v5, "Update"

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v15, v5, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_6

    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v15, :cond_f

    invoke-virtual {v15, v5}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_2

    :cond_f
    :try_start_12
    sget-object v6, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move-result v3

    if-eqz v15, :cond_10

    :try_start_13
    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_10
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_3

    :catchall_4
    move-exception v3

    if-eqz v15, :cond_11

    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_11
    throw v3

    :sswitch_7
    sget-object v5, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const-string v4, "Reset all new counts"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15, v4, v5, v6}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_3

    :sswitch_8
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move-object v4, v12

    goto/16 :goto_3

    :sswitch_9
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move-object v4, v12

    goto/16 :goto_3

    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x7002

    if-ne v13, v6, :cond_13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert or ignore into FollowupFlag_Updates select * from FollowupFlag where _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_12
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move-object v4, v12

    goto/16 :goto_3

    :cond_13
    const/16 v6, 0x7001

    if-ne v13, v6, :cond_12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete from FollowupFlag_Updates where _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_7

    :sswitch_b
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_2

    move-result v3

    move-object v4, v12

    goto/16 :goto_3

    :cond_14
    move-object v4, v12

    goto/16 :goto_3

    :cond_15
    move v3, v4

    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x1000 -> :sswitch_4
        0x1001 -> :sswitch_2
        0x1002 -> :sswitch_0
        0x2000 -> :sswitch_4
        0x2001 -> :sswitch_2
        0x2002 -> :sswitch_1
        0x3000 -> :sswitch_4
        0x3001 -> :sswitch_2
        0x4000 -> :sswitch_4
        0x4001 -> :sswitch_2
        0x5000 -> :sswitch_4
        0x5001 -> :sswitch_2
        0x7000 -> :sswitch_9
        0x7001 -> :sswitch_a
        0x7002 -> :sswitch_a
        0x8000 -> :sswitch_9
        0x8001 -> :sswitch_a
        0xa000 -> :sswitch_4
        0xa001 -> :sswitch_2
        0xb000 -> :sswitch_4
        0xb001 -> :sswitch_3
        0xc000 -> :sswitch_4
        0xd000 -> :sswitch_4
        0xf000 -> :sswitch_8
        0x11000 -> :sswitch_b
        0x12001 -> :sswitch_2
        0x13000 -> :sswitch_4
        0x13001 -> :sswitch_2
        0x14000 -> :sswitch_4
        0x14001 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x1000 -> :sswitch_5
        0x2000 -> :sswitch_5
        0x4000 -> :sswitch_5
    .end sparse-switch
.end method
