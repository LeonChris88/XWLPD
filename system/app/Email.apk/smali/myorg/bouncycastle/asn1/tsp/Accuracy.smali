.class public Lmyorg/bouncycastle/asn1/tsp/Accuracy;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "Accuracy.java"


# instance fields
.field micros:Lmyorg/bouncycastle/asn1/DERInteger;

.field millis:Lmyorg/bouncycastle/asn1/DERInteger;

.field seconds:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/Accuracy;->seconds:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/Accuracy;->seconds:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/Accuracy;->millis:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_1

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/tsp/Accuracy;->millis:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/Accuracy;->micros:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_2

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/tsp/Accuracy;->micros:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_2
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
