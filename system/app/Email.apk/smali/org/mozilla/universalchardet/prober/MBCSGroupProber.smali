.class public Lorg/mozilla/universalchardet/prober/MBCSGroupProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "MBCSGroupProber.java"


# instance fields
.field private activeNum:I

.field private bestGuess:I

.field private bestGuess2:I

.field private isActive:[Z

.field private probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x7

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    new-array v0, v1, [Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->isActive:[Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x0

    new-instance v2, Lorg/mozilla/universalchardet/prober/UTF8Prober;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/UTF8Prober;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x1

    new-instance v2, Lorg/mozilla/universalchardet/prober/SJISProber;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/SJISProber;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x2

    new-instance v2, Lorg/mozilla/universalchardet/prober/EUCJPProber;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/EUCJPProber;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x3

    new-instance v2, Lorg/mozilla/universalchardet/prober/GB18030Prober;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/GB18030Prober;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x4

    new-instance v2, Lorg/mozilla/universalchardet/prober/EUCKRProber;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/EUCKRProber;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x5

    new-instance v2, Lorg/mozilla/universalchardet/prober/Big5Prober;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/Big5Prober;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x6

    new-instance v2, Lorg/mozilla/universalchardet/prober/EUCTWProber;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/EUCTWProber;-><init>()V

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->reset()V

    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    iget v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->getConfidence()F

    iget v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    :cond_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    iget v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess2:I

    if-eq v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    iget v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess2:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getConfidence()F
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v3, v4, :cond_0

    const v3, 0x3f7d70a4

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v3, v4, :cond_1

    const v3, 0x3c23d70a

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->isActive:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v1

    cmpg-float v3, v0, v1

    if-gez v3, :cond_4

    move v0, v1

    iput v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    goto :goto_2

    :cond_4
    cmpl-float v3, v0, v1

    if-nez v3, :cond_2

    iput v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess2:I

    goto :goto_2

    :cond_5
    move v3, v0

    goto :goto_0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x1

    new-array v0, p3, [B

    const/4 v1, 0x0

    add-int v5, p2, p3

    move v3, p2

    move v2, v1

    :goto_0
    if-ge v3, v5, :cond_1

    aget-byte v7, p1, v3

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_0

    add-int/lit8 v1, v2, 0x1

    aget-byte v7, p1, v3

    aput-byte v7, v0, v2

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_6

    add-int/lit8 v1, v2, 0x1

    aget-byte v7, p1, v3

    aput-byte v7, v0, v2

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget-object v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v7, v7

    if-ge v3, v7, :cond_4

    iget-object v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->isActive:[Z

    aget-boolean v7, v7, v3

    if-nez v7, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v7, v7, v3

    invoke-virtual {v7, v0, v8, v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v6

    sget-object v7, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v6, v7, :cond_5

    iput v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    sget-object v7, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :cond_4
    :goto_3
    iget-object v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v7

    :cond_5
    sget-object v7, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v6, v7, :cond_2

    iget-object v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->isActive:[Z

    aput-boolean v8, v7, v3

    iget v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    iget v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    if-gtz v7, :cond_2

    sget-object v7, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public reset()V
    .locals 4

    const/4 v3, -0x1

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->isActive:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    iget v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    iput v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess2:I

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-void
.end method
