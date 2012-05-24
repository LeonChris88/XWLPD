.class public Lorg/mozilla/universalchardet/prober/Latin1Prober;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "Latin1Prober.java"


# static fields
.field private static final latin1CharToClass:[B

.field private static final latin1ClassModel:[B


# instance fields
.field private freqCounter:[I

.field private lastCharClass:B

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->latin1CharToClass:[B

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->latin1ClassModel:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x7t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x5t
        0x1t
        0x5t
        0x0t
        0x5t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x7t
        0x1t
        0x7t
        0x0t
        0x7t
        0x5t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x1t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x1t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
    .end array-data

    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x1t
        0x1t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x1t
        0x2t
        0x1t
        0x2t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
        0x3t
        0x0t
        0x3t
        0x1t
        0x3t
        0x1t
        0x1t
        0x3t
        0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/Latin1Prober;->reset()V

    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1252:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()F
    .locals 5

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v3, v4, :cond_0

    const v0, 0x3c23d70a

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-gtz v2, :cond_3

    const/4 v0, 0x0

    :goto_2
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    const/high16 v3, 0x3f00

    mul-float/2addr v0, v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    mul-float/2addr v3, v4

    int-to-float v4, v2

    div-float v0, v3, v4

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x41a0

    mul-float/2addr v3, v4

    int-to-float v4, v2

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    goto :goto_2
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 9

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/Latin1Prober;->filterWithEnglishLetters([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-byte v7, v4, v3

    and-int/lit16 v0, v7, 0xff

    sget-object v7, Lorg/mozilla/universalchardet/prober/Latin1Prober;->latin1CharToClass:[B

    aget-byte v1, v7, v0

    sget-object v7, Lorg/mozilla/universalchardet/prober/Latin1Prober;->latin1ClassModel:[B

    iget-byte v8, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->lastCharClass:B

    mul-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v1

    aget-byte v2, v7, v8

    if-nez v2, :cond_1

    sget-object v7, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v7, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :cond_0
    iget-object v7, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v7

    :cond_1
    iget-object v7, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    aget v8, v7, v2

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, v2

    iput-byte v1, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->lastCharClass:B

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    const/4 v1, 0x1

    iput-byte v1, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->lastCharClass:B

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
