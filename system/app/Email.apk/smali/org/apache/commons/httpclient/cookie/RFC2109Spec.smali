.class public Lorg/apache/commons/httpclient/cookie/RFC2109Spec;
.super Lorg/apache/commons/httpclient/cookie/CookieSpecBase;
.source "RFC2109Spec.java"


# instance fields
.field private final formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;-><init>()V

    new-instance v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->setAlwaysUseQuotes(Z)V

    return-void
.end method

.method private formatCookieAsVer(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/Cookie;I)V
    .locals 4

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v1, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, p3}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatParam(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;I)V

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->isPathAttributeSpecified()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "; "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v2, "$Path"

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, p3}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatParam(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;I)V

    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->isDomainAttributeSpecified()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "; "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v2, "$Domain"

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, p3}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatParam(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;I)V

    :cond_2
    return-void
.end method

.method private formatParam(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    goto :goto_0
.end method


# virtual methods
.method public formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .locals 5

    sget-object v2, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter RFC2109Spec.formatCookie(Cookie)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v3, "$Version"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatParam(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;I)V

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatCookieAsVer(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/Cookie;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
