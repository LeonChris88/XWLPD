.class public Lmyorg/bouncycastle/asn1/BERSequenceGenerator;
.super Lmyorg/bouncycastle/asn1/BERGenerator;
.source "BERSequenceGenerator.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;)V

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->writeBERHeader(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lmyorg/bouncycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->writeBERHeader(I)V

    return-void
.end method


# virtual methods
.method public addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    new-instance v1, Lmyorg/bouncycastle/asn1/BEROutputStream;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObject;->encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->writeBEREnd()V

    return-void
.end method
