.class public Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "AlgorithmIdentifier.java"


# instance fields
.field private objectId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private parameters:Lmyorg/bouncycastle/asn1/DEREncodable;

.field private parametersDefined:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-boolean v2, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v3, :cond_2

    iput-boolean v1, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lmyorg/bouncycastle/asn1/DEREncodable;

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lmyorg/bouncycastle/asn1/DEREncodable;

    goto :goto_0
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object p2, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lmyorg/bouncycastle/asn1/DEREncodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v0, :cond_2

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    check-cast p0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_4

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_4
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

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    invoke-static {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lmyorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-boolean v1, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
