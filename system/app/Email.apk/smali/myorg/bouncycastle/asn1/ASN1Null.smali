.class public abstract Lmyorg/bouncycastle/asn1/ASN1Null;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "ASN1Null.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method


# virtual methods
.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 1

    instance-of v0, p1, Lmyorg/bouncycastle/asn1/ASN1Null;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NULL"

    return-object v0
.end method
