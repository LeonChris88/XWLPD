.class Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;
.super Lcom/android/email/Email$Z7ConnectionListener;
.source "AttachmentDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/app/AttachmentDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AttachmentConnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/seven/Z7/app/AttachmentDetailsActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    invoke-direct {p0, p2}, Lcom/android/email/Email$Z7ConnectionListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/seven/Z7/common/Z7ServiceCallback;)V
    .locals 12

    const v11, 0x7f1000df

    const-string v6, "AttachmentDetailsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attachment download listener. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getEventId()I

    move-result v6

    invoke-static {v6}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->fromId(I)Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v0

    const-string v6, "messageId"

    invoke-virtual {p1, v6}, Lcom/seven/Z7/common/Z7ServiceCallback;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v6, "position"

    invoke-virtual {p1, v6}, Lcom/seven/Z7/common/Z7ServiceCallback;->getInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    invoke-static {v6}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$500(Lcom/seven/Z7/app/AttachmentDetailsActivity;)I

    move-result v6

    if-ne v2, v6, :cond_0

    iget-object v6, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    invoke-static {v6}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$600(Lcom/seven/Z7/app/AttachmentDetailsActivity;)I

    move-result v6

    if-ne v5, v6, :cond_0

    if-eqz v0, :cond_0

    const-string v6, "AttachmentDetailsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handling "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/seven/Z7/app/AttachmentDetailsActivity$2;->$SwitchMap$com$seven$Z7$shared$Z7ServiceConstants$SystemCallbackType:[I

    invoke-virtual {v0}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    invoke-static {v6}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$200(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    invoke-static {v6}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$200(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->requery()Z

    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    iget-object v7, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    invoke-static {v7}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$700(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;

    move-result-object v7

    iget v7, v7, Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;->mAccountId:I

    int-to-long v7, v7

    iget-object v9, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    invoke-static {v9}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$700(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;

    move-result-object v9

    iget v9, v9, Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;->mAttachmentId:I

    int-to-long v9, v9

    invoke-static {v6, v7, v8, v9, v10}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$800(Lcom/seven/Z7/app/AttachmentDetailsActivity;JJ)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v6, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    invoke-virtual {v6, v11}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMax()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v6, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    invoke-static {v6}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$100(Lcom/seven/Z7/app/AttachmentDetailsActivity;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "AttachmentDetailsActivity"

    const-string v7, "updateAttachment() fail"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v6, "AttachmentDetailsActivity"

    const-string v7, "updateAttachment() fail"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :pswitch_1
    const-string v6, "AttachmentDetailsActivity"

    const-string v7, "Download failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->setResult(I)V

    iget-object v6, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    invoke-virtual {v6}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->finish()V

    goto :goto_0

    :pswitch_2
    const-string v6, "AttachmentDetailsActivity"

    const-string v7, "downloading canceled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string v6, "downloadProgress"

    invoke-virtual {p1, v6}, Lcom/seven/Z7/common/Z7ServiceCallback;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v6, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    int-to-long v7, v3

    iput-wide v7, v6, Lcom/seven/Z7/app/AttachmentDetailsActivity;->offsetValue:J

    iget-object v6, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    invoke-virtual {v6, v11}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
