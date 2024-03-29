.class public Lcom/android/internal/telephony/cat/ImageDescriptor;
.super Ljava/lang/Object;
.source "ImageDescriptor.java"


# static fields
.field static final CODING_SCHEME_BASIC:I = 0x11

.field static final CODING_SCHEME_COLOUR:I = 0x21


# instance fields
.field codingScheme:I

.field height:I

.field highOffset:I

.field imageId:I

.field length:I

.field lowOffset:I

.field width:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->width:I

    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->height:I

    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->codingScheme:I

    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->imageId:I

    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->highOffset:I

    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->lowOffset:I

    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->length:I

    return-void
.end method

.method static parse([BI)Lcom/android/internal/telephony/cat/ImageDescriptor;
    .locals 5

    new-instance v0, Lcom/android/internal/telephony/cat/ImageDescriptor;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/ImageDescriptor;-><init>()V

    add-int/lit8 v2, p1, 0x1

    :try_start_0
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->width:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, v2, 0x1

    :try_start_1
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->height:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, p1, 0x1

    :try_start_2
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->codingScheme:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 p1, v2, 0x1

    :try_start_3
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->imageId:I

    iget v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->imageId:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v2, p1, 0x1

    :try_start_4
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->imageId:I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 p1, v2, 0x1

    :try_start_5
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->highOffset:I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    add-int/lit8 v2, p1, 0x1

    :try_start_6
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->lowOffset:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    add-int/lit8 p1, v2, 0x1

    :try_start_7
    aget-byte v3, p0, v2
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v2, p1, 0x1

    :try_start_8
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->length:I
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    move p1, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move p1, v2

    :goto_1
    const-string v3, "ImageDescripter"

    const-string/jumbo v4, "parse; failed parsing image descriptor"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method
