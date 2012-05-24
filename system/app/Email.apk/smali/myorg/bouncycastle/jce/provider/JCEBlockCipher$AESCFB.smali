.class public Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AESCFB;
.super Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.source "JCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AESCFB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x80

    new-instance v0, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {p0, v0, v2}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V

    return-void
.end method
