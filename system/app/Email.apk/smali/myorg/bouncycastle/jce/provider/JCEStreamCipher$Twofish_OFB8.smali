.class public Lmyorg/bouncycastle/jce/provider/JCEStreamCipher$Twofish_OFB8;
.super Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;
.source "JCEStreamCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Twofish_OFB8"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;-><init>()V

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V

    return-void
.end method
