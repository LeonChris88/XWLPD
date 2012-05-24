.class public Lmyorg/bouncycastle/asn1/cms/SignerInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SignerInfo.java"


# instance fields
.field private authenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private digAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private digEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private encryptedDigest:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private sid:Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

.field private unauthenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->sid:Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    :goto_1
    return-void

    :cond_0
    iput-object v4, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    :cond_1
    iput-object v4, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    goto :goto_1
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/ASN1Set;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/ASN1OctetString;Lmyorg/bouncycastle/asn1/ASN1Set;)V
    .locals 2

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    :goto_0
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->sid:Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    iput-object p2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    iput-object p4, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p5, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p6, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-void

    :cond_0
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/SignerInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/SignerInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

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
.method public getAuthenticatedAttributes()Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getDigestAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getDigestEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncryptedDigest()Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getSID()Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->sid:Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    return-object v0
.end method

.method public getUnauthenticatedAttributes()Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lmyorg/bouncycastle/asn1/DERInteger;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->sid:Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
