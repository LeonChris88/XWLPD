.class public Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithMD2AndRC2;
.super Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithMD2AndRC2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x40

    const-string v1, "PBEwithMD2andRC2"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD2AndRC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v0, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;ZIIII)V

    return-void
.end method
