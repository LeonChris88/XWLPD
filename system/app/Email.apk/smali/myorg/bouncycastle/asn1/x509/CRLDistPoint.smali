.class public Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CRLDistPoint.java"


# instance fields
.field seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;
    .locals 3

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDistributionPoints()[Lmyorg/bouncycastle/asn1/x509/DistributionPoint;
    .locals 3

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v0, v2, [Lmyorg/bouncycastle/asn1/x509/DistributionPoint;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CRLDistPoint:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lmyorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v4, v1

    if-eq v2, v4, :cond_0

    const-string v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
