.class Lcom/android/email/service/AttachmentDownloadService$DownloadComparator;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    iget v3, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    if-eq v2, v3, :cond_1

    iget v2, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    iget v3, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    if-ge v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-wide v2, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    iget-wide v4, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-wide v2, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    iget-wide v4, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    check-cast p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    invoke-virtual {p0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadComparator;->compare(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)I

    move-result v0

    return v0
.end method
