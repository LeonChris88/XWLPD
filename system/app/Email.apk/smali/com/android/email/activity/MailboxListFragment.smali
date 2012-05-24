.class public Lcom/android/email/activity/MailboxListFragment;
.super Landroid/app/ListFragment;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnDragListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;,
        Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;,
        Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;,
        Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;,
        Lcom/android/email/activity/MailboxListFragment$AllMailboxListLoaderCallbacks;,
        Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;,
        Lcom/android/email/activity/MailboxListFragment$ControllerResults;,
        Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;,
        Lcom/android/email/activity/MailboxListFragment$EmptyCallback;,
        Lcom/android/email/activity/MailboxListFragment$Callback;
    }
.end annotation


# static fields
.field private static BACKGROUND_GREY:I

.field private static mDoneType:I

.field private static sDropTrashColor:Ljava/lang/Integer;

.field private static sMailboxListColorDarkTheme:I

.field private static sMailboxListColorWhiteTheme:I


# instance fields
.field private isMoveScreen:Z

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mAccountId:J

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMailboxlistCustomView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAllMailboxParentIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBgColor:I

.field private mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

.field private mControllerCallback:Lcom/android/email/activity/MailboxListFragment$ControllerResults;

.field private mDestMailboxId:J

.field private mDragInProgress:Z

.field private mDragItemHeight:I

.field private mDragItemMailboxId:J

.field private mDropTargetAdapterPosition:I

.field private mDropTargetView:Lcom/android/email/activity/MailboxListItem;

.field private mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

.field private mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsFromFolderFunction:Z

.field private mLastLoadedAccountId:J

.field private mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

.field private mListShadow:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mLoadAllMailboxes:Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;

.field private mLoadMailboxesTask:Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;

.field private mMailboxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMailboxListAdapter:Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;

.field private mMailboxListFragment:Landroid/view/View;

.field private mMailboxesAdapterCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

.field private mOpenRequested:Z

.field public mProgressDialog:Landroid/app/ProgressDialog;

.field private mRefreshManager:Lcom/android/email/RefreshManager;

.field private mResumed:Z

.field private mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

.field private mSelectedContextMailboxId:J

.field private mSelectedMailboxId:J

.field private mSelectedPosition:I

.field private mTargetScrolling:Z

.field private mTitleTextView:Landroid/widget/TextView;

.field private newMailboxId_toINBOX:J

.field private openCreated:Z

.field private previousAniLayout:Landroid/view/View;

.field private previousTarget:Lcom/android/email/activity/MailboxListItem;

