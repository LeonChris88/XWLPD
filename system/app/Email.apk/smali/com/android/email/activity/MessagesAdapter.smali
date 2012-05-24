.class Lcom/android/email/activity/MessagesAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessagesAdapter$1;,
        Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;,
        Lcom/android/email/activity/MessagesAdapter$Callback;,
        Lcom/android/email/activity/MessagesAdapter$Position;,
        Lcom/android/email/activity/MessagesAdapter$SubTitle;
    }
.end annotation


# static fields
.field static final MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final SORT_QUERY:[Ljava/lang/String;

.field static final THREAD_PROJECTION:[Ljava/lang/String;

.field private static bFontChanged:Z

.field private static mIsPhoneDevice:Z

.field private static sCursor:Landroid/database/Cursor;

.field private static sHideViewPosition:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sHideViewPositionNew:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sListForSubTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$SubTitle;",
            ">;"
        }
    .end annotation
.end field

.field private static sListForSubTitleNew:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$SubTitle;",
            ">;"
        }
    .end annotation
.end field

.field private static sListItemCount:I

.field private static sListItemCountNew:I

.field private static sListPositionForAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$Position;",
            ">;"
        }
    .end annotation
.end field

.field private static sListPositionForAdapterNew:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$Position;",
            ">;"
        }
    .end annotation
.end field

.field public static sSortType:I

.field private static sSubtitleCount:I

.field private static sSubtitleCountNew:I

.field private static sUnreadListItemCount:I

.field private static sUnreadListItemCountNew:I


# instance fields
.field private mAdapterPosition:I

.field private final mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

.field private mCheckboxDisabled:Z

.field private mColor:I

.field private mEnforcer:Lcom/android/email/irm/IRMEnforcer;

.field private mFirstListItem:Landroid/view/View;

.field private mForwardBlockSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mParentIndex:I

.field private mPosition:I

.field private mPreviewLineSize:I

.field private mReplyAllBlockSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReplyBlockSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceHelper:Lcom/android/email/ResourceHelper;

.field private final mSelectedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedTitleSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowColorChips:Z

.field private mfontSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-boolean v4, Lcom/android/email/activity/MessagesAdapter;->mIsPhoneDevice:Z

    sput-boolean v3, Lcom/android/email/activity/MessagesAdapter;->bFontChanged:Z

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    const-string v1, "accountKey"

    aput-object v1, v0, v5

    const-string v1, "displayName"

    aput-object v1, v0, v6

    const-string v1, "subject"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "threadId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "typeMsg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "smimeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "messageType"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "lastVerb"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "conversationId"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "accountSchema"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "mailboxType"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, " substr(snippet,0,200)"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "flagReply"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "IRMTemplateId"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "EasLocalReadFlag"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    const-string v1, "accountKey"

    aput-object v1, v0, v5

    const-string v1, "displayName"

    aput-object v1, v0, v6

    const-string v1, "subject"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "threadId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "typeMsg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "smimeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "messageType"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "lastVerb"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "conversationId"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "accountSchema"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "mailboxType"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "flagReply"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "IRMTemplateId"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "EasLocalReadFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "childCount"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "childIndex"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->THREAD_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "timeStamp COLLATE NOCASE DESC"

    aput-object v1, v0, v3

    const-string v1, "timeStamp COLLATE NOCASE ASC"

    aput-object v1, v0, v4

    const-string v1, "displayName COLLATE NOCASE ASC, timeStamp DESC"

    aput-object v1, v0, v5

    const-string v1, "displayName COLLATE NOCASE DESC, timeStamp DESC"

    aput-object v1, v0, v6

    const-string v1, "flagRead COLLATE NOCASE ASC, timeStamp DESC"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flagFavorite COLLATE NOCASE DESC, timeStamp DESC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timeStamp COLLATE NOCASE DESC"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "timeStamp COLLATE NOCASE DESC"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "importance COLLATE NOCASE DESC,timeStamp DESC"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "flagStatus COLLATE NOCASE DESC,timeStamp DESC"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "flags COLLATE NOCASE DESC,timeStamp DESC"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flagAttachment COLLATE NOCASE DESC, timeStamp DESC"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->SORT_QUERY:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    sput v3, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    sput v3, Lcom/android/email/activity/MessagesAdapter;->sListItemCount:I

    sput v3, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCount:I

    sput v3, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCountNew:I

    sput v3, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    sput v3, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCountNew:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/activity/MessagesAdapter$Callback;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->mParentIndex:I

    iput-boolean v3, p0, Lcom/android/email/activity/MessagesAdapter;->mCheckboxDisabled:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    iput-object p2, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    iget v1, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessagesAdapter;->setListItemSize(I)V

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getPreViewLine()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessagesAdapter;->mPreviewLineSize:I

    iget v1, p0, Lcom/android/email/activity/MessagesAdapter;->mPreviewLineSize:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessagesAdapter;->setPreviewLineSize(I)V

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getBGColor()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    iget v1, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessagesAdapter;->setBackgroundColor(I)V

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/activity/MessagesAdapter;->mIsPhoneDevice:Z

    invoke-static {p1}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mEnforcer:Lcom/android/email/irm/IRMEnforcer;

    return-void
