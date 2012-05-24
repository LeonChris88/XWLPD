.class public Lmyorg/bouncycastle/ocsp/RespID;
.super Ljava/lang/Object;
.source "RespID.java"


# instance fields
.field id:Lmyorg/bouncycastle/asn1/ocsp/ResponderID;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Lmyorg/bouncycastle/ocsp/RespID;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/ocsp/RespID;

    iget-object v1, p0, Lmyorg/bouncycastle/ocsp/RespID;->id:Lmyorg/bouncycastle/asn1/ocsp/ResponderID;

    iget-object v2, v0, Lmyorg/bouncycastle/ocsp/RespID;->id:Lmyorg/bouncycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ocsp/ResponderID;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/ocsp/RespID;->id:Lmyorg/bouncycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ocsp/ResponderID;->hashCode()I

    move-result v0

    return v0
.end method
