.class public Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;
.super Ljava/lang/Object;
.source "SRP6Client.java"


# instance fields
.field protected A:Ljava/math/BigInteger;

.field protected B:Ljava/math/BigInteger;

.field protected N:Ljava/math/BigInteger;

.field protected S:Ljava/math/BigInteger;

.field protected a:Ljava/math/BigInteger;

.field protected digest:Lmyorg/bouncycastle/crypto/Digest;

.field protected g:Ljava/math/BigInteger;

.field protected random:Ljava/security/SecureRandom;

.field protected u:Ljava/math/BigInteger;

.field protected x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateS()Ljava/math/BigInteger;
    .locals 6

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->g:Ljava/math/BigInteger;

    invoke-static {v3, v4, v5}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Util;->calculateK(Lmyorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->u:Ljava/math/BigInteger;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->x:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->a:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->g:Ljava/math/BigInteger;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->x:Ljava/math/BigInteger;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    invoke-virtual {v3, v4, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->B:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    invoke-virtual {v3, v0, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Util;->validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->B:Ljava/math/BigInteger;

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->A:Ljava/math/BigInteger;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->B:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Util;->calculateU(Lmyorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->u:Ljava/math/BigInteger;

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->calculateS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->S:Ljava/math/BigInteger;

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->S:Ljava/math/BigInteger;

    return-object v0
.end method

.method public generateClientCredentials([B[B[B)Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    invoke-static {v0, v1, p1, p2, p3}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Util;->calculateX(Lmyorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;[B[B[B)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->x:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->selectPrivateValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->a:Ljava/math/BigInteger;

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->g:Ljava/math/BigInteger;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->a:Ljava/math/BigInteger;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->A:Ljava/math/BigInteger;

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->A:Ljava/math/BigInteger;

    return-object v0
.end method

.method public init(Ljava/math/BigInteger;Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->g:Ljava/math/BigInteger;

    iput-object p3, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iput-object p4, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method protected selectPrivateValue()Ljava/math/BigInteger;
    .locals 4

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->N:Ljava/math/BigInteger;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->g:Ljava/math/BigInteger;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Util;->generatePrivateValue(Lmyorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
