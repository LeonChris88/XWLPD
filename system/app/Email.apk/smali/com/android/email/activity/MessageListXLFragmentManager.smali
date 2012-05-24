.class public Lcom/android/email/activity/MessageListXLFragmentManager;
.super Ljava/lang/Object;
.source "MessageListXLFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageListXLFragmentManager$1;,
        Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;,
        Lcom/android/email/activity/MessageListXLFragmentManager$CommandButtonCallback;,
        Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;,
        Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;
    }
.end annotation


# static fields
.field private static mIsPhone:Z

.field private static mMailboxId:J

.field private static sMessageId:J


# instance fields
.field private mAccountId:J

.field private mContext:Landroid/content/Context;

.field private mIsActivityResumed:Z

.field private mIsSending:Z

.field private mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

.field private mMailboxFinderCallback:Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

.field private mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

.field private mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

.field private mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

.field private mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

.field private mMessageListXL:Lcom/android/email/activity/MessageListXL;

.field private mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

.field private mOrientation:I

.field private mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

.field private mThreePane:Lcom/android/email/activity/ThreePaneLayout;

.field private mThreePaneLayoutCallback:Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    sput-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    new-instance v0, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinderCallback:Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

    new-instance v0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePaneLayoutCallback:Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsSending:Z

    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageViewFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    return-object v0
.end method

.method static synthetic access$1100()J
    .locals 2

    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/ThreePaneLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageListXLFragmentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onMessageViewClosed()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MailboxListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageListXLFragmentManager;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    return v0
.end method

.method private closeMailboxFinder()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    :cond_0
    return-void
.end method

.method private destroyThreePane()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->destroy()V

    :cond_0
    return-void
.end method

.method public static getMailboxId()J
    .locals 2

    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    return-wide v0
.end method

.method public static getMessageId()J
    .locals 2

    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    return-wide v0
.end method

.method public static isPhoneMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    return v0
.end method

.method private onMessageViewClosed()V
    .locals 4

    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    sget v1, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/email/activity/MessageListFragment;->setSelectedMessage(JI)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->clearContent()V

    return-void
.end method

