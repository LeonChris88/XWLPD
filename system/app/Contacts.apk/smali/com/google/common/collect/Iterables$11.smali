.class final Lcom/google/common/collect/Iterables$11;
.super Lcom/google/common/collect/Iterables$IterableWithToString;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Iterables$IterableWithToString",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$list:Ljava/util/List;


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/common/collect/Iterables$11;->val$list:Ljava/util/List;

    iget-object v2, p0, Lcom/google/common/collect/Iterables$11;->val$list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Iterables$11$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Iterables$11$1;-><init>(Lcom/google/common/collect/Iterables$11;Ljava/util/ListIterator;)V

    return-object v1
.end method
