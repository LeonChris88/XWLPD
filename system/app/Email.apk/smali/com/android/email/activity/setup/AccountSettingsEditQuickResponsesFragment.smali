.class public Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;
.super Landroid/app/Fragment;
.source "AccountSettingsEditQuickResponsesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;,
        Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;
    }
.end annotation


# static fields
.field private static mDeleteItem:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/emailcommon/provider/QuickResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mContext:Landroid/content/Context;

.field private mDeleteMode:Z

.field private mQuickResponsesView:Landroid/widget/ListView;

.field private mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mDeleteMode:Z

    return-void
.end method

.method static synthetic access$200()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mDeleteItem:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponsesView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "AccountSettingsEditQuickResponsesFragment.title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Email"

    const-string v2, "AccountSettingsEditQuickResponsesFragment onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    new-instance v1, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v1}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mDeleteItem:Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0f0007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    const/4 v8, 0x0

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Email"

    const-string v1, "AccountSettingsEditQuickResponsesFragment onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v10, 0x7f040007

    invoke-virtual {p1, v10, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f100027

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponsesView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponsesView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f100028

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponsesView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponsesView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;JLandroid/widget/ListView;Landroid/content/Context;Landroid/app/FragmentManager;Landroid/widget/AdapterView$OnItemClickListener;Z)V

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/QuickResponse;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-object v11
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return v10

    :sswitch_0
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mDeleteMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v0, v1}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->newInstance(Lcom/android/emailcommon/provider/QuickResponse;J)Lcom/android/email/activity/setup/EditQuickResponseDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mDeleteMode:Z

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponsesView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mDeleteMode:Z

    invoke-direct/range {v0 .. v8}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;JLandroid/widget/ListView;Landroid/content/Context;Landroid/app/FragmentManager;Landroid/widget/AdapterView$OnItemClickListener;Z)V

    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mDeleteItem:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    :cond_1
    iput-boolean v9, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mDeleteMode:Z

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponsesView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mDeleteMode:Z

    invoke-direct/range {v0 .. v8}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;JLandroid/widget/ListView;Landroid/content/Context;Landroid/app/FragmentManager;Landroid/widget/AdapterView$OnItemClickListener;Z)V

    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    :sswitch_3
    iput-boolean v9, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mDeleteMode:Z

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponsesView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mDeleteMode:Z

    invoke-direct/range {v0 .. v8}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;JLandroid/widget/ListView;Landroid/content/Context;Landroid/app/FragmentManager;Landroid/widget/AdapterView$OnItemClickListener;Z)V

    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100029 -> :sswitch_3
        0x7f10002a -> :sswitch_2
        0x7f1002bb -> :sswitch_0
        0x7f1002bc -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mDeleteMode:Z

    if-ne v2, v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f10002a

    if-eq v2, v3, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f100029

    if-eq v2, v3, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f1002bb

    if-eq v2, v3, :cond_2

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f1002bc

    if-eq v2, v3, :cond_2

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v1, "AccountSettingsEditQuickResponsesFragment.title"

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
