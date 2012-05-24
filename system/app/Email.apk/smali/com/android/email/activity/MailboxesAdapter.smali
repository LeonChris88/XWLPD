.class Lcom/android/email/activity/MailboxesAdapter;
.super Landroid/widget/CursorAdapter;
.source "MailboxesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxesAdapter$1;,
        Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;,
        Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;,
        Lcom/android/email/activity/MailboxesAdapter$EmptyCallback;,
        Lcom/android/email/activity/MailboxesAdapter$Callback;,
        Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    }
.end annotation


# static fields
.field static final HIERARCHY_PROJECTION:[Ljava/lang/String;

.field static final PROJECTION:[Ljava/lang/String;

.field private static mParentSelectedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static mSelectedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static needToChangeMailbox:Z

.field private static sAllMailboxCursor:Landroid/database/Cursor;

.field private static sEnableUpdate:Z

.field private static sExpandItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private static sExpandItemMapNew:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private static sExpandItemMapPrev:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private static sExpandItemMapPrevNew:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private static sInit:Z

.field private static sLeftPane:Landroid/view/View;

.field private static sListItemAllMargin:I

.field private static sListItemCountAllMargin:I

.field private static sListItemHierarchyLeftMarginFactor:I

.field private static sListItemSelectionMargin:I

.field private static sMailboxCursor:Landroid/database/Cursor;

.field private static sMailboxDisableNameColorDarkTheme:I

.field private static sMailboxDisableNameColorWhiteTheme:I

.field private static sMailboxListNameLand:I

.field private static sMailboxListNamePort:I

.field private static sMailboxNameColorDarkTheme:I

.field private static sMailboxNameColorWhiteTheme:I

.field private static sMailboxNameSelectedColorDarkTheme:Landroid/content/res/ColorStateList;

.field private static sMailboxNameSelectedColorWhiteTheme:Landroid/content/res/ColorStateList;

.field private static sSelectedMailboxId:J


# instance fields
.field private isFolderOperation:Z

.field private mBackgroundColor:I

.field private mCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mDeleteMode:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mListViewSize:I

.field private mMailboxDisableNameColor:I

.field private mMailboxNameColor:I

.field private mMailboxNameSelectedColor:Landroid/content/res/ColorStateList;

.field private final mMode:I

.field private final mResourceHelper:Lcom/android/email/ResourceHelper;

.field private mfontSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_id AS org_mailbox_id"

    aput-object v1, v0, v4

    const-string v1, "displayName"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "unreadCount"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "messageCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0 AS row_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagNoSelect"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "parentKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "delimiter"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MailboxesAdapter;->PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_id AS org_mailbox_id"

    aput-object v1, v0, v4

    const-string v1, "displayName"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "unreadCount"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "messageCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0 AS row_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagNoSelect"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "parentKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hierarchyLevel"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "hasChild"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MailboxesAdapter;->HIERARCHY_PROJECTION:[Ljava/lang/String;

    sput-boolean v4, Lcom/android/email/activity/MailboxesAdapter;->sEnableUpdate:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    sput-boolean v3, Lcom/android/email/activity/MailboxesAdapter;->needToChangeMailbox:Z

    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNamePort:I

    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNameLand:I

    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sListItemSelectionMargin:I

    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sListItemAllMargin:I

    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sListItemCountAllMargin:I

    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sListItemHierarchyLeftMarginFactor:I

    sput-boolean v3, Lcom/android/email/activity/MailboxesAdapter;->sInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/email/activity/MailboxesAdapter$Callback;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput v2, p0, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    iput v3, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    iput-boolean v2, p0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MailboxesAdapter;->isFolderOperation:Z

    iput-object p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/android/email/activity/MailboxesAdapter;->mMode:I

    iput-object p3, p0, Lcom/android/email/activity/MailboxesAdapter;->mCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    iput-boolean v2, p0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    sget-object v1, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    sget-object v1, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    sget-boolean v1, Lcom/android/email/activity/MailboxesAdapter;->sInit:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNamePort:I

    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNameLand:I

    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sListItemSelectionMargin:I

    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sListItemAllMargin:I

    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sListItemCountAllMargin:I

    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sListItemHierarchyLeftMarginFactor:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameColorWhiteTheme:I

    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020227

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameSelectedColorWhiteTheme:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxDisableNameColorWhiteTheme:I

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameColorDarkTheme:I

    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020226

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameSelectedColorDarkTheme:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxDisableNameColorDarkTheme:I

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/email/activity/MailboxesAdapter;->sInit:Z

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    iput v3, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    iget v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxesAdapter;->setListItemSize(I)V

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getBGColor()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    iget v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxesAdapter;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/email/activity/MailboxesAdapter;->sEnableUpdate:Z

    return v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$402(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$502(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$600()Landroid/database/Cursor;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$602(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$702(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sAllMailboxCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method private static addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V
    .locals 3

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    if-nez p6, :cond_1

    if-lez p5, :cond_5

    :cond_1
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-wide/16 v1, -0x4

    cmp-long v1, p2, v1

    if-eqz v1, :cond_2

    const-wide/16 v1, -0x2

    cmp-long v1, p2, v1

    if-nez v1, :cond_4

    :cond_2
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :goto_0
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-static {p0, p4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUnreadCountByMailboxType(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_0

    :cond_5
    sget-wide v1, Lcom/android/email/activity/MailboxesAdapter;->sSelectedMailboxId:J

    cmp-long v1, p2, v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/email/activity/MailboxesAdapter;->needToChangeMailbox:Z

    goto :goto_1
.end method

.method private bindViewMoveToTargetMode(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private bindViewNormalMode(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 42

    invoke-static/range {p3 .. p3}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v22

    const/16 v38, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    const/16 v38, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/16 v38, 0xb

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v38, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v38, 0x9

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    const/16 v38, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v23, 0x0

    move-object/from16 v25, p1

    check-cast v25, Lcom/android/email/activity/MailboxListItem;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxListItem;->bindViewInit(Lcom/android/email/activity/MailboxesAdapter;)V

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    move-wide/from16 v0, v20

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    move/from16 v0, v18

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/email/activity/MailboxListItem;->mHasChild:I

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/email/activity/MailboxListItem;->mAdapter:Lcom/android/email/activity/MailboxesAdapter;

    move-object/from16 v0, v25

    iput v15, v0, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    move/from16 v38, v0

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/email/activity/MailboxListItem;->mBackgroundColor:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mCurrentOrientation:I

    move/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_3

    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNamePort:I

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    :goto_0
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sLeftPane:Landroid/view/View;

    if-eqz v38, :cond_0

    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sLeftPane:Landroid/view/View;

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredWidth()I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    move/from16 v28, v0

    const/16 v38, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    const/16 v38, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    const v38, 0x7f10015c

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v38, 0x7f10015a

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    if-lez v37, :cond_5

    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    sget-wide v38, Lcom/android/email/activity/MailboxesAdapter;->sSelectedMailboxId:J

    cmp-long v38, v38, v20

    if-nez v38, :cond_4

    invoke-virtual {v9}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameSelectedColor:Landroid/content/res/ColorStateList;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ")"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v34, v0

    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sListItemCountAllMargin:I

    add-int v38, v38, v34

    move/from16 v0, v38

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v38, v0

    sub-int v28, v28, v38

    :goto_2
    const v38, 0x7f100007

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    const v38, 0x7f10015e

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/CheckBox;

    const/16 v38, 0x1

    move/from16 v0, v18

    move/from16 v1, v38

    if-ne v0, v1, :cond_6

    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_6

    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_6

    const/16 v33, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    move/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_b

    if-eqz v24, :cond_b

    const/16 v38, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1

    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_7

    :cond_1
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v38, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const/16 v38, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    :goto_4
    invoke-static/range {p2 .. p2}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v36

    move-wide/from16 v2, v20

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/FolderProperties;->getIcon(IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    if-eqz v38, :cond_c

    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    move/from16 v38, v0

    if-eqz v38, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f020095

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/email/activity/MailboxListItem;->mFolderIcon:Landroid/widget/ImageView;

    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sListItemHierarchyLeftMarginFactor:I

    mul-int v38, v38, v19

    add-int/lit8 v14, v38, 0xa

    const v38, 0x7f100157

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v5, v14, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    sub-int v28, v28, v14

    move-object/from16 v0, v25

    iput v14, v0, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    const v38, 0x7f10015f

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, v25

    iput-object v13, v0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    const v38, 0x7f100160

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/ImageView;

    sget-wide v38, Lcom/android/email/activity/MailboxesAdapter;->sSelectedMailboxId:J

    cmp-long v38, v38, v20

    if-nez v38, :cond_10

    sget v38, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_10

    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sListItemSelectionMargin:I

    sub-int v28, v28, v38

    const/16 v38, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-boolean v38, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v38, :cond_e

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v38

    if-eqz v38, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    move/from16 v38, v0

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_d

    const v38, 0x7f02032a

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_6
    invoke-virtual/range {v32 .. v32}, Landroid/widget/ImageView;->getVisibility()I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/email/activity/MailboxListItem;->mSelectedIconVisibility:I

    const v38, 0x7f100159

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    move/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_11

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/email/activity/MailboxListItem;->mIsSelected:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxDisableNameColor:I

    move/from16 v38, v0

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_7
    invoke-static/range {p2 .. p3}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v39

    sget v40, Lcom/android/email/activity/MailboxesAdapter;->sListItemAllMargin:I

    sub-int v40, v28, v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    sget-object v41, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static/range {v38 .. v41}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v27

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/email/activity/MailboxListItem;->mNameView:Landroid/widget/TextView;

    invoke-static/range {p2 .. p3}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/email/activity/MailboxListItem;->mNameText:Ljava/lang/String;

    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sListItemAllMargin:I

    sub-int v38, v28, v38

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/email/activity/MailboxListItem;->mNameViewWidth:I

    const v38, 0x7f100158

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v22, :cond_13

    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v38, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    const v38, 0x7f100156

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v38

    if-eqz v38, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    move/from16 v38, v0

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f02004a

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_9
    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout$LayoutParams;

    sget v38, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_15

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_a
    const v38, 0x7f100155

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v38

    if-eqz v38, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    move/from16 v38, v0

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f02004a

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_b
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v38

    if-nez v38, :cond_18

    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x2

    move/from16 v0, v38

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_c
    return-void

    :cond_3
    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNameLand:I

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v9}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameColor:I

    move/from16 v38, v0

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_5
    const/16 v38, 0x8

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    const/16 v33, 0x0

    goto/16 :goto_3

    :cond_7
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_8

    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 v38, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const/16 v38, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    if-eqz v38, :cond_9

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-lt v0, v1, :cond_a

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    const/16 v39, 0x6

    move/from16 v0, v38

    move/from16 v1, v39

    if-gt v0, v1, :cond_a

    :cond_9
    const/16 v38, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const/16 v38, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    :cond_a
    const/16 v38, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    :cond_b
    if-eqz v24, :cond_2

    const/16 v38, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_4

    :cond_c
    invoke-static/range {p2 .. p2}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v36

    move-wide/from16 v2, v20

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/FolderProperties;->getIcon(IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_d
    const v38, 0x7f020327

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6

    :cond_e
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v38

    if-eqz v38, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    move/from16 v38, v0

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_f

    const v38, 0x7f020315

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6

    :cond_f
    const v38, 0x7f020313

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6

    :cond_10
    const/16 v38, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_11
    sget-wide v38, Lcom/android/email/activity/MailboxesAdapter;->sSelectedMailboxId:J

    cmp-long v38, v38, v20

    if-nez v38, :cond_12

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/email/activity/MailboxListItem;->mIsSelected:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameSelectedColor:Landroid/content/res/ColorStateList;

    move-object/from16 v38, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_7

    :cond_12
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/email/activity/MailboxListItem;->mIsSelected:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameColor:I

    move/from16 v38, v0

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_7

    :cond_13
    const/16 v38, 0x8

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v38, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f02004a

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    :cond_15
    sget-boolean v38, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v38, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x16

    move/from16 v0, v38

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_a

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x11

    move/from16 v0, v38

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_a

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f02004a

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    :cond_18
    const/16 v38, 0x8

    move/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c
.end method

.method public static createLoader(Landroid/content/Context;JI)Landroid/content/Loader;
    .locals 2
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

    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;-><init>(Landroid/content/Context;JI)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getCountType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/email/activity/MailboxesAdapter;->getCountTypeForMailboxType(Landroid/database/Cursor;)I

    move-result v0

    goto :goto_0
.end method

.method private static getCountTypeForMailboxType(Landroid/database/Cursor;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {p0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v1}, Lcom/android/email/FolderProperties;->getDisplayName(IJ)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method static getIdForTest(Landroid/database/Cursor;)J
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static getMessageCountForTest(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getSpecialMailboxesCursor(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 7

    new-instance v1, Lcom/android/email/data/ClosingMatrixCursor;

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->HIERARCHY_PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Lcom/android/email/data/ClosingMatrixCursor;-><init>([Ljava/lang/String;Landroid/database/Cursor;)V

    const-wide/16 v2, -0x2

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUnreadCountByMailboxType(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    const-wide/16 v2, -0x4

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getFavoriteMessageCount(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    const-wide/16 v2, -0x5

    const/4 v4, 0x3

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    const-wide/16 v2, -0x6

    const/4 v4, 0x4

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    const-wide/16 v2, -0x8

    const/4 v4, 0x5

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    const-wide/16 v2, -0x7

    const/4 v4, 0x6

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    return-object v1
.end method

.method static getTypeForTest(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getUnreadCountForTest(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private static isAccountRow(Landroid/database/Cursor;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newViewMoveToTargetMode(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private newViewNormalMode(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v1, 0x7f040068

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04006c

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04006b

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04006a

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040069

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static setLeftPane(Landroid/view/View;)V
    .locals 0

    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sLeftPane:Landroid/view/View;

    return-void
.end method

.method private updateSelected(Lcom/android/email/activity/MailboxListItem;Z)V
    .locals 3

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->bindViewNormalMode(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->bindViewMoveToTargetMode(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableUpdates(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/email/activity/MailboxesAdapter;->sEnableUpdate:Z

    return-void
.end method

.method public getAllMailboxCursor()Landroid/database/Cursor;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sAllMailboxCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getChangeMailboxFlag()Z
    .locals 1

    sget-boolean v0, Lcom/android/email/activity/MailboxesAdapter;->needToChangeMailbox:Z

    return v0
.end method

.method public getDeleteMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    return v0
.end method

.method public getDisplayName(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getId(I)J
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getMailboxCursor()Landroid/database/Cursor;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getMailboxType(I)J
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getSelectedSet()Ljava/util/HashSet;
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

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getTotalCount(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1
.end method

.method public getUnreadCount(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getCountType(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    :try_start_0
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v7, 0x9

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    sget-object v6, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    iget-boolean v6, v6, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    if-nez v6, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_2

    const/4 p2, 0x0

    new-instance v4, Lcom/android/email/activity/MailboxListNullItem;

    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/email/activity/MailboxListNullItem;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x8

    :try_start_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p2, v4

    :goto_1
    return-object v4

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    :try_start_2
    iget v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    packed-switch v6, :pswitch_data_0

    :goto_2
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_5

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v5, v6, :cond_4

    :cond_3
    const/4 p2, 0x0

    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v6, v7, p3}, Lcom/android/email/activity/MailboxesAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_4
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v6, v7}, Lcom/android/email/activity/MailboxesAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_3
    move-object v4, p2

    goto :goto_1

    :pswitch_0
    const v5, 0x7f100164

    goto :goto_2

    :pswitch_1
    const v5, 0x7f100163

    goto :goto_2

    :pswitch_2
    const v5, 0x7f100154

    goto :goto_2

    :pswitch_3
    const v5, 0x7f100162

    goto :goto_2

    :pswitch_4
    const v5, 0x7f100161

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v6, v7, p3}, Lcom/android/email/activity/MailboxesAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p2, v4

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public initAdapter()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    :cond_1
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    :cond_2
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    :cond_3
    return-void
.end method

.method public isAccountRow(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxesAdapter;->isFolderOperation:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxType(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxType(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxType(I)J

    move-result-wide v0

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSelected(Lcom/android/email/activity/MailboxListItem;)Z
    .locals 3

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->newViewNormalMode(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->newViewMoveToTargetMode(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAdapterInfo()V
    .locals 3

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    sget-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    sput-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    sput-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :cond_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2

    iput p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameColorDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameColor:I

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameSelectedColorDarkTheme:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameSelectedColor:Landroid/content/res/ColorStateList;

    sget v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxDisableNameColorDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxDisableNameColor:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetInvalidated()V

    return-void

    :cond_0
    sget v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameColor:I

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameSelectedColorWhiteTheme:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameSelectedColor:Landroid/content/res/ColorStateList;

    sget v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxDisableNameColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxDisableNameColor:I

    goto :goto_0
.end method

.method public setChangeMailboxFlag(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/email/activity/MailboxesAdapter;->needToChangeMailbox:Z

    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setIsCreateOrRename(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MailboxesAdapter;->isFolderOperation:Z

    return-void
.end method

.method public setListItemSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mCurrentOrientation:I

    return-void
.end method

.method public toggleSelected(Lcom/android/email/activity/MailboxListItem;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->isSelected(Lcom/android/email/activity/MailboxListItem;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MailboxesAdapter;->updateSelected(Lcom/android/email/activity/MailboxListItem;Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateCurrentOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mCurrentOrientation:I

    return-void
.end method

.method public updateMailboxVisivility(J)V
    .locals 12

    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    iget-boolean v10, v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    if-nez v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    :goto_1
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-ge v4, v10, :cond_3

    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xa

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v7, :cond_2

    cmp-long v10, v5, p1

    if-nez v10, :cond_0

    const/4 v7, 0x1

    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xa

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    if-lt v3, v2, :cond_4

    :cond_3
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    invoke-interface {v10}, Lcom/android/email/activity/MailboxesAdapter$Callback;->onReDrawList()V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    iget-boolean v10, v8, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    iput-boolean v10, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    iget-boolean v10, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    iput-boolean v10, v8, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public updateMailboxVisivility(JZ)V
    .locals 12

    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    iget-boolean v0, v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v10, v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    if-nez v10, :cond_2

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    :goto_2
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-ge v4, v10, :cond_4

    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xa

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v7, :cond_3

    cmp-long v10, v5, p1

    if-nez v10, :cond_1

    const/4 v7, 0x1

    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xa

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    if-lt v3, v2, :cond_5

    :cond_4
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    invoke-interface {v10}, Lcom/android/email/activity/MailboxesAdapter$Callback;->onReDrawList()V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_1

    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    iget-boolean v10, v8, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    iput-boolean v10, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public updateSelectedMailbox(J)V
    .locals 0

    sput-wide p1, Lcom/android/email/activity/MailboxesAdapter;->sSelectedMailboxId:J

    return-void
.end method
