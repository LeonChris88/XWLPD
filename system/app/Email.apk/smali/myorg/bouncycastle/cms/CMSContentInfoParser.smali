.class public Lmyorg/bouncycastle/cms/CMSContentInfoParser;
.super Ljava/lang/Object;
.source "CMSContentInfoParser.java"


# instance fields
.field protected _contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;

.field protected _data:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSContentInfoParser;->_data:Ljava/io/InputStream;

    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-static {}, Lmyorg/bouncycastle/cms/CMSUtils;->getMaximumMemory()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    new-instance v3, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v3, v2}, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1SequenceParser;)V

    iput-object v3, p0, Lmyorg/bouncycastle/cms/CMSContentInfoParser;->_contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lmyorg/bouncycastle/cms/CMSException;

    const-string v3, "IOException reading content."

    invoke-direct {v2, v3, v0}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Lmyorg/bouncycastle/cms/CMSException;

    const-string v3, "Unexpected object reading content."

    invoke-direct {v2, v3, v0}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
