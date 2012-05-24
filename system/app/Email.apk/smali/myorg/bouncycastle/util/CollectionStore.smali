.class public Lmyorg/bouncycastle/util/CollectionStore;
.super Ljava/lang/Object;
.source "CollectionStore.java"

# interfaces
.implements Lmyorg/bouncycastle/util/Store;


# instance fields
.field private _local:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lmyorg/bouncycastle/util/CollectionStore;->_local:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public getMatches(Lmyorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 4

    if-nez p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lmyorg/bouncycastle/util/CollectionStore;->_local:Ljava/util/Collection;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lmyorg/bouncycastle/util/CollectionStore;->_local:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lmyorg/bouncycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
