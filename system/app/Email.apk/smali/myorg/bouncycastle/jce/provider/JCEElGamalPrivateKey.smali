.class public Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;
.super Ljava/lang/Object;
.source "JCEElGamalPrivateKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/DHPrivateKey;
.implements Lmyorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;
.implements Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# static fields
.field static final serialVersionUID:J = 0x42e1c55fb6bcc04eL


# instance fields
.field private attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

.field elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

.field x:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/interfaces/DHPrivateKey;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v2}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    new-instance v1, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v2, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-interface {p1}, Lmyorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    invoke-interface {p1}, Lmyorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;->getParameters()Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/jce/spec/ElGamalPrivateKeySpec;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/ElGamalPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/ElGamalPrivateKeySpec;->getParams()Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/ElGamalPrivateKeySpec;->getParams()Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v2, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-direct {v2, v0, v1}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "ElGamal"

    return-object v0
.end method

.method public getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 6

    new-instance v0, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v1, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v3, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v4}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v5}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DERObject;)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getDEREncoded()[B

    move-result-object v1

    return-object v1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 3

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method public setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method
