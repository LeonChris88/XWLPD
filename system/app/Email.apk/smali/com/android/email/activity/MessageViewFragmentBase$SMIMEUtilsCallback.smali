.class Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SMIMEUtilsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    return-void
.end method


# virtual methods
.method public attachmentProgress(ZJI)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->attachmentProgress(ZJI)V

    const-string v0, "SMIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMIMEUtilsCallback::attachmentProgress(), displayr true/false :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public displayToast(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->displayToast(I)V

    return-void
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->goBackToMessageList()V

    return-void
.end method

.method public markAsRead(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2400(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    return-void
.end method

.method public messageChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->messageChanged()V

    return-void
.end method

.method public setDownloadSmimeAttachment(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7702(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    return-void
.end method

.method public updateAttachmentCallback(JZLjava/lang/String;)V
    .locals 1

    sput-wide p1, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentId:J

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9102(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0, p4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9202(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
