.class Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;
.super Ljava/io/OutputStream;
.source "CMSSignedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmsSignedDataOutputStream"
.end annotation


# instance fields
.field private _contentOID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private _eiGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

.field private _out:Ljava/io/OutputStream;

.field private _sGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

.field private _sigGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

.field final synthetic this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;Ljava/io/OutputStream;Ljava/lang/String;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;)V
    .locals 1

    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_out:Ljava/io/OutputStream;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_contentOID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object p4, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_sGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    iput-object p5, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_sigGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    iput-object p6, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_eiGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_eiGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v6, v6, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_digests:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v6, v6, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_certs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v6, v6, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_certs:Ljava/util/List;

    invoke-static {v6}, Lmyorg/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_sigGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    new-instance v7, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    invoke-direct {v7, v9, v9, v0}, Lmyorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/BERTaggedObject;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v6, v6, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_crls:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v6, v6, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_crls:Ljava/util/List;

    invoke-static {v6}, Lmyorg/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_sigGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    new-instance v7, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    const/4 v8, 0x1

    invoke-direct {v7, v9, v8, v1}, Lmyorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/BERTaggedObject;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    new-instance v5, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v6, v6, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_signers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v4}, Lmyorg/bouncycastle/cms/SignerInformation;->toSignerInfo()Lmyorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    invoke-static {v6}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->access$100(Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;

    :try_start_0
    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_contentOID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v6}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->toSignerInfo(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v6, Lmyorg/bouncycastle/cms/CMSStreamException;

    const-string v7, "encoding error."

    invoke-direct {v6, v7, v2}, Lmyorg/bouncycastle/cms/CMSStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_1
    move-exception v2

    new-instance v6, Lmyorg/bouncycastle/cms/CMSStreamException;

    const-string v7, "key inappropriate for signature."

    invoke-direct {v6, v7, v2}, Lmyorg/bouncycastle/cms/CMSStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_2
    move-exception v2

    new-instance v6, Lmyorg/bouncycastle/cms/CMSStreamException;

    const-string v7, "error creating signature."

    invoke-direct {v6, v7, v2}, Lmyorg/bouncycastle/cms/CMSStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_3
    move-exception v2

    new-instance v6, Lmyorg/bouncycastle/cms/CMSStreamException;

    const-string v7, "error creating sid."

    invoke-direct {v6, v7, v2}, Lmyorg/bouncycastle/cms/CMSStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_4
    move-exception v2

    new-instance v6, Lmyorg/bouncycastle/cms/CMSStreamException;

    const-string v7, "unknown signature algorithm."

    invoke-direct {v6, v7, v2}, Lmyorg/bouncycastle/cms/CMSStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_3
    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_sigGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    new-instance v7, Lmyorg/bouncycastle/asn1/DERSet;

    invoke-direct {v7, v5}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERSet;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_sigGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_sGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
