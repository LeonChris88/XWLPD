.class Lgnu/inet/http/HTTPURLConnection$GetHTTPPropertiesAction;
.super Ljava/lang/Object;
.source "HTTPURLConnection.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/inet/http/HTTPURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetHTTPPropertiesAction"
.end annotation


# instance fields
.field final synthetic this$0:Lgnu/inet/http/HTTPURLConnection;


# direct methods
.method constructor <init>(Lgnu/inet/http/HTTPURLConnection;)V
    .locals 0

    iput-object p1, p0, Lgnu/inet/http/HTTPURLConnection$GetHTTPPropertiesAction;->this$0:Lgnu/inet/http/HTTPURLConnection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection$GetHTTPPropertiesAction;->this$0:Lgnu/inet/http/HTTPURLConnection;

    const-string v2, "http.proxyHost"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lgnu/inet/http/HTTPURLConnection;->access$002(Lgnu/inet/http/HTTPURLConnection;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection$GetHTTPPropertiesAction;->this$0:Lgnu/inet/http/HTTPURLConnection;

    invoke-static {v0}, Lgnu/inet/http/HTTPURLConnection;->access$000(Lgnu/inet/http/HTTPURLConnection;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection$GetHTTPPropertiesAction;->this$0:Lgnu/inet/http/HTTPURLConnection;

    invoke-static {v0}, Lgnu/inet/http/HTTPURLConnection;->access$000(Lgnu/inet/http/HTTPURLConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lgnu/inet/http/HTTPURLConnection$GetHTTPPropertiesAction;->this$0:Lgnu/inet/http/HTTPURLConnection;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Lgnu/inet/http/HTTPURLConnection;->access$102(Lgnu/inet/http/HTTPURLConnection;I)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection$GetHTTPPropertiesAction;->this$0:Lgnu/inet/http/HTTPURLConnection;

    const-string v2, "http.agent"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lgnu/inet/http/HTTPURLConnection;->access$202(Lgnu/inet/http/HTTPURLConnection;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http.keepAlive"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lgnu/inet/http/HTTPURLConnection$GetHTTPPropertiesAction;->this$0:Lgnu/inet/http/HTTPURLConnection;

    if-eqz v0, :cond_1

    const-string v3, "false"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v2, v0}, Lgnu/inet/http/HTTPURLConnection;->access$302(Lgnu/inet/http/HTTPURLConnection;Z)Z

    const-string v0, "http.maxConnections"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lgnu/inet/http/HTTPURLConnection$GetHTTPPropertiesAction;->this$0:Lgnu/inet/http/HTTPURLConnection;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    invoke-static {v2, v0}, Lgnu/inet/http/HTTPURLConnection;->access$402(Lgnu/inet/http/HTTPURLConnection;I)I

    return-object v4

    :cond_2
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection$GetHTTPPropertiesAction;->this$0:Lgnu/inet/http/HTTPURLConnection;

    invoke-static {v0, v4}, Lgnu/inet/http/HTTPURLConnection;->access$002(Lgnu/inet/http/HTTPURLConnection;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection$GetHTTPPropertiesAction;->this$0:Lgnu/inet/http/HTTPURLConnection;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lgnu/inet/http/HTTPURLConnection;->access$102(Lgnu/inet/http/HTTPURLConnection;I)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x5

    goto :goto_2
.end method
