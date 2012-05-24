.class public Lmyorg/bouncycastle/jce/provider/JDKMessageDigest;
.super Ljava/security/MessageDigest;
.source "JDKMessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$Whirlpool;,
        Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$GOST3411;,
        Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$Tiger;,
        Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$RIPEMD320;,
        Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$RIPEMD256;,
        Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$RIPEMD160;,
        Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$RIPEMD128;,
        Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$MD5;,
        Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$MD4;,
        Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$MD2;,
        Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$SHA512;,
        Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$SHA384;,
        Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$SHA256;,
        Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$SHA224;,
        Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$SHA1;
    }
.end annotation


# instance fields
.field digest:Lmyorg/bouncycastle/crypto/Digest;


# direct methods
.method protected constructor <init>(Lmyorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lmyorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public engineDigest()[B
    .locals 3

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lmyorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public engineReset()V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public engineUpdate(B)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
