.class Lcom/android/email/activity/cba/ImportCertificate$1;
.super Ljava/lang/Object;
.source "ImportCertificate.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/cba/ImportCertificate;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/cba/ImportCertificate;


# direct methods
.method constructor <init>(Lcom/android/email/activity/cba/ImportCertificate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/cba/ImportCertificate$1;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$1;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/email/activity/cba/ImportCertificate;->access$002(Lcom/android/email/activity/cba/ImportCertificate;Ljava/io/File;)Ljava/io/File;

    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$1;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/cba/ImportCertificate;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
