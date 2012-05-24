.class public Lgnu/inet/nntp/PairIterator;
.super Lgnu/inet/nntp/LineIterator;
.source "PairIterator.java"


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
    invoke-virtual {p0}, Lgnu/inet/nntp/PairIterator;->nextPair()Lgnu/inet/nntp/Pair;
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

.method public nextPair()Lgnu/inet/nntp/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lgnu/inet/nntp/PairIterator;->nextLine()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lgnu/inet/nntp/Pair;

    invoke-direct {v2, v1, v0}, Lgnu/inet/nntp/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
