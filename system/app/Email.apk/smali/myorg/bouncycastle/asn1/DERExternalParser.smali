.class public Lmyorg/bouncycastle/asn1/DERExternalParser;
.super Ljava/lang/Object;
.source "DERExternalParser.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/DEREncodable;


# instance fields
.field private _parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/DERExternalParser;->_parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method


# virtual methods
.method public getDERObject()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 3

    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERExternal;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERExternalParser;->_parser:Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->readVector()Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/DERExternal;-><init>(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1ParsingException;

    const-string v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1ParsingException;

    const-string v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