.field public updateUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    const/4 v0, 0x2

    sput v0, Lcom/android/email/activity/MailboxListFragment;->BACKGROUND_GREY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    sget-object v0, Lcom/android/email/activity/MailboxListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MailboxListFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mLastLoadedAccountId:J

    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    iput-boolean v4, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    iput-boolean v4, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    iput v5, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetAdapterPosition:I

    iput v5, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    new-instance v0, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    new-instance v0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MailboxListFragment$ControllerResults;-><init>(Lcom/android/email/activity/MailboxListFragment;Lcom/android/email/activity/MailboxListFragment$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mControllerCallback:Lcom/android/email/activity/MailboxListFragment$ControllerResults;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    iput v4, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mAllMailboxParentIdList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->openCreated:Z

    iput-boolean v4, p0, Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z

    iput v5, p0, Lcom/android/email/activity/MailboxListFragment;->mBgColor:I

    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    new-instance v0, Lcom/android/email/activity/MailboxListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxListFragment$1;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxesAdapterCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    new-instance v0, Lcom/android/email/activity/MailboxListFragment$19;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxListFragment$19;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->updateUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/MailboxListFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MailboxListFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/email/activity/MailboxListFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MailboxListFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MailboxListFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/email/activity/MailboxListFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MailboxListFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MailboxListFragment;Ljava/util/ArrayList;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->deleteMailbox(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MailboxListFragment;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MailboxListFragment;->deleteMailbox(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MailboxListFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MailboxListFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/email/activity/MailboxListFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MailboxListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/email/activity/MailboxListFragment;Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;)Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/email/activity/MailboxListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MailboxListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->createMailboxDialog(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MailboxListFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/android/email/activity/MailboxListFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/android/email/activity/MailboxListFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mLastLoadedAccountId:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/email/activity/MailboxListFragment;Lcom/android/emailcommon/utility/Utility$ListStateSaver;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MailboxListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->highlightSelectedMailbox(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mAllMailboxParentIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListAdapter:Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/MailboxListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MailboxListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->openCreated:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/email/activity/MailboxListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MailboxListFragment;->openCreated:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MailboxListFragment;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MailboxListFragment;->hasColumnId(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->closeFolderHierarchy(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MailboxListFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(I)I
    .locals 0

    sput p0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MailboxListFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MailboxListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->deleteMailbox()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method private clearContent()V
    .locals 5

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const-string v0, "Email"

    const-string v1, "MailboxListFramgment clearContent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mLastLoadedAccountId:J

    iput-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    iput-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    iput-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment;->mOpenRequested:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopLoader()V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxesAdapter;->initAdapter()V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MailboxListFragment;->setListShownNoAnimation(Z)V

    return-void
.end method

.method private closeFolderHierarchy(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->access$3400(Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/email/activity/MailboxListFragment;->closeFolderHierarchy(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->setIsOpened(Z)V

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createMailboxDialog(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f08036d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f100139

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f10013a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v3, 0x7f08036a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x104000a

    new-instance v3, Lcom/android/email/activity/MailboxListFragment$12;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/email/activity/MailboxListFragment$12;-><init>(Lcom/android/email/activity/MailboxListFragment;Landroid/widget/EditText;Z)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x104

    new-instance v1, Lcom/android/email/activity/MailboxListFragment$13;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MailboxListFragment$13;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private deleteMailbox()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0804f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0804f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0804fa

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$5;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxListFragment$5;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080043

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$6;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxListFragment$6;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private deleteMailbox(J)Z
    .locals 22

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v11

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxCursor()Landroid/database/Cursor;

    move-result-object v12

    const/4 v3, -0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/16 v7, 0xb

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v8, 0xa

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x7

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct/range {v2 .. v10}, Lcom/android/email/activity/MailboxListItemHierarchyItem;-><init>(Ljava/lang/String;IJIIJ)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    move/from16 v0, v21

    if-ge v0, v3, :cond_0

    iget v0, v2, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    move/from16 v21, v0

    goto :goto_0

    :cond_1
    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getDisplayName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v16, v21

    :goto_1
    if-ltz v16, :cond_5

    const/16 v17, 0x0

    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget-wide v5, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxId:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getDisplayName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    move/from16 v0, v16

    if-ne v3, v0, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v18

    if-lt v3, v0, :cond_3

    const/4 v3, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxType:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_3

    :cond_2
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget-wide v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_1

    :cond_5
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget-wide v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mAccountKey:J

    invoke-virtual {v11, v3, v4, v13}, Lcom/android/email/Controller;->deleteFolder(JLjava/util/ArrayList;)Landroid/os/AsyncTask;

    :cond_6
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_3
    return v3

    :cond_7
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private deleteMailbox(Ljava/util/ArrayList;)Z
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v13

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v11, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxCursor()Landroid/database/Cursor;

    move-result-object v14

    const/4 v3, -0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_1
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/16 v7, 0xb

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v8, 0xa

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x7

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct/range {v2 .. v10}, Lcom/android/email/activity/MailboxListItemHierarchyItem;-><init>(Ljava/lang/String;IJIIJ)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    move/from16 v0, v26

    if-ge v0, v3, :cond_1

    iget v0, v2, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    move/from16 v26, v0

    goto :goto_0

    :cond_2
    if-eqz v24, :cond_3

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget-wide v11, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mAccountKey:J

    :cond_3
    const/16 v18, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getDisplayName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v18, v26

    :goto_1
    if-ltz v18, :cond_0

    const/16 v22, 0x0

    :goto_2
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget-wide v5, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxId:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getDisplayName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v23

    if-lt v3, v0, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxType:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_5

    :cond_4
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget-wide v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v13, v11, v12, v15}, Lcom/android/email/Controller;->deleteFolder(JLjava/util/ArrayList;)Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    :goto_3
    return v3

    :cond_8
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private hasColumnId(J)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private highlightSelectedMailbox(Z)V
    .locals 10

    const/4 v5, 0x0

    const-string v3, ""

    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    move v4, v5

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    invoke-interface/range {v0 .. v5}, Lcom/android/email/activity/MailboxListFragment$Callback;->onCurrentMailboxUpdated(JLjava/lang/String;II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    move v0, v5

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MailboxesAdapter;->getId(I)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    cmp-long v2, v6, v8

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v1, v2, v0}, Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V

    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MailboxesAdapter;->getUnreadCount(I)I

    move-result v4

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MailboxesAdapter;->getTotalCount(I)I

    move-result v5

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private moveFolder()V
    .locals 8

    const/4 v4, 0x0

    const/16 v2, 0x8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040066

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f100150

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f100151

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x102000a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040068

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;-><init>(Lcom/android/email/activity/MailboxListFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListAdapter:Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListAdapter:Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iput v7, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    new-instance v1, Lcom/android/email/activity/MailboxListFragment$16;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MailboxListFragment$16;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;

    iget-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    const/4 v5, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;-><init>(Lcom/android/email/activity/MailboxListFragment;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;-><init>(Lcom/android/email/activity/MailboxListFragment;J)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08007d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object v1, v6

    move v2, v7

    move v3, v7

    move v4, v7

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$17;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxListFragment$17;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$18;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxListFragment$18;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private onDeleteSmsPopup([JJ)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080535

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$20;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/email/activity/MailboxListFragment$20;-><init>(Lcom/android/email/activity/MailboxListFragment;[JJ)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080043

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$21;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxListFragment$21;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private onDragEnded()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->enableUpdates(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->updateChildViews()V

    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    :cond_0
    return-void
.end method

.method private onDragExited()V
    .locals 4

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetAdapterPosition:I

    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    return-void
.end method

.method private onDragLocation(Landroid/view/DragEvent;)V
    .locals 13

    iget v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    float-to-int v10, v0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_2
    sub-int v0, v10, v0

    add-int/lit8 v0, v0, -0x28

    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    div-int v2, v0, v1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v11

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v12, v0

    move v0, v1

    move v1, v2

    move v2, v12

    :goto_1
    if-gt v2, v1, :cond_7

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3fb33333

    const/high16 v2, 0x3f80

    const v3, 0x3fb33333

    const/high16 v4, 0x3f80

    const/high16 v5, 0x420c

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iget v6, v6, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x41b4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->onDragExited()V

    goto :goto_0

    :cond_4
    const-class v3, Lcom/android/email/activity/MailboxListNullItem;

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    if-ne v2, v1, :cond_6

    add-int/2addr v1, v0

    const/4 v0, 0x0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    add-int v8, v11, v1

    iget v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetAdapterPosition:I

    if-eq v8, v0, :cond_15

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-class v1, Lcom/android/email/activity/MailboxListNullItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v7, v0

    check-cast v7, Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_a

    const v1, 0x7f100157

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    :goto_2
    if-nez v7, :cond_b

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_9

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3fb33333

    const/high16 v2, 0x3f80

    const v3, 0x3fb33333

    const/high16 v4, 0x3f80

    const/high16 v5, 0x420c

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iget v6, v6, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x41b4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    :cond_9
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->onDragExited()V

    goto/16 :goto_0

    :cond_a
    move-object v9, v0

    goto :goto_2

    :cond_b
    iget-object v0, v7, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3fb33333

    const/high16 v2, 0x3f80

    const v3, 0x3fb33333

    const/high16 v4, 0x3f80

    const/high16 v5, 0x420c

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iget v6, v6, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x41b4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_c
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3fb33333

    const/high16 v3, 0x3f80

    const v4, 0x3fb33333

    const/high16 v5, 0x420c

    iget v6, v7, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x41b4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iput-object v7, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iput-object v9, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    move v0, v8

    :goto_3
    iput v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetAdapterPosition:I

    iput-object v7, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    :goto_4
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x40

    sub-int v1, v10, v1

    if-lez v1, :cond_11

    const/4 v1, 0x1

    move v2, v1

    :goto_5
    const/16 v1, 0x40

    if-le v1, v10, :cond_12

    const/4 v1, 0x1

    :goto_6
    iget-boolean v3, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    if-nez v3, :cond_13

    if-eqz v2, :cond_13

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    mul-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    goto/16 :goto_0

    :cond_d
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v7, v0, v1}, Lcom/android/email/activity/MailboxListItem;->isDropTarget(J)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, v7, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_e

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3fb33333

    const/high16 v2, 0x3f80

    const v3, 0x3fb33333

    const/high16 v4, 0x3f80

    const/high16 v5, 0x420c

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iget v6, v6, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x41b4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_e
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3fb33333

    const/high16 v3, 0x3f80

    const v4, 0x3fb33333

    const/high16 v5, 0x420c

    iget v6, v7, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x41b4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iput-object v7, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iput-object v9, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    move v0, v8

    goto/16 :goto_3

    :cond_f
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_10

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3fb33333

    const/high16 v2, 0x3f80

    const v3, 0x3fb33333

    const/high16 v4, 0x3f80

    const/high16 v5, 0x420c

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iget v6, v6, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x41b4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    :cond_10
    const/4 v0, -0x1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v7, v1, v2, v3}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    goto/16 :goto_3

    :cond_11
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_5

    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_13
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    if-nez v0, :cond_14

    if-eqz v1, :cond_14

    add-int/lit8 v0, v11, 0x1

    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    neg-int v2, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->smoothScrollBy(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    goto/16 :goto_0

    :cond_14
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    goto/16 :goto_0

    :cond_15
    move v0, v8

    goto/16 :goto_4
.end method

.method private onDragStarted(Landroid/view/DragEvent;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v3}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "vnd.android.cursor.item/email-message"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    const/16 v2, 0x2d

    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_2

    add-int/lit8 v2, v2, 0x1

    :try_start_0
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    iput-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MailboxesAdapter;->enableUpdates(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->updateChildViews()V

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private onDrop(Landroid/view/DragEvent;)Z
    .locals 10

    const/4 v9, 0x0

    const v1, 0x3fb33333

    const/high16 v2, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    iget v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetAdapterPosition:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    :cond_0
    move v0, v7

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x420c

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iget v4, v4, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v4, v4

    add-float v5, v3, v4

    const/high16 v6, 0x41b4

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iput-object v9, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iput-object v9, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    new-array v3, v4, [J

    :goto_1
    if-ge v7, v4, :cond_3

    invoke-virtual {v2, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    iget-object v1, v1, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    sget-boolean v1, Lcom/android/email/activity/MessageView;->isSms:Z

    if-eqz v1, :cond_4

    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-direct {p0, v3, v0, v1}, Lcom/android/email/activity/MailboxListFragment;->onDeleteSmsPopup([JJ)V

    :goto_2
    move v0, v8

    goto :goto_0

    :cond_4
    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/email/Controller;->deleteMessage([JJ)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0800c4

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_5
    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    iget-wide v4, v4, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->moveMessage(J[JJ)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0800c1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private refreshMailboxListIfStale()V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->isMailboxListStale(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->refreshMailboxList(J)Z

    :cond_0
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "MailboxListFragment.state.selected_mailbox_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    const-string v0, "MailboxListFragment.state.listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080504

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startLoading()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    iput-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mOpenRequested:Z

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->setListShown(Z)V

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mLastLoadedAccountId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mLastLoadedAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/LoaderManager;->destroyLoader(I)V

    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->refreshMailboxListIfStale()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;-><init>(Lcom/android/email/activity/MailboxListFragment;Z)V

    invoke-virtual {v1, v6, v5, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$AllMailboxListLoaderCallbacks;

    invoke-direct {v2, p0, v5}, Lcom/android/email/activity/MailboxListFragment$AllMailboxListLoaderCallbacks;-><init>(Lcom/android/email/activity/MailboxListFragment;Lcom/android/email/activity/MailboxListFragment$1;)V

    invoke-virtual {v1, v7, v5, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method private stopLoader()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method private stopScrolling()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method

.method private updateChildViews()V
    .locals 3

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    :cond_0
    return-void
.end method


# virtual methods
.method public createMailbox(Z)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f08036d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f100139

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f10013a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v3, 0x7f08036a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x104000a

    new-instance v3, Lcom/android/email/activity/MailboxListFragment$7;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/email/activity/MailboxListFragment$7;-><init>(Lcom/android/email/activity/MailboxListFragment;Landroid/widget/EditText;Z)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x104

    new-instance v3, Lcom/android/email/activity/MailboxListFragment$8;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MailboxListFragment$8;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "Email"

    const-string v1, "MailboxListFragment onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const v1, 0x7f020225

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxListFragment;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->updateCurrentOrientation(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x1f40

    if-ne p1, v1, :cond_0

    const/16 v1, 0x2328

    if-ne p2, v1, :cond_0

    const-string v1, "DES_MAILBOX_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    const v1, 0x7f080503

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->showProgressDialog(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->moveFolder(JJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0804fe

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onBackPress(Z)Z
    .locals 9

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->onCancel()V

    move v6, v5

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->getListFragmentManager()Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V

    iput-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    goto :goto_0
.end method

.method public onCancel()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    sget v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iput-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxesAdapter;->setDeleteMode(Z)V

    sput v3, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxesAdapter;->setIsCreateOrRename(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f0805b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sput v2, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxesAdapter;->getSelectedSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802b4

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    const-string v0, "Email"

    const-string v1, "MailboxListFragment folder delete operation done !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->deleteMailbox()V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->onCancel()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000ce -> :sswitch_0
        0x7f1000d2 -> :sswitch_1
        0x7f1000d4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->setOrientation(I)V

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    const v2, 0x7f1002cb

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->getUnreadCount(I)I

    move-result v6

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->getTotalCount(I)I

    move-result v7

    iput-boolean v8, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->getId(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    invoke-interface/range {v0 .. v7}, Lcom/android/email/activity/MailboxListFragment$Callback;->onMailboxSelected(JJLjava/lang/String;II)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MailboxesAdapter;->updateMailboxVisivility(J)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/email/activity/MailboxesAdapter;->updateMailboxVisivility(JZ)V

    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->deleteMailbox()V

    goto :goto_0

    :pswitch_2
    iput-boolean v8, p0, Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "mailbox_selected_position"

    iget v2, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mailbox_selected_display_name"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/android/email/activity/MessageListXL;->showDialog2(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_4
    iput-boolean v4, p0, Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MailboxesAdapter;->updateMailboxVisivility(J)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/email/activity/MailboxesAdapter;->updateMailboxVisivility(JZ)V

    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->moveFolder()V

    goto/16 :goto_0

    :pswitch_5
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/MailboxSettings;->start(Landroid/app/Activity;J)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1002cc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v2, "Email"

    const-string v3, "MailboxListFragment onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04003c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBarMailboxlistCustomView:Landroid/view/View;

    const/4 v2, -0x1

    sput v2, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    new-instance v2, Lcom/android/email/activity/MailboxesAdapter;

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxesAdapterCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/email/activity/MailboxesAdapter;-><init>(Landroid/content/Context;ILcom/android/email/activity/MailboxesAdapter$Callback;)V

    iput-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->restoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    sget-object v2, Lcom/android/email/activity/MailboxListFragment;->sDropTrashColor:Ljava/lang/Integer;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b001c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/android/email/activity/MailboxListFragment;->sDropTrashColor:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MailboxListFragment;->sMailboxListColorWhiteTheme:I

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MailboxListFragment;->sMailboxListColorDarkTheme:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getBGColor()I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/MailboxListFragment;->mBgColor:I

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 16

    move-object/from16 v10, p3

    check-cast v10, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v13, v10, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v12, v13}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v12

    const v13, 0x7f0f0018

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v13, v10, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v12, v13}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxType(I)J

    move-result-wide v12

    long-to-int v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v13, v10, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v12, v13}, Lcom/android/email/activity/MailboxesAdapter;->getId(I)J

    move-result-wide v12

    long-to-int v9, v12

    const v12, 0x7f1002cb

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Landroid/view/ContextMenu;->setGroupEnabled(IZ)V

    const v12, 0x7f1002ce

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v12, 0x7f1002cd

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v12, 0x7f1002cf

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v12, 0x7f1002d0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v12, 0x7f1002cc

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v12, 0x7f1002d1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const-string v12, "MailboxListFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mDoneType : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mAccountId : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v12, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    const-wide/high16 v14, 0x1000

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    :cond_0
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v12, :cond_7

    const-string v12, "eas"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v13, v13, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x4

    if-eq v11, v12, :cond_3

    if-ltz v11, :cond_3

    sget-boolean v12, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-nez v12, :cond_6

    :cond_3
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    :goto_1
    const/4 v12, 0x4

    if-ne v11, v12, :cond_5

    const/4 v12, 0x0

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v12

    invoke-static {v12}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v7, v12}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v12

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v12}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_6
    const/16 v12, 0xc

    if-eq v11, v12, :cond_4

    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v12, :cond_a

    const-string v12, "imap"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v13, v13, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x1

    if-eq v11, v12, :cond_9

    if-eqz v11, :cond_8

    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_3
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_4
    const/4 v12, 0x0

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_8
    const/4 v12, 0x1

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_9
    const/4 v12, 0x1

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x1

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x1

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_a
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x1

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const v3, 0x7f0f0019

    invoke-virtual {p2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v3, 0x7f1002d2

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f1002d3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f1002d4

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/email/activity/MailboxListFragment$2;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MailboxListFragment$2;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/email/activity/MailboxListFragment$3;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MailboxListFragment$3;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/email/activity/MailboxListFragment$4;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MailboxListFragment$4;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Email"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    const v0, 0x7f040067

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    const v1, 0x7f100152

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListShadow:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBarMailboxlistCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBarMailboxlistCustomView:Landroid/view/View;

    const v1, 0x7f1000cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/email/activity/MailboxListFragment;->mBgColor:I

    sget v1, Lcom/android/email/activity/MailboxListFragment;->BACKGROUND_GREY:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    sget v1, Lcom/android/email/activity/MailboxListFragment;->sMailboxListColorDarkTheme:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    sget v1, Lcom/android/email/activity/MailboxListFragment;->sMailboxListColorWhiteTheme:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxListFragment;->unregisterForContextMenu(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListShadow:Landroid/view/View;

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBarMailboxlistCustomView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxesAdapterCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    invoke-static {v1}, Lcom/android/email/activity/MailboxesAdapter;->setLeftPane(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxesAdapter;->initAdapter()V

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopLoader()V

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 9

    const/4 v8, 0x0

    const v1, 0x3fb33333

    const/high16 v2, 0x3f80

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v7

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/email/activity/MailboxListFragment;->onDragStarted(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    move v0, v7

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x420c

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iget v4, v4, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v4, v4

    add-float v5, v3, v4

    const/high16 v6, 0x41b4

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iput-object v8, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iput-object v8, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->onDragExited()V

    move v0, v7

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->onDragEnded()V

    move v0, v7

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2}, Lcom/android/email/activity/MailboxListFragment;->onDragLocation(Landroid/view/DragEvent;)V

    move v0, v7

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/email/activity/MailboxListFragment;->onDrop(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxesAdapter;->getId(I)J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxesAdapter;->getUnreadCount(I)I

    move-result v6

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxesAdapter;->getTotalCount(I)I

    move-result v7

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    invoke-interface {v0, v3, v4}, Lcom/android/email/activity/MailboxListFragment$Callback;->onAccountSelected(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p2, Lcom/android/email/activity/MailboxListItem;

    iget v0, p2, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-interface/range {v0 .. v7}, Lcom/android/email/activity/MailboxListFragment$Callback;->onMailboxSelected(JJLjava/lang/String;II)V

    goto :goto_0

    :cond_2
    iput-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    sget v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    if-ne v0, v1, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "mailbox_selected_position"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mailbox_selected_display_name"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/android/email/activity/MessageListXL;->showDialog2(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    sget v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->deleteMailbox()V

    goto :goto_0

    :cond_5
    iget-object v0, p2, Lcom/android/email/activity/MailboxListItem;->mAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, p2}, Lcom/android/email/activity/MailboxesAdapter;->toggleSelected(Lcom/android/email/activity/MailboxListItem;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const-wide/16 v3, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v5, v6

    :cond_0
    :goto_0
    return v5

    :sswitch_0
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->getListFragmentManager()Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V

    iput-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    goto :goto_0

    :sswitch_1
    iput-boolean v6, p0, Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z

    iput-boolean v6, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f0805b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    :sswitch_2
    iput-boolean v5, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f08036b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sput v5, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MailboxesAdapter;->setIsCreateOrRename(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    :sswitch_3
    iput-boolean v5, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f08036c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    const/4 v0, 0x2

    sput v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MailboxesAdapter;->setIsCreateOrRename(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MailboxesAdapter;->setDeleteMode(Z)V

    goto :goto_1

    :sswitch_4
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxesAdapter;->getSelectedSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802b4

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    const-string v0, "Email"

    const-string v1, "MailboxListFragment folder delete operation done !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->deleteMailbox()V

    goto :goto_2

    :sswitch_5
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iput-boolean v6, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MailboxesAdapter;->setDeleteMode(Z)V

    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MailboxesAdapter;->setIsCreateOrRename(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f1002cd -> :sswitch_3
        0x7f1002cf -> :sswitch_2
        0x7f1002d2 -> :sswitch_1
        0x7f1002d3 -> :sswitch_4
        0x7f1002d4 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Email"

    const-string v1, "MailboxListFragment onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment;->mResumed:Z

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MailboxListFragment;->setHasOptionsMenu(Z)V

    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    new-instance v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mControllerCallback:Lcom/android/email/activity/MailboxListFragment$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 14

    const/4 v8, 0x1

    const/4 v9, 0x0

    const v10, 0x7f1002b4

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v10, 0x7f1002d2

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v10, 0x7f1002cf

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v10, 0x7f1002cd

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v10, 0x7f1002d3

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v10, 0x7f1002d4

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v10, 0x7f1002f6

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v10, :cond_4

    const-string v10, "eas"

    iget-object v11, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v11, v11, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "imap"

    iget-object v11, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v11, v11, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_0
    iget-wide v10, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    const-wide/high16 v12, 0x1000

    cmp-long v10, v10, v12

    if-eqz v10, :cond_4

    move v7, v8

    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    if-eqz v5, :cond_2

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    if-ne v7, v8, :cond_9

    sget v10, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v10, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    if-eqz v10, :cond_3

    sget v10, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    if-ne v10, v8, :cond_5

    :cond_3
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    return-void

    :cond_4
    move v7, v9

    goto :goto_0

    :cond_5
    sget v10, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    const-string v10, "eas"

    iget-object v11, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v11, v11, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_7
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_8
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_9
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    const-string v0, "Email"

    const-string v1, "MailboxListFragment onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mResumed:Z

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mControllerCallback:Lcom/android/email/activity/MailboxListFragment$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    invoke-static {}, Lcom/android/email/FolderProperties;->setInitInstance()V

    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mOpenRequested:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->startLoading()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "MailboxListFragment.state.selected_mailbox_id"

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "MailboxListFragment.state.listState"

    new-instance v1, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "Email"

    const-string v1, "MailboxListFragment onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "Email"

    const-string v1, "MailboxListFragment onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    return-void
.end method

.method public openMailboxes(J)V
    .locals 4

    const-string v1, "Email"

    const-string v2, "MailboxListFragment openMailboxes"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    :cond_0
    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->clearContent()V

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mOpenRequested:Z

    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    :cond_3
    iget-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mResumed:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->startLoading()V

    goto :goto_0
.end method

.method public renameMailbox(I)Landroid/app/Dialog;
    .locals 5

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f08036b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f100139

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f10013a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v3, 0x7f08036a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iput p1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v3, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    const v0, 0x104000a

    new-instance v3, Lcom/android/email/activity/MailboxListFragment$14;

    invoke-direct {v3, p0, v1}, Lcom/android/email/activity/MailboxListFragment$14;-><init>(Lcom/android/email/activity/MailboxListFragment;Landroid/widget/EditText;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x104

    new-instance v3, Lcom/android/email/activity/MailboxListFragment$15;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MailboxListFragment$15;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    return-object v0
.end method

.method public setActionBarCustom()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBarMailboxlistCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActionBarCustom mActionBar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mActionBarMailboxlistCustomView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mActionBarMailboxlistCustomView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxesAdapter;->setIsCreateOrRename(Z)V

    iput-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBarMailboxlistCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/email/activity/MailboxListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MailboxListFragment$Callback;

    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MailboxesAdapter;->setDeleteMode(Z)V

    return-void
.end method

.method public setListSplit(I)V
    .locals 3

    const v1, 0x7f020318

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListShadow:Landroid/view/View;

    const v1, 0x7f020326

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListShadow:Landroid/view/View;

    const v1, 0x7f020325

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSelectedMailbox(JZ)V
    .locals 3

    const-string v1, "Email"

    const-string v2, "MailboxListFragment setSelectedMailbox"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/activity/MailboxesAdapter;->updateSelectedMailbox(J)V

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    iget-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mResumed:Z

    if-nez v1, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->highlightSelectedMailbox(Z)V

    :cond_1
    return-void
.end method
