.class public Lorg/mozilla/universalchardet/prober/UTF8Prober;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "UTF8Prober.java"


# static fields
.field private static final smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;


# instance fields
.field private codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

.field private numOfMBChar:I

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v1, Lorg/mozilla/universalchardet/prober/UTF8Prober;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    invoke-direct {v0, v1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/UTF8Prober;->reset()V

    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_8:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()F
    .locals 4

    const v1, 0x3f7d70a4

    iget v2, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    if-ge v0, v2, :cond_0

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v1

    :goto_1
    return v2

    :cond_1
    const v2, 0x3f7d70a4

    goto :goto_1
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 6

    const/4 v5, 0x2

    add-int v2, p2, p3

    move v1, p2

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-byte v4, p1, v1

    invoke-virtual {v3, v4}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->nextState(B)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v3, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :cond_0
    :goto_1
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/UTF8Prober;->getConfidence()F

    move-result v3

    const v4, 0x3f733333

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v3, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :cond_1
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v3

    :cond_2
    if-ne v0, v5, :cond_3

    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v3, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    invoke-virtual {v3}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->getCurrentCharLen()I

    move-result v3

    if-lt v3, v5, :cond_4

    iget v3, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-void
.end method
