.class public Lmyorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;
.super Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator;
.source "CMSAuthenticatedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator;-><init>(Ljava/security/SecureRandom;)V

    return-void
.end method