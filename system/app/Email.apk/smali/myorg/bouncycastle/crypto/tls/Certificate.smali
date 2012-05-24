.class public Lmyorg/bouncycastle/crypto/tls/Certificate;
.super Ljava/lang/Object;
.source "Certificate.java"


# instance fields
.field protected certs:[Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;


# direct methods
.method private constructor <init>([Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/tls/Certificate;->certs:[Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    return-void
.end method

.method protected static parse(Ljava/io/InputStream;)Lmyorg/bouncycastle/crypto/tls/Certificate;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v5

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    :cond_0
    if-lez v5, :cond_1

    invoke-static {p0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v7

    add-int/lit8 v9, v7, 0x3

    sub-int/2addr v5, v9

    new-array v2, v7, [B

    invoke-static {v2, p0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    if-lez v9, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Sorry, there is garbage data left after the certificate"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v3, v9, [Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v4, v9, :cond_2

    invoke-virtual {v8, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    aput-object v9, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v9, Lmyorg/bouncycastle/crypto/tls/Certificate;

    invoke-direct {v9, v3}, Lmyorg/bouncycastle/crypto/tls/Certificate;-><init>([Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;)V

    return-object v9
.end method


# virtual methods
.method public getCerts()[Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/Certificate;->certs:[Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    array-length v1, v1

    new-array v0, v1, [Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/Certificate;->certs:[Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/Certificate;->certs:[Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
