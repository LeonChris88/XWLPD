.class public interface abstract Lorg/apache/harmony/awt/datatransfer/DataProvider;
.super Ljava/lang/Object;
.source "DataProvider.java"


# static fields
.field public static final uriFlavor:Ljava/awt/datatransfer/DataFlavor;

.field public static final urlFlavor:Ljava/awt/datatransfer/DataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/awt/datatransfer/DataFlavor;

    const-string v1, "application/x-java-url;class=java.net.URL"

    const-string v2, "URL"

    invoke-direct {v0, v1, v2}, Ljava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/awt/datatransfer/DataProvider;->urlFlavor:Ljava/awt/datatransfer/DataFlavor;

    new-instance v0, Ljava/awt/datatransfer/DataFlavor;

    const-string v1, "text/uri-list"

    const-string v2, "URI"

    invoke-direct {v0, v1, v2}, Ljava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/awt/datatransfer/DataProvider;->uriFlavor:Ljava/awt/datatransfer/DataFlavor;

    return-void
.end method
