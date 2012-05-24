.class public Lmyorg/bouncycastle/x509/X509Store;
.super Ljava/lang/Object;
.source "X509Store.java"

# interfaces
.implements Lmyorg/bouncycastle/util/Store;


# instance fields
.field private _provider:Ljava/security/Provider;

.field private _spi:Lmyorg/bouncycastle/x509/X509StoreSpi;


# direct methods
.method private constructor <init>(Ljava/security/Provider;Lmyorg/bouncycastle/x509/X509StoreSpi;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/x509/X509Store;->_provider:Ljava/security/Provider;

    iput-object p2, p0, Lmyorg/bouncycastle/x509/X509Store;->_spi:Lmyorg/bouncycastle/x509/X509StoreSpi;

    return-void
.end method

.method private static createStore(Lmyorg/bouncycastle/x509/X509Util$Implementation;Lmyorg/bouncycastle/x509/X509StoreParameters;)Lmyorg/bouncycastle/x509/X509Store;
    .locals 3

    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/X509Util$Implementation;->getEngine()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/x509/X509StoreSpi;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/x509/X509StoreSpi;->engineInit(Lmyorg/bouncycastle/x509/X509StoreParameters;)V

    new-instance v1, Lmyorg/bouncycastle/x509/X509Store;

    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/X509Util$Implementation;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/x509/X509Store;-><init>(Ljava/security/Provider;Lmyorg/bouncycastle/x509/X509StoreSpi;)V

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Lmyorg/bouncycastle/x509/X509StoreParameters;Ljava/lang/String;)Lmyorg/bouncycastle/x509/X509Store;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/x509/NoSuchStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-static {p2}, Lmyorg/bouncycastle/x509/X509Util;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmyorg/bouncycastle/x509/X509Store;->getInstance(Ljava/lang/String;Lmyorg/bouncycastle/x509/X509StoreParameters;Ljava/security/Provider;)Lmyorg/bouncycastle/x509/X509Store;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Lmyorg/bouncycastle/x509/X509StoreParameters;Ljava/security/Provider;)Lmyorg/bouncycastle/x509/X509Store;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/x509/NoSuchStoreException;
        }
    .end annotation

    :try_start_0
    const-string v2, "X509Store"

    invoke-static {v2, p0, p2}, Lmyorg/bouncycastle/x509/X509Util;->getImplementation(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Lmyorg/bouncycastle/x509/X509Util$Implementation;

    move-result-object v1

    invoke-static {v1, p1}, Lmyorg/bouncycastle/x509/X509Store;->createStore(Lmyorg/bouncycastle/x509/X509Util$Implementation;Lmyorg/bouncycastle/x509/X509StoreParameters;)Lmyorg/bouncycastle/x509/X509Store;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Lmyorg/bouncycastle/x509/NoSuchStoreException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/x509/NoSuchStoreException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getMatches(Lmyorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509Store;->_spi:Lmyorg/bouncycastle/x509/X509StoreSpi;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/x509/X509StoreSpi;->engineGetMatches(Lmyorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
