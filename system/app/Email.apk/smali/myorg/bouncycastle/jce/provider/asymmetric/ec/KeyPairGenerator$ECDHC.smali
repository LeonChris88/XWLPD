.class public Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECDHC;
.super Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECDHC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ECDHC"

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;-><init>(Ljava/lang/String;)V

    return-void
.end method
