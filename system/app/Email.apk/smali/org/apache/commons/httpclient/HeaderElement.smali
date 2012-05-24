.class public Lorg/apache/commons/httpclient/HeaderElement;
.super Lorg/apache/commons/httpclient/NameValuePair;
.source "HeaderElement.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private parameters:[Lorg/apache/commons/httpclient/NameValuePair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/commons/httpclient/HeaderElement;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HeaderElement;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/commons/httpclient/HeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/commons/httpclient/NameValuePair;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/HeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/commons/httpclient/NameValuePair;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/commons/httpclient/NameValuePair;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HeaderElement;->parameters:[Lorg/apache/commons/httpclient/NameValuePair;

    iput-object p3, p0, Lorg/apache/commons/httpclient/HeaderElement;->parameters:[Lorg/apache/commons/httpclient/NameValuePair;

    return-void
.end method
