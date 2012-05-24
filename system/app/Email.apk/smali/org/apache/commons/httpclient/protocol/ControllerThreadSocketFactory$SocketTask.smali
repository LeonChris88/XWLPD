.class public abstract Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;
.super Ljava/lang/Object;
.source "ControllerThreadSocketFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SocketTask"
.end annotation


# instance fields
.field private exception:Ljava/io/IOException;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public run()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->doit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->exception:Ljava/io/IOException;

    goto :goto_0
.end method

.method protected setSocket(Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->socket:Ljava/net/Socket;

    return-void
.end method
