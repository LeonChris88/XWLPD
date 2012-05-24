.class public abstract Lmyorg/bouncycastle/asn1/ASN1Set;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "ASN1Set.java"


# instance fields
.field protected set:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    return-void
.end method

.method private getEncoded(Lmyorg/bouncycastle/asn1/DEREncodable;)[B
    .locals 5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "cannot encode object added to SET"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Set;

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

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 7

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "object implicit - explicit expected."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/asn1/ASN1Set;

    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Lmyorg/bouncycastle/asn1/DERSet;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-direct {v2, v4}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    move-object v4, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    instance-of v4, v4, Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    :cond_3
    new-instance v3, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    instance-of v4, v4, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v3, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1

    :cond_4
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSet;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;Z)V

    goto :goto_0

    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown object in getInstance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private lessThanOrEqual([B[B)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    array-length v5, p1

    array-length v6, p2

    if-gt v5, v6, :cond_3

    const/4 v0, 0x0

    :goto_0
    array-length v5, p1

    if-eq v0, v5, :cond_0

    aget-byte v5, p1, v0

    and-int/lit16 v1, v5, 0xff

    aget-byte v5, p2, v0

    and-int/lit16 v2, v5, 0xff

    if-le v2, v1, :cond_1

    :cond_0
    :goto_1
    return v3

    :cond_1
    if-le v1, v2, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_2
    array-length v5, p2

    if-eq v0, v5, :cond_5

    aget-byte v5, p1, v0

    and-int/lit16 v1, v5, 0xff

    aget-byte v5, p2, v0

    and-int/lit16 v2, v5, 0xff

    if-gt v2, v1, :cond_0

    if-le v1, v2, :cond_4

    move v3, v4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method protected addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 8

    const/4 v6, 0x0

    instance-of v5, p1, Lmyorg/bouncycastle/asn1/ASN1Set;

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    move-object v2, p1

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v5

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v7

    if-eq v5, v7, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

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

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Set;->size()I

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

.method public parser()Lmyorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2

    move-object v0, p0

    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1Set$1;

    invoke-direct {v1, p0, v0}, Lmyorg/bouncycastle/asn1/ASN1Set$1;-><init>(Lmyorg/bouncycastle/asn1/ASN1Set;Lmyorg/bouncycastle/asn1/ASN1Set;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method protected sort()V
    .locals 10

    iget-object v7, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    const/4 v6, 0x1

    iget-object v7, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_0
    if-eqz v6, :cond_2

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v7, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {p0, v7}, Lmyorg/bouncycastle/asn1/ASN1Set;->getEncoded(Lmyorg/bouncycastle/asn1/DEREncodable;)[B

    move-result-object v0

    const/4 v6, 0x0

    :goto_1
    if-eq v2, v3, :cond_1

    iget-object v7, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {p0, v7}, Lmyorg/bouncycastle/asn1/ASN1Set;->getEncoded(Lmyorg/bouncycastle/asn1/DEREncodable;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v0, v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v7, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    iget-object v8, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v7, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v4, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    const/4 v6, 0x1

    move v5, v2

    goto :goto_2

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
