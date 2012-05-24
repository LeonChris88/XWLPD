.class public Lorg/apache/commons/io/filefilter/AndFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "AndFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/io/filefilter/ConditionalFileFilter;


# instance fields
.field private fileFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The filters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/filefilter/AndFileFilter;->addFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/io/filefilter/AndFileFilter;->addFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public addFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-lez v2, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "null"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
