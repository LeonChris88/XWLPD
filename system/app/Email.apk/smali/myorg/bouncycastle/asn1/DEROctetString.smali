.class public Lmyorg/bouncycastle/asn1/DEROctetString;
.super Lmyorg/bouncycastle/asn1/ASN1OctetString;
.source "DEROctetString.java"


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 0

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1OctetString;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    return-void
.end method

.method static encode(Lmyorg/bouncycastle/asn1/DEROutputStream;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    return-void
.end method


# virtual methods
.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-virtual {p1, v0, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    return-void
.end method
