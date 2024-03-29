.class public Lmyorg/bouncycastle/asn1/x509/BasicConstraints;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "BasicConstraints.java"


# instance fields
.field cA:Lmyorg/bouncycastle/asn1/DERBoolean;

.field pathLenConstraint:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/asn1/DERBoolean;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERBoolean;-><init>(Z)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lmyorg/bouncycastle/asn1/DERBoolean;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-nez v0, :cond_1

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lmyorg/bouncycastle/asn1/DERBoolean;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lmyorg/bouncycastle/asn1/DERInteger;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/DERBoolean;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBoolean;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lmyorg/bouncycastle/asn1/DERBoolean;

    :goto_1
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lmyorg/bouncycastle/asn1/DERBoolean;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lmyorg/bouncycastle/asn1/DERInteger;

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lmyorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lmyorg/bouncycastle/asn1/DERInteger;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong sequence in constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/BasicConstraints;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/X509Extension;

    if-eqz v0, :cond_3

    check-cast p0, Lmyorg/bouncycastle/asn1/x509/X509Extension;

    invoke-static {p0}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->convertValueToObject(Lmyorg/bouncycastle/asn1/x509/X509Extension;)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object p0

    goto :goto_0

    :cond_3
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
.method public getPathLenConstraint()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCA()Z
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lmyorg/bouncycastle/asn1/DERBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lmyorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lmyorg/bouncycastle/asn1/DERBoolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lmyorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lmyorg/bouncycastle/asn1/DERInteger;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lmyorg/bouncycastle/asn1/DERBoolean;

    if-nez v0, :cond_0

    const-string v0, "BasicConstraints: isCa(false)"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicConstraints: isCa("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicConstraints: isCa("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), pathLenConstraint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
