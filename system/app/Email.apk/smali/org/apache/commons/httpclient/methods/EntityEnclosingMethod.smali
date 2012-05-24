.class public abstract Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;
.super Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;
.source "EntityEnclosingMethod.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private chunked:Z

.field private repeatCount:I

.field private requestContentLength:J

.field private requestStream:Ljava/io/InputStream;

.field private requestString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    iput v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->chunked:Z

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->setFollowRedirects(Z)V

    return-void
.end method


# virtual methods
.method public setFollowRedirects(Z)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Entity enclosing requests cannot be redirected without user intervention"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->setFollowRedirects(Z)V

    return-void
.end method
