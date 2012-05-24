.class public Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
.super Ljava/lang/Object;
.source "AsymmetricCipherKeyPair.java"


# instance fields
.field private privateParam:Lmyorg/bouncycastle/crypto/CipherParameters;

.field private publicParam:Lmyorg/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/CipherParameters;Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lmyorg/bouncycastle/crypto/CipherParameters;

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lmyorg/bouncycastle/crypto/CipherParameters;

    return-void
.end method


# virtual methods
.method public getPrivate()Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lmyorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getPublic()Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lmyorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method
