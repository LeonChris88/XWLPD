.class public Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;
.super Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;
.source "JCEKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESede"
.end annotation


# instance fields
.field private keySizeSet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "DESede"

    const/16 v1, 0xc0

    new-instance v2, Lmyorg/bouncycastle/crypto/generators/DESedeKeyGenerator;

    invoke-direct {v2}, Lmyorg/bouncycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILmyorg/bouncycastle/crypto/CipherKeyGenerator;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;->keySizeSet:Z

    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 6

    const/4 v5, 0x0

    iget-boolean v1, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lmyorg/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v2, Lmyorg/bouncycastle/crypto/KeyGenerationParameters;

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iget v4, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    iput-boolean v5, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    :cond_0
    iget-boolean v1, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;->keySizeSet:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lmyorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v0

    const/16 v1, 0x10

    const/16 v2, 0x8

    invoke-static {v0, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->algName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lmyorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->algName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->engineInit(ILjava/security/SecureRandom;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;->keySizeSet:Z

    return-void
.end method
