.class public Lmyorg/bouncycastle/jce/provider/symmetric/SEED$AlgParams;
.super Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;
.source "SEED.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/symmetric/SEED;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineToString()Ljava/lang/String;
    .locals 1

    const-string v0, "SEED IV"

    return-object v0
.end method
