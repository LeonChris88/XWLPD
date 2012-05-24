.class public Lorg/apache/commons/httpclient/methods/MultipartPostMethod;
.super Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;
.source "MultipartPostMethod.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private final parameters:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method
