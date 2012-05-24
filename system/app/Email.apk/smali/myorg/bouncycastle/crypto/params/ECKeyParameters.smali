.class public Lmyorg/bouncycastle/crypto/params/ECKeyParameters;
.super Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "ECKeyParameters.java"


# instance fields
.field params:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method protected constructor <init>(ZLmyorg/bouncycastle/crypto/params/ECDomainParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/ECKeyParameters;->params:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ECKeyParameters;->params:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    return-object v0
.end method
