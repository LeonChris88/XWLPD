.class public Lorg/mozilla/universalchardet/UniversalDetector;
.super Ljava/lang/Object;
.source "UniversalDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/universalchardet/UniversalDetector$InputState;
    }
.end annotation


# instance fields
.field private detectedAllCharset:Ljava/lang/String;

.field private detectedCharset:Ljava/lang/String;

.field private done:Z

.field private escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private gotData:Z

.field private inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

.field private lastChar:B

.field private listener:Lorg/mozilla/universalchardet/CharsetListener;

.field private probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private start:Z


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/CharsetListener;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()V

    return-void
.end method


# virtual methods
.method public dataEnd()V
    .locals 8

    const v7, 0x3e4ccccd

    iget-boolean v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->gotData:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    iget-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/mozilla/universalchardet/CharsetListener;->report(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    iput-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedAllCharset:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v5, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v4, v5, :cond_8

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v4, v4

    if-ge v0, v4, :cond_7

    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_4

    move v2, v3

    move v1, v0

    :cond_4
    cmpl-float v4, v3, v7

    if-lez v4, :cond_5

    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedAllCharset:Ljava/lang/String;

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedAllCharset:Ljava/lang/String;

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedAllCharset:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedAllCharset:Ljava/lang/String;

    goto :goto_2

    :cond_7
    cmpl-float v4, v2, v7

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    iget-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/mozilla/universalchardet/CharsetListener;->report(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v5, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v4, v5, :cond_0

    goto/16 :goto_0
.end method

.method public getDetectedAllCharset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedAllCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getDetectedCharset()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public handleData([BII)V
    .locals 11

    iget-boolean v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p3, :cond_2

    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->gotData:Z

    :cond_2
    iget-boolean v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->start:Z

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->start:Z

    const/4 v8, 0x3

    if-le p3, v8, :cond_7

    aget-byte v8, p1, p2

    and-int/lit16 v0, v8, 0xff

    add-int/lit8 v8, p2, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v1, v8, 0xff

    add-int/lit8 v8, p2, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v2, v8, 0xff

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v3, v8, 0xff

    sparse-switch v0, :sswitch_data_0

    :cond_3
    :goto_1
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    goto :goto_0

    :sswitch_0
    const/16 v8, 0xbb

    if-ne v1, v8, :cond_3

    const/16 v8, 0xbf

    if-ne v2, v8, :cond_3

    sget-object v8, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_8:Ljava/lang/String;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    const/16 v8, 0xff

    if-ne v1, v8, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    sget-object v8, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_3412:Ljava/lang/String;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 v8, 0xff

    if-ne v1, v8, :cond_3

    sget-object v8, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16BE:Ljava/lang/String;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_1

    :sswitch_2
    if-nez v1, :cond_5

    const/16 v8, 0xfe

    if-ne v2, v8, :cond_5

    const/16 v8, 0xff

    if-ne v3, v8, :cond_5

    sget-object v8, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32BE:Ljava/lang/String;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_1

    :cond_5
    if-nez v1, :cond_3

    const/16 v8, 0xff

    if-ne v2, v8, :cond_3

    const/16 v8, 0xfe

    if-ne v3, v8, :cond_3

    sget-object v8, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_2143:Ljava/lang/String;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_1

    :sswitch_3
    const/16 v8, 0xfe

    if-ne v1, v8, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    sget-object v8, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32LE:Ljava/lang/String;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 v8, 0xfe

    if-ne v1, v8, :cond_3

    sget-object v8, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16LE:Ljava/lang/String;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_1

    :cond_7
    add-int v6, p2, p3

    move v5, p2

    :goto_2
    if-ge v5, v6, :cond_f

    aget-byte v8, p1, v5

    and-int/lit16 v4, v8, 0xff

    and-int/lit16 v8, v4, 0x80

    if-eqz v8, :cond_c

    const/16 v8, 0xa0

    if-eq v4, v8, :cond_c

    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v9, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-eq v8, v9, :cond_b

    sget-object v8, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    :cond_8
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    if-nez v8, :cond_9

    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v9, 0x0

    new-instance v10, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;

    invoke-direct {v10}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;-><init>()V

    aput-object v10, v8, v9

    :cond_9
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    if-nez v8, :cond_a

    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v9, 0x1

    new-instance v10, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;

    invoke-direct {v10}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;-><init>()V

    aput-object v10, v8, v9

    :cond_a
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    if-nez v8, :cond_b

    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v9, 0x2

    new-instance v10, Lorg/mozilla/universalchardet/prober/Latin1Prober;

    invoke-direct {v10}, Lorg/mozilla/universalchardet/prober/Latin1Prober;-><init>()V

    aput-object v10, v8, v9

    :cond_b
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_c
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v9, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v8, v9, :cond_e

    const/16 v8, 0x1b

    if-eq v4, v8, :cond_d

    const/16 v8, 0x7b

    if-ne v4, v8, :cond_e

    iget-byte v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->lastChar:B

    const/16 v9, 0x7e

    if-ne v8, v9, :cond_e

    :cond_d
    sget-object v8, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    :cond_e
    aget-byte v8, p1, v5

    iput-byte v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->lastChar:B

    goto :goto_3

    :cond_f
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v9, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v8, v9, :cond_11

    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v8, :cond_10

    new-instance v8, Lorg/mozilla/universalchardet/prober/EscCharsetProber;

    invoke-direct {v8}, Lorg/mozilla/universalchardet/prober/EscCharsetProber;-><init>()V

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    :cond_10
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v8, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v7

    sget-object v8, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v7, v8, :cond_0

    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v8}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v9, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v8, v9, :cond_0

    const/4 v5, 0x0

    :goto_4
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v8, v8

    if-ge v5, v8, :cond_0

    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v8, v8, v5

    invoke-virtual {v8, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v7

    sget-object v8, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v7, v8, :cond_12

    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xef -> :sswitch_0
        0xfe -> :sswitch_1
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    return v0
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->start:Z

    iput-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->gotData:Z

    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-byte v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->lastChar:B

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedAllCharset:Ljava/lang/String;

    return-void
.end method
