.class Lcom/android/email/SncMessagingController$11;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/SncMessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/SncMessagingController;

.field final synthetic val$attachmentId:J

.field final synthetic val$messageId:J


# virtual methods
.method public loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V
    .locals 7

    iget-object v0, p0, Lcom/android/email/SncMessagingController$11;->this$0:Lcom/android/email/SncMessagingController;

    invoke-static {v0}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/SncMessagingController$11;->val$messageId:J

    iget-wide v3, p0, Lcom/android/email/SncMessagingController$11;->val$attachmentId:J

    const/4 v5, 0x1

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$ServiceCallback;->loadAttachmentStatus(JJII)V

    return-void
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .locals 0

    return-void
.end method
