.class Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;
.super Landroid/os/AsyncTask;
.source "AccountFolderListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountFolderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAccountsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/AccountFolderListFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/AccountFolderListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/AccountFolderListFragment;Lcom/android/email/activity/AccountFolderListFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;-><init>(Lcom/android/email/activity/AccountFolderListFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;
    .locals 9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderListFragment;->access$200(Lcom/android/email/activity/AccountFolderListFragment;)Landroid/database/MatrixCursor;

    move-result-object v6

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderListFragment;->access$300(Lcom/android/email/activity/AccountFolderListFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderListFragment;->access$300(Lcom/android/email/activity/AccountFolderListFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_0
    return-object v4

    :cond_5
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v6, v4, v0

    const/4 v0, 0x1

    aput-object v7, v4, v0

    const/4 v0, 0x2

    aput-object v8, v4, v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_3

    :cond_0
    if-eqz p1, :cond_2

    aget-object v6, p1, v1

    check-cast v6, Landroid/database/Cursor;

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    aget-object v7, p1, v2

    check-cast v7, Landroid/database/Cursor;

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderListFragment;->access$400(Lcom/android/email/activity/AccountFolderListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    if-eqz v8, :cond_4

    instance-of v0, v8, Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_4

    check-cast v8, Landroid/widget/CursorAdapter;

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_4
    iget-object v9, p0, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    aget-object v0, p1, v1

    check-cast v0, Landroid/database/Cursor;

    aget-object v1, p1, v2

    check-cast v1, Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-static {v2}, Lcom/android/email/activity/AccountFolderListFragment;->access$300(Lcom/android/email/activity/AccountFolderListFragment;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/AccountsAdapter;->getInstance(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/content/Context;JLcom/android/email/activity/AccountsAdapter$Callback;)Lcom/android/email/activity/AccountsAdapter;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/email/activity/AccountFolderListFragment;->access$502(Lcom/android/email/activity/AccountFolderListFragment;Lcom/android/email/activity/AccountsAdapter;)Lcom/android/email/activity/AccountsAdapter;

    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    iget-object v1, p0, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-static {v1}, Lcom/android/email/activity/AccountFolderListFragment;->access$500(Lcom/android/email/activity/AccountFolderListFragment;)Lcom/android/email/activity/AccountsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AccountFolderListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
