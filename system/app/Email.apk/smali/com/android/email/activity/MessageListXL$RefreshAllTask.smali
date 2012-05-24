.class Lcom/android/email/activity/MessageListXL$RefreshAllTask;
.super Landroid/os/AsyncTask;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefreshAllTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Lcom/android/email/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mInboxIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsRefreshableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefreshManager:Lcom/android/email/RefreshManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/email/Clock;Lcom/android/email/RefreshManager;Lcom/android/email/activity/MessageListXLFragmentManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mAccountIdList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mInboxIdList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mIsRefreshableList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mClock:Lcom/android/email/Clock;

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/activity/MessageListXLFragmentManager;)V
    .locals 2

    sget-object v0, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    invoke-static {p1}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/email/activity/MessageListXL$RefreshAllTask;-><init>(Landroid/content/Context;Lcom/android/email/Clock;Lcom/android/email/RefreshManager;Lcom/android/email/activity/MessageListXLFragmentManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 13

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v9, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mAccountIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mInboxIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mIsRefreshableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mAccountIdList:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getInboxId(Landroid/content/Context;J)J

    move-result-wide v11

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mInboxIdList:Ljava/util/ArrayList;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mIsRefreshableList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v11, v12, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isRefreshable(Landroid/content/Context;JZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_1
    const-string v0, "MessageListXL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RefreshAllTask -----Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_1

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    if-eqz v9, :cond_1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 7

    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mIsRefreshableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mIsRefreshableList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mIsRefreshableList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mAccountIdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->mInboxIdList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
