.class public Lcom/android/email/activity/MessageListXL;
.super Landroid/app/Activity;
.source "MessageListXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;
.implements Lcom/android/email/activity/MoveMessageToDialog$Callback;
.implements Lcom/android/email/combined/MessageFacade$MessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageListXL$ManagedDialog;,
        Lcom/android/email/activity/MessageListXL$MessageListDialog;,
        Lcom/android/email/activity/MessageListXL$ControllerResult;,
        Lcom/android/email/activity/MessageListXL$RefreshAllTask;,
        Lcom/android/email/activity/MessageListXL$RefreshTask;,
        Lcom/android/email/activity/MessageListXL$MessageCheckerTask;,
        Lcom/android/email/activity/MessageListXL$MailboxCheckTask;,
        Lcom/android/email/activity/MessageListXL$TextSizeItemView;,
        Lcom/android/email/activity/MessageListXL$TextSizeItem;,
        Lcom/android/email/activity/MessageListXL$MessageListTextSizeAdapter;,
        Lcom/android/email/activity/MessageListXL$RefreshListener;,
        Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;,
        Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;,
        Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;,
        Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;
    }
.end annotation


# static fields
.field public static SELECT_MESSAGE_NEWER:I

.field public static SELECT_MESSAGE_NORMAL:I

.field public static SELECT_MESSAGE_OLDER:I

.field public static final SORT_QUERY:[Ljava/lang/String;

.field private static doesMadUsersRefresh:Z

.field public static isLeftSplitPressed:Z

.field public static isRightSplitPressed:Z

.field private static mComposeNewLayout:Landroid/widget/LinearLayout;

.field public static mContext:Landroid/content/Context;

.field private static mDefaultSelection:I

.field private static mSplitMode:Z

.field private static mTopLineMode:I

.field private static sAccountId:J

.field private static sDateFormat:Ljava/text/DateFormat;

.field private static sDayFormat:Ljava/text/DateFormat;

.field public static sDefaultLeftLandSplitPoint:I

.field public static sDefaultLeftPortSplitPoint:I

.field public static sDefaultRightSplitPoint:I

.field private static sInit:Z

.field public static sLeftSplitType:I

.field public static sLeftSplitpoint:I

.field public static sLeftSplitpointLand:I

.field public static sLeftSplitpointPort:I

.field private static sPreviousSortType:I

.field public static sRightSplitType:I

.field public static sRightSplitpoint:I

.field private static sSearchBarLayout:Landroid/widget/LinearLayout;

.field private static sSearchEditFrame:Landroid/view/View;

.field private static sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field private static sSearchMarginListLand:I

.field private static sSearchMarginViewLand:I

.field private static sSearchMode:Z

.field private static sSearchStrWithEscape:Ljava/lang/String;

.field private static sSearchString:Ljava/lang/String;

.field private static sSearchString_datefrom:J

.field private static sSearchString_dateto:J

.field private static sSelectedSearchType:I

.field private static sSharedPrefer:Landroid/content/SharedPreferences;

.field private static sSortType:I

.field private static sTimeFormat:Ljava/text/DateFormat;

.field public static sTypeface:Landroid/graphics/Typeface;

.field private static sViewMode:I


# instance fields
.field private final DPMReceiver:Landroid/content/BroadcastReceiver;

.field private final SIZE_HUGE:I

.field private final SIZE_LARGE:I

.field private final SIZE_NORMAL:I

.field private final SIZE_SMALL:I

.field private final SIZE_TINY:I

.field private mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

.field private mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarCustomView:Landroid/view/View;

.field private mAnimationStarted:Z

.field private mCloseButton:Landroid/widget/ImageView;

.field private mController:Lcom/android/email/Controller;

.field private mControllerResult:Lcom/android/email/Controller$Result;

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mDialog:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/email/activity/MessageListXL$ManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorMessageView:Landroid/widget/TextView;

.field private mFollowUpFlagAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/email/activity/setup/SpinnerOption;",
            ">;"
        }
    .end annotation
.end field

.field private mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

.field private mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

.field private mIsCreated:Z

.field private mIsMenuOpened:Z

.field private mItem:Lcom/android/email/activity/MessageListItem;

.field private mItemCheckboxPressed:Z

.field private mLandSplitMaxSize:I

.field private mLandSplitMinSize:I

.field private mLastErrorAccountId:J

.field private mLastUpdatedTime:J

.field private mLeftSplitPrevX:I

.field private mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

.field private mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

.field private mMailboxCursor:Landroid/database/Cursor;

.field private mMailboxId:J

.field private mMenuOpenAgain:Z

.field private mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

.field private mMessageFacade:Lcom/android/email/combined/MessageFacade;

.field private mMessageId:J

.field private mMessageOrderManagerCallback:Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

.field private mMonth:I

.field private mOrderManager:Lcom/android/email/activity/MessageOrderManager;

.field private mOrientation:I

.field private mPartnerTooManyDialog:Landroid/app/AlertDialog;

.field private final mPortSplitMaxSize:I

.field private mPreviewLineSize:I

.field private mQueryDummyText:Landroid/widget/TextView;

.field private mQueryTextView:Landroid/widget/EditText;

.field private mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

.field private mRefreshManager:Lcom/android/email/RefreshManager;

.field private mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

.field private mRightSplitPrevX:I

.field private mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

.field private mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

.field private mSubItemCheckboxPressed:Z

.field private mThreePane:Lcom/android/email/activity/ThreePaneLayout;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mYear:I

