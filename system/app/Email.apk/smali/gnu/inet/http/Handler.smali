.class public Lgnu/inet/http/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lgnu/inet/http/HTTPURLConnection;

    invoke-direct {v0, p1}, Lgnu/inet/http/HTTPURLConnection;-><init>(Ljava/net/URL;)V

    return-object v0
.end method
