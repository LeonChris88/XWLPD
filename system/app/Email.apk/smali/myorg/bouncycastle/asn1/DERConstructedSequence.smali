.class public Lmyorg/bouncycastle/asn1/DERConstructedSequence;
.super Lmyorg/bouncycastle/asn1/ASN1Sequence;
.source "DERConstructedSequence.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;-><init>()V

    return-void
.end method


# virtual methods
.method public addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 0

    invoke-super {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method

.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lmyorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v2, v0}, Lmyorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERConstructedSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DEROutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/16 v5, 0x30

    invoke-virtual {p1, v5, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    return-void
.end method
