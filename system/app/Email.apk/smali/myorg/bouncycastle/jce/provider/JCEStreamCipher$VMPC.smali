.class public Lmyorg/bouncycastle/jce/provider/JCEStreamCipher$VMPC;
.super Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;
.source "JCEStreamCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VMPC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;-><init>()V

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;-><init>(Lmyorg/bouncycastle/crypto/StreamCipher;I)V

    return-void
.end method
