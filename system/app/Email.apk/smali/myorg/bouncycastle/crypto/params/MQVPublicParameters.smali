.class public Lmyorg/bouncycastle/crypto/params/MQVPublicParameters;
.super Ljava/lang/Object;
.source "MQVPublicParameters.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private ephemeralPublicKey:Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

.field private staticPublicKey:Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/MQVPublicParameters;->staticPublicKey:Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/MQVPublicParameters;->ephemeralPublicKey:Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-void
.end method


# virtual methods
.method public getEphemeralPublicKey()Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/MQVPublicParameters;->ephemeralPublicKey:Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-object v0
.end method

.method public getStaticPublicKey()Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/MQVPublicParameters;->staticPublicKey:Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-object v0
.end method
