.class Ljavax/activation/DataHandler$DataContentHandlerWriter;
.super Ljava/lang/Object;
.source "DataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/activation/DataHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataContentHandlerWriter"
.end annotation


# instance fields
.field dch:Ljavax/activation/DataContentHandler;

.field mimeType:Ljava/lang/String;

.field object:Ljava/lang/Object;

.field out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljavax/activation/DataContentHandler;Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->dch:Ljavax/activation/DataContentHandler;

    iput-object p2, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->object:Ljava/lang/Object;

    iput-object p3, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->mimeType:Ljava/lang/String;

    iput-object p4, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->out:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->dch:Ljavax/activation/DataContentHandler;

    iget-object v1, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->object:Ljava/lang/Object;

    iget-object v2, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->mimeType:Ljava/lang/String;

    iget-object v3, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->out:Ljava/io/OutputStream;

    invoke-interface {v0, v1, v2, v3}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
