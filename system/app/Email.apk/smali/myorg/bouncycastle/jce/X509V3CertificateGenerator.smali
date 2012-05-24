.class public Lmyorg/bouncycastle/jce/X509V3CertificateGenerator;
.super Ljava/lang/Object;
.source "X509V3CertificateGenerator.java"


# static fields
.field private static algorithms:Ljava/util/Hashtable;


# instance fields
.field private extOrdering:Ljava/util/Vector;

.field private extensions:Ljava/util/Hashtable;

.field private tbsGen:Lmyorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD2WITHRSAENCRYPTION"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.2"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD2WITHRSA"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.2"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD5WITHRSAENCRYPTION"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.4"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD5WITHRSA"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.4"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHRSAENCRYPTION"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.5"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHRSA"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.5"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160WITHRSAENCRYPTION"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.3.36.3.3.1.2"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160WITHRSA"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.3.36.3.3.1.2"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHDSA"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.10040.4.3"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "DSAWITHSHA1"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.10040.4.3"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHECDSA"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.10045.4.1"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "ECDSAWITHSHA1"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.10045.4.1"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509V3CertificateGenerator;->extensions:Ljava/util/Hashtable;

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509V3CertificateGenerator;->extOrdering:Ljava/util/Vector;

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509V3CertificateGenerator;->tbsGen:Lmyorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    return-void
.end method
