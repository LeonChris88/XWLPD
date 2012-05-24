.class public Lmyorg/bouncycastle/x509/PKIXCertPathReviewer;
.super Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;
.source "PKIXCertPathReviewer.java"


# static fields
.field private static final AUTH_INFO_ACCESS:Ljava/lang/String;

.field private static final CRL_DIST_POINTS:Ljava/lang/String;

.field private static final QC_STATEMENT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->QCStatements:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityInfoAccess:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/x509/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;-><init>()V

    return-void
.end method
