.class public Lorg/apache/commons/httpclient/methods/HeadMethod;
.super Lorg/apache/commons/httpclient/HttpMethodBase;
.source "HeadMethod.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/commons/httpclient/methods/HeadMethod;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/HeadMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->setFollowRedirects(Z)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "HEAD"

    return-object v0
.end method
