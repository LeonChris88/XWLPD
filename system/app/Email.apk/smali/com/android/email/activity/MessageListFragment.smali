.class public Lcom/android/email/activity/MessageListFragment;
.super Landroid/app/ListFragment;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/email/activity/MessagesAdapter$Callback;
.implements Lcom/android/email/activity/MoveMessageToDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageListFragment$PositionScroller;,
        Lcom/android/email/activity/MessageListFragment$ListViewPos;,
        Lcom/android/email/activity/MessageListFragment$State;,
        Lcom/android/email/activity/MessageListFragment$RefreshListener;,
        Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;,
        Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;,
        Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;,
        Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;,
        Lcom/android/email/activity/MessageListFragment$MessageOpenTask;,
        Lcom/android/email/activity/MessageListFragment$ShadowBuilder;,
        Lcom/android/email/activity/MessageListFragment$EmptyCallback;,
        Lcom/android/email/activity/MessageListFragment$Callback;
    }
.end annotation


# static fields
.field private static BACKGROUND_GREY:I

.field private static activity_CALLBACK:Lcom/android/email/activity/MessageListFragment$Callback;

.field private static countLoadComment:I

.field private static isCheckNetworkState:Z

.field private static isFavorite:Ljava/lang/Boolean;

.field private static isLoadComment:Z

.field public static mIsEasAccount:Z

.field public static mIsSevenAccount:Z

.field private static mLoadReserved:Z

.field public static mResumed:Z

.field private static sFooterProgressWidth:I

.field private static sListFooterViewHeight:I

.field private static sListFragmentPadding:I

.field private static sListPadding:I

.field private static sMessageListColorBgDarkDarkTheme:I

.field private static sMessageListColorBgDarkWhiteTheme:I

.field private static sMessageListColorBgLightDarkTheme:I

.field private static sMessageListColorBgLightWhiteTheme:I

.field private static sMessageListFooterTextColorDarkTheme:I

.field private static sMessageListFooterTextColorWhiteTheme:I

.field public static sms_selected:I


# instance fields
.field private final BOUNCE:I

.field private final BOUNCE_FLICK_DOWN:I

.field private final POST_DELAY_TIME:I

.field private final VIEW_HEIGHT:I

.field private bEnableFlickUp:Z

.field private bIsDown:Z

.field private bIsLoading:Z

.field private bIsRefreshing:Z

.field private bIsScrollingDown:Z

.field broadcastReceiver:Landroid/content/BroadcastReceiver;

.field composeLayout:Landroid/widget/LinearLayout;

.field composeLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field composeMenu:Landroid/view/MenuItem;

.field private count:I

.field ctx:Landroid/content/Context;

.field private hasMailboxToMove:Z

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mActivity:Landroid/app/Activity;

.field protected mBase:I

.field private mBgColor:I

.field private mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

.field private mContext:Landroid/content/Context;

.field protected mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

.field private mController:Lcom/android/email/Controller;

.field private mCurrentState:I

.field private mDoAutoRefresh:Z

.field private mExpandFactor:I

.field private mFirstPosition:I

.field private mFooterTextId:I

.field private mFooterTextPadding:I

.field protected mHeightLandscape:I

.field public final mHeightNoBarPortrait:I

.field public final mHeightPortrait:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsKeyDownEvent:Z

.field private mIsRefreshable:Z

.field private mIsSending:Z

.field private mIsVisible:Z

.field protected mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLastLoadedMailboxId:J

.field private mLastPos:I

.field private mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

.field public mLastSp:I

.field private mListAdapter:Lcom/android/email/activity/MessagesAdapter;

.field private mListFooterCountText:Landroid/widget/TextView;

.field private mListFooterMode:I

.field private mListFooterProgress:Landroid/view/View;

.field private mListFooterText:Landroid/widget/TextView;

.field private mListFooterView:Landroid/view/View;

.field private mListFooterView2:Landroid/view/View;

.field private mListFooterViewLine2:Landroid/widget/ImageView;

.field private mListFooterViewLine3:Landroid/widget/ImageView;

.field private mListFooterViewLineBottom:Landroid/widget/ImageView;

.field private mListFooterViewLineTop:Landroid/widget/ImageView;

.field private mListFooterViewText2:Landroid/widget/TextView;

.field private mListHeaderBottom:Landroid/view/View;

.field private mListHeaderBottomShadow:Landroid/view/View;

.field protected mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

.field private mListHeaderTop:Landroid/view/View;

.field private mListPanel:Landroid/view/View;

.field private mListShadow:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private final mListViewPos:Lcom/android/email/activity/MessageListFragment$ListViewPos;

.field private mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field private mMailboxId:J

.field private mMenuitemRefresh:Landroid/view/MenuItem;

.field private mMessageListColorBgDark:I

.field private mMessageListColorBgLight:I

.field private mMessageListFragment:Landroid/view/View;

.field private mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

.field private mMultiTouchEnabled:Z

.field private mNeedToFlickDownRefresh:Z

.field private mNoMessagesIcon:Landroid/view/View;

.field private mNoMessagesPanel:Landroid/widget/TextView;

.field private mOpenRequested:Z

.field private mOrientation:I

.field private mPrevRawY:I

.field private mPreviousCursor:Landroid/database/Cursor;

.field private mRefreshListCount:I

.field private mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

.field private mRefreshManager:Lcom/android/email/RefreshManager;

.field private mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScroller:Lcom/android/email/activity/MessageListFragment$PositionScroller;

.field private mSelectedMessageId:J

.field private mSelectionMode:Landroid/view/ActionMode;

.field private mShrinkFactor:I

.field private mTotalCount:I

.field private mTotalCountFromMailbox:I

.field private mUnReadCount:I

.field private mUseFlickDown:Z

.field private mUseFlickUp:Z

.field private final otherListner:Landroid/widget/AbsListView$OnScrollListener;

