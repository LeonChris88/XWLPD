.class public Lmyorg/bouncycastle/jce/provider/JCEIESCipher;
.super Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;
.source "JCEIESCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/JCEIESCipher$IES;,
        Lmyorg/bouncycastle/jce/provider/JCEIESCipher$ECIES;,
        Lmyorg/bouncycastle/jce/provider/JCEIESCipher$BrokenIES;,
        Lmyorg/bouncycastle/jce/provider/JCEIESCipher$BrokenECIES;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private cipher:Lmyorg/bouncycastle/crypto/engines/IESEngine;

.field private engineParam:Ljava/security/AlgorithmParameters;

.field private engineParams:Lmyorg/bouncycastle/jce/spec/IESParameterSpec;

.field private state:I


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/engines/IESEngine;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->state:I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->engineParams:Lmyorg/bouncycastle/jce/spec/IESParameterSpec;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lmyorg/bouncycastle/jce/spec/IESParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->availableSpecs:[Ljava/lang/Class;

    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->cipher:Lmyorg/bouncycastle/crypto/engines/IESEngine;

    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-eqz p3, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->cipher:Lmyorg/bouncycastle/crypto/engines/IESEngine;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Lmyorg/bouncycastle/crypto/engines/IESEngine;->processBlock([BII)[B

    move-result-object v0

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0
    :try_end_0
    .catch Lmyorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    new-instance v2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineDoFinal([BII)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-eqz p3, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->cipher:Lmyorg/bouncycastle/crypto/engines/IESEngine;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Lmyorg/bouncycastle/crypto/engines/IESEngine;->processBlock([BII)[B
    :try_end_0
    .catch Lmyorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGetBlockSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 4

    instance-of v2, p1, Lmyorg/bouncycastle/jce/interfaces/IESKey;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "must be passed IE key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/jce/interfaces/IESKey;

    invoke-interface {v0}, Lmyorg/bouncycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    instance-of v2, v2, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lmyorg/bouncycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    :goto_0
    return v2

    :cond_1
    invoke-interface {v0}, Lmyorg/bouncycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    instance-of v2, v2, Lmyorg/bouncycastle/jce/interfaces/ECPrivateKey;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lmyorg/bouncycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/jce/interfaces/ECPrivateKey;

    invoke-interface {v1}, Lmyorg/bouncycastle/jce/interfaces/ECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "not an IE key!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGetOutputSize(I)I
    .locals 2

    iget v0, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x14

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x14

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    if-nez v2, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->engineParams:Lmyorg/bouncycastle/jce/spec/IESParameterSpec;

    if-eqz v2, :cond_0

    const-string v1, "IES"

    :try_start_0
    const-string v2, "myBC"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->engineParams:Lmyorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v3, v3

    if-eq v1, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->availableSpecs:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-virtual {p3, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t handle parameter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    invoke-virtual {p0, p1, p2, v2, p4}, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v0, p3}, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t handle null parameter spec in IES"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/16 v7, 0x10

    const/4 v9, 0x1

    instance-of v6, p2, Lmyorg/bouncycastle/jce/interfaces/IESKey;

    if-nez v6, :cond_0

    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "must be passed IES key"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    if-nez p3, :cond_4

    if-eq p1, v9, :cond_1

    const/4 v6, 0x3

    if-ne p1, v6, :cond_4

    :cond_1
    new-array v0, v7, [B

    new-array v1, v7, [B

    if-nez p4, :cond_2

    new-instance p4, Ljava/security/SecureRandom;

    invoke-direct {p4}, Ljava/security/SecureRandom;-><init>()V

    :cond_2
    invoke-virtual {p4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {p4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p3, Lmyorg/bouncycastle/jce/spec/IESParameterSpec;

    const/16 v6, 0x80

    invoke-direct {p3, v0, v1, v6}, Lmyorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BI)V

    :cond_3
    move-object v2, p2

    check-cast v2, Lmyorg/bouncycastle/jce/interfaces/IESKey;

    invoke-interface {v2}, Lmyorg/bouncycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v6

    instance-of v6, v6, Lmyorg/bouncycastle/jce/interfaces/ECPublicKey;

    if-eqz v6, :cond_5

    invoke-interface {v2}, Lmyorg/bouncycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v5

    invoke-interface {v2}, Lmyorg/bouncycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    :goto_0
    check-cast p3, Lmyorg/bouncycastle/jce/spec/IESParameterSpec;

    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->engineParams:Lmyorg/bouncycastle/jce/spec/IESParameterSpec;

    new-instance v3, Lmyorg/bouncycastle/crypto/params/IESParameters;

    iget-object v6, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->engineParams:Lmyorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v6}, Lmyorg/bouncycastle/jce/spec/IESParameterSpec;->getDerivationV()[B

    move-result-object v6

    iget-object v7, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->engineParams:Lmyorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v7}, Lmyorg/bouncycastle/jce/spec/IESParameterSpec;->getEncodingV()[B

    move-result-object v7

    iget-object v8, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->engineParams:Lmyorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v8}, Lmyorg/bouncycastle/jce/spec/IESParameterSpec;->getMacKeySize()I

    move-result v8

    invoke-direct {v3, v6, v7, v8}, Lmyorg/bouncycastle/crypto/params/IESParameters;-><init>([B[BI)V

    iput p1, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->state:I

    iget-object v6, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    packed-switch p1, :pswitch_data_0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "eeek!"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_4
    instance-of v6, p3, Lmyorg/bouncycastle/jce/spec/IESParameterSpec;

    if-nez v6, :cond_3

    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "must be passed IES parameters"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    invoke-interface {v2}, Lmyorg/bouncycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/jce/provider/DHUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v5

    invoke-interface {v2}, Lmyorg/bouncycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/jce/provider/DHUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    goto :goto_0

    :pswitch_0
    iget-object v6, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->cipher:Lmyorg/bouncycastle/crypto/engines/IESEngine;

    invoke-virtual {v6, v9, v4, v5, v3}, Lmyorg/bouncycastle/crypto/engines/IESEngine;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;Lmyorg/bouncycastle/crypto/CipherParameters;Lmyorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1

    :pswitch_1
    iget-object v6, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->cipher:Lmyorg/bouncycastle/crypto/engines/IESEngine;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4, v5, v3}, Lmyorg/bouncycastle/crypto/engines/IESEngine;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;Lmyorg/bouncycastle/crypto/CipherParameters;Lmyorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unavailable with RSA."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII[BI)I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, 0x0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, 0x0

    return-object v0
.end method
