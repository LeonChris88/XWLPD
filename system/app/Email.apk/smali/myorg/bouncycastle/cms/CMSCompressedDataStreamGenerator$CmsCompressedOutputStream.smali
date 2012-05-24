.class Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;
.super Ljava/io/OutputStream;
.source "CMSCompressedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmsCompressedOutputStream"
.end annotation


# instance fields
.field private _cGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

.field private _eiGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

.field private _out:Ljava/util/zip/DeflaterOutputStream;

.field private _sGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

.field final synthetic this$0:Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;Ljava/util/zip/DeflaterOutputStream;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;)V
    .locals 0

    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->this$0:Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_out:Ljava/util/zip/DeflaterOutputStream;

    iput-object p3, p0, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_sGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    iput-object p4, p0, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_cGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    iput-object p5, p0, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_eiGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

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

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_out:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/DeflaterOutputStream;->close()V

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_eiGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_cGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_sGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

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

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_out:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v0, p1}, Ljava/util/zip/DeflaterOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_out:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v0, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_out:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    return-void
.end method
