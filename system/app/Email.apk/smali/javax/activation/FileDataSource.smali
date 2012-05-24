.class public Ljavax/activation/FileDataSource;
.super Ljava/lang/Object;
.source "FileDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;


# instance fields
.field private file:Ljava/io/File;

.field private typeMap:Ljavax/activation/FileTypeMap;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/activation/FileDataSource;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljavax/activation/FileDataSource;->typeMap:Ljavax/activation/FileTypeMap;

    if-nez v0, :cond_0

    invoke-static {}, Ljavax/activation/FileTypeMap;->getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;

    move-result-object v0

    iget-object v1, p0, Ljavax/activation/FileDataSource;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljavax/activation/FileTypeMap;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/activation/FileDataSource;->typeMap:Ljavax/activation/FileTypeMap;

    iget-object v1, p0, Ljavax/activation/FileDataSource;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljavax/activation/FileTypeMap;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Ljavax/activation/FileDataSource;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/activation/FileDataSource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
