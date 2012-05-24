.class Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxListLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountChanging:Z

.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxListFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->mAccountChanging:Z

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$1400(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MailboxesAdapter;->createLoader(Landroid/content/Context;JI)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "Email"

    const-string v3, "Null cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$1400(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/MailboxListFragment;->access$2402(Lcom/android/email/activity/MailboxListFragment;J)J

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->mAccountChanging:Z

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/email/activity/MailboxesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v2, v5}, Lcom/android/email/activity/MailboxListFragment;->setListShown(Z)V

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;->restore(Landroid/widget/AbsListView;)V

    :cond_3
    iput-boolean v5, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->mAccountChanging:Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$2500(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$2500(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2, v7}, Lcom/android/email/activity/MailboxListFragment;->access$2502(Lcom/android/email/activity/MailboxListFragment;Lcom/android/emailcommon/utility/Utility$ListStateSaver;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxesAdapter;->setAdapterInfo()V

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v2, v6}, Lcom/android/email/activity/MailboxListFragment;->setListShown(Z)V

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-boolean v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->mAccountChanging:Z

    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->access$2600(Lcom/android/email/activity/MailboxListFragment;Z)V

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxesAdapter;->getChangeMailboxFlag()Z

    move-result v2

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/email/activity/MailboxesAdapter;->setChangeMailboxFlag(Z)V

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$2700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$Callback;

    move-result-object v2

    invoke-interface {v2, v5, v6}, Lcom/android/email/activity/MailboxListFragment$Callback;->setTotalCountFromMailbox(IZ)V

    goto :goto_2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    :cond_0
    return-void
.end method
