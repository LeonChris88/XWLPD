.class public Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;
.super Ljava/lang/Object;
.source "V2TBSCertListGenerator.java"


# instance fields
.field private crlentries:Ljava/util/Vector;

.field extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

.field nextUpdate:Lmyorg/bouncycastle/asn1/x509/Time;

.field version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lmyorg/bouncycastle/asn1/x509/Time;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    return-void
.end method
