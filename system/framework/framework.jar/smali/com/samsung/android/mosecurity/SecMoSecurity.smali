.class public final Lcom/samsung/android/mosecurity/SecMoSecurity;
.super Ljava/lang/Object;
.source "SecMoSecurity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecMoSecurity"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "secMoSecurity"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SSMOBILE_Decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/mosecurity/SecMoSecurity;->native_ssmobile_decrpyt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SSMOBILE_Encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/mosecurity/SecMoSecurity;->native_ssmobile_encrpyt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SSMOBILE_test()V
    .locals 6

    const-string v1, "01012345678|0103348630|6550"

    const-string v3, "SecMoSecurity"

    const-string v4, "SSMOBILE_test start"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/samsung/android/mosecurity/SecMoSecurity;->SSMOBILE_Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecMoSecurity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSMOBILE_test SSMOBILE_Encrypt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TceEhtNn83ab/WAWqm0QzX2JBG3Hncg0FgTTmZ7bifg="

    invoke-static {v2}, Lcom/samsung/android/mosecurity/SecMoSecurity;->SSMOBILE_Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "SecMoSecurity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSMOBILE_test end"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native native_ssmobile_decrpyt(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native native_ssmobile_encrpyt(Ljava/lang/String;)Ljava/lang/String;
.end method
