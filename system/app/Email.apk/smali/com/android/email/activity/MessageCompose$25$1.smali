.class Lcom/android/email/activity/MessageCompose$25$1;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$25;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$25;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$25;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$25$1;->this$1:Lcom/android/email/activity/MessageCompose$25;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "MessageCompose mSmimeProgressDialog"

    const-string v1, "Inside onKey:"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$25$1;->this$1:Lcom/android/email/activity/MessageCompose$25;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$8900(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$25$1;->this$1:Lcom/android/email/activity/MessageCompose$25;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$25;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
