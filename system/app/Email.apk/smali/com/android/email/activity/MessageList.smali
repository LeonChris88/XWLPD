.class public Lcom/android/email/activity/MessageList;
.super Landroid/app/Activity;
.source "MessageList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/email/activity/MessageListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageList$1;,
        Lcom/android/email/activity/MessageList$MailboxFinderCallback;,
        Lcom/android/email/activity/MessageList$ControllerResults;,
        Lcom/android/email/activity/MessageList$SetTitleTask;
    }
.end annotation


# static fields
.field private static final ACCOUNT_NAME_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_NAME_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/ControllerResultUiThreadWrapper",
            "<",
            "Lcom/android/email/activity/MessageList$ControllerResults;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteButton:Landroid/widget/Button;

.field private mErrorBanner:Landroid/widget/TextView;

.field private mFavoriteButton:Landroid/widget/Button;

.field private mLeftTitle:Landroid/widget/TextView;

.field private mListFragment:Lcom/android/email/activity/MessageListFragment;

.field private mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

.field private mMailboxFinderCallback:Lcom/android/email/activity/MessageList$MailboxFinderCallback;

.field private mMenuCreated:Z

.field private mMultiSelectPanel:Landroid/view/View;

.field private mProgressIcon:Landroid/widget/ProgressBar;

