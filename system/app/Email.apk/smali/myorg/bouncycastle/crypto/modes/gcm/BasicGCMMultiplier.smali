.class public Lmyorg/bouncycastle/crypto/modes/gcm/BasicGCMMultiplier;
.super Ljava/lang/Object;
.source "BasicGCMMultiplier.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 1

    invoke-static {p1}, Lmyorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/gcm/BasicGCMMultiplier;->H:[B

    return-void
.end method

.method public multiplyH([B)V
    .locals 9

    const/4 v5, 0x1

    const/16 v8, 0x10

    const/4 v6, 0x0

    new-array v4, v8, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_4

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/modes/gcm/BasicGCMMultiplier;->H:[B

    aget-byte v0, v7, v1

    const/4 v2, 0x7

    :goto_1
    if-ltz v2, :cond_3

    shl-int v7, v5, v2

    and-int/2addr v7, v0

    if-eqz v7, :cond_0

    invoke-static {v4, p1}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    :cond_0
    const/16 v7, 0xf

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    move v3, v5

    :goto_2
    invoke-static {p1}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([B)V

    if-eqz v3, :cond_1

    aget-byte v7, p1, v6

    xor-int/lit8 v7, v7, -0x1f

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    move v3, v6

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v4, v6, p1, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
