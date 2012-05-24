.class public Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "IssuingDistributionPoint.java"


# instance fields
.field private distributionPoint:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

.field private indirectCRL:Z

.field private onlyContainsAttributeCerts:Z

.field private onlyContainsCACerts:Z

.field private onlyContainsUserCerts:Z

.field private onlySomeReasons:Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

.field private seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown tag in IssuingDistributionPoint"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-static {v1, v4}, Lmyorg/bouncycastle/asn1/DERBoolean;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERBoolean;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    goto :goto_1

    :pswitch_2
    invoke-static {v1, v4}, Lmyorg/bouncycastle/asn1/DERBoolean;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERBoolean;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    goto :goto_1

    :pswitch_3
    new-instance v2, Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    invoke-static {v1, v4}, Lmyorg/bouncycastle/asn1/x509/ReasonFlags;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/x509/ReasonFlags;-><init>(Lmyorg/bouncycastle/asn1/DERBitString;)V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    goto :goto_1

    :pswitch_4
    invoke-static {v1, v4}, Lmyorg/bouncycastle/asn1/DERBoolean;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERBoolean;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    goto :goto_1

    :pswitch_5
    invoke-static {v1, v4}, Lmyorg/bouncycastle/asn1/DERBoolean;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERBoolean;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    goto :goto_1

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private booleanToString(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
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
.method public getDistributionPoint()Lmyorg/bouncycastle/asn1/x509/DistributionPointName;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    return-object v0
.end method

.method public getOnlySomeReasons()Lmyorg/bouncycastle/asn1/x509/ReasonFlags;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    return-object v0
.end method

.method public isIndirectCRL()Z
    .locals 1

    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    return v0
.end method

.method public onlyContainsAttributeCerts()Z
    .locals 1

    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    return v0
.end method

.method public onlyContainsCACerts()Z
    .locals 1

    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    return v0
.end method

.method public onlyContainsUserCerts()Z
    .locals 1

    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    return v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "IssuingDistributionPoint: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    if-eqz v2, :cond_0

    const-string v2, "distributionPoint"

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    if-eqz v2, :cond_1

    const-string v2, "onlyContainsUserCerts"

    iget-boolean v3, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    invoke-direct {p0, v3}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    if-eqz v2, :cond_2

    const-string v2, "onlyContainsCACerts"

    iget-boolean v3, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    invoke-direct {p0, v3}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    if-eqz v2, :cond_3

    const-string v2, "onlySomeReasons"

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/ReasonFlags;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    if-eqz v2, :cond_4

    const-string v2, "onlyContainsAttributeCerts"

    iget-boolean v3, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    invoke-direct {p0, v3}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-boolean v2, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    if-eqz v2, :cond_5

    const-string v2, "indirectCRL"

    iget-boolean v3, p0, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    invoke-direct {p0, v3}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
