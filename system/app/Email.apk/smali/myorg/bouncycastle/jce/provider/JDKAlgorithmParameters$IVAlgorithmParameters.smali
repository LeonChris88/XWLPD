.class public Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;
.super Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.source "JDKAlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IVAlgorithmParameters"
.end annotation


# instance fields
.field private iv:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ASN.1"

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmyorg/bouncycastle/asn1/DEROctetString;

    const-string v1, "RAW"

    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->iv:[B

    invoke-static {v0}, Lmyorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_0

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

    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "IvParameterSpec required to initialise a IV parameters algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->iv:[B

    return-void
.end method

.method protected engineInit([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lmyorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->iv:[B

    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->engineInit([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception decoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string v2, "RAW"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->engineInit([B)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unknown parameters format in IV parameters object"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    const-string v0, "IV Parameters"

    return-object v0
.end method

.method protected localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to IV parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
