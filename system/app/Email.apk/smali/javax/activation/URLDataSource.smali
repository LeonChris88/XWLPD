.class public Ljavax/activation/URLDataSource;
.super Ljava/lang/Object;
.source "URLDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;


# instance fields
.field private connection:Ljava/net/URLConnection;

.field private url:Ljava/net/URL;


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ljavax/activation/URLDataSource;->connection:Ljava/net/URLConnection;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/activation/URLDataSource;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/URLDataSource;->connection:Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Ljavax/activation/URLDataSource;->connection:Ljava/net/URLConnection;

    if-eqz v1, :cond_1

    iget-object v0, p0, Ljavax/activation/URLDataSource;->connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "application/octet-stream"

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/activation/URLDataSource;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/URLDataSource;->connection:Ljava/net/URLConnection;

    iget-object v0, p0, Ljavax/activation/URLDataSource;->connection:Ljava/net/URLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/activation/URLDataSource;->connection:Ljava/net/URLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    iget-object v0, p0, Ljavax/activation/URLDataSource;->connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/activation/URLDataSource;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
