.class public Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "TBSCertificateStructure.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# instance fields
.field endDate:Lmyorg/bouncycastle/asn1/x509/Time;

.field extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

.field issuer:Lmyorg/bouncycastle/asn1/x509/X509Name;

.field issuerUniqueId:Lmyorg/bouncycastle/asn1/DERBitString;

.field seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

.field serialNumber:Lmyorg/bouncycastle/asn1/DERInteger;

.field signature:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lmyorg/bouncycastle/asn1/x509/Time;

.field subject:Lmyorg/bouncycastle/asn1/x509/X509Name;

.field subjectPublicKeyInfo:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field subjectUniqueId:Lmyorg/bouncycastle/asn1/DERBitString;

.field version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v3, 0x0

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1, v6}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    instance-of v4, v4, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    if-eqz v4, :cond_0

    invoke-virtual {p1, v6}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    :goto_0
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->serialNumber:Lmyorg/bouncycastle/asn1/DERInteger;

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p1, v4}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->signature:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    add-int/lit8 v4, v3, 0x3

    invoke-virtual {p1, v4}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->issuer:Lmyorg/bouncycastle/asn1/x509/X509Name;

    add-int/lit8 v4, v3, 0x4

    invoke-virtual {p1, v4}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v6}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->startDate:Lmyorg/bouncycastle/asn1/x509/Time;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->endDate:Lmyorg/bouncycastle/asn1/x509/Time;

    add-int/lit8 v4, v3, 0x5

    invoke-virtual {p1, v4}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->subject:Lmyorg/bouncycastle/asn1/x509/X509Name;

    add-int/lit8 v4, v3, 0x6

    invoke-virtual {p1, v4}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectPublicKeyInfo:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    add-int/lit8 v5, v3, 0x6

    sub-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-lez v2, :cond_1

    add-int/lit8 v4, v3, 0x6

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    new-instance v4, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v4, v6}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v4, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    goto :goto_0

    :pswitch_0
    invoke-static {v1, v6}, Lmyorg/bouncycastle/asn1/DERBitString;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->issuerUniqueId:Lmyorg/bouncycastle/asn1/DERBitString;

    goto :goto_2

    :pswitch_1
    invoke-static {v1, v6}, Lmyorg/bouncycastle/asn1/DERBitString;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectUniqueId:Lmyorg/bouncycastle/asn1/DERBitString;

    goto :goto_2

    :pswitch_2
    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    goto :goto_2

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    .locals 3

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    if-eqz v0, :cond_0

    check-cast p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
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
.method public getEndDate()Lmyorg/bouncycastle/asn1/x509/Time;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->endDate:Lmyorg/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getIssuer()Lmyorg/bouncycastle/asn1/x509/X509Name;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->issuer:Lmyorg/bouncycastle/asn1/x509/X509Name;

    return-object v0
.end method

.method public getIssuerUniqueId()Lmyorg/bouncycastle/asn1/DERBitString;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->issuerUniqueId:Lmyorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSerialNumber()Lmyorg/bouncycastle/asn1/DERInteger;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->serialNumber:Lmyorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getSignature()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->signature:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getStartDate()Lmyorg/bouncycastle/asn1/x509/Time;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->startDate:Lmyorg/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getSubject()Lmyorg/bouncycastle/asn1/x509/X509Name;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->subject:Lmyorg/bouncycastle/asn1/x509/X509Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectPublicKeyInfo:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getSubjectUniqueId()Lmyorg/bouncycastle/asn1/DERBitString;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectUniqueId:Lmyorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
