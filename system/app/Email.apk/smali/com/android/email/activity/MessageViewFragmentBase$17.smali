.class Lcom/android/email/activity/MessageViewFragmentBase$17;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->onMarkAsRead(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$17;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    const/4 v11, 0x1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$17;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v5, v5, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$17;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v5, v5, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$17;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v5, v5, -0x801

    iput v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const-string v5, "flags"

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id=?"

    new-array v7, v11, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$17;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v5, v5, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$17;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    const-string v5, "MessageViewFragmentBase >>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "returnvalue == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$17;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v6, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8500(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$17;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const v6, 0x7f0801f3

    invoke-static {v5, v6, v11}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8600(Lcom/android/email/activity/MessageViewFragmentBase;II)V

    goto :goto_0
.end method
