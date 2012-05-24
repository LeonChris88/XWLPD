.class public Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;
.super Ljava/lang/Object;
.source "JCEECPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lmyorg/bouncycastle/jce/interfaces/ECPointEncoder;
.implements Lmyorg/bouncycastle/jce/interfaces/ECPublicKey;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private ecSpec:Ljava/security/spec/ECParameterSpec;

.field private gostParams:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

.field private q:Lmyorg/bouncycastle/math/ec/ECPoint;

.field private withCompression:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "EC"

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lmyorg/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    return-void

    :cond_0
    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lmyorg/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "EC"

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lmyorg/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {p3}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v1, p3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lmyorg/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iget-object v0, p2, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    iget-object v0, p2, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v0, p2, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    iget-object v0, p2, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/jce/spec/ECPublicKeySpec;)V
    .locals 7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "EC"

    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lmyorg/bouncycastle/jce/spec/ECPublicKeySpec;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {p2}, Lmyorg/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lmyorg/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p2}, Lmyorg/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v3

    invoke-static {v0, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {p2}, Lmyorg/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    invoke-static {v1, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lmyorg/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECPoint;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lmyorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->populateFromPubKeyInfo(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-void
.end method

.method private createSpec(Ljava/security/spec/EllipticCurve;Lmyorg/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;
    .locals 4

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method private extractBytes([BILjava/math/BigInteger;)V
    .locals 7

    const/16 v6, 0x20

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    array-length v3, v2

    if-ge v3, v6, :cond_0

    new-array v1, v6, [B

    const/4 v3, 0x0

    array-length v4, v1

    array-length v5, v2

    sub-int/2addr v4, v5

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v6, :cond_1

    add-int v3, p2, v0

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    aget-byte v4, v2, v4

    aput-byte v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private populateFromPubKeyInfo(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 22

    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    sget-object v2, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v7

    const-string v1, "ECGOST3410"

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v14

    check-cast v14, Lmyorg/bouncycastle/asn1/ASN1OctetString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v14}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v15

    const/16 v1, 0x20

    new-array v0, v1, [B

    move-object/from16 v20, v0

    const/16 v1, 0x20

    new-array v0, v1, [B

    move-object/from16 v21, v0

    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, v20

    array-length v1, v0

    if-eq v13, v1, :cond_0

    rsub-int/lit8 v1, v13, 0x1f

    aget-byte v1, v15, v1

    aput-byte v1, v20, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :catch_0
    move-exception v12

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "error recovering public key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, v21

    array-length v1, v0

    if-eq v13, v1, :cond_1

    rsub-int/lit8 v1, v13, 0x3f

    aget-byte v1, v15, v1

    aput-byte v1, v21, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v1}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/jce/ECGOST3410NamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v8, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v3

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljava/math/BigInteger;

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-direct {v2, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v4, 0x0

    invoke-virtual {v8, v1, v2, v4}, Lmyorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    new-instance v1, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/security/spec/ECPoint;

    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v17, Lmyorg/bouncycastle/asn1/x9/X962Parameters;

    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DERObject;

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lmyorg/bouncycastle/asn1/DERObject;)V

    invoke-virtual/range {v17 .. v17}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {v17 .. v17}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v16

    check-cast v16, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static/range {v16 .. v16}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->getNamedCurveByOid(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v11

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v8, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v3

    new-instance v1, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-static/range {v16 .. v16}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->getCurveName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/security/spec/ECPoint;

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v9

    new-instance v14, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v14, v9}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v1, 0x0

    aget-byte v1, v9, v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    aget-byte v1, v9, v1

    array-length v2, v9

    add-int/lit8 v2, v2, -0x2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x2

    aget-byte v1, v9, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v1, 0x2

    aget-byte v1, v9, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    :cond_4
    new-instance v1, Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v1}, Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    invoke-virtual {v1, v8}, Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lmyorg/bouncycastle/math/ec/ECCurve;)I

    move-result v18

    array-length v1, v9

    add-int/lit8 v1, v1, -0x3

    move/from16 v0, v18

    if-lt v0, v1, :cond_5

    :try_start_1
    invoke-static {v9}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v14

    check-cast v14, Lmyorg/bouncycastle/asn1/ASN1OctetString;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    new-instance v10, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;

    invoke-direct {v10, v8, v14}, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    goto/16 :goto_2

    :cond_6
    invoke-virtual/range {v17 .. v17}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-static {}, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    goto :goto_3

    :cond_7
    new-instance v11, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual/range {v17 .. v17}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v11, v1}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v8, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v3

    new-instance v1, Ljava/security/spec/ECParameterSpec;

    new-instance v2, Ljava/security/spec/ECPoint;

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v1, v3, v2, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto/16 :goto_3

    :catch_1
    move-exception v12

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "error recovering public key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->populateFromPubKeyInfo(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    return-void
.end method


# virtual methods
.method public engineGetQ()Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method engineGetSpec()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-static {v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/math/ec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 13

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    const-string v3, "ECGOST3410"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    if-eqz v2, :cond_0

    iget-object v12, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v7

    const/16 v2, 0x40

    new-array v9, v2, [B

    const/4 v2, 0x0

    invoke-direct {p0, v9, v2, v6}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->extractBytes([BILjava/math/BigInteger;)V

    const/16 v2, 0x20

    invoke-direct {p0, v9, v2, v7}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->extractBytes([BILjava/math/BigInteger;)V

    new-instance v10, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v12}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v3, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v9}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v10, v2, v3}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :goto_1
    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getDEREncoded()[B

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v2, v2, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v2, :cond_1

    new-instance v12, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getOID(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_CryptoProParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v12, v2, v3}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    new-instance v0, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-static {v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Lmyorg/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v12, Lmyorg/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v12, v0}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lmyorg/bouncycastle/asn1/x9/X9ECParameters;)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v2, v2, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v8

    new-instance v12, Lmyorg/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v12, v8}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    :goto_2
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    new-instance v2, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    iget-boolean v5, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-virtual {v1, v3, v4, v5}, Lmyorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lmyorg/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v11

    check-cast v11, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    new-instance v10, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v12}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v10, v2, v3}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v2, :cond_4

    new-instance v12, Lmyorg/bouncycastle/asn1/x9/X962Parameters;

    sget-object v2, Lmyorg/bouncycastle/asn1/DERNull;->INSTANCE:Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v12, v2}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lmyorg/bouncycastle/asn1/DERObject;)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    new-instance v0, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-static {v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Lmyorg/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v12, Lmyorg/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v12, v0}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lmyorg/bouncycastle/asn1/x9/X9ECParameters;)V

    goto/16 :goto_2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getParameters()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-static {v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    goto :goto_0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getQ()Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    instance-of v0, v0, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;

    if-eqz v0, :cond_0

    new-instance v0, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    goto :goto_0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 3

    new-instance v0, Ljava/security/spec/ECPoint;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECPoint;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x10

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EC Public Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "            X: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "            Y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
