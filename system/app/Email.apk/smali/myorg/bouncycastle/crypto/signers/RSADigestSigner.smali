.class public Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;
.super Ljava/lang/Object;
.source "RSADigestSigner.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Signer;


# static fields
.field private static final oidMap:Ljava/util/Hashtable;


# instance fields
.field private final algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final digest:Lmyorg/bouncycastle/crypto/Digest;

.field private forSigning:Z

.field private final rsaEngine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128"

    sget-object v2, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160"

    sget-object v2, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "RIPEMD256"

    sget-object v2, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-224"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "MD2"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "MD4"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md4:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "MD5"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private derEncode([B)[B
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/DigestInfo;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1, p1}, Lmyorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/DigestInfo;->getDEREncoded()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

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

    const-string v2, "signing requires private key"

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

    const-string v2, "verification requires public key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->reset()V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v9, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    if-eqz v9, :cond_0

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "RSADigestSigner not initialised for verification"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v9}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v3, v9, [B

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v9, v3, v7}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v10, 0x0

    array-length v11, p1

    invoke-interface {v9, p1, v10, v11}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v5

    invoke-direct {p0, v3}, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->derEncode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    array-length v9, v5

    array-length v10, v1

    if-ne v9, v10, :cond_3

    const/4 v4, 0x0

    :goto_0
    array-length v9, v5

    if-ge v4, v9, :cond_5

    aget-byte v9, v5, v4

    aget-byte v10, v1, v4

    if-eq v9, v10, :cond_2

    :cond_1
    :goto_1
    return v7

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    array-length v9, v5

    array-length v10, v1

    add-int/lit8 v10, v10, -0x2

    if-ne v9, v10, :cond_1

    array-length v9, v5

    array-length v10, v3

    sub-int/2addr v9, v10

    add-int/lit8 v6, v9, -0x2

    array-length v9, v1

    array-length v10, v3

    sub-int/2addr v9, v10

    add-int/lit8 v2, v9, -0x2

    aget-byte v9, v1, v8

    add-int/lit8 v9, v9, -0x2

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    const/4 v9, 0x3

    aget-byte v10, v1, v9

    add-int/lit8 v10, v10, -0x2

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    const/4 v4, 0x0

    :goto_2
    array-length v9, v3

    if-ge v4, v9, :cond_4

    add-int v9, v6, v4

    aget-byte v9, v5, v9

    add-int v10, v2, v4

    aget-byte v10, v1, v10

    if-ne v9, v10, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_5

    aget-byte v9, v5, v4

    aget-byte v10, v1, v4

    if-ne v9, v10, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    move v7, v8

    goto :goto_1
.end method
