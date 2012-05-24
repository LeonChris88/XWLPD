.class Lcom/android/email/activity/UNCSearchResultsList$MediaScannerNotifier;
.super Ljava/lang/Object;
.source "UNCSearchResultsList.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UNCSearchResultsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaScannerNotifier"
.end annotation


# instance fields
.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mContext:Landroid/content/Context;

.field private mFile:Ljava/io/File;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/email/activity/UNCSearchResultsList$MediaScannerNotifier;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/email/activity/UNCSearchResultsList$MediaScannerNotifier;->mFile:Ljava/io/File;

    iput-object p3, p0, Lcom/android/email/activity/UNCSearchResultsList$MediaScannerNotifier;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$MediaScannerNotifier;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    iput-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$MediaScannerNotifier;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$MediaScannerNotifier;->mHandler:Landroid/os/Handler;

    return-void
.end method
