.class Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SMIMEUtilsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method


# virtual methods
.method public attachmentProgress(ZJI)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageCompose;->attachmentProgress(Z)V

    return-void
.end method

.method public displayToast(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageCompose;->displayToast(I)V

    return-void
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->finish()V

    return-void
.end method

.method public markAsRead(Z)V
    .locals 0

    return-void
.end method

.method public messageChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->messageChanged()V

    return-void
.end method

.method public setDownloadSmimeAttachment(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageCompose;->access$8802(Lcom/android/email/activity/MessageCompose;Z)Z

    return-void
.end method

.method public updateAttachmentCallback(JZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->access$12402(Lcom/android/email/activity/MessageCompose;J)J

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0, p3}, Lcom/android/email/activity/MessageCompose;->access$12502(Lcom/android/email/activity/MessageCompose;Z)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0, p4}, Lcom/android/email/activity/MessageCompose;->access$12602(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
