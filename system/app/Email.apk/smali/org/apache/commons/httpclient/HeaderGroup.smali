.class public Lorg/apache/commons/httpclient/HeaderGroup;
.super Ljava/lang/Object;
.source "HeaderGroup.java"


# instance fields
.field private headers:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addHeader(Lorg/apache/commons/httpclient/Header;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAllHeaders()[Lorg/apache/commons/httpclient/Header;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/httpclient/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/httpclient/Header;

    check-cast v0, [Lorg/apache/commons/httpclient/Header;

    return-object v0
.end method

.method public getCondensedHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    array-length v3, v0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Lorg/apache/commons/httpclient/Header;

    aget-object v4, v0, v5

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v5

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    aget-object v3, v0, v5

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Lorg/apache/commons/httpclient/Header;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .locals 3

    iget-object v2, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/Header;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/Header;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/commons/httpclient/Header;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/httpclient/Header;

    check-cast v3, [Lorg/apache/commons/httpclient/Header;

    return-object v3
.end method
