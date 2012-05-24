.class public final Lgnu/inet/nntp/HeaderEntry;
.super Ljava/lang/Object;
.source "HeaderEntry.java"


# instance fields
.field articleId:Ljava/lang/String;

.field header:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnu/inet/nntp/HeaderEntry;->articleId:Ljava/lang/String;

    iput-object p2, p0, Lgnu/inet/nntp/HeaderEntry;->header:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/inet/nntp/HeaderEntry;->articleId:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/inet/nntp/HeaderEntry;->header:Ljava/lang/String;

    return-object v0
.end method
