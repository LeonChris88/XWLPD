.class public Lmyorg/bouncycastle/jce/provider/X509StoreCRLCollection;
.super Lmyorg/bouncycastle/x509/X509StoreSpi;
.source "X509StoreCRLCollection.java"


# instance fields
.field private _store:Lmyorg/bouncycastle/util/CollectionStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/x509/X509StoreSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetMatches(Lmyorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509StoreCRLCollection;->_store:Lmyorg/bouncycastle/util/CollectionStore;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/util/CollectionStore;->getMatches(Lmyorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public engineInit(Lmyorg/bouncycastle/x509/X509StoreParameters;)V
    .locals 2

    instance-of v0, p1, Lmyorg/bouncycastle/x509/X509CollectionStoreParameters;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lmyorg/bouncycastle/util/CollectionStore;

    check-cast p1, Lmyorg/bouncycastle/x509/X509CollectionStoreParameters;

    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/X509CollectionStoreParameters;->getCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509StoreCRLCollection;->_store:Lmyorg/bouncycastle/util/CollectionStore;

    return-void
.end method
