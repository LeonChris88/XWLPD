.class public Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "OriginatorIdentifierOrKey.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private id:Lmyorg/bouncycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObject;)V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;)V
    .locals 3

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, v1, v1, p1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_2

    new-instance v0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    check-cast p0, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    if-eqz v0, :cond_3

    new-instance v0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    check-cast p0, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    if-eqz v0, :cond_4

    new-instance v0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    check-cast p0, Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;)V

    move-object p0, v0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_5

    new-instance v0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lmyorg/bouncycastle/asn1/DERObject;)V

    move-object p0, v0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid OriginatorIdentifierOrKey: "

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

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t implicitly tag OriginatorIdentifierOrKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIssuerAndSerialNumber()Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOriginatorKey()Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;
    .locals 2

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubjectKeyIdentifier()Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 2

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
