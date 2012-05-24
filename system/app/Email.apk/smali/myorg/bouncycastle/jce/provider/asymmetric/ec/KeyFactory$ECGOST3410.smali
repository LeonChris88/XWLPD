.class public Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$ECGOST3410;
.super Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;
.source "KeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECGOST3410"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ECGOST3410"

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method
