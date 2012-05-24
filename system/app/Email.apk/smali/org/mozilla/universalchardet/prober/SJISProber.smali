.class public Lorg/mozilla/universalchardet/prober/SJISProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SJISProber.java"


# static fields
.field private static final smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;


# instance fields
.field private codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

.field private contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/SJISContextAnalysis;

.field private distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;

.field private lastChar:[B

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/SJISSMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/SJISSMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/SJISProber;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v1, Lorg/mozilla/universalchardet/prober/SJISProber;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    invoke-direct {v0, v1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    new-instance v0, Lorg/mozilla/universalchardet/prober/contextanalysis/SJISContextAnalysis;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/contextanalysis/SJISContextAnalysis;-><init>()V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/SJISContextAnalysis;

    new-instance v0, Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;-><init>()V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->lastChar:[B

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SJISProber;->reset()V

    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_SHIFT_JIS:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()F
    .locals 3

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/SJISContextAnalysis;

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/contextanalysis/SJISContextAnalysis;->getConfidence()F

    move-result v0

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;->getConfidence()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    add-int v3, p2, p3

    move v2, p2

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-byte v5, p1, v2

    invoke-virtual {v4, v5}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->nextState(B)I

    move-result v1

    if-ne v1, v8, :cond_2

    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :cond_0
    :goto_1
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->lastChar:[B

    add-int/lit8 v5, v3, -0x1

    aget-byte v5, p1, v5

    aput-byte v5, v4, v7

    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v5, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/SJISContextAnalysis;

    invoke-virtual {v4}, Lorg/mozilla/universalchardet/prober/contextanalysis/SJISContextAnalysis;->gotEnoughData()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SJISProber;->getConfidence()F

    move-result v4

    const v5, 0x3f733333

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :cond_1
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v4

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    invoke-virtual {v4}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->getCurrentCharLen()I

    move-result v0

    if-ne v2, p2, :cond_5

    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->lastChar:[B

    aget-byte v5, p1, p2

    aput-byte v5, v4, v8

    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/SJISContextAnalysis;

    iget-object v5, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->lastChar:[B

    rsub-int/lit8 v6, v0, 0x2

    invoke-virtual {v4, v5, v6, v0}, Lorg/mozilla/universalchardet/prober/contextanalysis/SJISContextAnalysis;->handleOneChar([BII)V

    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;

    iget-object v5, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->lastChar:[B

    invoke-virtual {v4, v5, v7, v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;->handleOneChar([BII)V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/SJISContextAnalysis;

    add-int/lit8 v5, v2, 0x1

    sub-int/2addr v5, v0

    invoke-virtual {v4, p1, v5, v0}, Lorg/mozilla/universalchardet/prober/contextanalysis/SJISContextAnalysis;->handleOneChar([BII)V

    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, p1, v5, v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;->handleOneChar([BII)V

    goto :goto_2
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->reset()V

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/SJISContextAnalysis;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/contextanalysis/SJISContextAnalysis;->reset()V

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;->reset()V

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SJISProber;->lastChar:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method
