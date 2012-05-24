.class public Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;
.super Ljava/lang/Object;
.source "DHKDFParameters.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field private final algorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private final extraInfo:[B

.field private final keySize:I

.field private final z:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;I[B)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->algorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput p2, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->keySize:I

    iput-object p3, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->z:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->extraInfo:[B

    return-void
.end method


# virtual methods
.method public getAlgorithm()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->algorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getExtraInfo()[B
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->extraInfo:[B

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    iget v0, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->keySize:I

    return v0
.end method

.method public getZ()[B
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->z:[B

    return-object v0
.end method
