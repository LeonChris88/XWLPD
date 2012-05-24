.class public Lgnu/inet/nntp/NNTPException;
.super Ljava/io/IOException;
.source "NNTPException.java"


# instance fields
.field protected final response:Lgnu/inet/nntp/StatusResponse;


# direct methods
.method protected constructor <init>(Lgnu/inet/nntp/StatusResponse;)V
    .locals 1

    invoke-virtual {p1}, Lgnu/inet/nntp/StatusResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lgnu/inet/nntp/NNTPException;->response:Lgnu/inet/nntp/StatusResponse;

    return-void
.end method


# virtual methods
.method public getResponse()Lgnu/inet/nntp/StatusResponse;
    .locals 1

    iget-object v0, p0, Lgnu/inet/nntp/NNTPException;->response:Lgnu/inet/nntp/StatusResponse;

    return-object v0
.end method
