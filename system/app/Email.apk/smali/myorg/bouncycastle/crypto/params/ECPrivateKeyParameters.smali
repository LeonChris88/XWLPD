.class public Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
.super Lmyorg/bouncycastle/crypto/params/ECKeyParameters;
.source "ECPrivateKeyParameters.java"


# instance fields
.field d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/ECDomainParameters;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lmyorg/bouncycastle/crypto/params/ECKeyParameters;-><init>(ZLmyorg/bouncycastle/crypto/params/ECDomainParameters;)V

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->d:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getD()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->d:Ljava/math/BigInteger;

    return-object v0
.end method
