.class public Lgnu/inet/nntp/GroupIterator;
.super Lgnu/inet/nntp/LineIterator;
.source "GroupIterator.java"


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
    invoke-virtual {p0}, Lgnu/inet/nntp/GroupIterator;->nextGroup()Lgnu/inet/nntp/Group;
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

.method public nextGroup()Lgnu/inet/nntp/Group;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x20

    invoke-virtual {p0}, Lgnu/inet/nntp/GroupIterator;->nextLine()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    const-string v5, "y"

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v4, Lgnu/inet/nntp/Group;

    invoke-direct {v4, v1, v2, v3, v0}, Lgnu/inet/nntp/Group;-><init>(Ljava/lang/String;IIZ)V

    return-object v4
.end method