.field private mfontSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    sput v5, Lcom/android/email/activity/MessageListXL;->mDefaultSelection:I

    sput-boolean v3, Lcom/android/email/activity/MessageListXL;->doesMadUsersRefresh:Z

    sput-boolean v5, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "timeStamp COLLATE NOCASE DESC"

    aput-object v1, v0, v3

    const-string v1, "timeStamp COLLATE NOCASE ASC"

    aput-object v1, v0, v5

    const-string v1, "displayName COLLATE NOCASE ASC, timeStamp DESC"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "displayName COLLATE NOCASE DESC, timeStamp DESC"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flagRead COLLATE NOCASE ASC, timeStamp DESC"

    aput-object v2, v0, v1

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

    sput-object v0, Lcom/android/email/activity/MessageListXL;->SORT_QUERY:[Ljava/lang/String;

    sput v3, Lcom/android/email/activity/MessageListXL;->sSortType:I

    sput v3, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    sput-boolean v3, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    sput-object v6, Lcom/android/email/activity/MessageListXL;->sTypeface:Landroid/graphics/Typeface;

    sput v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    sput v4, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    sput v3, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    sput-object v6, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    sput-object v6, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    sput v3, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/email/activity/MessageListXL;->sSearchString_datefrom:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/email/activity/MessageListXL;->sSearchString_dateto:J

    sput v3, Lcom/android/email/activity/MessageListXL;->sSearchMarginListLand:I

    sput v3, Lcom/android/email/activity/MessageListXL;->sSearchMarginViewLand:I

    sput v3, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    sput v5, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_OLDER:I

    sput v7, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NEWER:I

    sput-boolean v3, Lcom/android/email/activity/MessageListXL;->sInit:Z

    sput-boolean v3, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    sput-boolean v3, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    sput v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sput v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    sput v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointPort:I

    sput v4, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sput v4, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    sput v4, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    sput v4, Lcom/android/email/activity/MessageListXL;->sDefaultRightSplitPoint:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v3, p0, Lcom/android/email/activity/MessageListXL;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    new-instance v0, Lcom/android/email/activity/MessageListXL$RefreshListener;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MessageListXL$RefreshListener;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

    new-instance v0, Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListXLFragmentManager;-><init>(Lcom/android/email/activity/MessageListXL;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    new-instance v0, Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageOrderManagerCallback:Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

    iput v2, p0, Lcom/android/email/activity/MessageListXL;->SIZE_TINY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->SIZE_SMALL:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->SIZE_NORMAL:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->SIZE_LARGE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->SIZE_HUGE:I

    iput-wide v4, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    iput-wide v4, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    iput-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMinSize:I

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mPortSplitMaxSize:I

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mIsMenuOpened:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mMenuOpenAgain:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    iput-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    iput-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mLastUpdatedTime:J

    iput-object v3, p0, Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/email/activity/MessageListXL$8;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListXL$8;-><init>(Lcom/android/email/activity/MessageListXL;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->DPMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/email/activity/MessageListXL$14;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListXL$14;-><init>(Lcom/android/email/activity/MessageListXL;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iput v2, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    iput v2, p0, Lcom/android/email/activity/MessageListXL;->mRightSplitPrevX:I

    return-void
.end method

.method private ConversationMoveAlways(Ljava/util/Set;JJJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;JJJ)V"
        }
    .end annotation

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    const/4 v8, 0x1

    move-wide/from16 v1, p6

    move-wide v4, p4

    move-wide v6, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller;->moveConversationAlways(JLjava/lang/String;JJI)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private IsEAS()Z
    .locals 5

    const/4 v0, 0x0

    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    const-string v1, "eas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageListXL;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->loadAccounts()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageListXL;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/email/activity/MessageListXL;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageListXL;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onCompose()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    sget v0, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    return v0
.end method

.method static synthetic access$1402(I)I
    .locals 0

    sput p0, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageListXL;[J)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL;->onMoveMessages([J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageListXL;[J[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageListXL;->onConversationMoveAlways([J[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/email/activity/MessageListXL;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListItem;)Lcom/android/email/activity/MessageListItem;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/android/email/activity/MessageListXL;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListSubTitleItem;)Lcom/android/email/activity/MessageListSubTitleItem;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/android/email/activity/MessageListXL;Ljava/text/DateFormat;)Ljava/text/DateFormat;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL;->mDateFormat:Ljava/text/DateFormat;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/android/email/activity/MessageListXL;Ljava/text/DateFormat;)Ljava/text/DateFormat;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL;->mTimeFormat:Ljava/text/DateFormat;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageListXL;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateMessageOrderManager()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageListXL;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->stopMessageOrderManager()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageOrderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageListXL;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onCurrentMessageGone()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageListXL;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL;->onBackPressed(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000()J
    .locals 2

    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    return-wide v0
.end method

.method static synthetic access$3002(J)J
    .locals 0

    sput-wide p0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    return-wide p0
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageListXL;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->IsEAS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageListXL;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageListXL;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    return-wide v0
.end method

.method static synthetic access$3302(Lcom/android/email/activity/MessageListXL;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageListXL;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageListXL;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/email/activity/MessageListXL;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mIsCreated:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/email/activity/MessageListXL;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/MessageListXL;->mLastErrorAccountId:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/android/email/activity/MessageListXL;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL;->updateAccountList(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    return-object v0
.end method

.method static synthetic access$4000()I
    .locals 1

    sget v0, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    return v0
.end method

.method static synthetic access$4002(I)I
    .locals 0

    sput p0, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    return p0
.end method

.method static synthetic access$4100()I
    .locals 1

    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    return v0
.end method

.method static synthetic access$4102(I)I
    .locals 0

    sput p0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    return p0
.end method

.method static synthetic access$4200(Lcom/android/email/activity/MessageListXL;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateOrderManager()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageListXL;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/email/activity/MessageListXL;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    return p1
.end method

.method static synthetic access$4400()I
    .locals 1

    sget v0, Lcom/android/email/activity/MessageListXL;->mDefaultSelection:I

    return v0
.end method

.method static synthetic access$4402(I)I
    .locals 0

    sput p0, Lcom/android/email/activity/MessageListXL;->mDefaultSelection:I

    return p0
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/SearchTypeSelectorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$4600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/email/activity/MessageListXL;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/android/email/activity/MessageListXL;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/email/activity/MessageListXL;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateViewsVisibility()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/email/activity/MessageListXL;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onResultSearchClose()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/email/activity/MessageListXL;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mYear:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/email/activity/MessageListXL;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageListXL;->mYear:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/email/activity/MessageListXL;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mMonth:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/email/activity/MessageListXL;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageListXL;->mMonth:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/email/activity/MessageListXL;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mDay:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/email/activity/MessageListXL;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageListXL;->mDay:I

    return p1
.end method

.method static synthetic access$5502(J)J
    .locals 0

    sput-wide p0, Lcom/android/email/activity/MessageListXL;->sSearchString_datefrom:J

    return-wide p0
.end method

.method static synthetic access$5602(J)J
    .locals 0

    sput-wide p0, Lcom/android/email/activity/MessageListXL;->sSearchString_dateto:J

    return-wide p0
.end method

.method static synthetic access$5700(Lcom/android/email/activity/MessageListXL;JZ)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageListXL;->formatDate(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/ThreePaneLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/email/activity/MessageListXL;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListXL;->clearErrorMessage(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageListXL;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateNavigationArrows()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/email/activity/MessageListXL;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/android/email/activity/MessageListXL;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/email/activity/MessageListXL;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageListXL;->showErrorMessage(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/email/activity/MessageListXL;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageListXL;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageListXL;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    return-object v0
.end method

.method public static actionOpenAccount(Landroid/app/Activity;J)V
    .locals 3

    const-class v0, Lcom/android/email/activity/MessageListXL;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static actionOpenMailbox(Landroid/app/Activity;JJ)V
    .locals 3

    const-wide/16 v1, -0x1

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    cmp-long v0, p3, v1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    :cond_1
    const-class v0, Lcom/android/email/activity/MessageListXL;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static actionOpenMessage(Landroid/app/Activity;JJJ)V
    .locals 3

    const-wide/16 v1, -0x1

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    cmp-long v0, p3, v1

    if-eqz v0, :cond_0

    cmp-long v0, p5, v1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    :cond_1
    const-class v0, Lcom/android/email/activity/MessageListXL;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "MESSAGE_ID"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private changeFontSize_preference()V
    .locals 3

    sget-object v2, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v0

    iget v2, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageViewFragment;->setViewFontSize(I)V

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageListFragment;->setMessageListFontSize(I)V

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    :cond_0
    return-void
.end method

.method private changePreviewLineSize_preference()V
    .locals 3

    sget-object v2, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getPreViewLine()I

    move-result v0

    iget v2, p0, Lcom/android/email/activity/MessageListXL;->mPreviewLineSize:I

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageListFragment;->setPreviewLinstSize(I)V

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->mPreviewLineSize:I

    :cond_0
    return-void
.end method

.method private changeSplitMode_preference()V
    .locals 3

    sget-object v2, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getSplitMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    sget-boolean v2, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    if-eq v2, v1, :cond_0

    sput-boolean v1, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private changeTopLineMode_preference()V
    .locals 3

    sget-object v2, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getTopLineInfoMode()I

    move-result v1

    sget v2, Lcom/android/email/activity/MessageListXL;->mTopLineMode:I

    if-eq v2, v1, :cond_0

    sput v1, Lcom/android/email/activity/MessageListXL;->mTopLineMode:I

    :cond_0
    return-void
.end method

.method private checkITPolicy_AllowPOPIMAP()Z
    .locals 1

    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearErrorMessage(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mLastErrorAccountId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->dismissErrorMessage()V

    :cond_0
    return-void
.end method

.method private dismissErrorMessage()V
    .locals 0

    return-void
.end method

.method private formatDate(JZ)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sDateFormat:Ljava/text/DateFormat;

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListXL;->sDateFormat:Ljava/text/DateFormat;

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentAccountId()J
    .locals 2

    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    return-wide v0
.end method

.method public static getDateFormat()Ljava/text/DateFormat;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sDateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static getSearchMarginListLand()I
    .locals 1

    sget v0, Lcom/android/email/activity/MessageListXL;->sSearchMarginListLand:I

    return v0
.end method

.method public static getSearchMarginViewLand()I
    .locals 1

    sget v0, Lcom/android/email/activity/MessageListXL;->sSearchMarginViewLand:I

    return v0
.end method

.method public static getSearchSelectionString()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->getStringWithEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    sget v0, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( displayName like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR subject like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR _id IN (SELECT messageKey FROM BodyDatabase.Body WHERE textContent like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'\\\'))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetSearchString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( subject like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( displayName like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( timeStamp between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sSearchString_datefrom:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sSearchString_dateto:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( subject like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSearchString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    return-object v0
.end method

.method public static getSelectedSearchType()I
    .locals 1

    sget v0, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    return v0
.end method

.method public static getSortType()I
    .locals 1

    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    return v0
.end method

.method private getSpinnerOptions()[Lcom/android/email/activity/setup/SpinnerOption;
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    long-to-int v0, v0

    :goto_0
    if-eq v0, v9, :cond_0

    if-eq v0, v5, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    int-to-long v1, v0

    const-wide/16 v3, -0x5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    int-to-long v0, v0

    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_0
    new-array v0, v9, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802d0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802ca

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v5

    :goto_1
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    goto :goto_0

    :cond_2
    new-array v0, v9, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802d0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802cd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v5

    goto :goto_1
.end method

.method public static getSplitMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    return v0
.end method

.method public static getStringWithEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\%"

    const-string v2, "\\\\%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\_"

    const-string v2, "\\\\_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\\'"

    const-string v2, "\\\\\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getTimeFormat()Ljava/text/DateFormat;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sTimeFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static getTopLineMode()I
    .locals 1

    sget v0, Lcom/android/email/activity/MessageListXL;->mTopLineMode:I

    return v0
.end method

.method public static getTypeface()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getViewMode()I
    .locals 1

    sget v0, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    return v0
.end method

.method private handleLeftSplit(Landroid/view/MotionEvent;)Z
    .locals 11

    const/16 v10, 0x7d

    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v3, v6

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v6

    if-nez v6, :cond_1

    move v0, v4

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_1
    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_18

    :goto_2
    return v4

    :cond_1
    move v0, v5

    goto :goto_0

    :pswitch_0
    if-eqz v0, :cond_0

    iput v3, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v6, v3, v6

    const/16 v7, 0x1e

    if-ge v6, v7, :cond_2

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v6, v3, v6

    if-gez v6, :cond_3

    :cond_2
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v6, v3, v6

    if-gtz v6, :cond_0

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v6, v3, v6

    const/16 v7, -0x1e

    if-le v6, v7, :cond_0

    :cond_3
    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    sput v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto :goto_1

    :pswitch_1
    if-eqz v0, :cond_0

    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    if-ne v6, v9, :cond_a

    const/16 v6, 0xaf

    if-lt v3, v6, :cond_4

    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    if-le v3, v6, :cond_5

    :cond_4
    const/16 v6, 0xaf

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v6, v8}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    sput v8, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    sput v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    iput v5, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-eq v6, v8, :cond_6

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    if-eq v6, v4, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    iget v7, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    sub-int/2addr v7, v3

    neg-int v7, v7

    add-int/2addr v6, v7

    sput v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-eqz v1, :cond_8

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    :cond_8
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-le v6, v10, :cond_9

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    iget v7, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    if-ge v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    sget v7, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-virtual {v6, v7}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    :cond_9
    iput v3, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListFragment;->updateMessageCount()V

    goto/16 :goto_1

    :cond_a
    if-lt v3, v10, :cond_b

    const/4 v6, -0x1

    if-le v3, v6, :cond_c

    :cond_b
    if-ge v3, v10, :cond_0

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v6, v8}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    sput v8, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v6}, Lcom/android/email/activity/ThreePaneLayout;->getMeasuredWidth()I

    move-result v6

    sget v7, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v2, v6, v7

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/email/activity/MessageViewFragment;->setBubbleLayout(I)V

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    sput v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    iput v5, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    goto/16 :goto_1

    :cond_c
    const/4 v1, 0x0

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-eq v6, v8, :cond_d

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    if-eq v6, v4, :cond_e

    :cond_d
    const/4 v1, 0x1

    :cond_e
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    iget v7, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    sub-int/2addr v7, v3

    neg-int v7, v7

    add-int/2addr v6, v7

    sput v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-eqz v1, :cond_f

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    :cond_f
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/16 v7, 0x64

    if-le v6, v7, :cond_10

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/4 v7, -0x1

    if-ge v6, v7, :cond_10

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    sget v7, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-virtual {v6, v7}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    :cond_10
    iput v3, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListFragment;->updateMessageCount()V

    goto/16 :goto_1

    :pswitch_2
    if-eqz v0, :cond_13

    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_13

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-le v6, v10, :cond_11

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/4 v7, -0x1

    if-ge v6, v7, :cond_11

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v6}, Lcom/android/email/activity/ThreePaneLayout;->getMeasuredWidth()I

    move-result v6

    sget v7, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v2, v6, v7

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/email/activity/MessageViewFragment;->setBubbleLayout(I)V

    :cond_11
    sput-boolean v5, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-ne v6, v8, :cond_12

    sput v9, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_1

    :cond_12
    sput v5, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_1

    :cond_13
    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_0

    sput-boolean v5, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-ne v6, v8, :cond_14

    sput v9, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_1

    :cond_14
    sput v5, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_1

    :pswitch_3
    if-eqz v0, :cond_16

    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_16

    sput-boolean v5, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-ne v6, v8, :cond_15

    sput v9, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_1

    :cond_15
    sput v5, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_1

    :cond_16
    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_0

    sput-boolean v5, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-ne v6, v8, :cond_17

    sput v9, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_1

    :cond_17
    sput v5, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_1

    :cond_18
    move v4, v5

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private handleRightSplit(Landroid/view/MotionEvent;)Z
    .locals 10

    const/16 v9, 0x8

    const/4 v3, 0x1

    const/4 v8, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v2, v5

    iget v5, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    if-ne v5, v8, :cond_2

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v5

    if-ne v5, v3, :cond_2

    move v0, v3

    :goto_0
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    if-gez v5, :cond_0

    sget-boolean v5, Lcom/android/email/activity/Welcome;->needFull:Z

    if-nez v5, :cond_0

    sget v5, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    sput v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_1
    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_10

    :goto_2
    return v3

    :cond_2
    move v0, v4

    goto :goto_0

    :pswitch_0
    if-eqz v0, :cond_1

    iput v2, p0, Lcom/android/email/activity/MessageListXL;->mRightSplitPrevX:I

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v5, v2, v5

    const/16 v6, 0x1e

    if-ge v5, v6, :cond_3

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v5, v2, v5

    if-gez v5, :cond_4

    :cond_3
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v5, v2, v5

    if-gtz v5, :cond_1

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v5, v2, v5

    const/16 v6, -0xf

    if-le v5, v6, :cond_1

    :cond_4
    sput-boolean v3, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    sput v3, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto :goto_1

    :pswitch_1
    if-eqz v0, :cond_1

    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMinSize:I

    if-lt v2, v5, :cond_1

    iget v5, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    if-gt v2, v5, :cond_1

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    if-eq v5, v3, :cond_5

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    :cond_5
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mRightSplitPrevX:I

    sub-int/2addr v6, v2

    neg-int v6, v6

    add-int/2addr v5, v6

    sput v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    const/16 v6, 0x7d

    if-le v5, v6, :cond_6

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    if-ge v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    sget v6, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-virtual {v5, v6}, Lcom/android/email/activity/ThreePaneLayout;->controlRightSplitBar(I)V

    :cond_6
    iput v2, p0, Lcom/android/email/activity/MessageListXL;->mRightSplitPrevX:I

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->updateMessageCount()V

    goto/16 :goto_1

    :pswitch_2
    if-eqz v0, :cond_b

    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_b

    iget v5, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    if-ne v5, v8, :cond_8

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    const/16 v6, 0xa0

    if-le v5, v6, :cond_7

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    if-ge v5, v6, :cond_7

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v5}, Lcom/android/email/activity/ThreePaneLayout;->getMeasuredWidth()I

    move-result v5

    sget v6, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v1, v5, v6

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/email/activity/MessageViewFragment;->setBubbleLayout(I)V

    :cond_7
    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "prefer_split_point"

    sget v7, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_3
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    if-ne v5, v9, :cond_a

    sput v8, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto/16 :goto_1

    :cond_8
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    const/16 v6, 0x64

    if-le v5, v6, :cond_9

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    const/16 v6, 0x212

    if-ge v5, v6, :cond_9

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v5}, Lcom/android/email/activity/ThreePaneLayout;->getMeasuredWidth()I

    move-result v5

    sget v6, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v1, v5, v6

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/email/activity/MessageViewFragment;->setBubbleLayout(I)V

    :cond_9
    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "prefer_split_point"

    sget v7, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    :cond_a
    sput v4, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto/16 :goto_1

    :cond_b
    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_1

    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    if-ne v5, v9, :cond_c

    sput v8, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    :goto_4
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "prefer_split_point"

    sget v7, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :cond_c
    sput v4, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto :goto_4

    :pswitch_3
    if-eqz v0, :cond_e

    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_e

    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    if-ne v5, v9, :cond_d

    sput v8, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    :goto_5
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "prefer_split_point"

    sget v7, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :cond_d
    sput v4, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto :goto_5

    :cond_e
    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_1

    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    if-ne v5, v9, :cond_f

    sput v8, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    :goto_6
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "prefer_split_point"

    sget v7, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :cond_f
    sput v4, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto :goto_6

    :cond_10
    move v3, v4

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private initFromIntent()V
    .locals 13

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v0, "ACCOUNT_ID"

    invoke-virtual {v11, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-string v0, "MAILBOX_ID"

    invoke-virtual {v11, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    const-string v0, "MESSAGE_ID"

    invoke-virtual {v11, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FROM_SHORTCUT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->isValidId(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f080270

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/email/Preferences;->getAccountId()J

    move-result-wide v9

    cmp-long v0, v9, v2

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    :goto_0
    invoke-virtual {v12}, Lcom/android/email/Preferences;->getMailboxId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    :cond_1
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    iget-wide v5, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJZZ)V

    :cond_2
    return-void

    :cond_3
    sput-wide v9, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    goto :goto_0
.end method

.method public static isInSearchMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    return v0
.end method

.method public static isNetworkConnected()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Lcom/android/email/Email;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): info is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_1

    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): network is connected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): exception..."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): network is disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method private loadAccounts()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/email/activity/MessageListXL$4;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListXL$4;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method private moveToNewer()Z
    .locals 4

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->moveToNewer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v1

    sget v3, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NEWER:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMessage(JI)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToOlder()Z
    .locals 4

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->moveToOlder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v1

    sget v3, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_OLDER:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMessage(JI)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAccountSettings()Z
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->actionSettings(Landroid/app/Activity;J)V

    const/4 v0, 0x1

    return v0
.end method

.method private onBackPressed(Z)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v2, :cond_1

    sput-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-ne v2, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2, p1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onBackPressed(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_0

    sget-boolean v2, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-eqz v2, :cond_5

    sput-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method private onCompose()Z
    .locals 8

    const-wide/16 v5, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->IsEAS()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    :goto_0
    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    sget-wide v3, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    const-wide/16 v5, -0x2

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    iget-wide v4, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->isAccountSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    sget-wide v4, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    iget-wide v6, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->isAccountSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private onConversationMoveAlways([J[Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/android/email/activity/MoveMessageToDialog;->hasShowingDialog()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/email/activity/MoveMessageToDialog;->newInstance(Landroid/app/Activity;[J[Ljava/lang/String;Landroid/app/Fragment;I)Lcom/android/email/activity/MoveMessageToDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MoveMessageToDialog;->setMailboxCursor(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MoveMessageToDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onCurrentMessageGone()V
    .locals 3

    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getAutoAdvanceDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->goBackToMailbox()V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onMoveMessages([J)V
    .locals 3

    invoke-static {}, Lcom/android/email/activity/MoveMessageToDialog;->hasShowingDialog()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/email/activity/MoveMessageToDialog;->newInstance(Landroid/app/Activity;[JLandroid/app/Fragment;)Lcom/android/email/activity/MoveMessageToDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MoveMessageToDialog;->setMailboxCursor(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MoveMessageToDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onResultSearchClose()V
    .locals 2

    const-string v0, "Email"

    const-string v1, "onClose "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    return-void
.end method

.method private refreshActionBarLayout()V
    .locals 14

    const v13, 0x7f0c0100

    const/4 v12, 0x5

    const/4 v9, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x1

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f1000c4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f1000c6

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v2}, Lcom/android/email/activity/CustomSpinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v3, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    sget-boolean v7, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    if-ne v7, v10, :cond_4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0104

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0106

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0109

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v7

    if-eq v7, v12, :cond_2

    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00f7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-boolean v7, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    if-ne v7, v10, :cond_5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00fb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v7

    if-eq v7, v12, :cond_3

    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v7, v2}, Lcom/android/email/activity/CustomSpinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0103

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0105

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0108

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v7

    if-eq v7, v11, :cond_2

    sget-boolean v7, Lcom/android/email/activity/Welcome;->fromWidget:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00fa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v7

    if-eq v7, v11, :cond_3

    sget-boolean v7, Lcom/android/email/activity/Welcome;->fromWidget:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0101

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0102

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00ff

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0107

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00f6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00f9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_7
    const-string v7, "MessageListXL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sSearchMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "fromWidget : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/email/activity/Welcome;->fromWidget:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v7, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-nez v7, :cond_3

    sget-boolean v7, Lcom/android/email/activity/Welcome;->needFull:Z

    if-nez v7, :cond_3

    sget-boolean v7, Lcom/android/email/activity/Welcome;->fromWidget:Z

    if-nez v7, :cond_3

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v7

    if-eq v7, v11, :cond_3

    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto/16 :goto_2
.end method

.method public static setSearchFrameLayout(I)V
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_0
    return-void
.end method

.method public static setSearchString(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    return-void
.end method

.method public static setSortType(I)V
    .locals 2

    sput p0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSharedPrefer:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSharedPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefer_sort_type"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private setupAccountView()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/CustomSpinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    new-instance v1, Lcom/android/email/activity/MessageListXL$10;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListXL$10;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private setupFollowUpFlagView()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v0, 0x7f1001c1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/CustomSpinner;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v2, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080318

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080317

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080316

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f04009b

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagAdapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    new-instance v1, Lcom/android/email/activity/MessageListXL$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListXL$2;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setupSearchIndexView()V
    .locals 3

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    const v2, 0x7f04009a

    invoke-virtual {v1, v2}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    sget v2, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v1, p0}, Lcom/android/email/activity/CustomSpinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    new-instance v2, Lcom/android/email/activity/MessageListXL$11;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageListXL$11;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mYear:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mMonth:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mDay:I

    return-void
.end method

.method private setupSearchView()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/email/activity/MessageListXL$9;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListXL$9;-><init>(Lcom/android/email/activity/MessageListXL;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v1, 0x7f1000c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mCloseButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onOpenSearch()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    sput-boolean v2, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->clearFocus()V

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateViewsVisibility()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private showErrorMessage(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Lcom/android/email/activity/MessageListXL$3;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/email/activity/MessageListXL$3;-><init>(Lcom/android/email/activity/MessageListXL;JLjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private showFollowUpView()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->performClick()Z

    :cond_0
    return-void
.end method

.method private stopMessageOrderManager()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    :cond_0
    return-void
.end method

.method private updateAccountList(Landroid/database/Cursor;)V
    .locals 7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->isAccountSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(Landroid/database/Cursor;)J

    move-result-wide v0

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getUIAccountId()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-nez v5, :cond_3

    move v3, v4

    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v5, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    :cond_2
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v5, v6}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v5, v3}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private updateMessageOrderManager()V
    .locals 5

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMailboxSelected()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageOrderManager;->getMailboxId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->stopMessageOrderManager()V

    new-instance v2, Lcom/android/email/activity/MessageOrderManager;

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mMessageOrderManagerCallback:Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/email/activity/MessageOrderManager;-><init>(Landroid/content/Context;JLcom/android/email/activity/MessageOrderManager$Callback;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/email/activity/MessageOrderManager;->moveTo(J)V

    goto :goto_0
.end method

.method private updateNavigationArrows()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->updateMessageCommandButtons(ZZII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->canMoveToNewer()Z

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageOrderManager;->canMoveToOlder()Z

    move-result v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageOrderManager;->getCurrentPosition()I

    move-result v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageOrderManager;->getTotalMessageCount()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageListXLFragmentManager;->updateMessageCommandButtons(ZZII)V

    goto :goto_0
.end method

.method private updateOrderManager()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->startTask()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateMessageOrderManager()V

    goto :goto_0
.end method

.method private updateViewsVisibility()V
    .locals 4

    const/4 v1, 0x0

    const/16 v2, 0x8

    sget-object v3, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    sget-boolean v3, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private updatedMailbox_toast(Ljava/lang/Long;)V
    .locals 13

    const-wide/16 v6, 0x0

    const/16 v12, 0x20

    const/4 v11, 0x1

    const/4 v10, 0x0

    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDateFormat:Ljava/text/DateFormat;

    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mTimeFormat:Ljava/text/DateFormat;

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "syncTime"

    aput-object v0, v2, v10

    const-string v0, "_id=?"

    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v11, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL;->mLastUpdatedTime:J

    sub-long v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    const-wide/16 v8, 0x9c4

    cmp-long v3, v3, v8

    if-gez v3, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move-wide v0, v6

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    cmp-long v2, v0, v6

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mDateFormat:Ljava/text/DateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mTimeFormat:Ljava/text/DateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    const v4, 0x7f08030d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v2, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const-string v2, "Email"

    const-string v3, "updatedMailbox_toast "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mLastUpdatedTime:J

    goto :goto_0
.end method


# virtual methods
.method public changeFontSize()Landroid/app/Dialog;
    .locals 11

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a001d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0a001e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    array-length v0, v5

    new-array v6, v0, [F

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    array-length v8, v5

    if-ge v0, v8, :cond_0

    aget-object v8, v5, v0

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v6, v0

    new-instance v8, Lcom/android/email/activity/MessageListXL$TextSizeItem;

    aget-object v9, v4, v0

    aget v10, v6, v0

    invoke-direct {v8, p0, v9, v10}, Lcom/android/email/activity/MessageListXL$TextSizeItem;-><init>(Lcom/android/email/activity/MessageListXL;Ljava/lang/String;F)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0801ea

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget v4, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    if-ne v4, v2, :cond_1

    :goto_1
    new-instance v2, Lcom/android/email/activity/MessageListXL$MessageListTextSizeAdapter;

    const v3, 0x7f04009e

    invoke-direct {v2, p0, p0, v3, v7}, Lcom/android/email/activity/MessageListXL$MessageListTextSizeAdapter;-><init>(Lcom/android/email/activity/MessageListXL;Landroid/content/Context;ILjava/util/ArrayList;)V

    new-instance v3, Lcom/android/email/activity/MessageListXL$6;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListXL$6;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080043

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_1
    iget v1, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    if-ne v1, v3, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public checkAvailableMailboxToMove()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    new-instance v0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    invoke-direct {v0, p0, p0}, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;-><init>(Lcom/android/email/activity/MessageListXL;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public controlAccountSpinnerVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    goto :goto_0
.end method

.method public controlSearchVisible(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_0
.end method

.method public createListByDialog()Landroid/app/Dialog;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x6

    const/4 v1, 0x5

    sget-wide v3, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/high16 v5, 0x1000

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    const v3, 0x7f0801d0

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    const v3, 0x7f0801d1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    const v3, 0x7f0801d2

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    const/4 v3, 0x3

    const v4, 0x7f0801d3

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f080046

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const v3, 0x7f080062

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0801dd

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget v3, Lcom/android/email/activity/MessageListXL;->sSortType:I

    sget-boolean v5, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v5, :cond_6

    sget v5, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    :cond_0
    :goto_1
    new-instance v2, Lcom/android/email/activity/MessageListXL$7;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageListXL$7;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_1
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const v3, 0x7f0801d0

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    const v3, 0x7f0801d1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    const v3, 0x7f0801d2

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    const/4 v3, 0x3

    const v4, 0x7f0801d3

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f080046

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const v3, 0x7f08031b

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const v3, 0x7f080319

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x7

    const v4, 0x7f08031f

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const v4, 0x7f080062

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const v3, 0x7f0801d0

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    const v3, 0x7f0801d1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    const v3, 0x7f0801d2

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    const/4 v3, 0x3

    const v4, 0x7f0801d3

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f080046

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const v3, 0x7f080061

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const v3, 0x7f080062

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto/16 :goto_0

    :cond_3
    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v5, 0x9

    if-ne v1, v5, :cond_4

    move v1, v2

    goto/16 :goto_1

    :cond_4
    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    const/4 v1, 0x7

    goto/16 :goto_1

    :cond_5
    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_7

    const/16 v1, 0x8

    goto/16 :goto_1

    :cond_6
    sget-wide v5, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/high16 v7, 0x1000

    cmp-long v5, v5, v7

    if-nez v5, :cond_8

    sget v2, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v5, 0xb

    if-eq v2, v5, :cond_0

    :cond_7
    move v1, v3

    goto/16 :goto_1

    :cond_8
    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v5, 0xb

    if-ne v1, v5, :cond_7

    move v1, v2

    goto/16 :goto_1
.end method

.method public createViewModeDialog()Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0801e6

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0801e7

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08021c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    new-instance v3, Lcom/android/email/activity/MessageListXL$5;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListXL$5;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v1, v3

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v3}, Lcom/android/email/activity/ThreePaneLayout;->getAnimationStatus()Z

    move-result v3

    if-ne v3, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL;->handleLeftSplit(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL;->handleRightSplit(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :pswitch_1
    iget-boolean v3, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    if-eqz v3, :cond_4

    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    iput-boolean v4, v3, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListItem;->invalidate()V

    :cond_4
    iget-boolean v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    if-eqz v3, :cond_3

    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    iput-boolean v4, v3, Lcom/android/email/activity/MessageListSubTitleItem;->mCheckboxPressed:Z

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListSubTitleItem;->invalidate()V

    goto :goto_1

    :pswitch_2
    iget-boolean v3, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    if-eqz v3, :cond_5

    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    iput-boolean v4, v3, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListItem;->invalidate()V

    :cond_5
    iget-boolean v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    if-eqz v3, :cond_3

    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    iput-boolean v4, v3, Lcom/android/email/activity/MessageListSubTitleItem;->mCheckboxPressed:Z

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListSubTitleItem;->invalidate()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getListFragmentManager()Lcom/android/email/activity/MessageListXLFragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    return-object v0
.end method

.method public onAccountChanged(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    return-void
.end method

.method public onAccountSecurityHold(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListXL;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    const-string v1, "com.android.email.activity.messagelistxl.searchfolderid"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListXL;->onBackPressed(Z)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->dismissErrorMessage()V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onResultSearchRequested()Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c9 -> :sswitch_1
        0x7f1001c2 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCloseSearch()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->setLayoutAnim_slideSideToSide(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    :cond_0
    return-void
.end method

.method public onCloseSerachWithoutAnimation()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateViewsVisibility()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->clearFocus()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onResultSearchClose()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    sput-boolean v2, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefer_split_left_port_point"

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "prefer_split_left_land_point"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    if-eq v0, v3, :cond_5

    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->refreshActionBarLayout()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget v1, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->refreshFragment(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mIsMenuOpened:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mMenuOpenAgain:Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mMenuOpenAgain:Z

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mMenuOpenAgain:Z

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->closeOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->openOptionsMenu()V

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->getDropDownItem()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->getDropDownItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setLayout(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->performClick()Z

    :cond_4
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    return-void

    :cond_5
    sget v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefer_split_left_land_point"

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "prefer_split_left_port_point"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    if-eq v0, v3, :cond_7

    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto :goto_0

    :cond_7
    sget v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointPort:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/high16 v8, 0x200

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    const-string v1, "Email"

    const-string v2, "MessageListXL onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->DPMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageListXL;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    const v1, 0x7f04007f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->setContentView(I)V

    const-string v1, "AndroidMail.MessageList"

    invoke-virtual {p0, v1, v6}, Lcom/android/email/activity/MessageListXL;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListXL;->sSharedPrefer:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    sget-boolean v1, Lcom/android/email/activity/MessageListXL;->sInit:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sSearchMarginListLand:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sSearchMarginViewLand:I

    :cond_0
    const-string v1, "AndroidMail.MessageList"

    invoke-virtual {p0, v1, v6}, Lcom/android/email/activity/MessageListXL;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "prefer_split_left_land_point"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "prefer_split_left_port_point"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "prefer_split_point"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sDefaultRightSplitPoint:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointPort:I

    const v1, 0x7f1001c3

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/ThreePaneLayout;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/ThreePaneLayout;->setVisibleMessageSendingProgress(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->initCurrentPaneState()V

    iget v1, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    sget v1, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    if-eq v1, v4, :cond_1

    sget v1, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    sput v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    :goto_0
    sget v1, Lcom/android/email/activity/MessageListXL;->sDefaultRightSplitPoint:I

    if-eq v1, v4, :cond_4

    sget v1, Lcom/android/email/activity/MessageListXL;->sDefaultRightSplitPoint:I

    sput v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    :goto_1
    const/16 v1, 0x140

    sput v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04003b

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v2, 0x7f1000c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v2, 0x7f1000be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/CustomSpinner;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v2, 0x7f1000c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/CustomSpinner;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    new-instance v1, Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04009b

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->getSpinnerOptions()[Lcom/android/email/activity/setup/SpinnerOption;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/email/activity/SearchTypeSelectorAdapter;-><init>(Landroid/content/Context;I[Lcom/android/email/activity/setup/SpinnerOption;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    const v2, 0x7f04009a

    invoke-virtual {v1, v2}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v2, 0x7f1000c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    sput-object v1, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v2, 0x7f1000c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getImeOptions()I

    move-result v2

    or-int/2addr v2, v8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v2, 0x7f1000c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getImeOptions()I

    move-result v2

    or-int/2addr v2, v8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget v2, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->onActivityViewReady(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->setupAccountView()V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->setupSearchIndexView()V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->setupSearchView()V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->setupFollowUpFlagView()V

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    invoke-static {p0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

    invoke-virtual {v1, v2}, Lcom/android/email/RefreshManager;->registerListener(Lcom/android/email/RefreshManager$Listener;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    new-instance v2, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;

    invoke-direct {v2, p0, v5}, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMailboxListFragmentCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    new-instance v2, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;

    invoke-direct {v2, p0, v5}, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMessageListFragmentCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    new-instance v2, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;

    invoke-direct {v2, p0, v5}, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMessageViewFragmentCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    new-instance v1, Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-direct {v1, p0, v5}, Lcom/android/email/activity/AccountSelectorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MessageListXLFragmentManager;->loadState(Landroid/os/Bundle;)V

    :goto_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->loadAccounts()V

    const v1, 0x7f1001c2

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mErrorMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mErrorMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/email/activity/BannerController;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mErrorMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/email/activity/BannerController;-><init>(Landroid/content/Context;Landroid/widget/TextView;I)V

    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageListXL;->setProgressBarIndeterminate(Z)V

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageListXL;->setProgressBarIndeterminateVisibility(Z)V

    new-instance v1, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/email/activity/MessageListXL$ControllerResult;

    invoke-direct {v3, p0, v5}, Lcom/android/email/activity/MessageListXL$ControllerResult;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    invoke-direct {v1, v2, v3}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    iput-boolean v7, p0, Lcom/android/email/activity/MessageListXL;->mIsCreated:Z

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/combined/CombinedEmailManager;->getInstance(Landroid/content/Context;)Lcom/android/email/combined/CombinedEmailManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/combined/CombinedEmailManager;->getMessageFacade()Lcom/android/email/combined/MessageFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    invoke-virtual {v1, p0}, Lcom/android/email/combined/MessageFacade;->addListener(Landroid/content/Context;)V

    sget-object v1, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getPreViewLine()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mPreviewLineSize:I

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getTopLineInfoMode()I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->mTopLineMode:I

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getSplitMode()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMinSize:I

    return-void

    :cond_1
    sget v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    sput v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto/16 :goto_0

    :cond_2
    sget v1, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    if-eq v1, v4, :cond_3

    sget v1, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    sput v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto/16 :goto_0

    :cond_3
    sget v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointPort:I

    sput v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "prefer_split_point"

    sget v3, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->initFromIntent()V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0023

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "MessageListXL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMenuInflater().inflate failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->DPMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v4, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageListXLFragmentManager;->getUIAccountId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/email/Preferences;->setAccountId(J)V

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/email/Preferences;->setMailboxId(J)V

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "prefer_split_point"

    sget v6, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget v4, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "prefer_split_left_land_point"

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mIsCreated:Z

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v4, v5}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

    invoke-virtual {v4, v5}, Lcom/android/email/RefreshManager;->unregisterListener(Lcom/android/email/RefreshManager$Listener;)V

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mRefreshManager:Lcom/android/email/RefreshManager;

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/AccountSelectorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    :cond_1
    sput-object v7, Lcom/android/email/activity/MessageListXL;->mComposeNewLayout:Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagAdapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    :cond_2
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mCloseButton:Landroid/widget/ImageView;

    sput-object v7, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    sput-object v7, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mErrorMessageView:Landroid/widget/TextView;

    sput-object v7, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v4}, Lcom/android/email/activity/ThreePaneLayout;->destroy()V

    :cond_3
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->stopMessageOrderManager()V

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mMessageOrderManagerCallback:Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMailboxListFragmentCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMessageListFragmentCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMessageViewFragmentCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageListXLFragmentManager;->onDestroy()V

    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    invoke-virtual {v4, p0}, Lcom/android/email/combined/MessageFacade;->removeListener(Landroid/content/Context;)V

    :cond_5
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_8

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageListXL$ManagedDialog;

    iget-object v4, v1, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->isActive()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->dismiss()V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "prefer_split_left_port_point"

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_8
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onFolderFailed(Lcom/android/email/combined/EmailException;)V
    .locals 0

    return-void
.end method

.method public onFolderFinished(J)V
    .locals 0

    return-void
.end method

.method public onFolderStarted()V
    .locals 0

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onOpenSearch()V

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragment;->getMessageWebView()Lcom/android/email/activity/MessageWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->copySelectionSec()Z

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearSelection()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMailboxChanged(JJ)V
    .locals 0

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mIsMenuOpened:Z

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMessageFailed(Lcom/android/email/combined/EmailException;)V
    .locals 0

    return-void
.end method

.method public onMessageFinished(J)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/email/activity/MessageListXL$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/activity/MessageListXL$15;-><init>(Lcom/android/email/activity/MessageListXL;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onMessageStarted()V
    .locals 0

    return-void
.end method

.method public onMoveConversationAlwaysToMailboxSelected(JJ[J[Ljava/lang/String;I)V
    .locals 11

    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    new-instance v0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;-><init>(Lcom/android/email/activity/MessageListXL;Landroid/app/Activity;JJ[J[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    aget-wide v1, p5, v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v10

    if-eqz v10, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-wide v6, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/email/activity/MessageListXL;->ConversationMoveAlways(Ljava/util/Set;JJJ)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onCurrentMessageGone()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    goto :goto_0
.end method

.method public onMoveToMailboxSelected(JJ[JI)V
    .locals 10

    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    new-instance v0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;-><init>(Lcom/android/email/activity/MessageListXL;Landroid/app/Activity;JJ[J[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/android/email/activity/ActivityHelper;->moveMessages(Landroid/app/Activity;JJ[J)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onCurrentMessageGone()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    goto :goto_0
.end method

.method public onMoveToNewer()V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    return-void
.end method

.method public onMoveToOlder()V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    return-void
.end method

.method public onOpenSearch()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    goto :goto_0

    :cond_1
    sput-boolean v2, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->setLayoutAnim_slideSideToSide(Z)V

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateViewsVisibility()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/android/email/activity/MessageListXL;->sSearchMarginViewLand:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/android/email/activity/MessageListXL;->sSearchMarginListLand:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListXL;->onBackPressed(Z)Z

    move-result v5

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onAccountSettings()Z

    move-result v5

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    goto :goto_0

    :sswitch_3
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/activity/ActivityHelper;->clearDocumentsDB(Landroid/content/Context;Lcom/android/email/Controller;J)V

    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/EmailDocSearchQuery;->startActivity(Landroid/app/Activity;JJI)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f1002b4 -> :sswitch_1
        0x7f1002f4 -> :sswitch_2
        0x7f1002f6 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mIsMenuOpened:Z

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "Email"

    const-string v1, "MessageListXL onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/EmailUtility;->getUnreadTotalCount(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;I)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRefresh()V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v0, "EMAIL_PERFORMANCE"

    const-string v1, "onRefresh() START"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v4, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    new-instance v0, Lcom/android/email/activity/MessageListXL$RefreshTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageListXL$RefreshTask;-><init>(Landroid/content/Context;JJLcom/android/email/activity/MessageListXLFragmentManager;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v4, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    new-instance v0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListXL$RefreshAllTask;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessageListXLFragmentManager;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onRefreshFromFragment()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->checkITPolicy_AllowPOPIMAP()Z

    move-result v2

    if-nez v2, :cond_0

    const v1, 0x7f0803cf

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_2

    const v1, 0x7f080556

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    sput-boolean v0, Lcom/android/email/activity/MessageListXL;->doesMadUsersRefresh:Z

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onRefresh()V

    :cond_3
    :goto_2
    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListXL;->updatedMailbox_toast(Ljava/lang/Long;)V

    :goto_3
    move v0, v1

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->doesMadUsersRefresh:Z

    if-nez v0, :cond_3

    sput-boolean v1, Lcom/android/email/activity/MessageListXL;->doesMadUsersRefresh:Z

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onRefresh()V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v2

    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getInboxId(Landroid/content/Context;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListXL;->updatedMailbox_toast(Ljava/lang/Long;)V

    goto :goto_3
.end method

.method public onResultSearchRequested()Z
    .locals 5

    const/4 v4, 0x6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previous sort type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    sget v1, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    if-ne v1, v4, :cond_3

    sput v0, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    sget v1, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateOrderManager()V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    sget v1, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateOrderManager()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateOrderManager()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 12

    const/4 v4, 0x0

    const-wide/16 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v0, "Email"

    const-string v1, "MessageListXL onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->changeFontSize_preference()V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->changePreviewLineSize_preference()V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->changeTopLineMode_preference()V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->changeSplitMode_preference()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prefer_view_mode"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sTypeface:Landroid/graphics/Typeface;

    :cond_0
    sget v0, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    if-ne v0, v7, :cond_9

    const/4 v0, 0x7

    sput v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget v1, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->refreshFragment(I)V

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-eq v0, v7, :cond_1

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->refreshActionBarLayout()V

    :cond_2
    sget-boolean v0, Lcom/android/email/activity/Welcome;->fromWidget:Z

    if-eqz v0, :cond_3

    sput-boolean v8, Lcom/android/email/activity/Welcome;->fromWidget:Z

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onFragmentSetHasOptionMenu()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onResume()V

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    invoke-virtual {p0, v8}, Lcom/android/email/activity/MessageListXL;->controlAccountSpinnerVisible(Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onResultSearchRequested()Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FROM_SHORTCUT"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f080270

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_6
    const-string v0, "Email"

    const-string v1, "[toma] MessageListXL onResume ZERO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->finish()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACCOUNT_ID"

    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_2
    return-void

    :cond_9
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSharedPrefer:Landroid/content/SharedPreferences;

    const-string v1, "prefer_sort_type"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    goto/16 :goto_0

    :cond_a
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_b

    iget v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACCOUNT_ID"

    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v10

    if-eqz v2, :cond_b

    new-instance v2, Lcom/android/email/activity/MessageListXL$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/email/activity/MessageListXL$1;-><init>(Lcom/android/email/activity/MessageListXL;J)V

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXL$1;->start()V

    :cond_b
    :goto_3
    const/4 v0, -0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const-wide/high16 v0, 0x1000

    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    :cond_d
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onResume()V

    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_e
    iget v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-static {v0, v2, v3, v7}, Lcom/android/email/activity/setup/AccountSecurity;->actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v5

    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    const v2, 0x7f080128

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    const v3, 0x7f080129

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    const/4 v6, 0x5

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_3

    :cond_f
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    move-wide v3, v10

    move-wide v5, v10

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJZZ)V

    sput-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    goto/16 :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MessageListXL"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "MessageListXL"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onSearchRequested()Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-eq v0, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onOpenSearch()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onStart()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateMessageOrderManager()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sDateFormat:Ljava/text/DateFormat;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sDayFormat:Ljava/text/DateFormat;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sTimeFormat:Ljava/text/DateFormat;

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onStop()V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->stopMessageOrderManager()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :sswitch_0
    sget v2, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->playSoundEffect(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v2, v1}, Lcom/android/email/activity/CustomSpinner;->playSoundEffect(I)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :sswitch_3
    iget-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-eqz v2, :cond_0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000be -> :sswitch_1
        0x7f1000c1 -> :sswitch_3
        0x7f1000c5 -> :sswitch_2
        0x7f1000c8 -> :sswitch_0
    .end sparse-switch
.end method

.method public setAccountVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    return-void
.end method

.method public setActionBarCustomForMessageList()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_0
.end method

.method public setImeVisibility(Z)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f1000c7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public setLayoutAnim_slideSideToSide(Z)V
    .locals 14

    const/high16 v4, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v3, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/android/email/activity/MessageListXL$12;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListXL$12;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move-object v5, v0

    move v6, v1

    move v7, v4

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v2

    move v12, v1

    move v13, v2

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/android/email/activity/MessageListXL$13;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListXL$13;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLeftSplitType(I)V
    .locals 1

    sput p1, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    return-void
.end method

.method public setRightSplitToPreference(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefer_split_point"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setRightSplitType(I)V
    .locals 1

    sput p1, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    return-void
.end method

.method public setSearchSpinnerOption()V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->getSpinnerOptions()[Lcom/android/email/activity/setup/SpinnerOption;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    new-instance v1, Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04009b

    invoke-direct {v1, v2, v3, v0}, Lcom/android/email/activity/SearchTypeSelectorAdapter;-><init>(Landroid/content/Context;I[Lcom/android/email/activity/setup/SpinnerOption;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    const v2, 0x7f04009a

    invoke-virtual {v1, v2}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    sget v2, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public showDialog2(I)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListXL$ManagedDialog;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    invoke-static {p1, v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->newInstance(ILandroid/os/Bundle;)Lcom/android/email/activity/MessageListXL$MessageListDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    iget-object v0, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "MessageListXL"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "bundle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v2, v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public showDialog2(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListXL$ManagedDialog;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    invoke-static {p1, p2}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->newInstance(ILandroid/os/Bundle;)Lcom/android/email/activity/MessageListXL$MessageListDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    iget-object v0, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "MessageListXL"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "bundle"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v2, v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public showFollowUpFlag()V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->showFollowUpView()V

    return-void
.end method