.end method

.method static synthetic access$000()Landroid/database/Cursor;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    sput-object p0, Lcom/android/email/activity/MessagesAdapter;->sCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$102(I)I
    .locals 0

    sput p0, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    return p0
.end method

.method static synthetic access$202(I)I
    .locals 0

    sput p0, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCountNew:I

    return p0
.end method

.method static synthetic access$302(I)I
    .locals 0

    sput p0, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCountNew:I

    return p0
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    sput-object p0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$502(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0

    sput-object p0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    sput-object p0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/email/activity/MessagesAdapter;->mIsPhoneDevice:Z

    return v0
.end method

.method static synthetic access$900()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    return-object v0
.end method

.method private changeFavoriteIcon(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/email/activity/MessageListItem;->invalidate()V

    return-void
.end method

.method private changeFollowUpFlagIcon(Lcom/android/email/activity/MessageListItem;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/email/activity/MessageListItem;->invalidate()V

    return-void
.end method

.method private changeSubtitleState(I)V
    .locals 2

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v0, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessagesAdapter$Callback;->onReDrawList()V

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    goto :goto_0
.end method

.method private changeSubtitleStateAll(III)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lt p1, p3, :cond_4

    :try_start_0
    const-string v2, "MessagesAdapter"

    const-string v3, "expand messagelist all!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    sget v2, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v2}, Lcom/android/email/activity/MessagesAdapter$Callback;->onReDrawList()V

    goto :goto_0

    :cond_4
    if-lt p2, p3, :cond_5

    :try_start_1
    const-string v2, "MessagesAdapter"

    const-string v3, "shrink messagelist all!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3
    sget v2, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    if-ge v1, v2, :cond_3

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v2, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v2, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const-string v2, "MessagesAdapter"

    const-string v3, "expand messagelist all!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_4
    sget v2, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    if-ge v1, v2, :cond_6

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_2
.end method

.method public static createLoader(Landroid/content/Context;JI)Landroid/content/Loader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;

    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->SORT_QUERY:[Ljava/lang/String;

    aget-object v4, v1, p3

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;-><init>(Landroid/content/Context;JLjava/lang/String;I)V

    return-object v0
.end method

.method public static getHideViewPosition()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    return-object v0
.end method

.method private updateMultiSelected(IZ)V
    .locals 6

    if-nez p2, :cond_3

    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mEnforcer:Lcom/android/email/irm/IRMEnforcer;

    invoke-virtual {v4, v1, v2}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v3

    invoke-static {v3}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllowed(I)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez p2, :cond_4

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    invoke-static {v3}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllAllowed(I)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez p2, :cond_5

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    invoke-static {v3}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(I)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_6

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v4}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterSelectedAllChanged()V

    :cond_8
    return-void
.end method

.method private updateSelected(Lcom/android/email/activity/MessageListItem;ZI)V
    .locals 4

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mEnforcer:Lcom/android/email/irm/IRMEnforcer;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v0

    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllowed(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_6

    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllAllowed(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_7

    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(I)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_8

    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v1, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v1, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterSelectedChanged(Lcom/android/email/activity/MessageListItem;ZI)V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v1, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_4
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10

    :try_start_0
    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    if-gez v8, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/android/email/activity/MessageListSubTitleItem;

    move-object v5, v0

    iget-object v8, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-virtual {v5, p0, v8}, Lcom/android/email/activity/MessageListSubTitleItem;->bindViewInit(Lcom/android/email/activity/MessagesAdapter;Lcom/android/email/activity/MessagesAdapter$Callback;)V

    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v8, v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mTextMain:Ljava/lang/String;

    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v8, v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListSub:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mTextSub:Ljava/lang/String;

    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v8, v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListDate:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mTextDate:Ljava/lang/String;

    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v8, v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mTextCount:Ljava/lang/String;

    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v8, v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mIsExpanded:Z

    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v8, v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mSubtitleId:Ljava/lang/String;

    iget-object v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mSubtitleId:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mIsChecked:Z

    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v8, v8

    add-int/lit8 v8, v8, -0x1

    iput v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mSubTitleIndex:I

    iget-boolean v8, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mNeedMorePadding:Z

    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    iput v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mfontSize:I

    const/4 v8, 0x0

    iput v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mPreviewLineSize:I

    iget-boolean v8, p0, Lcom/android/email/activity/MessagesAdapter;->mCheckboxDisabled:Z

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mCheckboxDisabled:Z

    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    iput v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mPosition:I

    iget v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mBgColor:I

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    if-ne v8, v9, :cond_2

    const/4 v8, 0x0

    :goto_0
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mIsBgColorChanged:Z

    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    iput v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mBgColor:I

    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v8, v8

    sget-object v9, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mIsLastSubtitle:Z

    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget v8, v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mIsRead:Z

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_0

    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    sget-object v9, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_0

    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v8, v8, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    iput v8, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v8, 0x19

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mSnippet:Ljava/lang/String;

    :cond_0
    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-boolean v8, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/email/activity/MessagesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    invoke-virtual {v8, v1, v2}, Lcom/android/email/ResourceHelper;->getAccountColorNinePatch(J)Landroid/graphics/NinePatch;

    move-result-object v8

    :goto_3
    iput-object v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mColorChipBitmap:Landroid/graphics/NinePatch;

    :cond_1
    :goto_4
    return-void

    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/email/activity/MessageListItem;

    move-object v5, v0

    iget-object v8, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-virtual {v5, p0, v8}, Lcom/android/email/activity/MessageListItem;->bindViewInit(Lcom/android/email/activity/MessagesAdapter;Lcom/android/email/activity/MessagesAdapter$Callback;)V

    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    sget-object v9, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_b

    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v7, v8, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    if-gez v7, :cond_9

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    :goto_5
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_8

    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v8, v8, Lcom/android/email/activity/MessagesAdapter$Position;->parentIndex:I

    if-ltz v8, :cond_7

    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v8, v8, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    if-gez v8, :cond_a

    :cond_7
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    :cond_8
    :goto_6
    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mParentIndex:I

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    sget-boolean v8, Lcom/android/emailcommon/EasRefs;->EAS_LOCAL_DB_OPERATION:Z

    if-eqz v8, :cond_f

    const/16 v8, 0x1d

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_d

    const/4 v8, 0x1

    if-ne v6, v8, :cond_c

    const/4 v8, 0x1

    :goto_7
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mRead:Z

    :goto_8
    const/4 v8, 0x7

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_11

    const/4 v8, 0x1

    :goto_9
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    const/16 v8, 0xd

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mFollowUpFlagStatus:I

    const/16 v8, 0xc

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mPriority:I

    const/16 v8, 0x11

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mLastVerb:I

    const/16 v8, 0x13

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mConvThreadId:I

    const/16 v8, 0x12

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mConvId:Ljava/lang/String;

    const/16 v8, 0x14

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mFlagReadConv:I

    const/16 v8, 0x15

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mFlagSetFFConv:I

    const/16 v8, 0x16

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mFlagComFFConv:I

    const/16 v8, 0xf

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    and-int/lit16 v8, v8, 0x100

    const/16 v9, 0x100

    if-ne v8, v9, :cond_12

    const/4 v8, 0x1

    :goto_a
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->isSms:Z

    const/16 v8, 0xf

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    and-int/lit16 v8, v8, 0x200

    const/16 v9, 0x200

    if-ne v8, v9, :cond_13

    const/4 v8, 0x1

    :goto_b
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->isVoiceMail:Z

    const/16 v8, 0xe

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_14

    const/4 v8, 0x1

    :goto_c
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->isSigned:Z

    const/16 v8, 0xe

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_15

    const/4 v8, 0x1

    :goto_d
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->isEncrypted:Z

    const/16 v8, 0xb

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_16

    const/4 v8, 0x1

    :goto_e
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    const/16 v8, 0x8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_17

    const/4 v8, 0x1

    :goto_f
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    const/4 v8, 0x5

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/android/email/activity/MessageListItem;->mTimestamp:J

    const/16 v8, 0x19

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/String;

    const/16 v8, 0x1a

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_18

    const/4 v8, 0x1

    :goto_10
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    const/16 v8, 0x1b

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_19

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mHasIrm:Z

    :goto_11
    const/16 v8, 0x1c

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mServerId:Ljava/lang/String;

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTopLineMode()I

    move-result v8

    if-nez v8, :cond_1b

    const/4 v8, 0x3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    iget-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->isSms:Z

    if-eqz v8, :cond_1a

    const/16 v8, 0x19

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    :goto_12
    const/16 v8, 0x17

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mAccountSchema:Ljava/lang/String;

    const/16 v8, 0x18

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    iget-boolean v8, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lcom/android/email/activity/MessagesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    invoke-virtual {v8, v1, v2}, Lcom/android/email/ResourceHelper;->getAccountColorNinePatch(J)Landroid/graphics/NinePatch;

    move-result-object v8

    :goto_13
    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mColorChipBitmap:Landroid/graphics/NinePatch;

    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mfontSize:I

    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mPreviewLineSize:I

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    iget v8, v5, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    if-ne v8, v9, :cond_1e

    const/4 v8, 0x0

    :goto_14
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mIsBgColorChanged:Z

    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    iget-boolean v8, p0, Lcom/android/email/activity/MessagesAdapter;->mCheckboxDisabled:Z

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mPosition:I

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_1

    const/16 v8, 0x1e

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mChildCount:I

    const/16 v8, 0x1f

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mChildIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v3

    const-string v8, "MessageAdapter"

    const-string v9, "Exception: MessageListAdapter.bindView() \n"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_9
    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    goto/16 :goto_5

    :cond_a
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    goto/16 :goto_6

    :cond_b
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    goto/16 :goto_6

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_d
    const/4 v8, 0x6

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    :goto_15
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mRead:Z

    goto/16 :goto_8

    :cond_e
    const/4 v8, 0x0

    goto :goto_15

    :cond_f
    const/4 v8, 0x6

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_10

    const/4 v8, 0x1

    :goto_16
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mRead:Z

    goto/16 :goto_8

    :cond_10
    const/4 v8, 0x0

    goto :goto_16

    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_9

    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_a

    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_b

    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_c

    :cond_15
    const/4 v8, 0x0

    goto/16 :goto_d

    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_e

    :cond_17
    const/4 v8, 0x0

    goto/16 :goto_f

    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_10

    :cond_19
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mHasIrm:Z

    goto/16 :goto_11

    :cond_1a
    const/4 v8, 0x4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    goto/16 :goto_12

    :cond_1b
    const/4 v8, 0x3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    iget-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->isSms:Z

    if-eqz v8, :cond_1c

    const/16 v8, 0x19

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    goto/16 :goto_12

    :cond_1c
    const/4 v8, 0x4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_12

    :cond_1d
    const/4 v8, 0x0

    goto/16 :goto_13

    :cond_1e
    const/4 v8, 0x1

    goto/16 :goto_14
.end method

.method public clearBlockCounter()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public compareCount(I)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "MessagesAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sListItemCountNew : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " totalCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    if-ge v1, v0, :cond_0

    if-lez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandOrShinkListItemAll(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessagesAdapter;->changeSubtitleStateAll(III)V

    return-void
.end method

.method public getCount()I
    .locals 2

    sget v0, Lcom/android/email/activity/MessagesAdapter;->sListItemCount:I

    sget v1, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getFirstListItem()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mFirstListItem:Landroid/view/View;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 6

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    :cond_0
    const-string v4, "MessagesAdapter"

    const-string v5, "invalid cursor in getItemId()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    if-nez v4, :cond_2

    const-string v4, "MessagesAdapter"

    const-string v5, "context is null in getItemId()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v4, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    if-nez v4, :cond_3

    const-string v4, "MessagesAdapter"

    const-string v5, "activity is hidden in getItemId()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/email/activity/MessageListFragment;->setLoadReserved()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getListItemCountNew()I
    .locals 1

    sget v0, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    return v0
.end method

.method public getRealPositionForCurrentId(J)I
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v0, v2, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    if-gez v0, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v2, v4, p1

    if-nez v2, :cond_0

    :goto_1
    return v1

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method public getSelectedSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getSelectedTitleSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    sget v0, Lcom/android/email/activity/MessagesAdapter;->sListItemCount:I

    return v0
.end method

.method public getUnreadCount()I
    .locals 1

    sget v0, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCount:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/16 v3, 0x8

    :try_start_0
    iput p1, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v0, v0, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v0, v0, Lcom/android/email/activity/MessagesAdapter$Position;->parentIndex:I

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter;->mParentIndex:I

    iget v0, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v0, v0, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_0
    iget v0, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    if-ltz v0, :cond_2

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/email/activity/MessageListNullItem;

    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListNullItem;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/android/email/activity/MessageListItem;

    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListItem;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageListItem;->setVisibility(I)V

    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    :try_start_1
    sget-boolean v0, Lcom/android/email/activity/MessagesAdapter;->bFontChanged:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/email/activity/MessagesAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/email/activity/MessagesAdapter;->bFontChanged:Z

    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/MessagesAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mFirstListItem:Landroid/view/View;

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    if-gez v0, :cond_6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/email/activity/MessageListSubTitleItem;

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/email/activity/MessagesAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    if-ltz v0, :cond_7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/email/activity/MessageListItem;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/email/activity/MessagesAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v0, p2

    goto :goto_2
.end method

.method public initAdapter()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    sput v0, Lcom/android/email/activity/MessagesAdapter;->sListItemCount:I

    sput v0, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCount:I

    sput v0, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCountNew:I

    sput v0, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    sput v0, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCountNew:I

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    :cond_1
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    :cond_2
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    :cond_3
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    :cond_4
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    :cond_5
    return-void
.end method

.method public isForwardBlock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyAllBlock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyBlock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected(Lcom/android/email/activity/MessageListItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelected(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadState(Landroid/os/Bundle;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v1

    const-string v8, "com.android.email.activity.MessagesAdapter.checkedItems"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    array-length v6, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_0

    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v8, "com.android.email.activity.MessagesAdapter.subTitlecheckedItems"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v7, v0, v3

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    :try_start_0
    iget v2, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    if-gez v2, :cond_0

    new-instance v1, Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-direct {v1, p1}, Lcom/android/email/activity/MessageListSubTitleItem;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListSubTitleItem;->setVisibility(I)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/email/activity/MessageListItem;

    invoke-direct {v1, p1}, Lcom/android/email/activity/MessageListItem;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListItem;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MessageAdapter"

    const-string v3, "Exception: MessageListAdapter.newView() \n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v8

    new-array v2, v8, [J

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v8

    new-array v0, v8, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v8, "com.android.email.activity.MessagesAdapter.checkedItems"

    invoke-virtual {p1, v8, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v8, "com.android.email.activity.MessagesAdapter.subTitlecheckedItems"

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setAdapterInfo()V
    .locals 4

    sget v3, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    sput v3, Lcom/android/email/activity/MessagesAdapter;->sListItemCount:I

    sget v3, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCountNew:I

    sput v3, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCount:I

    sget v3, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCountNew:I

    sput v3, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :cond_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iput p1, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->notifyDataSetInvalidated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCheckboxStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessagesAdapter;->mCheckboxDisabled:Z

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setListItemSize(I)V
    .locals 2

    iget v1, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/email/activity/MessagesAdapter;->bFontChanged:Z

    :cond_0
    iput p1, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->notifyDataSetInvalidated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreviewLineSize(I)V
    .locals 1

    iput p1, p0, Lcom/android/email/activity/MessagesAdapter;->mPreviewLineSize:I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->notifyDataSetInvalidated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setShowColorChips(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    return-void
.end method

.method public toggleMultiSelected(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->updateMultiSelected(IZ)V

    return-void
.end method

.method public toggleSelected(Lcom/android/email/activity/MessageListItem;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/email/activity/MessagesAdapter;->updateSelected(Lcom/android/email/activity/MessageListItem;ZI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unCheckAllSubTitleCheckBox()V
    .locals 4

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateArrow(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessagesAdapter;->changeSubtitleState(I)V

    return-void
.end method

.method public updateFavorite(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->changeFavoriteIcon(Lcom/android/email/activity/MessageListItem;Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterFavoriteChanged(Lcom/android/email/activity/MessageListItem;Z)V

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v0

    const-wide/16 v2, -0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iget v1, p1, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/activity/MessagesAdapter;->updateSelected(Lcom/android/email/activity/MessageListItem;ZI)V

    :cond_1
    return-void
.end method

.method public updateFollowUpFlag(Lcom/android/email/activity/MessageListItem;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->changeFollowUpFlagIcon(Lcom/android/email/activity/MessageListItem;I)V

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterFollowUpChanged(Lcom/android/email/activity/MessageListItem;I)V

    :cond_0
    return-void
.end method
