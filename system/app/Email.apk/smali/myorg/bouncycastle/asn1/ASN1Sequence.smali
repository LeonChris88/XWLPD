.class public abstract Lmyorg/bouncycastle/asn1/ASN1Sequence;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "ASN1Sequence.java"


# instance fields
.field private seq:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

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

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    if-eqz v0, :cond_2

    new-instance v0, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

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
.method protected addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 8

    const/4 v6, 0x0

    instance-of v5, p1, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    move-object v2, p1

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    if-eq v5, v7, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v5}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v5}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_3
    move v5, v6

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x11

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method public parser()Lmyorg/bouncycastle/asn1/ASN1SequenceParser;
    .locals 2

    move-object v0, p0

    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1Sequence$1;

    invoke-direct {v1, p0, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence$1;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
