.class public Lmyorg/bouncycastle/asn1/BERSequenceParser;
.super Ljava/lang/Object;
.source "BERSequenceParser.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1SequenceParser;


# instance fields
.field private _parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/BERSequenceParser;->_parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method


# virtual methods
.method public getDERObject()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 3

    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/asn1/BERSequence;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/BERSequenceParser;->_parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->readVector()Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readObject()Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/BERSequenceParser;->_parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method
