.class public Lgnu/inet/http/Headers;
.super Ljava/lang/Object;
.source "Headers.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/inet/http/Headers$HeaderEntry;,
        Lgnu/inet/http/Headers$Header;
    }
.end annotation


# static fields
.field static final dateFormat:Ljava/text/DateFormat;


# instance fields
.field private headers:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgnu/inet/http/HTTPDateFormat;

    invoke-direct {v0}, Lgnu/inet/http/HTTPDateFormat;-><init>()V

    sput-object v0, Lgnu/inet/http/Headers;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private addValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Lgnu/inet/http/Headers$Header;

    invoke-direct {v1, p1}, Lgnu/inet/http/Headers$Header;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    new-instance v1, Lgnu/inet/http/Headers$Header;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lgnu/inet/http/Headers$Header;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4

    iget-object v0, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Lgnu/inet/http/Headers$HeaderEntry;

    invoke-direct {v3, v0}, Lgnu/inet/http/Headers$HeaderEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    new-instance v1, Lgnu/inet/http/Headers$Header;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lgnu/inet/http/Headers$Header;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDateValue(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lgnu/inet/http/Headers;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v2, Lgnu/inet/http/Headers;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0, p1}, Lgnu/inet/http/Headers;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    new-instance v1, Lgnu/inet/http/Headers$Header;

    invoke-direct {v1, p1}, Lgnu/inet/http/Headers$Header;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/inet/http/Headers$Header;

    iget-object v0, v0, Lgnu/inet/http/Headers$Header;->name:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x20

    const/4 v6, 0x0

    instance-of v0, p1, Lgnu/inet/util/LineInputStream;

    if-eqz v0, :cond_1

    check-cast p1, Lgnu/inet/util/LineInputStream;

    :goto_0
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {p1}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lgnu/inet/http/Headers;->addValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    new-instance v0, Lgnu/inet/util/LineInputStream;

    invoke-direct {v0, p1}, Lgnu/inet/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v1, 0x2

    if-ge v4, v1, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lgnu/inet/http/Headers;->addValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_4

    const/16 v5, 0x9

    if-ne v1, v5, :cond_5

    :cond_4
    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lgnu/inet/http/Headers;->addValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_8

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_7

    :cond_8
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    new-instance v1, Lgnu/inet/http/Headers$Header;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lgnu/inet/http/Headers$Header;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    new-instance v4, Lgnu/inet/http/Headers$Header;

    invoke-direct {v4, v0}, Lgnu/inet/http/Headers$Header;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    new-instance v1, Lgnu/inet/http/Headers$Header;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lgnu/inet/http/Headers$Header;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/Headers;->headers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
