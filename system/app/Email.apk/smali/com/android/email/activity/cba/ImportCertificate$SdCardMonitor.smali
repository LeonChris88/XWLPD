.class Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;
.super Ljava/lang/Object;
.source "ImportCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/cba/ImportCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdCardMonitor"
.end annotation


# instance fields
.field mRootMonitor:Landroid/os/FileObserver;

.field final synthetic this$0:Lcom/android/email/activity/cba/ImportCertificate;


# direct methods
.method constructor <init>(Lcom/android/email/activity/cba/ImportCertificate;)V
    .locals 3

    iput-object p1, p0, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor$1;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor$1;-><init>(Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;Ljava/lang/String;Lcom/android/email/activity/cba/ImportCertificate;)V

    iput-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;->mRootMonitor:Landroid/os/FileObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;->commonHandler(ILjava/lang/String;)V

    return-void
.end method

.method private commonHandler(ILjava/lang/String;)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v0, ".p12"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    new-instance v1, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor$2;-><init>(Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/cba/ImportCertificate;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method startWatching()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;->mRootMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method stopWatching()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;->mRootMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    return-void
.end method
