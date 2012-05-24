.class public Lmyorg/bouncycastle/asn1/pkcs/Pfx;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "Pfx.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private contentInfo:Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

.field private macData:Lmyorg/bouncycastle/asn1/pkcs/MacData;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    const/4 v2, 0x3

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/Pfx;->macData:Lmyorg/bouncycastle/asn1/pkcs/MacData;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "wrong version for PFX PDU"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/pkcs/MacData;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/Pfx;->macData:Lmyorg/bouncycastle/asn1/pkcs/MacData;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;Lmyorg/bouncycastle/asn1/pkcs/MacData;)V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/Pfx;->macData:Lmyorg/bouncycastle/asn1/pkcs/MacData;

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

    iput-object p2, p0, Lmyorg/bouncycastle/asn1/pkcs/Pfx;->macData:Lmyorg/bouncycastle/asn1/pkcs/MacData;

    return-void
.end method


# virtual methods
.method public getAuthSafe()Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

    return-object v0
.end method

.method public getMacData()Lmyorg/bouncycastle/asn1/pkcs/MacData;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/Pfx;->macData:Lmyorg/bouncycastle/asn1/pkcs/MacData;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 3

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/Pfx;->macData:Lmyorg/bouncycastle/asn1/pkcs/MacData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/Pfx;->macData:Lmyorg/bouncycastle/asn1/pkcs/MacData;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
