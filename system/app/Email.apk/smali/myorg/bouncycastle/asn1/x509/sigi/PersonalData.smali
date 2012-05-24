.class public Lmyorg/bouncycastle/asn1/x509/sigi/PersonalData;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "PersonalData.java"


# instance fields
.field private dateOfBirth:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

.field private gender:Ljava/lang/String;

.field private nameDistinguisher:Ljava/math/BigInteger;

.field private nameOrPseudonym:Lmyorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

.field private placeOfBirth:Lmyorg/bouncycastle/asn1/x500/DirectoryString;

.field private postalAddress:Lmyorg/bouncycastle/asn1/x500/DirectoryString;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lmyorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v2, Lmyorg/bouncycastle/asn1/DERInteger;

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v5, v5, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v1, :cond_1

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, v5, v6, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lmyorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_2

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lmyorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-direct {v1, v6, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x3

    new-instance v3, Lmyorg/bouncycastle/asn1/DERPrintableString;

    iget-object v4, p0, Lmyorg/bouncycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    invoke-direct {v3, v4, v6}, Lmyorg/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v5, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_3
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lmyorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_4

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x4

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lmyorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-direct {v1, v6, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_4
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
