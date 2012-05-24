.class public Lgnu/inet/nntp/OverviewIterator;
.super Lgnu/inet/nntp/LineIterator;
.source "OverviewIterator.java"


# direct methods
.method constructor <init>(Lgnu/inet/nntp/NNTPConnection;)V
    .locals 0

    invoke-direct {p0, p1}, Lgnu/inet/nntp/LineIterator;-><init>(Lgnu/inet/nntp/NNTPConnection;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lgnu/inet/nntp/OverviewIterator;->nextOverview()Lgnu/inet/nntp/Overview;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextOverview()Lgnu/inet/nntp/Overview;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x9

    invoke-virtual {p0}, Lgnu/inet/nntp/OverviewIterator;->nextLine()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    new-instance v3, Lgnu/inet/nntp/Overview;

    invoke-direct {v3, v0}, Lgnu/inet/nntp/Overview;-><init>(I)V

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    :goto_0
    const/4 v4, -0x1

    if-le v0, v4, :cond_0

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lgnu/inet/nntp/Overview;->add(Ljava/lang/String;)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgnu/inet/nntp/Overview;->add(Ljava/lang/String;)V

    return-object v3
.end method
