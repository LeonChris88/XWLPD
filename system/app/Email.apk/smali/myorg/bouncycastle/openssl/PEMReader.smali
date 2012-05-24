.class public Lmyorg/bouncycastle/openssl/PEMReader;
.super Ljava/io/BufferedReader;
.source "PEMReader.java"


# instance fields
.field private final pFinder:Lmyorg/bouncycastle/openssl/PasswordFinder;

.field private final provider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "myBC"

    invoke-direct {p0, p1, v0, v1}, Lmyorg/bouncycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;Lmyorg/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lmyorg/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p2, p0, Lmyorg/bouncycastle/openssl/PEMReader;->pFinder:Lmyorg/bouncycastle/openssl/PasswordFinder;

    iput-object p3, p0, Lmyorg/bouncycastle/openssl/PEMReader;->provider:Ljava/lang/String;

    return-void
.end method
