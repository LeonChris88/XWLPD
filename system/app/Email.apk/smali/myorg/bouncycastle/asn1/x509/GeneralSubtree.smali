.class public Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "GeneralSubtree.java"


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private base:Lmyorg/bouncycastle/asn1/x509/GeneralName;

.field private maximum:Lmyorg/bouncycastle/asn1/DERInteger;

.field private minimum:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;->base:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

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

    :pswitch_0
    invoke-virtual {p1, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad tag number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    invoke-static {v0, v2}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lmyorg/bouncycastle/asn1/DERInteger;

    :goto_0
    :pswitch_2
    return-void

    :pswitch_3
    invoke-static {v0, v2}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lmyorg/bouncycastle/asn1/DERInteger;

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lmyorg/bouncycastle/asn1/DERInteger;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;

    if-eqz v0, :cond_1

    check-cast p0, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;

    goto :goto_0

    :cond_1
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public getBase()Lmyorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;->base:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;->base:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_1

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
