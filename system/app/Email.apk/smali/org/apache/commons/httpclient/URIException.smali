.class public Lorg/apache/commons/httpclient/URIException;
.super Lorg/apache/commons/httpclient/HttpException;
.source "URIException.java"


# instance fields
.field protected reason:Ljava/lang/String;

.field protected reasonCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/httpclient/URIException;->reason:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URIException;->reasonCode:I

    return-void
.end method
