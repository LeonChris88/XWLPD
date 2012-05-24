.class public Lmyorg/bouncycastle/jce/provider/JCEMac;
.super Ljavax/crypto/MacSpi;
.source "JCEMac.java"

# interfaces
.implements Lmyorg/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/JCEMac$PBEWithTiger;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$PBEWithSHA;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$PBEWithRIPEMD160;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$Tiger;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$RIPEMD160;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$RIPEMD128;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$OldSHA512;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$SHA512;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$OldSHA384;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$SHA384;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$SHA256;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$SHA224;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$SHA1;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$MD5;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$MD4;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$MD2;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$DES9797Alg3;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$DES9797Alg3with7816d4;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$DESede64with7816d4;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$DESede64;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$RC5CFB8;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$RC2CFB8;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$SkipjackCFB8;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$DESedeCFB8;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$DESCFB8;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$VMPC;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$GOST28147;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$RC5;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$RC2;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$Skipjack;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$DESede;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$DES;
    }
.end annotation


# instance fields
.field private keySize:I

.field private macEngine:Lmyorg/bouncycastle/crypto/Mac;

.field private pbeHash:I

.field private pbeType:I


# direct methods
.method protected constructor <init>(Lmyorg/bouncycastle/crypto/Mac;)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->pbeType:I

    const/4 v0, 0x1

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    const/16 v0, 0xa0

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->keySize:I

    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lmyorg/bouncycastle/crypto/Mac;

    return-void
.end method

.method protected constructor <init>(Lmyorg/bouncycastle/crypto/Mac;III)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->pbeType:I

    const/4 v0, 0x1

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    const/16 v0, 0xa0

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->keySize:I

    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lmyorg/bouncycastle/crypto/Mac;

    iput p2, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->pbeType:I

    iput p3, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    iput p4, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->keySize:I

    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 3

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEMac;->engineGetMacLength()I

    move-result v1

    new-array v0, v1, [B

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lmyorg/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lmyorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    return-object v0
.end method

.method protected engineGetMacLength()I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "key is null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    instance-of v2, p1, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;

    if-eqz v2, :cond_3

    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v2, v1}, Lmyorg/bouncycastle/crypto/Mac;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_1
    instance-of v2, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_2

    invoke-static {v0, p2}, Lmyorg/bouncycastle/jce/provider/PBE$Util;->makePBEMacParameters(Lmyorg/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "PBE requires PBE parameters to be set."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    instance-of v2, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_4

    new-instance v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    new-instance v1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "unknown parameter type."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineReset()V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Mac;->reset()V

    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Mac;->update(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    return-void
.end method
