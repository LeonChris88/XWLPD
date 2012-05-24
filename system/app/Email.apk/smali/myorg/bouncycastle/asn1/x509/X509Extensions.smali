.class public Lmyorg/bouncycastle/asn1/x509/X509Extensions;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "X509Extensions.java"


# static fields
.field public static final AuditIdentity:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final AuthorityInfoAccess:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final AuthorityKeyIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final BasicConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final BiometricInfo:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CRLDistributionPoints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CRLNumber:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CertificateIssuer:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CertificatePolicies:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DeltaCRLIndicator:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ExtendedKeyUsage:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final FreshestCRL:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final InhibitAnyPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final InstructionCode:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final InvalidityDate:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final IssuerAlternativeName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final IssuingDistributionPoint:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final KeyUsage:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final LogoType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final NameConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final NoRevAvail:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PolicyConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PolicyMappings:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PrivateKeyUsagePeriod:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final QCStatements:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ReasonCode:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SubjectAlternativeName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SubjectDirectoryAttributes:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SubjectInfoAccess:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SubjectKeyIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final TargetInformation:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# instance fields
.field private extensions:Ljava/util/Hashtable;

.field private ordering:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.9"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->SubjectDirectoryAttributes:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.14"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->SubjectKeyIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.15"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.16"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->PrivateKeyUsagePeriod:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.17"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.18"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->IssuerAlternativeName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.19"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.20"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.21"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.23"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->InstructionCode:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.24"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->InvalidityDate:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.27"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.28"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.29"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CertificateIssuer:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.30"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->NameConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.31"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.32"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CertificatePolicies:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.33"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->PolicyMappings:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.35"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.36"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->PolicyConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.37"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->ExtendedKeyUsage:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.46"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->FreshestCRL:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.54"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->InhibitAnyPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityInfoAccess:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.11"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->SubjectInfoAccess:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.12"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->LogoType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->BiometricInfo:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->QCStatements:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.4"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->AuditIdentity:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.56"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->NoRevAvail:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.55"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->TargetInformation:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1, v7}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    new-instance v4, Lmyorg/bouncycastle/asn1/x509/X509Extension;

    invoke-virtual {v1, v8}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-static {v5}, Lmyorg/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBoolean;

    move-result-object v5

    invoke-virtual {v1, v9}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lmyorg/bouncycastle/asn1/x509/X509Extension;-><init>(Lmyorg/bouncycastle/asn1/DERBoolean;Lmyorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ne v2, v9, :cond_1

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1, v7}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    new-instance v4, Lmyorg/bouncycastle/asn1/x509/X509Extension;

    invoke-virtual {v1, v8}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-static {v5}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lmyorg/bouncycastle/asn1/x509/X509Extension;-><init>(ZLmyorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_3

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/x509/X509Extension;

    return-object v0
.end method

.method public oids()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 7

    new-instance v4, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/x509/X509Extension;

    new-instance v3, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v3, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lmyorg/bouncycastle/asn1/DERBoolean;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lmyorg/bouncycastle/asn1/DERBoolean;-><init>(Z)V

    invoke-virtual {v3, v5}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v3}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v4, v5}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_1
    new-instance v5, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v4}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v5
.end method