.method private restoreMesasgeListState()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment$State;->restore(Lcom/android/email/activity/MessageListFragment;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    :cond_0
    return-void
.end method

.method private saveMessageListFragmentState()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getState()Lcom/android/email/activity/MessageListFragment$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    :cond_0
    return-void
.end method

.method private startInboxLookup()V
    .locals 6

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->closeMailboxFinder()V

    new-instance v0, Lcom/android/email/activity/MailboxFinder;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinderCallback:Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxFinder;-><init>(Landroid/content/Context;JILcom/android/email/activity/MailboxFinder$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->startLookup()V

    return-void
.end method


# virtual methods
.method public getActualAccountId()J
    .locals 4

    iget-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    goto :goto_0
.end method

.method public getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    return-object v0
.end method

.method public getMessageListFragment()Lcom/android/email/activity/MessageListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    return-object v0
.end method

.method public getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    return-object v0
.end method

.method public getUIAccountId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    return-wide v0
.end method

.method public goBackToMailbox()V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    iget-wide v0, v0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    sput-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()V

    goto :goto_0
.end method

.method public isAccountSelected()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getUIAccountId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMailboxSelected()Z
    .locals 4

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMessageSelected()Z
    .locals 4

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadState(Landroid/os/Bundle;)V
    .locals 12

    const-wide/16 v10, -0x1

    const-string v0, "MessageListXl.state.account_id"

    invoke-virtual {p1, v0, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v0, "MessageListXl.state.mailbox_id"

    invoke-virtual {p1, v0, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "MessageListXl.state.message_id"

    invoke-virtual {p1, v0, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v0, "MessageListXl.state.search_str"

    const-string v7, ""

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "MessageListXl.state.message_list_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListFragment$State;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    cmp-long v0, v1, v10

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v9}, Lcom/android/email/activity/MessageListXL;->setSearchString(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJZZ)V

    goto :goto_0
.end method

.method public onActivityViewReady(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    const v2, 0x7f1001c3

    invoke-interface {v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/ThreePaneLayout;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePaneLayoutCallback:Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/ThreePaneLayout;->setCallback(Lcom/android/email/activity/ThreePaneLayout$Callback;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    invoke-interface {v1}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getLeftPaneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxListFragment;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getMiddlePaneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageListFragment;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getRightPaneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageViewFragment;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getMessageCommandButtons()Lcom/android/email/activity/MessageCommandButtonView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    new-instance v2, Lcom/android/email/activity/MessageListXLFragmentManager$CommandButtonCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/MessageListXLFragmentManager$CommandButtonCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCommandButtonView;->setCallback(Lcom/android/email/activity/MessageCommandButtonView$Callback;)V

    iput p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MailboxListFragment;->onBackPress(Z)Z

    move-result v1

    if-ne v1, v0, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MessageListFragment;->onBackPress(Z)Z

    move-result v1

    if-eq v1, v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageListFragment;->setActionBarDisplayHomeEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/ThreePaneLayout;->onBackPressed(Z)Z

    move-result v0

    iget v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->refreshFragment(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCommandButtonView;->setCallback(Lcom/android/email/activity/MessageCommandButtonView$Callback;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinderCallback:Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->closeMailboxFinder()V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->destroyThreePane()V

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePaneLayoutCallback:Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setCallback(Lcom/android/email/activity/ThreePaneLayout$Callback;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    return-void
.end method

.method public onFragmentSetHasOptionMenu()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MailboxListFragment;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxListFragment;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxListFragment;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxListFragment;->setHasOptionsMenu(Z)V

    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onMailBoxList()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->setActionBarCustom()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->onCancel()V

    return v3
.end method

.method public onPause()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsActivityResumed:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsActivityResumed:Z

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->saveMessageListFragmentState()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsActivityResumed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsActivityResumed:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "MessageListXl.state.account_id"

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "MessageListXl.state.mailbox_id"

    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "MessageListXl.state.message_id"

    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "MessageListXl.state.search_str"

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MessageListXl.state.message_list_state"

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSortBy(I)V
    .locals 5

    const/4 v4, 0x0

    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-static {v4}, Lcom/android/email/activity/MessageListXL;->setSortType(I)V

    :goto_0
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->initListAdapter()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    :cond_0
    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/android/email/activity/MessageListXL;->setSortType(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSplitLookChanged()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visiblePanes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->setActionBarCustomForMessageList()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MailboxListFragment;->setDeleteMode(Z)V

    sget-boolean v1, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v7}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    :goto_0
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v7}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    :cond_0
    :goto_1
    sget-boolean v1, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v7}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onFragmentSetHasOptionMenu()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListFragment;->setListBackgroundColor(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v7}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v7}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    sget-boolean v1, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    goto :goto_1

    :cond_6
    if-ne v0, v6, :cond_0

    iget v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    if-ne v1, v6, :cond_7

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v1

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/android/email/activity/Welcome;->fromWidget:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v7}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->setActionBarCustomForMessageList()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListFragment;->setListBackgroundColor(Z)V

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->controlAccountSpinnerVisible(Z)V

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->controlAccountSpinnerVisible(Z)V

    goto/16 :goto_1
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public refreshFragment(I)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, 0x5

    const/4 v2, 0x1

    iput p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    sget-boolean v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    if-ne v0, v2, :cond_2

    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ThreePaneLayout;->setFragmentWidth(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSplitLookChanged()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightOnlyPane()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane(Z)V

    goto :goto_0

    :cond_3
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightOnlyPane()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ThreePaneLayout;->setFragmentWidth(I)V

    goto :goto_1
.end method

.method public selectAccount(JJJZZ)V
    .locals 8

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectAccount mAccountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p8, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    :cond_2
    iput-wide p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MailboxListFragment;->openMailboxes(J)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->clearContent()V

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    if-nez p8, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->setSortType(I)V

    :cond_3
    sget-boolean v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    :goto_1
    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_7

    const-wide/16 v1, -0x2

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V

    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->onAccountChanged(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()V

    goto :goto_1

    :cond_7
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->startInboxLookup()V

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p5

    move v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V

    goto :goto_2
.end method

.method public selectMailbox(JJZZZ)V
    .locals 6

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    :cond_0
    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_2

    if-eqz p6, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onBackPressed(Z)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p6, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->onCloseSerachWithoutAnimation()V

    :cond_4
    sput-wide p1, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    if-eqz p5, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->doAutoRefresh()V

    :cond_5
    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_8

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->useFlickDown(Z)V

    :goto_1
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsSending:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragment;->setSendingProgressFlag(Z)V

    :goto_2
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->setSearchSpinnerOption()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageListFragment;->openMailbox(J)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->restoreMesasgeListState()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-virtual {v1, v2, v3, p7}, Lcom/android/email/activity/MailboxListFragment;->setSelectedMailbox(JZ)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageViewFragment;->setMailboxId(J)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    iget-wide v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    sget-wide v4, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->onMailboxChanged(JJ)V

    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_d

    sget-boolean v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->useFlickDown(Z)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragment;->setSendingProgressFlag(Z)V

    goto :goto_2

    :cond_8
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsSending:Z

    if-eqz v1, :cond_9

    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    const-wide/16 v3, -0x6

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragment;->setSendingProgressFlag(Z)V

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragment;->setSendingProgressFlag(Z)V

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()V

    goto/16 :goto_0

    :cond_d
    sget v1, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMessage(JI)V

    sget-boolean v1, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v1, :cond_1

    const-string v1, "Z7App"

    const-string v2, "from social Hub!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto/16 :goto_0
.end method

.method public selectMessage(JI)V
    .locals 5

    const/4 v4, 0x1

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    :cond_0
    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->saveMessageListFragmentState()V

    sput-wide p1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    invoke-virtual {v1, v2, v3, p3}, Lcom/android/email/activity/MessageListFragment;->setSelectedMessage(JI)V

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v1

    if-ne v1, v4, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageViewFragment;->openMessage(J)V
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Z7App"

    const-string v2, "can not open email when MessageId is -1"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "MessageListXLFragmentManager"

    const-string v2, "[HJP] selectMessage() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageViewFragment;->openMessage(J)V

    sget-boolean v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    if-eq v1, v4, :cond_3

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showRightOnlyPane()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showRightOnlyPane()V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()V

    goto :goto_0
.end method

.method public setMailboxListFragmentCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MailboxListFragment;->setCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V

    return-void
.end method

.method public setMessageListFragmentCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListFragment;->setCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    return-void
.end method

.method public setMessageViewFragmentCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewFragment;->setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    return-void
.end method

.method public setSendingProgressFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsSending:Z

    return-void
.end method

.method public updateMessageCommandButtons(ZZII)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageViewFragment;->enableNavigationButtonsOnView(ZZII)V

    return-void
.end method
