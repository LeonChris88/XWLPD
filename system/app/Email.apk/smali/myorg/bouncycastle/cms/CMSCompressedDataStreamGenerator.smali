.class public Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;
.super Ljava/lang/Object;
.source "CMSCompressedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;
    }
.end annotation


# instance fields
.field private _bufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public open(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;->open(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v3, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-direct {v3, p1}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    sget-object v0, Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->compressedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v0}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v4, v0, v2, v8}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, v2}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v4, v0}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v6, Lmyorg/bouncycastle/asn1/DERSequenceGenerator;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v6, v0}, Lmyorg/bouncycastle/asn1/DERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.113549.1.9.16.3.8"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lmyorg/bouncycastle/asn1/DERSequenceGenerator;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/DERSequenceGenerator;->close()V

    new-instance v5, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget v1, p0, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;->_bufferSize:I

    invoke-static {v0, v2, v8, v1}, Lmyorg/bouncycastle/cms/CMSUtils;->createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object v7

    new-instance v0, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;

    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, v7}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;-><init>(Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;Ljava/util/zip/DeflaterOutputStream;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;)V

    return-object v0
.end method
