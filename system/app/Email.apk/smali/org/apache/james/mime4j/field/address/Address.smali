.class public abstract Lorg/apache/james/mime4j/field/address/Address;
.super Ljava/lang/Object;
.source "Address.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final addMailboxesTo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/Address;->doAddMailboxesTo(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected abstract doAddMailboxesTo(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)V"
        }
    .end annotation
.end method
