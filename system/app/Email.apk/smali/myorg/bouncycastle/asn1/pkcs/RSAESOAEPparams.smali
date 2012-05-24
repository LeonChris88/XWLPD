.class public Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "RSAESOAEPparams.java"


# static fields
.field public static final DEFAULT_HASH_ALGORITHM:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final DEFAULT_MASK_GEN_FUNCTION:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final DEFAULT_P_SOURCE_ALGORITHM:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private pSourceAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v2, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v2}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_HASH_ALGORITHM:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_HASH_ALGORITHM:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_MASK_GEN_FUNCTION:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_pSpecified:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v2, Lmyorg/bouncycastle/asn1/DEROctetString;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_P_SOURCE_ALGORITHM:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_HASH_ALGORITHM:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_MASK_GEN_FUNCTION:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_P_SOURCE_ALGORITHM:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_HASH_ALGORITHM:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_MASK_GEN_FUNCTION:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_P_SOURCE_ALGORITHM:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1

    :pswitch_2
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method


# virtual methods
.method public getHashAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getMaskGenAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getPSourceAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_HASH_ALGORITHM:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_MASK_GEN_FUNCTION:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_P_SOURCE_ALGORITHM:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_2
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
