.class Landroid/webkit/WebResourceResponse$Loader;
.super Landroid/webkit/StreamLoader;
.source "WebResourceResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Loader"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebResourceResponse;


# direct methods
.method constructor <init>(Landroid/webkit/WebResourceResponse;Landroid/webkit/LoadListener;)V
    .locals 1

    iput-object p1, p0, Landroid/webkit/WebResourceResponse$Loader;->this$0:Landroid/webkit/WebResourceResponse;

    invoke-direct {p0, p2}, Landroid/webkit/StreamLoader;-><init>(Landroid/webkit/LoadListener;)V

    invoke-static {p1}, Landroid/webkit/WebResourceResponse;->access$000(Landroid/webkit/WebResourceResponse;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method protected buildHeaders(Landroid/net/http/Headers;)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebResourceResponse$Loader;->this$0:Landroid/webkit/WebResourceResponse;

    invoke-static {v0}, Landroid/webkit/WebResourceResponse;->access$100(Landroid/webkit/WebResourceResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/http/Headers;->setContentType(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/webkit/WebResourceResponse$Loader;->this$0:Landroid/webkit/WebResourceResponse;

    invoke-static {v0}, Landroid/webkit/WebResourceResponse;->access$200(Landroid/webkit/WebResourceResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/http/Headers;->setContentEncoding(Ljava/lang/String;)V

    return-void
.end method

.method protected setupStreamAndSendStatus()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    iget-object v0, p0, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    :goto_0
    const-string v2, ""

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/webkit/LoadListener;->status(IIILjava/lang/String;)V

    return v3

    :cond_0
    const/16 v0, 0x194

    goto :goto_0
.end method
