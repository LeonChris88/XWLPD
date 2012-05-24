.class public Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;
.super Lmyorg/bouncycastle/sasn1/DerObject;
.source "Asn1ObjectIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier$OIDTokenizer;
    }
.end annotation


# instance fields
.field private _oid:Ljava/lang/String;


# direct methods
.method constructor <init>(I[B)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v11, 0x2e

    const/4 v7, 0x6

    invoke-direct {p0, p1, v7, p2}, Lmyorg/bouncycastle/sasn1/DerObject;-><init>(II[B)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v5, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_4

    const-wide/high16 v7, 0x80

    cmp-long v7, v5, v7

    if-gez v7, :cond_2

    const-wide/16 v7, 0x80

    mul-long/2addr v7, v5

    and-int/lit8 v9, v0, 0x7f

    int-to-long v9, v9

    add-long v5, v7, v9

    and-int/lit16 v7, v0, 0x80

    if-nez v7, :cond_0

    if-eqz v3, :cond_1

    long-to-int v7, v5

    div-int/lit8 v7, v7, 0x28

    packed-switch v7, :pswitch_data_0

    const/16 v7, 0x32

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v7, 0x50

    sub-long/2addr v5, v7

    :goto_1
    const/4 v3, 0x0

    :cond_1
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-wide/16 v5, 0x0

    goto :goto_0

    :pswitch_0
    const/16 v7, 0x30

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_1
    const/16 v7, 0x31

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v7, 0x28

    sub-long/2addr v5, v7

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    :cond_3
    const/4 v7, 0x7

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    and-int/lit8 v7, v0, 0x7f

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    and-int/lit16 v7, v0, 0x80

    if-nez v7, :cond_0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;->_oid:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;->_oid:Ljava/lang/String;

    check-cast p1, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;

    iget-object v1, p1, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;->_oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;->_oid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;->_oid:Ljava/lang/String;

    return-object v0
.end method
