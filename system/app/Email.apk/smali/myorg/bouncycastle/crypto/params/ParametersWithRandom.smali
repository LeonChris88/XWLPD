.class public Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
.super Ljava/lang/Object;
.source "ParametersWithRandom.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private parameters:Lmyorg/bouncycastle/crypto/CipherParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->random:Ljava/security/SecureRandom;

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->parameters:Lmyorg/bouncycastle/crypto/CipherParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->parameters:Lmyorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getRandom()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->random:Ljava/security/SecureRandom;

    return-object v0
.end method
