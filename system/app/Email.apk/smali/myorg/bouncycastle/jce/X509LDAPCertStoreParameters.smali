.class public Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;
.super Ljava/lang/Object;
.source "X509LDAPCertStoreParameters.java"

# interfaces
.implements Ljava/security/cert/CertStoreParameters;
.implements Lmyorg/bouncycastle/x509/X509StoreParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$1;,
        Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    }
.end annotation


# instance fields
.field private aACertificateAttribute:Ljava/lang/String;

.field private aACertificateSubjectAttributeName:Ljava/lang/String;

.field private attributeAuthorityRevocationListAttribute:Ljava/lang/String;

.field private attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

.field private attributeCertificateAttributeAttribute:Ljava/lang/String;

.field private attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

.field private attributeCertificateRevocationListAttribute:Ljava/lang/String;

.field private attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

.field private attributeDescriptorCertificateAttribute:Ljava/lang/String;

.field private attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

.field private authorityRevocationListAttribute:Ljava/lang/String;

.field private authorityRevocationListIssuerAttributeName:Ljava/lang/String;

.field private baseDN:Ljava/lang/String;

.field private cACertificateAttribute:Ljava/lang/String;

.field private cACertificateSubjectAttributeName:Ljava/lang/String;

.field private certificateRevocationListAttribute:Ljava/lang/String;

.field private certificateRevocationListIssuerAttributeName:Ljava/lang/String;

.field private crossCertificateAttribute:Ljava/lang/String;

.field private crossCertificateSubjectAttributeName:Ljava/lang/String;

.field private deltaRevocationListAttribute:Ljava/lang/String;

.field private deltaRevocationListIssuerAttributeName:Ljava/lang/String;

.field private ldapAACertificateAttributeName:Ljava/lang/String;

.field private ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

.field private ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

.field private ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

.field private ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

.field private ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

.field private ldapCACertificateAttributeName:Ljava/lang/String;

.field private ldapCertificateRevocationListAttributeName:Ljava/lang/String;

.field private ldapCrossCertificateAttributeName:Ljava/lang/String;

.field private ldapDeltaRevocationListAttributeName:Ljava/lang/String;

.field private ldapURL:Ljava/lang/String;

.field private ldapUserCertificateAttributeName:Ljava/lang/String;

.field private searchForSerialNumberIn:Ljava/lang/String;

.field private userCertificateAttribute:Ljava/lang/String;

.field private userCertificateSubjectAttributeName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$100(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapURL:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$200(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->baseDN:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$300(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->userCertificateAttribute:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$400(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->cACertificateAttribute:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$500(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->crossCertificateAttribute:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$600(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListAttribute:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$700(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListAttribute:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$800(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListAttribute:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$900(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeAttribute:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1000(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->aACertificateAttribute:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1100(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateAttribute:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1200(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListAttribute:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1300(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListAttribute:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1400(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapUserCertificateAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1500(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCACertificateAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1600(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCrossCertificateAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1700(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCertificateRevocationListAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1800(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapDeltaRevocationListAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1900(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2000(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2100(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAACertificateAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2200(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2300(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2400(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2500(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->userCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2600(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->cACertificateSubjectAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2700(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->crossCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2800(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2900(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$3000(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$3100(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$3200(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->aACertificateSubjectAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$3300(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$3400(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$3500(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$3600(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->searchForSerialNumberIn:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;-><init>(Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)V

    return-void
.end method

.method private addHashCode(ILjava/lang/Object;)I
    .locals 2

    mul-int/lit8 v1, p1, 0x1d

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->userCertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->cACertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->crossCertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->aACertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapUserCertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCACertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCrossCertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCertificateRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapDeltaRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAACertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->userCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->cACertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->crossCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->aACertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->searchForSerialNumberIn:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method
