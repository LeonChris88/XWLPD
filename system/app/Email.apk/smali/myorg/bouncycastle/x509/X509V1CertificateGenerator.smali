.class public Lmyorg/bouncycastle/x509/X509V1CertificateGenerator;
.super Ljava/lang/Object;
.source "X509V1CertificateGenerator.java"


# instance fields
.field private tbsGen:Lmyorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lmyorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    return-void
.end method
