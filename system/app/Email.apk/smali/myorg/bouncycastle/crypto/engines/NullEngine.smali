.class public Lmyorg/bouncycastle/crypto/engines/NullEngine;
.super Ljava/lang/Object;
.source "NullEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private initialised:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Null"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/NullEngine;->initialised:Z

    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v3, 0x1

    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/NullEngine;->initialised:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Null engine not initialised"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    add-int/lit8 v1, p2, 0x1

    array-length v2, p1

    if-le v1, v2, :cond_1

    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    add-int/lit8 v1, p4, 0x1

    array-length v2, p3

    if-le v1, v2, :cond_2

    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    add-int v1, p4, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public reset()V
    .locals 0

    return-void
.end method
