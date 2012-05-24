.class public Lmyorg/bouncycastle/crypto/params/DSAKeyParameters;
.super Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "DSAKeyParameters.java"


# instance fields
.field private params:Lmyorg/bouncycastle/crypto/params/DSAParameters;


# direct methods
.method public constructor <init>(ZLmyorg/bouncycastle/crypto/params/DSAParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/DSAKeyParameters;->params:Lmyorg/bouncycastle/crypto/params/DSAParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lmyorg/bouncycastle/crypto/params/DSAParameters;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/DSAKeyParameters;->params:Lmyorg/bouncycastle/crypto/params/DSAParameters;

    return-object v0
.end method
