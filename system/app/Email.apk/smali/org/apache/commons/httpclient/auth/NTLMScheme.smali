.class public Lorg/apache/commons/httpclient/auth/NTLMScheme;
.super Ljava/lang/Object;
.source "NTLMScheme.java"

# interfaces
.implements Lorg/apache/commons/httpclient/auth/AuthScheme;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private ntlmchallenge:Ljava/lang/String;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    return-void
.end method


# virtual methods
.method public getRealm()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    const-string v0, "ntlm"

    return-object v0
.end method
