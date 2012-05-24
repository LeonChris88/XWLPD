.class public Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;
.super Ljava/lang/Object;
.source "ParametersWithSBox.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private parameters:Lmyorg/bouncycastle/crypto/CipherParameters;

.field private sBox:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;->parameters:Lmyorg/bouncycastle/crypto/CipherParameters;

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;->sBox:[B

    return-void
.end method


# virtual methods
.method public getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;->parameters:Lmyorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getSBox()[B
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;->sBox:[B

    return-object v0
.end method
