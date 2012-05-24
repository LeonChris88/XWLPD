.class public Lmyorg/bouncycastle/sasn1/BerSet;
.super Lmyorg/bouncycastle/sasn1/Asn1Object;
.source "BerSet.java"

# interfaces
.implements Lmyorg/bouncycastle/sasn1/Asn1Set;


# instance fields
.field private _aIn:Lmyorg/bouncycastle/sasn1/Asn1InputStream;


# direct methods
.method protected constructor <init>(ILjava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, p1, v0, p2}, Lmyorg/bouncycastle/sasn1/Asn1Object;-><init>(IILjava/io/InputStream;)V

    new-instance v0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;

    invoke-direct {v0, p2}, Lmyorg/bouncycastle/sasn1/Asn1InputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lmyorg/bouncycastle/sasn1/BerSet;->_aIn:Lmyorg/bouncycastle/sasn1/Asn1InputStream;

    return-void
.end method
