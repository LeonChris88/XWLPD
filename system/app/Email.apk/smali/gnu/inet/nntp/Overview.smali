.class public final Lgnu/inet/nntp/Overview;
.super Ljava/lang/Object;
.source "Overview.java"


# instance fields
.field articleNumber:I

.field private headers:Ljava/util/List;


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lgnu/inet/nntp/Overview;->articleNumber:I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lgnu/inet/nntp/Overview;->headers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method add(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgnu/inet/nntp/Overview;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
