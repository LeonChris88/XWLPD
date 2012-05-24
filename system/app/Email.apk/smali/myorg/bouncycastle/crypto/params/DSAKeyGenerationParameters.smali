.class public Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;
.super Lmyorg/bouncycastle/crypto/KeyGenerationParameters;
.source "DSAKeyGenerationParameters.java"


# instance fields
.field private params:Lmyorg/bouncycastle/crypto/params/DSAParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lmyorg/bouncycastle/crypto/params/DSAParameters;)V
    .locals 1

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;->params:Lmyorg/bouncycastle/crypto/params/DSAParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lmyorg/bouncycastle/crypto/params/DSAParameters;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;->params:Lmyorg/bouncycastle/crypto/params/DSAParameters;

    return-object v0
.end method
