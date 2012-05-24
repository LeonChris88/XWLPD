.class public Lmyorg/bouncycastle/crypto/signers/DSADigestSigner;
.super Ljava/lang/Object;
.source "DSADigestSigner.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Signer;


# instance fields
.field private final digest:Lmyorg/bouncycastle/crypto/Digest;

.field private final dsaSigner:Lmyorg/bouncycastle/crypto/DSA;

.field private forSigning:Z


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/DSA;Lmyorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/signers/DSADigestSigner;->dsaSigner:Lmyorg/bouncycastle/crypto/DSA;

    return-void
.end method

.method private derDecode([B)[Ljava/math/BigInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v2, v4

    return-object v2
.end method


# virtual methods
.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/signers/DSADigestSigner;->forSigning:Z

    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Signing Requires Private Key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p2

    check-cast v0, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Verification Requires Public Key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/signers/DSADigestSigner;->reset()V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/signers/DSADigestSigner;->dsaSigner:Lmyorg/bouncycastle/crypto/DSA;

    invoke-interface {v1, p1, p2}, Lmyorg/bouncycastle/crypto/DSA;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 7

    const/4 v3, 0x0

    iget-boolean v4, p0, Lmyorg/bouncycastle/crypto/signers/DSADigestSigner;->forSigning:Z

    if-eqz v4, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "DSADigestSigner not initialised for verification"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v1, v4, [B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v1, v3}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/signers/DSADigestSigner;->derDecode([B)[Ljava/math/BigInteger;

    move-result-object v2

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/DSADigestSigner;->dsaSigner:Lmyorg/bouncycastle/crypto/DSA;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-interface {v4, v1, v5, v6}, Lmyorg/bouncycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v0

    goto :goto_0
.end method
