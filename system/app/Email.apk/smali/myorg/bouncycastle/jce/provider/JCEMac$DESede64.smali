.class public Lmyorg/bouncycastle/jce/provider/JCEMac$DESede64;
.super Lmyorg/bouncycastle/jce/provider/JCEMac;
.source "JCEMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESede64"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEMac;-><init>(Lmyorg/bouncycastle/crypto/Mac;)V

    return-void
.end method
