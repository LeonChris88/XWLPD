.class public Lmyorg/bouncycastle/asn1/DERSequenceGenerator;
.super Lmyorg/bouncycastle/asn1/DERGenerator;
.source "DERSequenceGenerator.java"


# instance fields
.field private final _bOut:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/DERGenerator;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/DERSequenceGenerator;->_bOut:Ljava/io/ByteArrayOutputStream;

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

    new-instance v1, Lmyorg/bouncycastle/asn1/DEROutputStream;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERSequenceGenerator;->_bOut:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObject;->encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x30

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERSequenceGenerator;->_bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/asn1/DERSequenceGenerator;->writeDEREncoded(I[B)V

    return-void
.end method
