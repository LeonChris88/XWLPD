.class public Lorg/apache/commons/httpclient/cookie/Cookie2;
.super Lorg/apache/commons/httpclient/Cookie;
.source "Cookie2.java"


# instance fields
.field private cookieCommentURL:Ljava/lang/String;

.field private cookiePorts:[I

.field private discard:Z

.field private hasPortAttribute:Z

.field private hasVersionAttribute:Z

.field private isPortAttributeBlank:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    const-string v2, "noname"

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    iput-boolean v6, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->discard:Z

    iput-boolean v6, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    iput-boolean v6, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    iput-boolean v6, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasVersionAttribute:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->discard:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasVersionAttribute:Z

    return-void
.end method


# virtual methods
.method public getPorts()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->cookiePorts:[I

    return-object v0
.end method

.method public isPortAttributeBlank()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    return v0
.end method

.method public isPortAttributeSpecified()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    return v0
.end method

.method public toExternalForm()Ljava/lang/String;
    .locals 2

    const-string v1, "rfc2965"

    invoke-static {v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getCookieSpec(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
