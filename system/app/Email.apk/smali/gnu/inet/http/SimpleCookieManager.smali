.class public Lgnu/inet/http/SimpleCookieManager;
.super Ljava/lang/Object;
.source "SimpleCookieManager.java"

# interfaces
.implements Lgnu/inet/http/CookieManager;


# instance fields
.field protected cookies:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgnu/inet/http/SimpleCookieManager;->cookies:Ljava/util/Map;

    return-void
.end method

.method private addCookies(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Date;)V
    .locals 6

    iget-object v0, p0, Lgnu/inet/http/SimpleCookieManager;->cookies:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/inet/http/Cookie;

    invoke-virtual {v2}, Lgnu/inet/http/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, p5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v2}, Lgnu/inet/http/Cookie;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {v2}, Lgnu/inet/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public getCookies(Ljava/lang/String;ZLjava/lang/String;)[Lgnu/inet/http/Cookie;
    .locals 8

    const/16 v7, 0x2e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v6, v0

    move-object v2, p1

    :goto_0
    const/4 v0, -0x1

    if-eq v6, v0, :cond_1

    move-object v0, p0

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lgnu/inet/http/SimpleCookieManager;->addCookies(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v6, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :cond_1
    move-object v0, p0

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lgnu/inet/http/SimpleCookieManager;->addCookies(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Date;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lgnu/inet/http/Cookie;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public setCookie(Lgnu/inet/http/Cookie;)V
    .locals 3

    invoke-virtual {p1}, Lgnu/inet/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lgnu/inet/http/SimpleCookieManager;->cookies:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lgnu/inet/http/SimpleCookieManager;->cookies:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lgnu/inet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
