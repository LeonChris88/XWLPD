.class public Lorg/apache/commons/httpclient/HttpException;
.super Ljava/io/IOException;
.source "HttpException.java"


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private reason:Ljava/lang/String;

.field private reasonCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lorg/apache/commons/httpclient/HttpException;->reasonCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xc8

    iput v0, p0, Lorg/apache/commons/httpclient/HttpException;->reasonCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xc8

    iput v0, p0, Lorg/apache/commons/httpclient/HttpException;->reasonCode:I

    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    const-class v1, Ljava/lang/Throwable;

    const-string v2, "initCause"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpException;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getStackTrace"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    const-string v2, "Caused by: "

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getStackTrace"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    const-string v2, "Caused by: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method
