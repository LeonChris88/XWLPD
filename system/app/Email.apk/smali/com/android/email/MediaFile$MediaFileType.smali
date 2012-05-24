.class Lcom/android/email/MediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaFileType"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field fileType:I

.field iconLarge:I

.field iconSmall:I

.field mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/email/MediaFile$MediaFileType;->fileType:I

    iput-object p2, p0, Lcom/android/email/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/email/MediaFile$MediaFileType;->description:Ljava/lang/String;

    iput p4, p0, Lcom/android/email/MediaFile$MediaFileType;->iconSmall:I

    iput p5, p0, Lcom/android/email/MediaFile$MediaFileType;->iconLarge:I

    return-void
.end method
