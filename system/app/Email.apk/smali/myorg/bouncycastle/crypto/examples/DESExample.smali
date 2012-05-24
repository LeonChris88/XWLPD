.class public Lmyorg/bouncycastle/crypto/examples/DESExample;
.super Ljava/lang/Object;
.source "DESExample.java"


# instance fields
.field private cipher:Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

.field private encrypt:Z

.field private in:Ljava/io/BufferedInputStream;

.field private key:[B

.field private out:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/crypto/examples/DESExample;->encrypt:Z

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/examples/DESExample;->cipher:Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/examples/DESExample;->key:[B

    return-void
.end method
