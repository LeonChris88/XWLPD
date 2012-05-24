.class public Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SingleByteCharsetProber.java"


# instance fields
.field private freqChar:I

.field private lastOrder:S

.field private model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

.field private nameProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private reversed:Z

.field private seqCounters:[I

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field private totalChar:I

.field private totalSeqs:I


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->reversed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->nameProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;ZLorg/mozilla/universalchardet/prober/CharsetProber;)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    iput-boolean p2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->reversed:Z

    iput-object p3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->nameProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->reset()V

    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->nameProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->nameProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getConfidence()F
    .locals 4

    const/high16 v3, 0x3f80

    iget v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getTypicalPositiveRatio()F

    move-result v2

    div-float v0, v1, v2

    iget v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->freqChar:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalChar:I

    int-to-float v2, v2

    div-float v0, v1, v2

    cmpl-float v1, v0, v3

    if-ltz v1, :cond_0

    const v0, 0x3f7d70a4

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v0, 0x3c23d70a

    goto :goto_0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 9

    const/16 v8, 0x40

    add-int v2, p2, p3

    move v1, p2

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    aget-byte v5, p1, v1

    invoke-virtual {v4, v5}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getOrder(B)S

    move-result v3

    const/16 v4, 0xfa

    if-ge v3, v4, :cond_0

    iget v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalChar:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalChar:I

    :cond_0
    if-ge v3, v8, :cond_1

    iget v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->freqChar:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->freqChar:I

    iget-short v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->lastOrder:S

    if-ge v4, v8, :cond_1

    iget v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    iget-boolean v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->reversed:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    iget-object v5, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    iget-short v6, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->lastOrder:S

    mul-int/lit8 v6, v6, 0x40

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getPrecedence(I)B

    move-result v5

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    :cond_1
    :goto_1
    iput-short v3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->lastOrder:S

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    iget-object v5, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    mul-int/lit8 v6, v3, 0x40

    iget-short v7, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->lastOrder:S

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getPrecedence(I)B

    move-result v5

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v5, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v4, v5, :cond_4

    iget v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    const/16 v5, 0x400

    if-le v4, v5, :cond_4

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->getConfidence()F

    move-result v0

    const v4, 0x3f733333

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :cond_4
    :goto_2
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v4

    :cond_5
    const v4, 0x3d4ccccd

    cmpg-float v4, v0, v4

    if-gez v4, :cond_4

    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_2
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    const/16 v1, 0xff

    iput-short v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->lastOrder:S

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    iput v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalChar:I

    iput v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->freqChar:I

    return-void
.end method
