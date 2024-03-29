.class public Lcom/android/mms/ui/ConversationListFragment;
.super Landroid/app/Fragment;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;,
        Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
    }
.end annotation


# static fields
.field public static badge:Landroid/widget/QuickContactBadge;

.field private static deleteComplete:Z

.field public static mIsEmptyThread:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private mContextMenu:Landroid/view/ContextMenu;

.field private mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

.field private final mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mConversationHeader:Landroid/widget/LinearLayout;

.field private mConversationTitle:Landroid/widget/LinearLayout;

.field private mConvlist:Landroid/view/View;

.field private mCountToDelete:I

.field private mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteEventHandler:Landroid/os/Handler;

.field private mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private mEmptyView:Landroid/view/View;

.field private mFirstItemId:J

.field private mHandler:Landroid/os/Handler;

.field private mIsDeleteMode:Z

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mListView:Lcom/android/mms/ui/MsgSweepActionListView;

.field private mNewCompose:Landroid/widget/LinearLayout;

.field private final mNewComposeKeyListener:Landroid/view/View$OnKeyListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;

.field mTotalConversations:Landroid/widget/TextView;

.field private mVisibleOffset:I

.field private onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field private onNewMessage:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$1;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->onNewMessage:Landroid/view/View$OnClickListener;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$6;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$10;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$11;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$13;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$14;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mNewComposeKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->createNewMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ConversationListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ConversationListFragment;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/ConversationListFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ConversationListFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->updateEmptyScreen(IZ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ConversationListFragment;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ConversationListFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    return-object v0
.end method

.method static synthetic access$3000()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    return v0
.end method

.method static synthetic access$3002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->notifyDeleteStart()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->deleteSelectedConversations()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->markCheckedMessageLimit()V

    return-void
.end method

.method private beforeQuery()V
    .locals 2

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V
    .locals 3

    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmDeleteThread(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x70b

    invoke-static {p2, p0, p1, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    return-void
.end method

.method public static confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmDeleteThreadDialog(),deleteAll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",hasLockedMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f030012

    invoke-static {p3, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f080048

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v1, 0x7f080047

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setHasLockedMessage(Z)V

    if-nez p2, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    const v0, 0x7f090090

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$12;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ConversationListFragment$12;-><init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f09008f

    goto :goto_1
.end method

.method public static createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mailto"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1

    :cond_0
    const-string v0, "tel"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private createNewMessage()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    return-void
.end method

.method private deleteSelectedConversations()V
    .locals 3

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "deleteSelectedConversations()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v1, 0x70d

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedThread(Landroid/content/AsyncQueryHandler;I)V

    goto :goto_0
.end method

.method private disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    return-void
.end method

.method private static ensureUpdateDeletable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getConversation(I)Lcom/android/mms/data/Conversation;
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$5;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0901d1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "This fragment was detached from it\'s activity."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initListAdapter()V
    .locals 5

    const-wide/16 v3, -0x1

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "initListAdapter()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setRecyclerListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)V

    sget-wide v0, Lcom/android/mms/ui/ConversationComposer;->mThreadIdFromComposeMessageFragment:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/android/mms/ui/ConversationComposer;->mThreadIdFromComposeMessageFragment:J

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->requestDrawPointerOnConverationList(J)Z

    sput-wide v3, Lcom/android/mms/ui/ConversationComposer;->mThreadIdFromComposeMessageFragment:J

    :cond_0
    return-void
.end method

.method private isFirstItemChanged()Z
    .locals 4

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadToDeleteMode(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "conversationDeleteMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    return-void
.end method

.method private markCheckedMessageLimit()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "checked_message_limits"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "markCheckedMessageLimit()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyDeleteStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteStart()V

    return-void
.end method

.method private openThread(J)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-static {v1, p1, p2, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    goto :goto_0
.end method

.method private refreshSplitMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    goto :goto_0
.end method

.method private restoreListOffset()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    goto :goto_0
.end method

.method private saveToDeleteMode(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "conversationDeleteMode"

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2

    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 4

    const v0, 0x7f090116

    const v1, 0x7f0a0002

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTotalQuantityTextView(),text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->beforeQuery()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$9;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v2, 0x6a4

    const/16 v3, 0xb

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/Conversation;->startQueryForFakeView(Landroid/content/AsyncQueryHandler;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v2, 0x6a5

    invoke-static {v1, v2}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->beforeQuery()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method private updateEmptyScreen(IZ)V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEmptyScreen(),resultCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v6, v6}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public FindThread(Landroid/database/Cursor;J)Landroid/database/Cursor;
    .locals 3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    :goto_1
    return-object p1

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public drawMessagePointer(J)V
    .locals 3

    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawMessagePointer(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListAdapter;->setListItemSelected(J)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidateViews()V

    :cond_0
    return-void
.end method

.method public drawMessageTouchPointer()V
    .locals 2

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "drawMessageTouchPointer()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidateViews()V

    :cond_0
    return-void
.end method

.method public getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method public getNumber(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumber(),position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isConversationIndex(I)Z
    .locals 5

    const/4 v3, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v1

    add-int/lit8 v4, v2, -0x1

    if-le p1, v4, :cond_0

    sub-int v4, v0, v1

    if-ge p1, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isDeleteMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "[Start]onActivityCreated()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->loadToDeleteMode(Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->ensureUpdateDeletable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/data/Conversation;->updateDeletable()V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mNewCompose:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->onNewMessage:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mNewCompose:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mNewComposeKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initListAdapter()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "checked_message_limits"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->runOneTimeStorageLimitCheckForLegacyMessages()V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$2;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$3;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$4;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "[End]onActivityCreated()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "start onAttach"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "end onAttach"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v1, 0x0

    const-string v0, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onContextItemSelected(),itemId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/database/Cursor;

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-static {v2, v3, v0}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "[Start]onCreateView()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f030011

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSupportEmoji()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setCacheColorHint(I)V

    :cond_0
    const v0, 0x7f03000a

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mNewCompose:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationHeader:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationTitle:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "[End]onCreateView()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    return-object v0
.end method

.method public onDeleteCompleted()V
    .locals 2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onDeleteStart()V
    .locals 2

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, " onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDraftChanged(JZ)V
    .locals 2

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "post onDraftChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationListFragment$8;-><init>(Lcom/android/mms/ui/ConversationListFragment;JZ)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "\t onNewIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQuery()V

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const-string v2, "Mms/ConversationListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected(),item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteMode()V

    invoke-virtual {p0, v1, v1}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZ)V

    move v0, v1

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.wsomacp"

    const-string v3, "com.wsomacp.WSSClientProvUiList"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareListOptionsMenu(Landroid/view/Menu;)Z
    .locals 9

    const/4 v8, 0x0

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    const/4 v7, 0x0

    :try_start_0
    const-string v0, "content://com.wsomacp.messagelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    const/16 v1, 0xcc

    const/4 v3, 0x0

    const v4, 0x7f090007

    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    const/16 v0, 0xc9

    const v1, 0x104000c

    invoke-interface {p1, v8, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020169

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/16 v0, 0xcd

    const v1, 0x7f090006

    invoke-interface {p1, v8, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020162

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    const/16 v0, 0xcb

    const v1, 0x7f09000a

    invoke-interface {p1, v8, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x202014a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public onResume()V
    .locals 2

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "\t\t onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "\t\t onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->saveToDeleteMode(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "\t onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->refreshFontSize()V

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "mms noti-cancel:sms rejected"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "mms noti-cancel:report"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x378

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startFakeAsyncQuery()V

    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    :cond_0
    sget-boolean v0, Lcom/android/mms/util/DraftCache;->isInvalidDraft:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "\t onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3

    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionCanceled(),itemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionFired(),itemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flickDirection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getNumber(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    :cond_1
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSweepActionFired calling(),itemIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne v3, p2, :cond_3

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3

    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionStarted(),itemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestDrawPointerOnConverationList(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestFocusOnConversationList(J)Z
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->FindThread(Landroid/database/Cursor;J)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestFocus()Z

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized runOneTimeStorageLimitCheckForLegacyMessages()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runOneTimeStorageLimitCheckForLegacyMessages(),autoDeleteEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->markCheckedMessageLimit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$7;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setDeleteModeLayout(ZZ)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeleteModeLayout(),isDeleteMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",requestLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setDeleteMode(Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public setSelectAll(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
