.class Lmyorg/bouncycastle/crypto/tls/TlsDSSSigner;
.super Lmyorg/bouncycastle/crypto/signers/DSADigestSigner;
.source "TlsDSSSigner.java"


# direct methods
.method constructor <init>()V
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/crypto/signers/DSASigner;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/signers/DSASigner;-><init>()V

    new-instance v1, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/crypto/signers/DSADigestSigner;-><init>(Lmyorg/bouncycastle/crypto/DSA;Lmyorg/bouncycastle/crypto/Digest;)V

    return-void
.end method
