.class public Lmyorg/bouncycastle/asn1/DERUniversalString;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "DERUniversalString.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/DERString;


# static fields
.field private static final table:[C


# instance fields
.field private string:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/asn1/DERUniversalString;->table:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/DERUniversalString;->string:[B

    return-void
.end method


# virtual methods
.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 2

    instance-of v0, p1, Lmyorg/bouncycastle/asn1/DERUniversalString;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERUniversalString;->getString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lmyorg/bouncycastle/asn1/DERUniversalString;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/DERUniversalString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1c

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERUniversalString;->getOctets()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method public getOctets()[B
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERUniversalString;->string:[B

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 8

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v6, "#"

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v0, p0}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v4, 0x0

    :goto_0
    array-length v6, v5

    if-eq v4, v6, :cond_0

    sget-object v6, Lmyorg/bouncycastle/asn1/DERUniversalString;->table:[C

    aget-byte v7, v5, v4

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v6, Lmyorg/bouncycastle/asn1/DERUniversalString;->table:[C

    aget-byte v7, v5, v4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "internal error encoding BitString"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERUniversalString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERUniversalString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
