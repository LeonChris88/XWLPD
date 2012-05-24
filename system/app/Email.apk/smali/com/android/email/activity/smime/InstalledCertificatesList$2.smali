.class Lcom/android/email/activity/smime/InstalledCertificatesList$2;
.super Ljava/lang/Object;
.source "InstalledCertificatesList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/smime/InstalledCertificatesList;->deleteCertificates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/smime/InstalledCertificatesList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$2;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$2;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-static {v2}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$300(Lcom/android/email/activity/smime/InstalledCertificatesList;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$2;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-static {v2}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$100(Lcom/android/email/activity/smime/InstalledCertificatesList;)Lcom/android/emailcommon/smime/CertificateMgr;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/emailcommon/smime/CertificateMgr;->removeCertificate(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$2;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/smime/InstalledCertificatesList$2$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/smime/InstalledCertificatesList$2$1;-><init>(Lcom/android/email/activity/smime/InstalledCertificatesList$2;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$2;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/smime/InstalledCertificatesList$2$2;

    invoke-direct {v3, p0}, Lcom/android/email/activity/smime/InstalledCertificatesList$2$2;-><init>(Lcom/android/email/activity/smime/InstalledCertificatesList$2;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$2;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeDialog(I)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$2;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-static {v2}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$300(Lcom/android/email/activity/smime/InstalledCertificatesList;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
