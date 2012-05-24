.class public Lmyorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;
.super Lmyorg/bouncycastle/crypto/PBEParametersGenerator;
.source "OpenSSLPBEParametersGenerator.java"


# instance fields
.field private digest:Lmyorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method private generateDerivedKey(I)[B
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v0, v4, [B

    new-array v1, p1, [B

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v6, v6

    invoke-interface {v4, v5, v7, v6}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v6, v6

    invoke-interface {v4, v5, v7, v6}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v0, v7}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v4, v0

    if-le p1, v4, :cond_0

    array-length v2, v0

    :goto_1
    invoke-static {v0, v7, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v2

    sub-int/2addr p1, v2

    if-nez p1, :cond_1

    return-object v1

    :cond_0
    move v2, p1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_0
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedParameters(I)Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public generateDerivedParameters(I)Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    new-instance v1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 4

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v1, p1, p2

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    new-instance v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method
