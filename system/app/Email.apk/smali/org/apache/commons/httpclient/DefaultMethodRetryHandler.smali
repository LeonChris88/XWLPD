.class public Lorg/apache/commons/httpclient/DefaultMethodRetryHandler;
.super Ljava/lang/Object;
.source "DefaultMethodRetryHandler.java"

# interfaces
.implements Lorg/apache/commons/httpclient/MethodRetryHandler;


# instance fields
.field private requestSentRetryEnabled:Z

.field private retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/httpclient/DefaultMethodRetryHandler;->retryCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/DefaultMethodRetryHandler;->requestSentRetryEnabled:Z

    return-void
.end method