.field private mReadUnreadButton:Landroid/widget/Button;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "accountKey"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_NAME_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/MessageList;->ACCOUNT_NAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    new-instance v0, Lcom/android/email/activity/MessageList$MailboxFinderCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageList$MailboxFinderCallback;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailboxFinderCallback:Lcom/android/email/activity/MessageList$MailboxFinderCallback;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$SetTitleTask;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$SetTitleTask;)Lcom/android/email/activity/MessageList$SetTitleTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->launchWelcomeAndFinish()V

    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_NAME_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessageList;->ACCOUNT_NAME_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageList;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageList;->setTitleAccountName(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLeftTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageList;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->showProgressIcon(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->showErrorBanner(Ljava/lang/String;)V

    return-void
.end method

.method public static actionHandleAccount(Landroid/content/Context;JI)V
    .locals 6

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static actionHandleAccountIntent(Landroid/content/Context;JJI)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.android.email.activity.MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.android.email.activity.MAILBOX_TYPE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static actionHandleMailbox(Landroid/content/Context;J)V
    .locals 6

    const-wide/16 v1, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static actionOpenAccountInboxUuid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-wide/16 v1, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v6

    invoke-static {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getShortcutSafeUriFromUuid(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;
    .locals 4

    const-wide/16 v2, -0x1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    cmp-long v1, p3, v2

    if-eqz v1, :cond_1

    const-string v1, "com.android.email.activity.MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    const/4 v1, -0x1

    if-eq p5, v1, :cond_2

    const-string v1, "com.android.email.activity.MAILBOX_TYPE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    return-object v0
.end method

.method private launchWelcomeAndFinish()V
    .locals 0

    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    return-void
.end method

.method private onAccounts()V
    .locals 0

    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    return-void
.end method

.method private onCompose()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    return-void
.end method

.method private onEditAccount()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->actionSettings(Landroid/app/Activity;J)V

    return-void
.end method

.method private onFolders()V
    .locals 3

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->isMagicMailbox()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/MailboxList;->actionHandleAccount(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method

.method private selectAccountAndMailbox(Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    const-wide/16 v0, -0x1

    const-string v5, "com.android.email.activity.MAILBOX_ID"

    invoke-virtual {p1, v5, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v5, v6, v0

    if-eqz v5, :cond_0

    new-instance v0, Lcom/android/email/activity/MessageList$SetTitleTask;

    invoke-direct {v0, p0, v6, v7}, Lcom/android/email/activity/MessageList$SetTitleTask;-><init>(Lcom/android/email/activity/MessageList;J)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$SetTitleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v6, v7}, Lcom/android/email/activity/MessageListFragment;->openMailbox(J)V

    :goto_0
    return-void

    :cond_0
    const-string v5, "com.android.email.activity.MAILBOX_TYPE"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_2

    move-wide v2, v0

    :goto_1
    cmp-long v5, v2, v0

    if-nez v5, :cond_1

    const-string v5, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {p1, v5, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    :cond_1
    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->launchWelcomeAndFinish()V

    goto :goto_0

    :cond_2
    invoke-static {p0, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdFromShortcutSafeUri(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/android/email/activity/MailboxFinder;

    iget-object v5, p0, Lcom/android/email/activity/MessageList;->mMailboxFinderCallback:Lcom/android/email/activity/MessageList$MailboxFinderCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxFinder;-><init>(Landroid/content/Context;JILcom/android/email/activity/MailboxFinder$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->startLookup()V

    goto :goto_0
.end method

.method private setTitleAccountName(Ljava/lang/String;Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const v2, 0x7f10014c

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f10014b

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showErrorBanner(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    const v2, 0x7f050007

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    const v2, 0x7f050008

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private showProgressIcon(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mProgressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method getListFragmentForTest()Lcom/android/email/activity/MessageListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onAccounts()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleRead()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleFavorite()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onMultiDelete()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onAccounts()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f10014c -> :sswitch_3
        0x7f1001b2 -> :sswitch_0
        0x7f1001b3 -> :sswitch_1
        0x7f1001b4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onComposeFromMessageListFragment()V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onCompose()V

    return-void
.end method

.method public onConversationMoveAlways([J[Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    const v0, 0x7f04007a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->setContentView(I)V

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/email/activity/MessageList$ControllerResults;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/MessageList$ControllerResults;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1001b0

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListFragment;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    const v0, 0x7f1001b1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    const v0, 0x7f1001b2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    const v0, 0x7f1001b3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    const v0, 0x7f1001b4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    const v0, 0x7f10014a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mLeftTitle:Landroid/widget/TextView;

    const v0, 0x7f10014d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressIcon:Landroid/widget/ProgressBar;

    const v0, 0x7f1000f5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10014c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MessageListFragment;->setCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageList;->selectAccountAndMailbox(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->cancel()V

    iput-object v1, p0, Lcom/android/email/activity/MessageList;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    return-void
.end method

.method public onEnterSelectionMode(Z)V
    .locals 0

    return-void
.end method

.method public onFollowUpViewShown()V
    .locals 0

    return-void
.end method

.method public onForward(J)V
    .locals 0

    return-void
.end method

.method public onMailBoxList()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    return-void
.end method

.method public onMailboxNotFound()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    return-void
.end method

.method public onMessageOpen(JJJI)V
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne p7, v1, :cond_0

    invoke-static {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionEditDraft(Landroid/content/Context;J)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p5, p6}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJ)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2, p5, p6}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJ)V

    goto :goto_0
.end method

.method public onMoveMessages([J)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageListFragment;->onRefresh(Z)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onFolders()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onAccounts()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onCompose()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onEditAccount()V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1002ae -> :sswitch_3
        0x7f1002b4 -> :sswitch_4
        0x7f1002d5 -> :sswitch_0
        0x7f1002f8 -> :sswitch_5
        0x7f1002f9 -> :sswitch_1
        0x7f1002fa -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/android/email/activity/MessageList;->mMenuCreated:Z

    if-nez v2, :cond_1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageList;->mMenuCreated:Z

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->isMagicMailbox()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0f0021

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getSelectedCount()I

    move-result v2

    if-lez v2, :cond_3

    :goto_2
    const v1, 0x7f1002f7

    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0f0020

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public onRefreshFromMessageListFragment()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    return-void
.end method

.method public onReply(J)V
    .locals 0

    return-void
.end method

.method public onReplyAll(J)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    invoke-static {}, Lcom/android/email/Email;->getNotifyUiAccountsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    :cond_0
    return-void
.end method

.method public onSearchFromMessageListFragment()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    return-void
.end method

.method public refreshAllAccount()V
    .locals 0

    return-void
.end method

.method public setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItem;)V
    .locals 0

    return-void
.end method

.method public setSubItemCheckboxPressed(ZLcom/android/email/activity/MessageListSubTitleItem;)V
    .locals 0

    return-void
.end method

.method public setTimeFormat(Ljava/text/DateFormat;Ljava/text/DateFormat;Ljava/text/DateFormat;)V
    .locals 0

    return-void
.end method
