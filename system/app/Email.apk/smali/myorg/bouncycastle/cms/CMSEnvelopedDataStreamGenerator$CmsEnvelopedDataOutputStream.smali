.class Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;
.super Ljava/io/OutputStream;
.source "CMSEnvelopedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmsEnvelopedDataOutputStream"
.end annotation


# instance fields
.field private _cGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

.field private _eiGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

.field private _envGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

.field private _out:Ljavax/crypto/CipherOutputStream;

.field final synthetic this$0:Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;Ljavax/crypto/CipherOutputStream;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;)V
    .locals 0

    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->this$0:Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_out:Ljavax/crypto/CipherOutputStream;

    iput-object p3, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_cGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    iput-object p4, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_envGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    iput-object p5, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_eiGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_out:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->close()V

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_eiGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_envGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_cGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

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

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_out:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_out:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_out:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    return-void
.end method
