.class public Lmyorg/bouncycastle/asn1/DERSequence;
.super Lmyorg/bouncycastle/asn1/ASN1Sequence;
.source "DERSequence.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;-><init>()V

    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/asn1/DERSequence;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V
    .locals 2

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/DEREncodableVector;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/DEREncodableVector;->get(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/asn1/DERSequence;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Lmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/asn1/DERSequence;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
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

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

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
