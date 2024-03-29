.class public Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SMIMECapabilities.java"


# static fields
.field public static final canNotDecryptAny:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final dES_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final dES_EDE3_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final preferSignedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final rC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final sMIMECapabilitesVersions:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# instance fields
.field private capabilities:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->preferSignedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;->preferSignedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->canNotDecryptAny:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;->canNotDecryptAny:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sMIMECapabilitiesVersions:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;->sMIMECapabilitesVersions:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.14.3.2.7"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;->dES_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;->dES_EDE3_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;->rC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;->capabilities:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
