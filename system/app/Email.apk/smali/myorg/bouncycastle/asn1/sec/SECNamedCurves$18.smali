.class final Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$18;
.super Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "SECNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createParameters()Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 15

    const/16 v1, 0x83

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/16 v4, 0x8

    const-string v9, "07A11B09A76B562144418FF3FF8C2570B8"

    invoke-static {v9}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-string v9, "0217C05610884B63B9C6C7291678F9D341"

    invoke-static {v9}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    const-string v9, "4D696E676875615175985BD3ADBADA21B43A97E2"

    invoke-static {v9}, Lmyorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v14

    const-string v9, "0400000000000000023123953A9464B54D"

    invoke-static {v9}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    const-wide/16 v9, 0x2

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    new-instance v0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-direct/range {v0 .. v8}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v9, "040081BAF91FDF9833C40F9C181343638399078C6E7EA38C001F73C8134B1B4EF9E150"

    invoke-static {v9}, Lmyorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->decodePoint([B)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    new-instance v9, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-object v10, v0

    move-object v12, v7

    move-object v13, v8

    invoke-direct/range {v9 .. v14}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v9
.end method
