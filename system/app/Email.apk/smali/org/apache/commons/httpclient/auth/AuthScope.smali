.class public Lorg/apache/commons/httpclient/auth/AuthScope;
.super Ljava/lang/Object;
.source "AuthScope.java"


# static fields
.field public static final ANY:Lorg/apache/commons/httpclient/auth/AuthScope;

.field public static final ANY_HOST:Ljava/lang/String;

.field public static final ANY_REALM:Ljava/lang/String;

.field public static final ANY_SCHEME:Ljava/lang/String;


# instance fields
.field private host:Ljava/lang/String;

.field private port:I

.field private realm:Ljava/lang/String;

.field private scheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthScope;

    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    const/4 v2, -0x1

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v4, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY:Lorg/apache/commons/httpclient/auth/AuthScope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    iput v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    if-nez p1, :cond_2

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    if-gez p2, :cond_0

    move p2, v1

    :cond_0
    iput p2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    if-nez p3, :cond_1

    sget-object p3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    :cond_1
    iput-object p3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    if-nez p4, :cond_3

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static paramsEqual(II)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eq p1, p0, :cond_0

    instance-of v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;

    if-nez v3, :cond_2

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/auth/AuthScope;

    iget-object v3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    iget v4, v0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    if-ltz v1, :cond_1

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const-string v1, "<any realm>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
