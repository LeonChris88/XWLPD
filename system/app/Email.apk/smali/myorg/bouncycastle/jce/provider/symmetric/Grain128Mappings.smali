.class public Lmyorg/bouncycastle/jce/provider/symmetric/Grain128Mappings;
.super Ljava/util/HashMap;
.source "Grain128Mappings.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Cipher.Grain128"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.Grain128$Base"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/Grain128Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyGenerator.Grain128"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.Grain128$KeyGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/Grain128Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
