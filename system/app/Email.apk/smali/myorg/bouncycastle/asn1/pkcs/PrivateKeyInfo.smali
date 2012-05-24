.class public Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "PrivateKeyInfo.java"


# instance fields
.field private algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private attributes:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private privKey:Lmyorg/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "wrong version for private key info"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v5, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v5, v4}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v5, p0, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    :try_start_0
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    invoke-direct {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privKey:Lmyorg/bouncycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    :cond_1
    return-void

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Error recoverying private key from sequence"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DERObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DERObject;Lmyorg/bouncycastle/asn1/ASN1Set;)V

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DERObject;Lmyorg/bouncycastle/asn1/ASN1Set;)V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p2, p0, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privKey:Lmyorg/bouncycastle/asn1/DERObject;

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 3

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

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

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getPrivateKey()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privKey:Lmyorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v3}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privKey:Lmyorg/bouncycastle/asn1/DERObject;

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v3, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
