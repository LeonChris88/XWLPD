.class public Lmyorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SignaturePolicyIdentifier.java"


# instance fields
.field private isSignaturePolicyImplied:Z

.field private signaturePolicyId:Lmyorg/bouncycastle/asn1/esf/SignaturePolicyId;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->isSignaturePolicyImplied:Z

    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->isSignaturePolicyImplied:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->signaturePolicyId:Lmyorg/bouncycastle/asn1/esf/SignaturePolicyId;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/esf/SignaturePolicyId;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    goto :goto_0
.end method
