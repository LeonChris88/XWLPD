.class public Lgnu/inet/nntp/StatusResponse;
.super Ljava/lang/Object;
.source "StatusResponse.java"


# instance fields
.field protected message:Ljava/lang/String;

.field protected status:S


# direct methods
.method protected constructor <init>(SLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lgnu/inet/nntp/StatusResponse;->status:S

    iput-object p2, p0, Lgnu/inet/nntp/StatusResponse;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/inet/nntp/StatusResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()S
    .locals 1

    iget-short v0, p0, Lgnu/inet/nntp/StatusResponse;->status:S

    return v0
.end method
