.class public Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
.super Lorg/apache/commons/httpclient/cookie/CookieSpecBase;
.source "RFC2965Spec.java"

# interfaces
.implements Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2VersionAttributeHandler;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieDiscardAttributeHandler;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieCommentUrlAttributeHandler;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieCommentAttributeHandler;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieSecureAttributeHandler;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2MaxageAttributeHandler;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2DomainAttributeHandler;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PathAttributeHandler;
    }
.end annotation


# static fields
.field private static final PATH_COMPOARATOR:Ljava/util/Comparator;


# instance fields
.field private final attribHandlerList:Ljava/util/List;

.field private final attribHandlerMap:Ljava/util/Map;

.field private final formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

.field private final rfc2109:Lorg/apache/commons/httpclient/cookie/CookieSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/httpclient/cookie/CookiePathComparator;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/cookie/CookiePathComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->PATH_COMPOARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;-><init>()V

    new-instance v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->setAlwaysUseQuotes(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerList:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->rfc2109:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    const-string v0, "path"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PathAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PathAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    const-string v0, "domain"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2DomainAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2DomainAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    const-string v0, "port"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    const-string v0, "max-age"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2MaxageAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2MaxageAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    const-string v0, "secure"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieSecureAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieSecureAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    const-string v0, "comment"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieCommentAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieCommentAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    const-string v0, "commenturl"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieCommentUrlAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieCommentUrlAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    const-string v0, "discard"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieDiscardAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieDiscardAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    const-string v0, "version"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2VersionAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2VersionAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    return-void
.end method

.method private createPortAttribute([I)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private doFormatCookie2(Lorg/apache/commons/httpclient/cookie/Cookie2;Ljava/lang/StringBuffer;)V
    .locals 7

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v4, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-direct {v4, v0, v2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p2, v4}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getDomain()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isDomainAttributeSpecified()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "; "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v4, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v5, "$Domain"

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p2, v4}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPathAttributeSpecified()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "; "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v4, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v5, "$Path"

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p2, v4}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeSpecified()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, ""

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPorts()[I

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->createPortAttribute([I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v3, "; "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v4, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v5, "$Port"

    invoke-direct {v4, v5, v1}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p2, v4}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .locals 7

    sget-object v3, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "enter RFC2965Spec.formatCookie(Cookie)"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cookie may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    instance-of v3, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v3, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getVersion()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v4, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v5, "$Version"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->doFormatCookie2(Lorg/apache/commons/httpclient/cookie/Cookie2;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->rfc2109:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    invoke-interface {v3, p1}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute handler may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
