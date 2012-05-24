.class public Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;
.super Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "ElGamalKeyParameters.java"


# instance fields
.field private params:Lmyorg/bouncycastle/crypto/params/ElGamalParameters;


# direct methods
.method protected constructor <init>(ZLmyorg/bouncycastle/crypto/params/ElGamalParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v2, p1, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getParameters()Lmyorg/bouncycastle/crypto/params/ElGamalParameters;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
