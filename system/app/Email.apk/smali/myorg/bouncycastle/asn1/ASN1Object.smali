.class public abstract Lmyorg/bouncycastle/asn1/ASN1Object;
.super Lmyorg/bouncycastle/asn1/DERObject;
.source "ASN1Object.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/DERObject;-><init>()V

    return-void
.end method

.method public static fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1Object;

    return-object v1
.end method


# virtual methods
.method abstract asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lmyorg/bouncycastle/asn1/DEREncodable;

    if-eqz v1, :cond_2

    check-cast p1, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {p1}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/asn1/ASN1Object;->asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract hashCode()I
.end method
