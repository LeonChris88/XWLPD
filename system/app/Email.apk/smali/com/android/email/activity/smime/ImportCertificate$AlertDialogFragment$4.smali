.class Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;
.super Ljava/lang/Object;
.source "ImportCertificate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->onDismissDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$dialogId:I

.field final synthetic val$renameData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    iput p2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;->val$dialogId:I

    iput-object p3, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;->val$renameData:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;->val$data:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;->val$dialogId:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;->val$renameData:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/email/activity/smime/ImportCertificate;->access$1300(Lcom/android/email/activity/smime/ImportCertificate;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/activity/smime/ImportCertificate;->access$500(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/email/activity/smime/ImportCertificate;->access$100(Lcom/android/email/activity/smime/ImportCertificate;I)V

    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;->val$data:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/email/activity/smime/ImportCertificate;->access$1400(Lcom/android/email/activity/smime/ImportCertificate;Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/email/activity/smime/ImportCertificate;->access$600(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/activity/smime/ImportCertificate;->access$600(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    :cond_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$4;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/activity/smime/ImportCertificate;->access$500(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
