.class public Lcom/android/email/activity/MessageListXL$MessageCheckerTask;
.super Landroid/os/AsyncTask;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageCheckerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mMessageIds:[J

.field private final mMoveType:I

.field private final mTargetAccountId:J

.field private final mTargetMailboxId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageListXL;Landroid/app/Activity;JJ[J[Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mActivity:Landroid/app/Activity;

    iput-wide p3, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mTargetAccountId:J

    iput-wide p5, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mTargetMailboxId:J

    iput-object p7, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mMessageIds:[J

    iput p9, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mMoveType:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 14

    const/4 v13, 0x1

    const-wide/16 v11, -0x1

    iget-object v9, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mMessageIds:[J

    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_4

    aget-wide v7, v2, v4

    invoke-static {v3, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v9, v0, v11

    if-nez v9, :cond_3

    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    :cond_2
    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v3, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->canMoveFrom(Landroid/content/Context;J)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mActivity:Landroid/app/Activity;

    const v10, 0x7f080089

    invoke-static {v9, v10, v13}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :goto_1
    return-object v9

    :cond_3
    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    cmp-long v9, v9, v0

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mActivity:Landroid/app/Activity;

    const v10, 0x7f080088

    invoke-static {v9, v10, v13}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_1

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mMoveType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2800(Lcom/android/email/activity/MessageListXL;)V

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mActivity:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mTargetAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mTargetMailboxId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mMessageIds:[J

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/ActivityHelper;->moveMessages(Landroid/app/Activity;JJ[J)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2800(Lcom/android/email/activity/MessageListXL;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
