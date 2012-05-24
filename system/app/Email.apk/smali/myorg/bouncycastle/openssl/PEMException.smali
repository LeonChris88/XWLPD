.class public Lmyorg/bouncycastle/openssl/PEMException;
.super Ljava/io/IOException;
.source "PEMException.java"


# instance fields
.field underlying:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/openssl/PEMException;->underlying:Ljava/lang/Exception;

    return-object v0
.end method
