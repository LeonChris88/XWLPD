.class Lcom/android/email/activity/MailboxListFragment$AllMailboxListLoaderCallbacks;
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
    name = "AllMailboxListLoaderCallbacks"
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
.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MailboxListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$AllMailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MailboxListFragment;Lcom/android/email/activity/MailboxListFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment$AllMailboxListLoaderCallbacks;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

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

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$AllMailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$AllMailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$1400(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MailboxesAdapter;->createLoader(Landroid/content/Context;JI)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Email"

    const-string v1, "Null cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$AllMailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$2700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$AllMailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxesAdapter;->getAllMailboxCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/email/activity/MailboxListFragment$Callback;->setAllMailboxCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MailboxListFragment$AllMailboxListLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
