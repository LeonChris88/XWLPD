.class Lcom/android/email/activity/MessageListXL$RefreshTask;
.super Landroid/os/AsyncTask;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefreshTask"
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
.field private final mAccountId:J

.field private final mClock:Lcom/android/email/Clock;

.field private final mContext:Landroid/content/Context;

.field mInboxId:J

.field private final mMailboxId:J

.field private final mRefreshManager:Lcom/android/email/RefreshManager;


# direct methods
.method constructor <init>(Landroid/content/Context;JJLcom/android/email/Clock;Lcom/android/email/RefreshManager;Lcom/android/email/activity/MessageListXLFragmentManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p6, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mClock:Lcom/android/email/Clock;

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mContext:Landroid/content/Context;

    iput-object p7, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iput-wide p2, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    iput-wide p4, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mMailboxId:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJLcom/android/email/activity/MessageListXLFragmentManager;)V
    .locals 9

    sget-object v6, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    invoke-static {p1}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/email/activity/MessageListXL$RefreshTask;-><init>(Landroid/content/Context;JJLcom/android/email/Clock;Lcom/android/email/RefreshManager;Lcom/android/email/activity/MessageListXLFragmentManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getInboxId(Landroid/content/Context;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mInboxId:J

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mMailboxId:J

    sget-boolean v3, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isRefreshable(Landroid/content/Context;JZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$RefreshTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL$RefreshTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mMailboxId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    :cond_2
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL$RefreshTask;->shouldRefreshMailboxList()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->refreshMailboxList(J)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL$RefreshTask;->shouldAutoRefreshInbox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mInboxId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$RefreshTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method shouldAutoRefreshInbox()Z
    .locals 7

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mInboxId:J

    iget-wide v5, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mMailboxId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v4, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mInboxId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v4, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mInboxId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/RefreshManager;->getLastMessageListRefreshTime(J)J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long v0, v3, v5

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v3}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method shouldRefreshMailboxList()Z
    .locals 7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v4, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/RefreshManager;->isMailboxListRefreshing(J)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v4, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/RefreshManager;->getLastMailboxListRefreshTime(J)J

    move-result-wide v3

    const-wide/16 v5, 0x7530

    add-long v0, v3, v5

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v3}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
