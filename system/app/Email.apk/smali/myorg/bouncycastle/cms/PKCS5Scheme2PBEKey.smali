.class public Lmyorg/bouncycastle/cms/PKCS5Scheme2PBEKey;
.super Lmyorg/bouncycastle/cms/CMSPBEKey;
.source "PKCS5Scheme2PBEKey.java"


# virtual methods
.method getEncoded(Ljava/lang/String;)[B
    .locals 4

    new-instance v0, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>()V

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/PKCS5Scheme2PBEKey;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v1

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/PKCS5Scheme2PBEKey;->getSalt()[B

    move-result-object v2

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/PKCS5Scheme2PBEKey;->getIterationCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->init([B[BI)V

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    invoke-virtual {v1, p1}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getKeySize(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    return-object v1
.end method
