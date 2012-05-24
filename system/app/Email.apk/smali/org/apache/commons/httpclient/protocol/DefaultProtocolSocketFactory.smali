.class public Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;
.super Ljava/lang/Object;
.source "DefaultProtocolSocketFactory.java"

# interfaces
.implements Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;


# static fields
.field private static final factory:Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;->factory:Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSocketFactory()Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;->factory:Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;

    return-object v0
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
