.class public Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;
.super Lmyorg/bouncycastle/crypto/params/ECKeyParameters;
.source "ECPublicKeyParameters.java"


# instance fields
.field Q:Lmyorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/math/ec/ECPoint;Lmyorg/bouncycastle/crypto/params/ECDomainParameters;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lmyorg/bouncycastle/crypto/params/ECKeyParameters;-><init>(ZLmyorg/bouncycastle/crypto/params/ECDomainParameters;)V

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->Q:Lmyorg/bouncycastle/math/ec/ECPoint;

    return-void
.end method


# virtual methods
.method public getQ()Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->Q:Lmyorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method
