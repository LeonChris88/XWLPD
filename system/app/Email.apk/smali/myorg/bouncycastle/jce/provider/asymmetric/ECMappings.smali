.class public Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;
.super Ljava/util/HashMap;
.source "ECMappings.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "KeyAgreement.ECDH"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$DH"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyAgreement.ECDHC"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$DHC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyAgreement.ECMQV"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$MQV"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyAgreement."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhSinglePass_stdDH_sha1kdf_scheme:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$DHwithSHA1KDF"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyAgreement."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->mqvSinglePass_sha1kdf_scheme:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$MQVwithSHA1KDF"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyFactory.EC"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$EC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyFactory.ECDSA"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$ECDSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyFactory.ECDH"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$ECDH"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyFactory.ECDHC"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$ECDHC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyFactory.ECMQV"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$ECMQV"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.KeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.KeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhSinglePass_stdDH_sha1kdf_scheme:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.KeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->mqvSinglePass_sha1kdf_scheme:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ECMQV"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyFactory.ECGOST3410"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.KeyFactory.GOST-3410-2001"

    const-string v1, "ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.KeyFactory.ECGOST-3410"

    const-string v1, "ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.KeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyPairGenerator.EC"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$EC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyPairGenerator.ECDSA"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECDSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyPairGenerator.ECDH"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECDH"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyPairGenerator.ECDHC"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECDHC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyPairGenerator.ECIES"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECDH"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyPairGenerator.ECMQV"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECMQV"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.KeyPairGenerator."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhSinglePass_stdDH_sha1kdf_scheme:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.KeyPairGenerator."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->mqvSinglePass_sha1kdf_scheme:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ECMQV"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyPairGenerator.ECGOST3410"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.KeyPairGenerator.ECGOST-3410"

    const-string v1, "ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.KeyPairGenerator.GOST-3410-2001"

    const-string v1, "ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Signature.ECDSA"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Signature.NONEwithECDSA"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSAnone"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Signature.SHA1withECDSA"

    const-string v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Signature.ECDSAwithSHA1"

    const-string v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Signature.SHA1WITHECDSA"

    const-string v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Signature.ECDSAWITHSHA1"

    const-string v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Signature.SHA1WithECDSA"

    const-string v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Signature.ECDSAWithSHA1"

    const-string v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Signature.1.2.840.10045.4.1"

    const-string v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSignWithSha1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA224"

    const-string v1, "ECDSA"

    const-string v2, "myorg.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA224"

    sget-object v3, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    const-string v0, "SHA256"

    const-string v1, "ECDSA"

    const-string v2, "myorg.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA256"

    sget-object v3, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    const-string v0, "SHA384"

    const-string v1, "ECDSA"

    const-string v2, "myorg.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA384"

    sget-object v3, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    const-string v0, "SHA512"

    const-string v1, "ECDSA"

    const-string v2, "myorg.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA512"

    sget-object v3, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    const-string v0, "RIPEMD160"

    const-string v1, "ECDSA"

    const-string v2, "myorg.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSARipeMD160"

    sget-object v3, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSignWithRipemd160:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    const-string v0, "Signature.SHA1WITHECNR"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Signature.SHA224WITHECNR"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR224"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Signature.SHA256WITHECNR"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR256"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Signature.SHA384WITHECNR"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR384"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Signature.SHA512WITHECNR"

    const-string v1, "myorg.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR512"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA1"

    const-string v1, "CVC-ECDSA"

    const-string v2, "myorg.bouncycastle.jce.provider.asymmetric.ec.Signature$ecCVCDSA"

    sget-object v3, Lmyorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    const-string v0, "SHA224"

    const-string v1, "CVC-ECDSA"

    const-string v2, "myorg.bouncycastle.jce.provider.asymmetric.ec.Signature$ecCVCDSA224"

    sget-object v3, Lmyorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    const-string v0, "SHA256"

    const-string v1, "CVC-ECDSA"

    const-string v2, "myorg.bouncycastle.jce.provider.asymmetric.ec.Signature$ecCVCDSA256"

    sget-object v3, Lmyorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    return-void
.end method

.method private addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "WITH"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "with"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "With"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alg.Alias.Signature."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alg.Alias.Signature."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alg.Alias.Signature."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alg.Alias.Signature."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alg.Alias.Signature.OID."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
