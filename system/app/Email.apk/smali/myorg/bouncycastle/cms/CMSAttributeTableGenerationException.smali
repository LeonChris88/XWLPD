.class public Lmyorg/bouncycastle/cms/CMSAttributeTableGenerationException;
.super Lmyorg/bouncycastle/cms/CMSRuntimeException;
.source "CMSAttributeTableGenerationException.java"


# instance fields
.field e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/cms/CMSRuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSAttributeTableGenerationException;->e:Ljava/lang/Exception;

    return-object v0
.end method
