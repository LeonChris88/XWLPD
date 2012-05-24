.class public Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;
.super Ljava/security/SignatureSpi;
.source "JDKPSSSigner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/JDKPSSSigner$SHA512withRSA;,
        Lmyorg/bouncycastle/jce/provider/JDKPSSSigner$SHA384withRSA;,
        Lmyorg/bouncycastle/jce/provider/JDKPSSSigner$SHA256withRSA;,
        Lmyorg/bouncycastle/jce/provider/JDKPSSSigner$SHA224withRSA;,
        Lmyorg/bouncycastle/jce/provider/JDKPSSSigner$SHA1withRSA;,
        Lmyorg/bouncycastle/jce/provider/JDKPSSSigner$PSSwithRSA;,
        Lmyorg/bouncycastle/jce/provider/JDKPSSSigner$nonePSS;
    }
.end annotation


# instance fields
.field private contentDigest:Lmyorg/bouncycastle/crypto/Digest;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private isRaw:Z

.field private mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

.field private originalSpec:Ljava/security/spec/PSSParameterSpec;

.field private paramSpec:Ljava/security/spec/PSSParameterSpec;

.field private pss:Lmyorg/bouncycastle/crypto/signers/PSSSigner;

.field private saltLength:I

.field private signer:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private trailer:B


# direct methods
.method protected constructor <init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;Z)V

    return-void
.end method

.method protected constructor <init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->signer:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    if-nez p2, :cond_0

    sget-object v0, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    :goto_0
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->getDigest(Ljava/lang/String;)Lmyorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->saltLength:I

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->getTrailer(I)B

    move-result v0

    iput-byte v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->trailer:B

    iput-boolean p3, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->isRaw:Z

    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->setupContentDigest()V

    return-void

    :cond_0
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    goto :goto_0
.end method

.method private getTrailer(I)B
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, -0x44

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown trailer field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setupContentDigest()V
    .locals 1

    iget-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->isRaw:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmyorg/bouncycastle/jce/provider/util/NullDigest;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/util/NullDigest;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->contentDigest:Lmyorg/bouncycastle/crypto/Digest;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->contentDigest:Lmyorg/bouncycastle/crypto/Digest;

    goto :goto_0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineGetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "PSS"

    const-string v2, "myBC"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Supplied key is not a RSAPrivateKey instance"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->signer:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->contentDigest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    iget v4, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->saltLength:I

    iget-byte v5, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->trailer:B

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/Digest;IB)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lmyorg/bouncycastle/crypto/signers/PSSSigner;

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lmyorg/bouncycastle/crypto/signers/PSSSigner;

    const/4 v1, 0x1

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Supplied key is not a RSAPrivateKey instance"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->signer:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->contentDigest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    iget v4, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->saltLength:I

    iget-byte v5, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->trailer:B

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/Digest;IB)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lmyorg/bouncycastle/crypto/signers/PSSSigner;

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lmyorg/bouncycastle/crypto/signers/PSSSigner;

    const/4 v1, 0x1

    new-instance v2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Supplied key is not a RSAPublicKey instance"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lmyorg/bouncycastle/crypto/signers/PSSSigner;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->signer:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->contentDigest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    iget v4, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->saltLength:I

    iget-byte v5, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->trailer:B

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/Digest;IB)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lmyorg/bouncycastle/crypto/signers/PSSSigner;

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lmyorg/bouncycastle/crypto/signers/PSSSigner;

    const/4 v1, 0x0

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    instance-of v3, p1, Ljava/security/spec/PSSParameterSpec;

    if-eqz v3, :cond_5

    move-object v2, p1

    check-cast v2, Ljava/security/spec/PSSParameterSpec;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->isSameDigest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/security/InvalidParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parameter must be using "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MGF1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "unknown mask generation function specified"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    instance-of v3, v3, Ljava/security/spec/MGF1ParameterSpec;

    if-nez v3, :cond_2

    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "unkown MGF parameters"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->isSameDigest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "digest algorithm for MGF should be the same as for PSS parameters."

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->getDigest(Ljava/lang/String;)Lmyorg/bouncycastle/crypto/Digest;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v3, Ljava/security/InvalidParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no match on MGF digest algorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->engineParams:Ljava/security/AlgorithmParameters;

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->mgfDigest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v3

    iput v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->saltLength:I

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v3

    invoke-direct {p0, v3}, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->getTrailer(I)B

    move-result v3

    iput-byte v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->trailer:B

    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->setupContentDigest()V

    return-void

    :cond_5
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "Only PSSParameterSpec supported"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineSign()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lmyorg/bouncycastle/crypto/signers/PSSSigner;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->generateSignature()[B
    :try_end_0
    .catch Lmyorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/CryptoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lmyorg/bouncycastle/crypto/signers/PSSSigner;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->update(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lmyorg/bouncycastle/crypto/signers/PSSSigner;

    invoke-virtual {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->update([BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lmyorg/bouncycastle/crypto/signers/PSSSigner;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/crypto/signers/PSSSigner;->verifySignature([B)Z

    move-result v0

    return v0
.end method
