.class Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults$1;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

.field final synthetic val$attachmentId:J

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iput-wide p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults$1;->val$attachmentId:J

    iput-wide p4, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults$1;->val$messageId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults$1;->val$attachmentId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults$1;->val$messageId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v2, v1, v0}, Lcom/android/email/activity/MessageViewForSeven;->startDownloadAttachment(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    :cond_0
    return-void
.end method