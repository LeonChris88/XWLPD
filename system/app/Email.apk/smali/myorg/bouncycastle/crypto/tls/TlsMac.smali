.class public Lmyorg/bouncycastle/crypto/tls/TlsMac;
.super Ljava/lang/Object;
.source "TlsMac.java"


# instance fields
.field private mac:Lmyorg/bouncycastle/crypto/macs/HMac;

.field private seqNo:J


# direct methods
.method protected constructor <init>(Lmyorg/bouncycastle/crypto/Digest;[BII)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lmyorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v1, p1}, Lmyorg/bouncycastle/crypto/macs/HMac;-><init>(Lmyorg/bouncycastle/crypto/Digest;)V

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->mac:Lmyorg/bouncycastle/crypto/macs/HMac;

    new-instance v0, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->mac:Lmyorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v1, v0}, Lmyorg/bouncycastle/crypto/macs/HMac;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->seqNo:J

    return-void
.end method


# virtual methods
.method protected calculateMac(S[BII)[B
    .locals 8

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-wide v4, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->seqNo:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->seqNo:J

    invoke-static {v4, v5, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint64(JLjava/io/OutputStream;)V

    invoke-static {p1, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-static {v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Ljava/io/OutputStream;)V

    invoke-static {p4, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->mac:Lmyorg/bouncycastle/crypto/macs/HMac;

    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Lmyorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->mac:Lmyorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v4}, Lmyorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v4

    new-array v3, v4, [B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->mac:Lmyorg/bouncycastle/crypto/macs/HMac;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lmyorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->mac:Lmyorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v4}, Lmyorg/bouncycastle/crypto/macs/HMac;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Internal error during mac calculation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected getSize()I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->mac:Lmyorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v0

    return v0
.end method
