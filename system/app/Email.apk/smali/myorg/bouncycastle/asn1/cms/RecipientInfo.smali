.class public Lmyorg/bouncycastle/asn1/cms/RecipientInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "RecipientInfo.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field info:Lmyorg/bouncycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObject;)V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;)V
    .locals 3

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;)V
    .locals 3

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;)V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;)V
    .locals 3

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/RecipientInfo;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lmyorg/bouncycastle/asn1/DERObject;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_3

    new-instance v0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lmyorg/bouncycastle/asn1/DERObject;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
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

.method private getKEKInfo(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;)Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;
    .locals 1

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getInfo()Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v1, v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown tag"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {v0, v2}, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_1
    invoke-direct {p0, v0}, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->getKEKInfo(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;)Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v2}, Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v2}, Lmyorg/bouncycastle/asn1/cms/OtherRecipientInfo;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/OtherRecipientInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
