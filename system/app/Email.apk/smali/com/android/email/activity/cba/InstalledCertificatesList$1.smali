.class Lcom/android/email/activity/cba/InstalledCertificatesList$1;
.super Ljava/lang/Object;
.source "InstalledCertificatesList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/cba/InstalledCertificatesList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/cba/InstalledCertificatesList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v3, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    invoke-static {v3}, Lcom/android/email/activity/cba/InstalledCertificatesList;->access$100(Lcom/android/email/activity/cba/InstalledCertificatesList;)Lcom/android/email/cba/CertificateMgr;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/email/cba/CertificateMgr;->getSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    invoke-static {v4}, Lcom/android/email/activity/cba/InstalledCertificatesList;->access$000(Lcom/android/email/activity/cba/InstalledCertificatesList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    invoke-virtual {v3}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0804d2

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "CERTIFICATE_ALIAS"

    const-string v7, "None"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/email/activity/cba/InstalledCertificatesList;->setResult(ILandroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    invoke-virtual {v3}, Lcom/android/email/activity/cba/InstalledCertificatesList;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "CERTIFICATE_ALIAS"

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/email/activity/cba/InstalledCertificatesList;->setResult(ILandroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    invoke-virtual {v3}, Lcom/android/email/activity/cba/InstalledCertificatesList;->finish()V
    :try_end_0
    .catch Lcom/android/emailcommon/cba/CertificateManagerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/android/emailcommon/cba/CertificateManagerException;->printStackTrace()V

    iget-object v3, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    invoke-virtual {v3}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0804cb

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
