.class public Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;
.super Lmyorg/bouncycastle/crypto/params/DSAKeyParameters;
.source "DSAPublicKeyParameters.java"


# instance fields
.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DSAParameters;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lmyorg/bouncycastle/crypto/params/DSAKeyParameters;-><init>(ZLmyorg/bouncycastle/crypto/params/DSAParameters;)V

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->y:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getY()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->y:Ljava/math/BigInteger;

    return-object v0
.end method
