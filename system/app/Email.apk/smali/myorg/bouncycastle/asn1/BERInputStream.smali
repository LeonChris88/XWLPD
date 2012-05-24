.class public Lmyorg/bouncycastle/asn1/BERInputStream;
.super Lmyorg/bouncycastle/asn1/DERInputStream;
.source "BERInputStream.java"


# static fields
.field private static final END_OF_STREAM:Lmyorg/bouncycastle/asn1/DERObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmyorg/bouncycastle/asn1/BERInputStream$1;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/BERInputStream$1;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/BERInputStream;->END_OF_STREAM:Lmyorg/bouncycastle/asn1/DERObject;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/DERInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method
