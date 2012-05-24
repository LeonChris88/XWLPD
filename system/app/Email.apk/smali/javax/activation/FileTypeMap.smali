.class public abstract Ljavax/activation/FileTypeMap;
.super Ljava/lang/Object;
.source "FileTypeMap.java"


# static fields
.field private static defaultMap:Ljavax/activation/FileTypeMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;
    .locals 1

    sget-object v0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/activation/MimetypesFileTypeMap;

    invoke-direct {v0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    sput-object v0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    :cond_0
    sget-object v0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    return-object v0
.end method


# virtual methods
.method public abstract getContentType(Ljava/io/File;)Ljava/lang/String;
.end method
