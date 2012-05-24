.class public Lmyorg/bouncycastle/asn1/DERNull;
.super Lmyorg/bouncycastle/asn1/ASN1Null;
.source "DERNull.java"


# static fields
.field public static final INSTANCE:Lmyorg/bouncycastle/asn1/DERNull;


# instance fields
.field zeroBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/DERNull;->INSTANCE:Lmyorg/bouncycastle/asn1/DERNull;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Null;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/DERNull;->zeroBytes:[B

    return-void
.end method


# virtual methods
.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERNull;->zeroBytes:[B

    invoke-virtual {p1, v0, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    return-void
.end method