.field private touchandmove:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageListFragment;->activity_CALLBACK:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListFragment;->isFavorite:Ljava/lang/Boolean;

    sput-boolean v1, Lcom/android/email/activity/MessageListFragment;->mIsSevenAccount:Z

    sput v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    sput v2, Lcom/android/email/activity/MessageListFragment;->sListPadding:I

    sput v2, Lcom/android/email/activity/MessageListFragment;->sListFragmentPadding:I

    sput v1, Lcom/android/email/activity/MessageListFragment;->sFooterProgressWidth:I

    sput-boolean v3, Lcom/android/email/activity/MessageListFragment;->isLoadComment:Z

    sput v1, Lcom/android/email/activity/MessageListFragment;->countLoadComment:I

    sput-boolean v3, Lcom/android/email/activity/MessageListFragment;->isCheckNetworkState:Z

    const/4 v0, 0x2

    sput v0, Lcom/android/email/activity/MessageListFragment;->BACKGROUND_GREY:I

    sput-boolean v1, Lcom/android/email/activity/MessageListFragment;->mLoadReserved:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const-wide/16 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    sget-object v0, Lcom/android/email/activity/MessageListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    iput-wide v5, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    iput-wide v5, p0, Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J

    iput-wide v5, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    new-instance v0, Lcom/android/email/activity/MessageListFragment$RefreshListener;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageListFragment$RefreshListener;-><init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mNeedToFlickDownRefresh:Z

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I

    iput-boolean v4, p0, Lcom/android/email/activity/MessageListFragment;->mIsVisible:Z

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mUnReadCount:I

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCount:I

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextPadding:I

    iput-boolean v4, p0, Lcom/android/email/activity/MessageListFragment;->hasMailboxToMove:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsSending:Z

    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCountFromMailbox:I

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListCount:I

    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsKeyDownEvent:Z

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->POST_DELAY_TIME:I

    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickDown:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickUp:Z

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mCurrentState:I

    iput-boolean v4, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->bIsLoading:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->bEnableFlickUp:Z

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    const/16 v0, 0x60

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->VIEW_HEIGHT:I

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->BOUNCE:I

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mInflater:Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    iput-boolean v4, p0, Lcom/android/email/activity/MessageListFragment;->touchandmove:Z

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    const/16 v0, 0x15e

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mHeightLandscape:I

    const/16 v0, 0x286

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mBase:I

    const/16 v0, 0x286

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mHeightPortrait:I

    const/16 v0, 0x2ac

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mHeightNoBarPortrait:I

    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->bIsDown:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->bIsScrollingDown:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mLastPos:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->BOUNCE_FLICK_DOWN:I

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mFirstPosition:I

    new-instance v0, Lcom/android/email/activity/MessageListFragment$ListViewPos;

    invoke-direct {v0}, Lcom/android/email/activity/MessageListFragment$ListViewPos;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListViewPos:Lcom/android/email/activity/MessageListFragment$ListViewPos;

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mScroller:Lcom/android/email/activity/MessageListFragment$PositionScroller;

    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mLastSp:I

    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mBgColor:I

    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->count:I

    new-instance v0, Lcom/android/email/activity/MessageListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$1;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/email/activity/MessageListFragment$13;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$13;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->otherListner:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method private IsEAS()Z
    .locals 9

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    const-string v6, "eas"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->count:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageListFragment;[JZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageListFragment;->onSetMessageRead([JZJ)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->count:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageListFragment;[JZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageListFragment;->onSetMessageFavorite([JZJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageListFragment;[JIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageListFragment;->onSetMessageFollowUpFlag([JIJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageListFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/email/activity/MessageListFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/email/activity/MessageListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListCount:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListCount:I

    return p1
.end method

.method static synthetic access$1808(Lcom/android/email/activity/MessageListFragment;)I
    .locals 2

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCountFromMailbox:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageListFragment;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mPreviousCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/email/activity/MessageListFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mPreviousCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/utility/Utility$ListStateSaver;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mUnReadCount:I

    return p1
.end method

.method static synthetic access$2702(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCount:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->autoRefreshStaleMailbox()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->addFooterView()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->showSendCommandIfNecessary()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->showNoMessageTextIfNecessary()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageListFragment;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment;->highlightSelectedMessage(ZI)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageListFragment;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/email/activity/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/email/activity/MessageListFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->IsEAS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onConversationIgnore()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onConversationMoveAlways()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/email/activity/MessageListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->hasMailboxToMove:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageListFragment;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment;->onForward(J)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/email/activity/MessageListFragment;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment;->updateProgressIcon(J)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateListFooter()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/email/activity/MessageListFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->checkTimeOut(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mFirstPosition:I

    return v0
.end method

.method static synthetic access$4902(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mFirstPosition:I

    return p1
.end method

.method static synthetic access$5000(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/MessageListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mNeedToFlickDownRefresh:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mCurrentState:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mCurrentState:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/email/activity/MessageListFragment;)Landroid/view/ScaleGestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$ListViewPos;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListViewPos:Lcom/android/email/activity/MessageListFragment$ListViewPos;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickDown:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsDown:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickUp:Z

    return v0
.end method

.method static synthetic access$5800(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mLastPos:I

    return v0
.end method

.method static synthetic access$5802(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mLastPos:I

    return p1
.end method

.method static synthetic access$5900(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsScrollingDown:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/android/email/activity/MessageListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->bIsScrollingDown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I

    return v0
.end method

.method static synthetic access$6000(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsLoading:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I

    return p1
.end method

.method static synthetic access$608(Lcom/android/email/activity/MessageListFragment;)I
    .locals 2

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I

    return v0
.end method

.method static synthetic access$6100(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bEnableFlickUp:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/email/activity/MessageListFragment;)I
    .locals 2

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    return-object v0
.end method

.method private addFooterView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->determineFooterMode()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v1, 0x7f10004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v1, 0x7f1001ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v1, 0x7f1001bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mBgColor:I

    sget v1, Lcom/android/email/activity/MessageListFragment;->BACKGROUND_GREY:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorDarkTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorDarkTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextPadding:I

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateListFooter()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorWhiteTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorWhiteTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private addHeaderView()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderTop:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method private autoRefreshStaleMailbox()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->IsEAS()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mDoAutoRefresh:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    if-eqz v2, :cond_0

    iput-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->mDoAutoRefresh:Z

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/RefreshManager;->isMailboxStale(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->IsEAS()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageListFragment;->onRefresh(Z)V

    goto :goto_0
.end method

.method private checkITPolicy_AllowPOPIMAP()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkTimeOut(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    sget v0, Lcom/android/email/activity/MessageListFragment;->countLoadComment:I

    const-string v1, "MessageListFragment"

    const-string v2, "checkTimeOut()"

    const-string v3, "Start Timer"

    invoke-static {v1, v2, v3}, Lcom/android/email/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v1, Lcom/android/email/activity/MessageListFragment;->isCheckNetworkState:Z

    if-ne v1, v4, :cond_2

    sget v1, Lcom/android/email/activity/MessageListFragment;->countLoadComment:I

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->isLoadComment:Z

    if-nez v0, :cond_1

    const-string v0, "MessageListFragment"

    const-string v1, "checkTimeOut()"

    const-string v2, "load fail"

    invoke-static {v0, v1, v2}, Lcom/android/email/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/email/activity/MessageListFragment;->isLoadComment:Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v1, "MessageListFragment"

    const-string v2, "checkTimeOut()"

    const-string v3, "InterruptedException"

    invoke-static {v1, v2, v3}, Lcom/android/email/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "MessageListFragment"

    const-string v1, "checkTimeOut()"

    const-string v2, "load success"

    invoke-static {v0, v1, v2}, Lcom/android/email/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/email/activity/MessageListFragment;->isLoadComment:Z

    goto :goto_1

    :cond_2
    const-string v0, "MessageListFragment"

    const-string v1, "checkTimeOut()"

    const-string v2, "Network is not connect."

    invoke-static {v0, v1, v2}, Lcom/android/email/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/email/activity/MessageListFragment;->isCheckNetworkState:Z

    goto :goto_1
.end method

.method private controlFooterVisibility(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/android/email/activity/MessageListFragment;->sListFooterViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private determineFooterMode()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(J)I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsSevenAccount:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isOutbox()Z

    move-result v0

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_0

    :cond_4
    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_0

    :cond_5
    iput v4, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isOutbox()Z

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_0

    :cond_7
    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_0
.end method

.method private disableHeader()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->disableHeader()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->disableShadow()V

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0xe

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private doFooterClick()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0803cf

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onLoadMoreMessages()V

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onSearchOnServer()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    const-string v0, "k1001.kim"

    const-string v1, "this is 03 account"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f080541

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onSearchOnServer()V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onSendPendingMessages()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private enableHeader()V
    .locals 4

    const/16 v3, 0xe

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->setLastUpdateTime()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->enableHeader()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->enableShadow()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->disableShadow()V

    goto :goto_0
.end method

.method private finishSelectionMode()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClosedByUser:Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public static getStartTimeForCreate()Landroid/text/format/Time;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    invoke-virtual {v3, v11}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v6, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v5

    if-ne v2, v5, :cond_0

    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    iget v6, v4, Landroid/text/format/Time;->hour:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroid/text/format/Time;->hour:I

    :goto_0
    iput v10, v3, Landroid/text/format/Time;->minute:I

    iput v10, v3, Landroid/text/format/Time;->second:I

    iput-boolean v10, v3, Landroid/text/format/Time;->allDay:Z

    invoke-virtual {v3, v11}, Landroid/text/format/Time;->normalize(Z)J

    return-object v3

    :cond_0
    const/16 v6, 0x8

    iput v6, v3, Landroid/text/format/Time;->hour:I

    goto :goto_0
.end method

.method private highlightSelectedMessage(ZI)V
    .locals 6

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->clearChoices()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter;->getRealPositionForCurrentId(J)I

    move-result v1

    if-eqz p1, :cond_4

    sget v2, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v4, v1, 0x3

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    :cond_1
    :try_start_1
    sget v2, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NEWER:I

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v4, v1, 0x2

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_2
    sget v2, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_OLDER:I

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v4, v1, 0x4

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private initScaleGestureDetector()V
    .locals 3

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/android/email/activity/MessageListFragment$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageListFragment$3;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method private isProgressActive(J)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private measureView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private noImagelayout()V
    .locals 7

    const v6, 0x7f0c013e

    const v5, 0x7f0c00f2

    const/16 v3, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesIcon:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private onConversationIgnore()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/EmailUtility;->toPrimitiveStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageListFragment;->onConversationIgnore(Ljava/util/Set;J)V

    return-void
.end method

.method private onConversationIgnore(Ljava/util/Set;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    iget-wide v4, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->moveConversationIgnore(JLjava/lang/String;J)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    return-void
.end method

.method private onConversationMoveAlways()V
    .locals 4

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/EmailUtility;->toPrimitiveStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    const/4 v3, 0x2

    invoke-interface {v2, v1, v0, v3}, Lcom/android/email/activity/MessageListFragment$Callback;->onConversationMoveAlways([J[Ljava/lang/String;I)V

    return-void
.end method

.method private onConversationMoveAlways(Ljava/util/Set;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
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

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mMailboxKey:J

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v8, 0x0

    move-wide v6, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller;->moveConversationAlways(JLjava/lang/String;JJI)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private onDeleteOneItem(J)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080058

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080536

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageListFragment$9;

    invoke-direct {v3, p0, v0}, Lcom/android/email/activity/MessageListFragment$9;-><init>(Lcom/android/email/activity/MessageListFragment;[J)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f080043

    new-instance v2, Lcom/android/email/activity/MessageListFragment$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageListFragment$10;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private onForward(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f080596

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListFragment$Callback;->onForward(J)V

    goto :goto_0
.end method

.method private onLoadMoreMessages()V
    .locals 5

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0803cf

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/email/RefreshManager;->loadMoreMessages(JJ)Z

    goto :goto_0
.end method

.method private onMessageMarkAsReadUnread(ZJ)V
    .locals 3

    const/4 v1, 0x1

    new-array v0, v1, [J

    const/4 v1, 0x0

    aput-wide p2, v0, v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/email/activity/MessageListFragment;->onSetMessageRead([JZJ)V

    return-void
.end method

.method private onMessageOpen(JJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    new-instance v0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;-><init>(Lcom/android/email/activity/MessageListFragment;JJ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MessageListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMessageOpenTask.execute(); failed once : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onMultiDelete(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080058

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080536

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageListFragment$7;

    invoke-direct {v3, p0, v0}, Lcom/android/email/activity/MessageListFragment$7;-><init>(Lcom/android/email/activity/MessageListFragment;[J)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f080043

    new-instance v2, Lcom/android/email/activity/MessageListFragment$8;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageListFragment$8;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private onMultiToggleFavorite(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/email/activity/MessageListFragment$5;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$5;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageListFragment;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)I

    return-void
.end method

.method private onMultiToggleFollowUpFlag(Ljava/util/Set;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/android/email/activity/MessageListFragment$6;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$6;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/email/activity/MessageListFragment;->toggleIntMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;I)I

    return-void
.end method

.method private onMultiToggleRead(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/email/activity/MessageListFragment$4;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$4;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageListFragment;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)I

    return-void
.end method

.method private onReply(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f080596

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListFragment$Callback;->onReply(J)V

    goto :goto_0
.end method

.method private onReplyAll(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f080596

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListFragment$Callback;->onReplyAll(J)V

    goto :goto_0
.end method

.method private onSearchOnServer()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v2

    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageListFragment;->SearchOnServer(Landroid/app/Activity;JJ)V

    :cond_0
    return-void
.end method

.method private onSetMessageFavorite([JZJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/Controller;->setMessageFavorite([JZJ)Landroid/os/AsyncTask;

    return-void
.end method

.method private onSetMessageFollowUpFlag([JIJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/Controller;->setMessageFollowUpFlag([JIJ)Landroid/os/AsyncTask;

    return-void
.end method

.method private onSetMessageRead([JZJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/Controller;->setMessageRead([JZJ)Landroid/os/AsyncTask;

    return-void
.end method

.method static resetNewMessageCount(Landroid/content/Context;JJ)V
    .locals 4

    const-wide/16 v2, -0x1

    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    invoke-static {p0, v2, v3}, Lcom/android/email/service/MailService;->resetNewMessageCount(Landroid/content/Context;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    cmp-long v0, p3, v2

    if-eqz v0, :cond_0

    invoke-static {p0, p3, p4}, Lcom/android/email/service/MailService;->resetNewMessageCount(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public static setFavoriteFromWidget(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/android/email/activity/MessageListFragment;->isFavorite:Ljava/lang/Boolean;

    return-void
.end method

.method private setLastUpdateTime()V
    .locals 14

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "syncTime"

    aput-object v0, v2, v13

    const-string v0, "_id=?"

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v11, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v13

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0, v5}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setLastUpdate(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0, v8, v9, v10}, Lcom/android/email/activity/MessageListFragment$Callback;->setTimeFormat(Ljava/text/DateFormat;Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setLastUpdate(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-wide v0, v6

    goto :goto_0
.end method

.method public static setLoadReserved()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/MessageListFragment;->mLoadReserved:Z

    return-void
.end method

.method private showNoMessageText(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesIcon:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private showNoMessageTextIfNecessary()V
    .locals 2

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->showNoMessageText(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSendCommand(Z)V
    .locals 0

    return-void
.end method

.method private showSendCommandIfNecessary()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isOutbox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->showSendCommand(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startLoading()V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mOpenRequested:Z

    sput-boolean v2, Lcom/android/email/activity/MessageListFragment;->mLoadReserved:Z

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageListFragment;->showNoMessageText(Z)V

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListFragment;->setListShown(Z)V

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageListFragment;->showSendCommand(Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->stopLoaders()V

    :cond_0
    const/4 v2, 0x0

    new-instance v3, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;

    invoke-direct {v3, p0, v1}, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Z)V

    invoke-virtual {v0, v6, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method private stopLoaders()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method private testIntMultiple(Ljava/util/Set;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;II)Z"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v4, -0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eq v4, p3, :cond_2

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private testMultiple(Ljava/util/Set;ILjava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v4, -0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private testMultiple(Ljava/util/Set;IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;IZ)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v5}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    const/4 v5, -0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz p3, :cond_3

    move v5, v3

    :goto_1
    if-ne v6, v5, :cond_2

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method private toggleIntMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;",
            "I)I"
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v8}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    const/4 v0, 0x0

    move v6, p3

    const/4 v7, 0x0

    const/4 v8, -0x1

    :try_start_0
    invoke-interface {v1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v3, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v5

    invoke-interface {p2, v5, v1, v6}, Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;->setIntField([JLandroid/database/Cursor;I)Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->refreshList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private toggleMultiSelection(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->toggleMultiSelected(IZ)V

    return-void
.end method

.method private toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;",
            ")I"
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v10}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v8, 0x0

    const/4 v10, -0x1

    :try_start_0
    invoke-interface {v2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v1, 0x1

    invoke-interface {p2, v4, v5, v2}, Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;->getField(JLandroid/database/Cursor;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v0, 0x0

    :cond_3
    if-eqz v1, :cond_0

    if-nez v0, :cond_4

    const/4 v7, 0x1

    :goto_1
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v6

    invoke-interface {p2, v6, v2, v7}, Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;->setField([JLandroid/database/Cursor;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    move v7, v9

    goto :goto_1
.end method

.method private toggleSelection(Lcom/android/email/activity/MessageListItem;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->toggleSelected(Lcom/android/email/activity/MessageListItem;I)V

    return-void
.end method

.method private updateListFooter()V
    .locals 8

    const v3, 0x7f0802fa

    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextId:I

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCount:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v6, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v0, v6, v7}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v3

    if-eqz v3, :cond_2

    const v0, 0x7f0800b3

    :goto_2
    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextId:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    if-eqz v3, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0800b5

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v6, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v0, v6, v7}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_4
    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextId:I

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_4

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsSending:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v6, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v0, v6, v7}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v3, v4

    :goto_5
    if-eqz v3, :cond_8

    const v0, 0x7f0800b7

    :goto_6
    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextId:I

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    if-eqz v3, :cond_9

    move v0, v1

    :goto_7
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    move v3, v1

    goto :goto_5

    :cond_8
    const v0, 0x7f0801be

    goto :goto_6

    :cond_9
    move v0, v2

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateProgressIcon(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment;->isProgressActive(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    const v1, 0x7f04003d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateSelectionModeView()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    return-void
.end method


# virtual methods
.method public SearchOnServer(Landroid/app/Activity;JJ)V
    .locals 7

    const/4 v5, 0x1

    invoke-static {p2, p3}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(J)I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    move-wide v1, p2

    move-wide v3, p4

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/CustomizeDate;->startActivity(Landroid/app/Activity;JJILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSelectedSearchType()I

    move-result v2

    if-ne v2, v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SUBJECT {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v1, p4, p5, v0}, Lcom/android/email/Controller;->searchOnServer(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSelectedSearchType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " TO {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " FROM {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " TEXT {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public clearContent()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->stopLoaders()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->initAdapter()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->setListShownNoAnimation(Z)V

    return-void
.end method

.method public clearSelection()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->unCheckAllSubTitleCheckBox()V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V

    return-void
.end method

.method public doAutoRefresh()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mDoAutoRefresh:Z

    return-void
.end method

.method public doesSelectionContainFlaggedMessage(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1, p1}, Lcom/android/email/activity/MessageListFragment;->testIntMultiple(Ljava/util/Set;II)Z

    move-result v0

    return v0
.end method

.method public doesSelectionContainNonStarredMessage()Z
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->testMultiple(Ljava/util/Set;IZ)Z

    move-result v0

    return v0
.end method

.method public doesSelectionContainOnlyConversation()Z
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->testMultiple(Ljava/util/Set;ILjava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public doesSelectionContainReadMessage()Z
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->testMultiple(Ljava/util/Set;IZ)Z

    move-result v0

    return v0
.end method

.method public doseSelectionContainFlaggedMessage()I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainFlaggedMessage(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainFlaggedMessage(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainFlaggedMessage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method public dropItemsFinish()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    return-void
.end method

.method public getAccountId()J
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    goto :goto_0
.end method

.method public getMailboxId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    return-wide v0
.end method

.method public getSelectedCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/email/activity/MessageListFragment$State;
    .locals 2

    new-instance v0, Lcom/android/email/activity/MessageListFragment$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListFragment$State;-><init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V

    return-object v0
.end method

.method public initListAdapter()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->initAdapter()V

    :cond_0
    return-void
.end method

.method public isInSelectionMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMagicMailbox()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutbox()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v0

    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->loadState(Landroid/os/Bundle;)V

    const-string v0, "MessageListFragment.state.listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    const-string v0, "messageListFragment.state.listState.selected_message_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    const-string v0, "MessageListFragment.state.sortType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->setSortType(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f0201ec

    const/4 v6, 0x1

    const v5, 0x7f0201eb

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    const v1, 0x7f020237

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    sget v0, Lcom/android/email/activity/MessageListFragment;->sListPadding:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListFragment;->sListPadding:I

    :cond_0
    new-instance v0, Lcom/android/email/activity/MessagesAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/email/activity/MessagesAdapter;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessagesAdapter$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007c

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v1, 0x7f1001b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineTop:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v1, 0x7f1001bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007d

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007e

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    const v1, 0x7f1001c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    const v1, 0x7f1001be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mBgColor:I

    sget v1, Lcom/android/email/activity/MessageListFragment;->BACKGROUND_GREY:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorDarkTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    const v1, 0x7f1001bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    const v1, 0x7f1001bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->initScaleGestureDetector()V

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListFragment;->loadState(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->ctx:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/email/activity/MessageListFragment$PositionScroller;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$PositionScroller;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mScroller:Lcom/android/email/activity/MessageListFragment$PositionScroller;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderTop:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderTop:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderTop:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderTop:Landroid/view/View;

    const-string v1, "header"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/email/activity/ListBouncingHeaderLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/android/email/activity/MessageListFragment;->mBgColor:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/ListBouncingHeaderLayout;-><init>(Landroid/app/Activity;Landroid/view/LayoutInflater;I)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    const-string v1, "header"

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->addHeaderView()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->measureView(Landroid/view/View;)V

    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->setEmptyMessage(I)V

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageListFragment;->useFlickDown(Z)V

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListFragment;->useFlickUp(Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDisableFooter()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageListFragment;->setListener(Landroid/view/View$OnCreateContextMenuListener;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    :cond_2
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mBgColor:I

    sget v1, Lcom/android/email/activity/MessageListFragment;->BACKGROUND_GREY:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineBottom:Landroid/widget/ImageView;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorWhiteTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public onAdapterFavoriteChanged(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 4

    const/4 v1, 0x1

    new-array v0, v1, [J

    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    aput-wide v2, v0, v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/email/activity/MessageListFragment;->onSetMessageFavorite([JZJ)V

    return-void
.end method

.method public onAdapterFollowUpChanged(Lcom/android/email/activity/MessageListItem;I)V
    .locals 4

    const/4 v1, 0x1

    new-array v0, v1, [J

    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    aput-wide v2, v0, v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/email/activity/MessageListFragment;->onSetMessageFollowUpFlag([JIJ)V

    return-void
.end method

.method public onAdapterSelectedAllChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    return-void
.end method

.method public onAdapterSelectedChanged(Lcom/android/email/activity/MessageListItem;ZI)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/email/activity/MessageListItem;->isSms:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    sget v0, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    return-void

    :cond_1
    sget v0, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    goto :goto_0
.end method

.method public onBackPress(Z)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v0

    if-ne v0, v11, :cond_0

    move v0, v10

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->getListFragmentManager()Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    iget-wide v1, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    goto :goto_0

    :catch_0
    move-exception v8

    move v0, v10

    goto :goto_0

    :cond_1
    move v0, v10

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->noImagelayout()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x0

    const-string v0, "Email"

    const-string v1, "MessageListFragment onContextItemSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x7f1002e7

    if-eq v0, v1, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/android/email/activity/MessageListItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageListFragment;->onDeleteOneItem(J)V

    goto :goto_0

    :pswitch_1
    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageListFragment;->onReply(J)V

    goto :goto_0

    :pswitch_2
    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageListFragment;->onReplyAll(J)V

    goto :goto_0

    :pswitch_3
    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageListFragment;->onForward(J)V

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x1

    iget-wide v2, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageListFragment;->onMessageMarkAsReadUnread(ZJ)V

    goto :goto_0

    :pswitch_5
    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v4, v0, v1}, Lcom/android/email/activity/MessageListFragment;->onMessageMarkAsReadUnread(ZJ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1002e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v2, "Email"

    const-string v3, "MessageListFragment onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    invoke-virtual {v2, v3}, Lcom/android/email/RefreshManager;->registerListener(Lcom/android/email/RefreshManager$Listener;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EMAILSEARCH_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget v2, Lcom/android/email/activity/MessageListFragment;->sListFragmentPadding:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sListFragmentPadding:I

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sFooterProgressWidth:I

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgLightWhiteTheme:I

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgDarkWhiteTheme:I

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorWhiteTheme:I

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgLightDarkTheme:I

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgDarkDarkTheme:I

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorDarkTheme:I

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getBGColor()I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mBgColor:I

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/email/activity/MessageListFragment;->mBgColor:I

    sget v3, Lcom/android/email/activity/MessageListFragment;->BACKGROUND_GREY:I

    if-ne v2, v3, :cond_1

    sget v2, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgLightDarkTheme:I

    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgLight:I

    sget v2, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgDarkDarkTheme:I

    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgDark:I

    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sListFooterViewHeight:I

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    return-void

    :cond_1
    sget v2, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgLightWhiteTheme:I

    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgLight:I

    sget v2, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgDarkWhiteTheme:I

    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgDark:I

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10

    const v9, 0x7f1002ed

    const v7, 0x7f1002ec

    const v3, 0x7f0801e9

    const/4 v2, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    const-string v0, "Email"

    const-string v1, "MessageListFragment onCreateContextMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/email/activity/MessageListItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/android/email/activity/MessageListItem;

    const-string v1, " "

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTopLineMode()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    :goto_1
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v3, 0x7f0f001e

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v3, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->toFriendly1([Lcom/android/emailcommon/mail/Address;)I

    move-result v3

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->toFriendly1([Lcom/android/emailcommon/mail/Address;)I

    move-result v1

    add-int/2addr v1, v3

    :goto_2
    const v3, 0x7f1002e9

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f1002ea

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f1002eb

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f1002e7

    invoke-interface {p1, v6, v8}, Landroid/view/ContextMenu;->setGroupEnabled(IZ)V

    const v6, 0x7f1002e8

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-le v1, v8, :cond_a

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_3
    iget-boolean v1, v0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v1, :cond_b

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_4
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v1

    iget-wide v6, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-virtual {v1, v6, v7}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v0

    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->isReplyBlock()Z

    move-result v1

    if-ne v1, v8, :cond_3

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->isReplyAllBlock()Z

    move-result v1

    if-ne v1, v8, :cond_5

    :cond_4
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_5
    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->isForwardBlock()Z

    move-result v0

    if-ne v0, v8, :cond_0

    :cond_6
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_8
    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_a
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_b
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_c
    move v1, v2

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const/16 v6, 0x10

    const/4 v5, 0x0

    const v0, 0x7f0f001f

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const-string v0, "Email"

    const-string v1, "MessageListFragment onCreateOptionsMenu1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1002ae

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    :cond_0
    const/16 v2, 0xfa

    invoke-virtual {v1, v6, v5, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MessageListFragment$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListFragment$2;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_2
    const/16 v2, 0x2a

    invoke-virtual {v1, v6, v5, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x26

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_4
    const/16 v2, 0xe

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f04007b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    const v1, 0x7f1001b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    const v1, 0x7f1001b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    const v1, 0x7f1001b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    const v1, 0x7f1001b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesIcon:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    return-object v0
.end method

.method public onDeselectAll()V
    .locals 2

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->unCheckAllSubTitleCheckBox()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->clearBlockCounter()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListFragment;->unregisterForContextMenu(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    invoke-virtual {v1, v2}, Lcom/android/email/RefreshManager;->unregisterListener(Lcom/android/email/RefreshManager$Listener;)V

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesIcon:Landroid/view/View;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;

    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->stopLoaders()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->initAdapter()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mPreviousCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mPreviousCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mPreviousCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mPreviousCursor:Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDisableFooter()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bEnableFlickUp:Z

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onEnableFooter()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bEnableFlickUp:Z

    return-void
.end method

.method public onFlickDown()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Lcom/android/email/activity/MessageListFragment;->bIsLoading:Z

    iput-boolean v3, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->enableHeader()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    const/16 v1, 0xe

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->displayUpdate()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDisableFooter()V

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListFragment;->setSelection(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    const-string v0, "MessageListFragment"

    const-string v1, "onFlickDown() FlickDown is fired!!"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/email/activity/MessageListFragment;->countLoadComment:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/email/activity/MessageListFragment;->countLoadComment:I

    sput-boolean v2, Lcom/android/email/activity/MessageListFragment;->isLoadComment:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/email/activity/MessageListFragment$11;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListFragment$11;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListFragment;->onRefresh(Z)V

    return-void
.end method

.method public onFlickDownComplete(Z)V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->disableHeader()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mLastSp:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ListBouncingHeaderLayout;->displayRelease(I)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->controlFooterVisibility(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsLoading:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    if-ne p1, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onEnableFooter()V

    :goto_0
    const-string v1, "MessageListFragment"

    const-string v2, "onRefreshCompleted()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/email/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDisableFooter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onFlickUp()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsLoading:Z

    const-string v0, "MessageListFragment"

    const-string v1, "onFlickUp()"

    const-string v2, "Flick Up is fired!!"

    invoke-static {v0, v1, v2}, Lcom/android/email/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialogCancelled:Z

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/android/email/activity/MessageListItem;

    iget-boolean v0, p2, Lcom/android/email/activity/MessageListItem;->isSms:Z

    sput-boolean v0, Lcom/android/email/activity/MessageView;->isSms:Z

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p2, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    iget-wide v2, p2, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/email/activity/MessageListFragment;->onMessageOpen(JJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/android/email/activity/MessageListSubTitleItem;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget v1, p2, Lcom/android/email/activity/MessageListSubTitleItem;->mSubTitleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessagesAdapter;->updateArrow(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->doFooterClick()V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p2, Lcom/android/email/activity/MessageListItem;

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->canMoveFrom(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsKeyDownEvent:Z

    if-nez v1, :cond_0

    iget-boolean v0, p2, Lcom/android/email/activity/MessageListItem;->isSms:Z

    sput-boolean v0, Lcom/android/email/activity/MessageView;->isSms:Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p2}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p2, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    invoke-direct {p0, p2, v0}, Lcom/android/email/activity/MessageListFragment;->toggleSelection(Lcom/android/email/activity/MessageListItem;I)V

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.email.MESSAGE_LIST_ITEMS"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    iget-wide v3, p2, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "mailboxId"

    iget-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p2, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    new-instance v3, Landroid/content/ClipData$Item;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {p2, v0}, Lcom/android/email/activity/MessageListItem;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2, p0}, Lcom/android/email/activity/MessageListItem;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/16 v5, 0x3e

    const/16 v4, 0x14

    const/16 v3, 0x13

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v2

    :goto_1
    return v0

    :pswitch_0
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mIsKeyDownEvent:Z

    if-ne p2, v5, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/16 v0, 0x70

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const-class v2, Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v0, Lcom/android/email/activity/MessageListItem;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-wide v3, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageListFragment;->onMultiDelete(Ljava/util/Set;)V

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    if-eq p2, v4, :cond_4

    const/16 v0, 0x16

    if-ne p2, v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    :cond_5
    if-ne p2, v3, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_6
    if-ne p2, v4, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderTop:Landroid/view/View;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    if-ne v0, v1, :cond_0

    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    :pswitch_1
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsKeyDownEvent:Z

    if-ne p2, v5, :cond_a

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    const-class v2, Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    check-cast v0, Lcom/android/email/activity/MessageListItem;

    iget v2, v0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    invoke-direct {p0, v0, v2}, Lcom/android/email/activity/MessageListFragment;->toggleSelection(Lcom/android/email/activity/MessageListItem;I)V

    :cond_8
    :goto_2
    move v0, v1

    goto/16 :goto_1

    :cond_9
    const-class v2, Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    check-cast v0, Lcom/android/email/activity/MessageListSubTitleItem;

    iget v2, v0, Lcom/android/email/activity/MessageListSubTitleItem;->mSubTitleIndex:I

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListSubTitleItem;->mIsChecked:Z

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageListFragment;->toggleMultiSelection(IZ)V

    goto :goto_2

    :cond_a
    if-ne p2, v3, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getFirstListItem()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMoveConversationAlwaysToMailboxSelected(JJ[J[Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/android/email/activity/MessageListFragment;->onConversationMoveAlways(Ljava/util/Set;J)V

    return-void
.end method

.method public onMoveToMailboxSelected(JJ[JI)V
    .locals 0

    return-void
.end method

.method public onMultiDelete()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->onMultiDelete(Ljava/util/Set;)V

    return-void
.end method

.method public onMultiFollowUpFlag(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleFollowUpFlag(Ljava/util/Set;I)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    return-void
.end method

.method public onMultiMove()V
    .locals 2

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v1, v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onMoveMessages([J)V

    return-void
.end method

.method public onMultiToggleFavorite()V
    .locals 1

    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageListFragment;->activity_CALLBACK:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onFollowUpViewShown()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleFavorite(Ljava/util/Set;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    goto :goto_0
.end method

.method public onMultiToggleRead()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleRead(Ljava/util/Set;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v0, v2

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onComposeFromMessageListFragment()V

    move v0, v1

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onRefreshFromMessageListFragment()V

    move v0, v1

    goto :goto_0

    :sswitch_2
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onMailBoxList()V

    move v0, v1

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onSearchFromMessageListFragment()V

    move v0, v1

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    move v0, v1

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    move v0, v1

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/android/email/activity/MessageListFragment;->getStartTimeForCreate()Landroid/text/format/Time;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    const-wide/32 v5, 0x36ee80

    add-long/2addr v5, v3

    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.EDIT"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "beginTime"

    invoke-virtual {v0, v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "endTime"

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "isAllday"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    :sswitch_7
    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v0, v2, v3}, Lcom/android/email/activity/setup/MailboxSettings;->start(Landroid/app/Activity;J)V

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1002ae -> :sswitch_0
        0x7f1002d1 -> :sswitch_7
        0x7f1002d5 -> :sswitch_1
        0x7f1002ee -> :sswitch_3
        0x7f1002ef -> :sswitch_2
        0x7f1002f1 -> :sswitch_4
        0x7f1002f3 -> :sswitch_5
        0x7f1002f5 -> :sswitch_6
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    const-string v0, "Email"

    const-string v1, "MessageListFragment onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    new-instance v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10

    const v4, 0x7f1002ee

    const v9, 0x7f1002f0

    const v8, 0x7f1002f2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const-string v0, "Email"

    const-string v3, "MessageListFragment onPrepareOptionsMenu"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1002ae

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v0, 0x7f1002d5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f1002f6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->IsEAS()Z

    move-result v3

    if-eqz v3, :cond_a

    const-wide/16 v3, 0x0

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v6, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    :cond_0
    const-wide/high16 v6, 0x4028

    cmpg-double v3, v3, v6

    if-gez v3, :cond_9

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-direct {p0, v3, v4}, Lcom/android/email/activity/MessageListFragment;->updateProgressIcon(J)V

    :cond_1
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getViewMode()I

    move-result v0

    if-ne v0, v1, :cond_e

    invoke-interface {p1, v9, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1, v8, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    :goto_3
    sget-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v0, :cond_2

    invoke-interface {p1, v9}, Landroid/view/Menu;->removeGroup(I)V

    invoke-interface {p1, v8}, Landroid/view/Menu;->removeGroup(I)V

    :cond_2
    const v0, 0x7f1002f5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->IsEAS()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_4
    const v0, 0x7f1002d1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    sget-boolean v3, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-nez v3, :cond_11

    :cond_3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    :goto_5
    const v0, 0x7f1002e5

    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f100306

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f1002c8

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessagesAdapter;->isReplyBlock()Z

    move-result v4

    if-ne v4, v1, :cond_5

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->isReplyAllBlock()Z

    move-result v0

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->isForwardBlock()Z

    move-result v0

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_7
    :goto_6
    return-void

    :cond_8
    move v0, v2

    goto/16 :goto_0

    :cond_9
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_a
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_b
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_c
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_d
    invoke-interface {p1, v8, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1, v9, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    invoke-interface {p1, v8, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto/16 :goto_3

    :cond_f
    invoke-interface {p1, v9, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    invoke-interface {p1, v8, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto/16 :goto_3

    :cond_10
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_11
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_12

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_7
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_13

    const v0, 0x7f1002ee

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :cond_12
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    :cond_13
    const v0, 0x7f1002ee

    :try_start_2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6
.end method

.method public onReDrawList()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onRefresh(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->onFlickDownComplete(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->refreshAllAccount()V

    goto :goto_0
.end method

.method public onRefresh(III)Z
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->getTop()I

    move-result v0

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->getHeaderVisible()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onFlickDown()V

    :cond_1
    const-string v0, "MessageListFragment"

    const-string v1, "onRefresh() return true"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRelease()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "MessageListFragment"

    const-string v1, "onRelease()"

    const-string v2, "Now Updating..!!"

    invoke-static {v0, v1, v2}, Lcom/android/email/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mLastSp:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ListBouncingHeaderLayout;->displayRelease(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "Email"

    const-string v1, "MessageListFragment onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    sput-boolean v4, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mOpenRequested:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mLoadReserved:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->startLoading()V

    :cond_1
    sget-object v0, Lcom/android/email/activity/MessageListFragment;->isFavorite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListFragment;->isFavorite:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->noImagelayout()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "Email"

    const-string v1, "MessageListFragment onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "MessageListFragment.state.listState"

    new-instance v1, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "MessageListFragment.state.sortType"

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "messageListFragment.state.listState.selected_message_id"

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public onSendPendingMessages()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->IsEAS()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f080556

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/email/activity/MessageListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v1

    const-wide/16 v3, -0x6

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/email/RefreshManager;->sendPendingMessagesForAllAccounts()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->sendPendingMessages(J)Z

    goto :goto_1
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "Email"

    const-string v1, "MessageListFragment onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    return v6

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mNeedToFlickDownRefresh:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->touchandmove:Z

    if-eqz v1, :cond_6

    iput-boolean v6, p0, Lcom/android/email/activity/MessageListFragment;->touchandmove:Z

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mScroller:Lcom/android/email/activity/MessageListFragment$PositionScroller;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mScroller:Lcom/android/email/activity/MessageListFragment$PositionScroller;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment$PositionScroller;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_2
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickDown:Z

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    const-string v2, "MessageListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch() ACTION DOWN, first = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    if-nez v2, :cond_4

    if-eq v1, v5, :cond_3

    if-nez v1, :cond_4

    :cond_3
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListFragment;->setSelection(I)V

    :cond_4
    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mPrevRawY:I

    if-le v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v5}, Lcom/android/email/activity/MessageListFragment;->controlFooterVisibility(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->enableHeader()V

    iput-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->bIsDown:Z

    :cond_5
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->bIsDown:Z

    :cond_6
    :goto_1
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mPrevRawY:I

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->disableHeader()V

    goto :goto_1

    :pswitch_1
    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mPrevRawY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->access$902(I)I

    goto :goto_0

    :pswitch_2
    iput-boolean v6, p0, Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v6, p0, Lcom/android/email/activity/MessageListFragment;->mNeedToFlickDownRefresh:Z

    :goto_2
    iput-boolean v6, p0, Lcom/android/email/activity/MessageListFragment;->bIsDown:Z

    iput-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->touchandmove:Z

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mNeedToFlickDownRefresh:Z

    if-ne v0, v5, :cond_1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickDown:Z

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-eq v0, v5, :cond_8

    if-nez v0, :cond_1

    :cond_8
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->onRefresh(III)Z

    goto/16 :goto_0

    :cond_9
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->mNeedToFlickDownRefresh:Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public openMailbox(J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mOpenRequested:Z

    iput-wide p1, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->initListAdapter()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->startLoading()V

    goto :goto_0
.end method

.method public refreshList()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    new-instance v4, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Z)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;

    invoke-direct {v2, p0, v6}, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Z)V

    invoke-virtual {v1, v7, v8, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public registerListener(Landroid/view/View$OnCreateContextMenuListener;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->otherListner:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setActionBarDisplayHomeEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V
    .locals 1

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    sput-object v0, Lcom/android/email/activity/MessageListFragment;->activity_CALLBACK:Lcom/android/email/activity/MessageListFragment$Callback;

    return-void

    :cond_0
    sget-object p1, Lcom/android/email/activity/MessageListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;

    goto :goto_0
.end method

.method public setEmptyMessage(I)V
    .locals 0

    return-void
.end method

.method public setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListFragment$Callback;->setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItem;)V

    return-void
.end method

.method public setListBackgroundColor(Z)V
    .locals 3

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgDark:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgDark:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgDark:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setBackgroundColorForHeader(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderTop:Landroid/view/View;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgDark:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgLight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgLight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgLight:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setBackgroundColorForHeader(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderTop:Landroid/view/View;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgLight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListSplit(I)V
    .locals 0

    return-void
.end method

.method public setListViewPadding(Z)V
    .locals 6

    const/16 v5, 0xe

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sListPadding:I

    sget v2, Lcom/android/email/activity/MessageListFragment;->sListPadding:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->disableShadow()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->enableShadow()V

    goto :goto_1
.end method

.method public setListener(Landroid/view/View$OnCreateContextMenuListener;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

    iput-object p2, p0, Lcom/android/email/activity/MessageListFragment;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment;->registerListener(Landroid/view/View$OnCreateContextMenuListener;Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setMessageListFontSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->setListItemSize(I)V

    :cond_0
    return-void
.end method

.method public setMoveToMailboxFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->hasMailboxToMove:Z

    return-void
.end method

.method public setPreviewLinstSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->setPreviewLineSize(I)V

    :cond_0
    return-void
.end method

.method public setSelectedMessage(JI)V
    .locals 1

    iput-wide p1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lcom/android/email/activity/MessageListFragment;->highlightSelectedMessage(ZI)V

    :cond_0
    return-void
.end method

.method public setSendingProgressFlag(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mIsSending:Z

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MessagesAdapter;->setCheckboxStatus(Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->unCheckAllSubTitleCheckBox()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    const/4 v1, 0x0

    sput v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSubItemCheckboxPressed(ZLcom/android/email/activity/MessageListSubTitleItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListFragment$Callback;->setSubItemCheckboxPressed(ZLcom/android/email/activity/MessageListSubTitleItem;)V

    return-void
.end method

.method public setTotalCountFromMailbox(I)V
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCountFromMailbox:I

    return-void
.end method

.method public updateMessageCount()V
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget v5, p0, Lcom/android/email/activity/MessageListFragment;->mUnReadCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v5, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextId:I

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextPadding:I

    sub-int v4, v5, v6

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    sget v5, Lcom/android/email/activity/MessageListFragment;->sFooterProgressWidth:I

    sub-int/2addr v4, v5

    :cond_0
    if-gtz v4, :cond_2

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    int-to-float v6, v4

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateSelectionMode()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getSelectedCount()I

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mIsVisible:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mIsSending:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->unCheckAllSubTitleCheckBox()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    const/4 v2, 0x0

    sput v2, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionModeView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v2, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public useFlickDown(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickDown:Z

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->disableHeader()V

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickDown:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    :cond_0
    return-void
.end method

.method public useFlickUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickUp:Z

    return-void
.end method
