.class public Lmyorg/bouncycastle/asn1/x9/X9ECPoint;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "X9ECPoint.java"


# instance fields
.field p:Lmyorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;->p:Lmyorg/bouncycastle/math/ec/ECPoint;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/math/ec/ECPoint;)V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;->p:Lmyorg/bouncycastle/math/ec/ECPoint;

    return-void
.end method


# virtual methods
.method public getPoint()Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;->p:Lmyorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;->p:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/ECPoint;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method
