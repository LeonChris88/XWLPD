.class public Lorg/apache/commons/httpclient/HttpHost;
.super Ljava/lang/Object;
.source "HttpHost.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private hostname:Ljava/lang/String;

.field private port:I

.field private protocol:Lorg/apache/commons/httpclient/protocol/Protocol;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "http"

    invoke-static {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpHost;->hostname:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/HttpHost;->port:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpHost;->protocol:Lorg/apache/commons/httpclient/protocol/Protocol;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpHost;->hostname:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/commons/httpclient/HttpHost;->protocol:Lorg/apache/commons/httpclient/protocol/Protocol;

    if-ltz p2, :cond_2

    iput p2, p0, Lorg/apache/commons/httpclient/HttpHost;->port:I

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpHost;->protocol:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/httpclient/HttpHost;->port:I

    goto :goto_0
.end method

.method private init(Lorg/apache/commons/httpclient/HttpHost;)V
    .locals 1

    iget-object v0, p1, Lorg/apache/commons/httpclient/HttpHost;->hostname:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpHost;->hostname:Ljava/lang/String;

    iget v0, p1, Lorg/apache/commons/httpclient/HttpHost;->port:I

    iput v0, p0, Lorg/apache/commons/httpclient/HttpHost;->port:I

    iget-object v0, p1, Lorg/apache/commons/httpclient/HttpHost;->protocol:Lorg/apache/commons/httpclient/protocol/Protocol;

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpHost;->protocol:Lorg/apache/commons/httpclient/protocol/Protocol;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpHost;

    invoke-direct {v0, p0}, Lorg/apache/commons/httpclient/HttpHost;->init(Lorg/apache/commons/httpclient/HttpHost;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v3, :cond_4

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/HttpHost;

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpHost;->hostname:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/HttpHost;->hostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget v3, p0, Lorg/apache/commons/httpclient/HttpHost;->port:I

    iget v4, v0, Lorg/apache/commons/httpclient/HttpHost;->port:I

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpHost;->protocol:Lorg/apache/commons/httpclient/protocol/Protocol;

    iget-object v4, v0, Lorg/apache/commons/httpclient/HttpHost;->protocol:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/protocol/Protocol;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpHost;->hostname:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/httpclient/HttpHost;->port:I

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpHost;->protocol:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toURI()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpHost;->protocol:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/protocol/Protocol;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpHost;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/httpclient/HttpHost;->port:I

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpHost;->protocol:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/httpclient/HttpHost;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
