.class public Lmyorg/bouncycastle/cms/CMSSignedDataGenerator;
.super Lmyorg/bouncycastle/cms/CMSSignedGenerator;
.source "CMSSignedDataGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;
    }
.end annotation


# instance fields
.field signerInfs:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/cms/CMSSignedGenerator;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/cms/CMSSignedGenerator;-><init>(Ljava/security/SecureRandom;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    return-void
.end method
