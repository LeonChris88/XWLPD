.class public abstract Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;
.super Ljava/lang/Object;
.source "X9ECParametersHolder.java"


# instance fields
.field private params:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createParameters()Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
.end method

.method public getParameters()Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;->createParameters()Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    return-object v0
.end method
