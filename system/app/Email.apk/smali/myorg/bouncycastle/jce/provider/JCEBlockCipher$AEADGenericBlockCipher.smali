.class Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;
.super Ljava/lang/Object;
.source "JCEBlockCipher.java"

# interfaces
.implements Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AEADGenericBlockCipher"
.end annotation


# instance fields
.field private cipher:Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1, p2}, Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I

    move-result v0

    return v0
.end method

.method public getOutputSize(I)I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1, p2}, Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public processBytes([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result v0

    return v0
.end method

.method public wrapOnNoPadding()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
