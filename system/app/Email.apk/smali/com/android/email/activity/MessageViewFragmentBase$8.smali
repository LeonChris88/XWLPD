.class Lcom/android/email/activity/MessageViewFragmentBase$8;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->onDownloadAttachmentAll()V
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

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$8;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$8;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2000(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$8;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2002(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$8;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2100(Lcom/android/email/activity/MessageViewFragmentBase;)V

    return-void
.end method
