.class Lcom/android/email/activity/MessageListXL$MailboxCheckTask;
.super Landroid/os/AsyncTask;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private hasMailboxToMove:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageListXL;Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->hasMailboxToMove:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v15}, Lcom/android/email/activity/MessageListXL;->access$1200(Lcom/android/email/activity/MessageListXL;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v15}, Lcom/android/email/activity/MessageListXL;->access$1200(Lcom/android/email/activity/MessageListXL;)Landroid/database/Cursor;

    move-result-object v15

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_0
    const/4 v15, 0x0

    :goto_0
    return-object v15

    :cond_1
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v15}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v5

    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v15}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v7

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v14, -0x1

    const/4 v9, -0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->hasMailboxToMove:Z

    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v15}, Lcom/android/email/activity/MessageListXL;->access$1200(Lcom/android/email/activity/MessageListXL;)Landroid/database/Cursor;

    move-result-object v15

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-ge v11, v15, :cond_5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v15}, Lcom/android/email/activity/MessageListXL;->access$1200(Lcom/android/email/activity/MessageListXL;)Landroid/database/Cursor;

    move-result-object v15

    invoke-interface {v15, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v15}, Lcom/android/email/activity/MessageListXL;->access$1200(Lcom/android/email/activity/MessageListXL;)Landroid/database/Cursor;

    move-result-object v15

    const/16 v16, 0x7

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v15}, Lcom/android/email/activity/MessageListXL;->access$1200(Lcom/android/email/activity/MessageListXL;)Landroid/database/Cursor;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    sget-object v15, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v15, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(Lcom/android/emailcommon/provider/EmailContent$Account;)I

    move-result v14

    sget-object v15, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v15, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v4}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(Lcom/android/emailcommon/provider/EmailContent$Account;)I

    move-result v9

    cmp-long v15, v2, v5

    if-eqz v15, :cond_4

    const/4 v15, 0x6

    if-eq v9, v15, :cond_2

    const/4 v15, 0x5

    if-ne v9, v15, :cond_3

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x6

    if-eq v14, v15, :cond_2

    const/4 v15, 0x5

    if-eq v14, v15, :cond_2

    :cond_4
    cmp-long v15, v12, v7

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->hasMailboxToMove:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    const/4 v15, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->hasMailboxToMove:Z

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->setMoveToMailboxFlag(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->hasMailboxToMove:Z

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragment;->setMoveToMailboxFlag(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
