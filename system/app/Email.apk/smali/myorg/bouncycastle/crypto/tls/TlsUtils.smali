.class public Lmyorg/bouncycastle/crypto/tls/TlsUtils;
.super Ljava/lang/Object;
.source "TlsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static PRF([B[B[B[B)V
    .locals 9

    const/4 v8, 0x0

    array-length v6, p0

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v5, v6, 0x2

    new-array v3, v5, [B

    new-array v4, v5, [B

    invoke-static {p0, v8, v3, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, p0

    sub-int/2addr v6, v5

    invoke-static {p0, v6, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, p1

    array-length v7, p2

    add-int/2addr v6, v7

    new-array v1, v6, [B

    array-length v6, p1

    invoke-static {p1, v8, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, p1

    array-length v7, p2

    invoke-static {p2, v8, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, p3

    new-array v2, v6, [B

    new-instance v6, Lmyorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-static {v6, v3, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->hmac_hash(Lmyorg/bouncycastle/crypto/Digest;[B[B[B)V

    new-instance v6, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v6}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-static {v6, v4, v1, p3}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->hmac_hash(Lmyorg/bouncycastle/crypto/Digest;[B[B[B)V

    const/4 v0, 0x0

    :goto_0
    array-length v6, p3

    if-ge v0, v6, :cond_0

    aget-byte v6, p3, v0

    aget-byte v7, v2, v0

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static checkVersion(Ljava/io/InputStream;Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x2

    const/16 v3, 0x46

    invoke-virtual {p1, v2, v3}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_1
    return-void
.end method

.method private static hmac_hash(Lmyorg/bouncycastle/crypto/Digest;[B[B[B)V
    .locals 12

    const/4 v11, 0x0

    new-instance v5, Lmyorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v5, p0}, Lmyorg/bouncycastle/crypto/macs/HMac;-><init>(Lmyorg/bouncycastle/crypto/Digest;)V

    new-instance v6, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v6, p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    move-object v0, p2

    invoke-interface {p0}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    array-length v8, p3

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    div-int v4, v8, v7

    invoke-virtual {v5}, Lmyorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v8

    new-array v1, v8, [B

    invoke-virtual {v5}, Lmyorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v8

    new-array v2, v8, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {v5, v6}, Lmyorg/bouncycastle/crypto/macs/HMac;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    array-length v8, v0

    invoke-virtual {v5, v0, v11, v8}, Lmyorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    invoke-virtual {v5, v1, v11}, Lmyorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    move-object v0, v1

    invoke-virtual {v5, v6}, Lmyorg/bouncycastle/crypto/macs/HMac;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    array-length v8, v0

    invoke-virtual {v5, v0, v11, v8}, Lmyorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    array-length v8, p2

    invoke-virtual {v5, p2, v11, v8}, Lmyorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    invoke-virtual {v5, v2, v11}, Lmyorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    mul-int v8, v7, v3

    array-length v9, p3

    mul-int v10, v7, v3

    sub-int/2addr v9, v10

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v2, v11, p3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static readFully([BLjava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    array-length v2, p0

    sub-int/2addr v2, v1

    invoke-virtual {p1, p0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static readOpaque16(Ljava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    new-array v1, v0, [B

    invoke-static {v1, p0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    return-object v1
.end method

.method protected static readOpaque8(Ljava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    new-array v1, v0, [B

    invoke-static {v1, p0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    return-object v1
.end method

.method protected static readUint16(Ljava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-gez v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    :cond_0
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    return v2
.end method

.method protected static readUint24(Ljava/io/InputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    or-int v3, v0, v1

    or-int/2addr v3, v2

    if-gez v3, :cond_0

    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    :cond_0
    shl-int/lit8 v3, v0, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v2

    return v3
.end method

.method protected static readUint8(Ljava/io/InputStream;)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_0
    int-to-short v1, v0

    return v1
.end method

.method static toByteArray(Ljava/lang/String;)[B
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v3, v1

    new-array v0, v3, [B

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_0

    aget-char v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected static writeOpaque16([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0, p1}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected static writeUint16(ILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected static writeUint16(I[BI)V
    .locals 2

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    return-void
.end method

.method protected static writeUint24(ILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p0, 0x10

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected static writeUint64(JLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x38

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    long-to-int v0, p0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected static writeUint8(SLjava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected static writeUint8(S[BI)V
    .locals 1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    return-void
.end method

.method protected static writeVersion(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
