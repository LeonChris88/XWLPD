.class public abstract Lmyorg/bouncycastle/asn1/DERGenerator;
.super Lmyorg/bouncycastle/asn1/ASN1Generator;
.source "DERGenerator.java"


# instance fields
.field private _isExplicit:Z

.field private _tagNo:I

.field private _tagged:Z


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/DERGenerator;->_tagged:Z

    return-void
.end method

.method private writeLength(Ljava/io/OutputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x7f

    if-le p2, v3, :cond_1

    const/4 v1, 0x1

    move v2, p2

    :goto_0
    ushr-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    or-int/lit16 v3, v1, 0x80

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v3, v1, -0x1

    mul-int/lit8 v0, v3, 0x8

    :goto_1
    if-ltz v0, :cond_2

    shr-int v3, p2, v0

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    :cond_1
    int-to-byte v3, p2

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method writeDEREncoded(I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v3, p0, Lmyorg/bouncycastle/asn1/DERGenerator;->_tagged:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lmyorg/bouncycastle/asn1/DERGenerator;->_tagNo:I

    or-int/lit16 v2, v3, 0x80

    iget-boolean v3, p0, Lmyorg/bouncycastle/asn1/DERGenerator;->_isExplicit:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lmyorg/bouncycastle/asn1/DERGenerator;->_tagNo:I

    or-int/lit8 v3, v3, 0x20

    or-int/lit16 v1, v3, 0x80

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lmyorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v3, v1, v4}, Lmyorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    :goto_0
    return-void

    :cond_0
    and-int/lit8 v3, p1, 0x20

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    or-int/lit8 v4, v2, 0x20

    invoke-virtual {p0, v3, v4, p2}, Lmyorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, v3, v2, p2}, Lmyorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, v3, p1, p2}, Lmyorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    goto :goto_0
.end method

.method writeDEREncoded(Ljava/io/OutputStream;I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    array-length v0, p3

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/asn1/DERGenerator;->writeLength(Ljava/io/OutputStream;I)V

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
