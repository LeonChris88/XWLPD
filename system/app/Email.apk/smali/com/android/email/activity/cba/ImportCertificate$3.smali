.class Lcom/android/email/activity/cba/ImportCertificate$3;
.super Ljava/lang/Object;
.source "ImportCertificate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/cba/ImportCertificate;->createOnDismissListener(I)Landroid/content/DialogInterface$OnDismissListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/cba/ImportCertificate;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/cba/ImportCertificate;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    iput p2, p0, Lcom/android/email/activity/cba/ImportCertificate$3;->val$id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    invoke-virtual {v2}, Lcom/android/email/activity/cba/ImportCertificate;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    invoke-static {v2, v4}, Lcom/android/email/activity/cba/ImportCertificate;->access$602(Lcom/android/email/activity/cba/ImportCertificate;I)I

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    invoke-static {v2}, Lcom/android/email/activity/cba/ImportCertificate;->access$600(Lcom/android/email/activity/cba/ImportCertificate;)I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/cba/ImportCertificate;->showDialog(I)V

    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    const v3, 0x7f10026e

    invoke-static {v2, v3}, Lcom/android/email/activity/cba/ImportCertificate;->access$300(Lcom/android/email/activity/cba/ImportCertificate;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    const v3, 0x7f10026f

    invoke-static {v2, v3}, Lcom/android/email/activity/cba/ImportCertificate;->access$300(Lcom/android/email/activity/cba/ImportCertificate;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/email/activity/cba/ImportCertificate$3$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/email/activity/cba/ImportCertificate$3$1;-><init>(Lcom/android/email/activity/cba/ImportCertificate$3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    invoke-static {v2}, Lcom/android/email/activity/cba/ImportCertificate;->access$600(Lcom/android/email/activity/cba/ImportCertificate;)I

    move-result v2

    if-ne v2, v4, :cond_2

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/email/activity/cba/ImportCertificate$3$2;

    invoke-direct {v3, p0}, Lcom/android/email/activity/cba/ImportCertificate$3$2;-><init>(Lcom/android/email/activity/cba/ImportCertificate$3;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    invoke-static {v2}, Lcom/android/email/activity/cba/ImportCertificate;->access$1100(Lcom/android/email/activity/cba/ImportCertificate;)V

    goto :goto_0
.end method
