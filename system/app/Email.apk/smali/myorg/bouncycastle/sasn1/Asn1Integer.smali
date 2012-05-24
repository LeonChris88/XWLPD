.class public Lmyorg/bouncycastle/sasn1/Asn1Integer;
.super Lmyorg/bouncycastle/sasn1/DerObject;
.source "Asn1Integer.java"


# instance fields
.field private _value:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lmyorg/bouncycastle/sasn1/DerObject;-><init>(II[B)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lmyorg/bouncycastle/sasn1/Asn1Integer;->_value:Ljava/math/BigInteger;

    return-void
.end method
