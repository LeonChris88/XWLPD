.class public Lmyorg/bouncycastle/jce/provider/symmetric/AES$OFB;
.super Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OFB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x80

    new-instance v0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v1, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;

    new-instance v2, Lmyorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v2}, Lmyorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BufferedBlockCipher;I)V

    return-void
.end method