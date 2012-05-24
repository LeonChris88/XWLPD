.class public Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$GOST3410;
.super Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.source "JDKAlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GOST3410"
.end annotation


# instance fields
.field currentSpec:Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 6

    new-instance v1, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$GOST3410;->currentSpec:Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    invoke-virtual {v3}, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->getPublicKeyParamSetOID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$GOST3410;->currentSpec:Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    invoke-virtual {v4}, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->getDigestParamSetOID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v4, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$GOST3410;->currentSpec:Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    invoke-virtual {v5}, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->getEncryptionParamSetOID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    :try_start_0
    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error encoding GOST3410Parameters"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$GOST3410;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$GOST3410;->engineGetEncoded()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    instance-of v0, p1, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "GOST3410ParameterSpec required to initialise a GOST3410 algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$GOST3410;->currentSpec:Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    return-void
.end method

.method protected engineInit([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    new-instance v2, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-direct {v2, v1}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-static {v2}, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->fromPublicKeyAlg(Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;)Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$GOST3410;->currentSpec:Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not a valid GOST3410 Parameter encoding."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not a valid GOST3410 Parameter encoding."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$GOST3410;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$GOST3410;->engineInit([B)V

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown parameter format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    const-string v0, "GOST3410 Parameters"

    return-object v0
.end method

.method protected localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    const-class v0, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$GOST3410;->currentSpec:Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to GOST3410 parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
