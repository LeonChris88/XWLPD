.class Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;
.super Landroid/os/AsyncTask;
.source "MailboxListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAllMailboxes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountKey:J

.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxListFragment;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-wide p2, p0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->mAccountKey:J

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 8

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$3000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND type<64 AND type!=8 AND flagVisible=1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->mAccountKey:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 3

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$2900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$2900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$3000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p1, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    :cond_3
    if-eqz p1, :cond_0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
