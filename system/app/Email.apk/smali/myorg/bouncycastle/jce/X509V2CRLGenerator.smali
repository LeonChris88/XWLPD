.class public Lmyorg/bouncycastle/jce/X509V2CRLGenerator;
.super Ljava/lang/Object;
.source "X509V2CRLGenerator.java"


# static fields
.field private static algorithms:Ljava/util/Hashtable;


# instance fields
.field private dateF:Ljava/text/SimpleDateFormat;

.field private extOrdering:Ljava/util/Vector;

.field private extensions:Ljava/util/Hashtable;

.field private tbsGen:Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

.field private tz:Ljava/util/SimpleTimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->algorithms:Ljava/util/Hashtable;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD2WITHRSAENCRYPTION"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.2"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD2WITHRSA"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.2"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD5WITHRSAENCRYPTION"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.4"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD5WITHRSA"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.4"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHRSAENCRYPTION"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.5"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHRSA"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.5"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160WITHRSAENCRYPTION"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.3.36.3.3.1.2"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160WITHRSA"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.3.36.3.3.1.2"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHDSA"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.10040.4.3"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "DSAWITHSHA1"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.10040.4.3"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHECDSA"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.10045.4.1"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "ECDSAWITHSHA1"

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.10045.4.1"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->dateF:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->tz:Ljava/util/SimpleTimeZone;

    iput-object v3, p0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->extensions:Ljava/util/Hashtable;

    iput-object v3, p0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->extOrdering:Ljava/util/Vector;

    iget-object v0, p0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->dateF:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->tz:Ljava/util/SimpleTimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509V2CRLGenerator;->tbsGen:Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    return-void
.end method
