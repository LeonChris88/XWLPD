.class Lmyorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;
.super Ljava/io/OutputStream;
.source "CMSAuthenticatedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmsAuthenticatedDataOutputStream"
.end annotation


# instance fields
.field private cGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

.field private eiGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

.field private envGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

.field private macStream:Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->macStream:Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;

    invoke-virtual {v0}, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;->close()V

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->eiGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->envGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    new-instance v1, Lmyorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lmyorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->macStream:Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;

    invoke-virtual {v2}, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;->getMac()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->envGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->cGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->macStream:Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->macStream:Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->macStream:Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;->write([BII)V

    return-void
.end method
