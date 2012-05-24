.class public Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;
.super Ljava/lang/Object;
.source "MQVPrivateParameters.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private ephemeralPrivateKey:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private ephemeralPublicKey:Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

.field private staticPrivateKey:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->staticPrivateKey:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->ephemeralPrivateKey:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object p3, p0, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->ephemeralPublicKey:Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-void
.end method


# virtual methods
.method public getEphemeralPrivateKey()Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->ephemeralPrivateKey:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    return-object v0
.end method

.method public getEphemeralPublicKey()Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->ephemeralPublicKey:Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-object v0
.end method

.method public getStaticPrivateKey()Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->staticPrivateKey:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    return-object v0
.end method
