.class abstract Lgnu/inet/ftp/DTPInputStream;
.super Ljava/io/FilterInputStream;
.source "DTPInputStream.java"


# instance fields
.field dtp:Lgnu/inet/ftp/DTP;

.field transferComplete:Z


# direct methods
.method constructor <init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lgnu/inet/ftp/DTPInputStream;->dtp:Lgnu/inet/ftp/DTP;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/inet/ftp/DTPInputStream;->transferComplete:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/inet/ftp/DTPInputStream;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v0}, Lgnu/inet/ftp/DTP;->transferComplete()V

    return-void
.end method

.method setTransferComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lgnu/inet/ftp/DTPInputStream;->transferComplete:Z

    return-void
.end method
