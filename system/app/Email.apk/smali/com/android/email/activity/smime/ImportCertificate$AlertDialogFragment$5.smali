.class Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$5;
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


# direct methods
.method constructor <init>(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$5;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$5;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/smime/ImportCertificate;->access$700(Lcom/android/email/activity/smime/ImportCertificate;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$5;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/smime/ImportCertificate;->access$1500(Lcom/android/email/activity/smime/ImportCertificate;)Lcom/android/emailcommon/smime/CertificateMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$5;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/activity/smime/ImportCertificate;->access$700(Lcom/android/email/activity/smime/ImportCertificate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/smime/CertificateMgr;->removeCertificate(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$5;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/email/activity/smime/ImportCertificate;->access$802(Lcom/android/email/activity/smime/ImportCertificate;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
