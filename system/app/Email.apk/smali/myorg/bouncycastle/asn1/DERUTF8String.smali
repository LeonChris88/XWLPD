.class public Lmyorg/bouncycastle/asn1/DERUTF8String;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "DERUTF8String.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/DERString;


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;

    return-void
.end method

.method constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lmyorg/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 3

    instance-of v1, p1, Lmyorg/bouncycastle/asn1/DERUTF8String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;

    invoke-static {v1}, Lmyorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;

    return-object v0
.end method
