.class public Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "AuthorityKeyIdentifier.java"


# instance fields
.field certissuer:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

.field certserno:Lmyorg/bouncycastle/asn1/DERInteger;

.field keyidentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "illegal tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_0

    :pswitch_1
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_0

    :pswitch_2
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lmyorg/bouncycastle/asn1/DERInteger;

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getKeyIdentifier()[B
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_1

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_2

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_2
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorityKeyIdentifier: KeyID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
