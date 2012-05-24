.class public Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SubjectPublicKeyInfo.java"


# instance fields
.field private algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private keyData:Lmyorg/bouncycastle/asn1/DERBitString;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sequence size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lmyorg/bouncycastle/asn1/DERBitString;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p2}, Lmyorg/bouncycastle/asn1/DERBitString;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lmyorg/bouncycastle/asn1/DERBitString;

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p2}, Lmyorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lmyorg/bouncycastle/asn1/DERBitString;

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 3

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

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
.method public getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getPublicKey()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    return-object v1
.end method

.method public getPublicKeyData()Lmyorg/bouncycastle/asn1/DERBitString;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lmyorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
