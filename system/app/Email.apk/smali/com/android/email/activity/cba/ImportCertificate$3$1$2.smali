.class Lcom/android/email/activity/cba/ImportCertificate$3$1$2;
.super Ljava/lang/Object;
.source "ImportCertificate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/cba/ImportCertificate$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/email/activity/cba/ImportCertificate$3$1;


# direct methods
.method constructor <init>(Lcom/android/email/activity/cba/ImportCertificate$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/cba/ImportCertificate$3$1$2;->this$2:Lcom/android/email/activity/cba/ImportCertificate$3$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$3$1$2;->this$2:Lcom/android/email/activity/cba/ImportCertificate$3$1;

    iget-object v0, v0, Lcom/android/email/activity/cba/ImportCertificate$3$1;->this$1:Lcom/android/email/activity/cba/ImportCertificate$3;

    iget-object v0, v0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/cba/ImportCertificate;->showDialog(I)V

    return-void
.end method
