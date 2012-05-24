.class Lgnu/inet/nntp/FileNewsrc$RangeList;
.super Ljava/lang/Object;
.source "FileNewsrc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/inet/nntp/FileNewsrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeList"
.end annotation


# instance fields
.field seen:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lgnu/inet/nntp/FileNewsrc$RangeList;-><init>()V

    const/4 v1, 0x0

    const/16 v0, 0x2c

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :goto_0
    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lgnu/inet/nntp/FileNewsrc$RangeList;->addToken(Ljava/lang/String;)V

    add-int/lit8 v1, v0, 0x1

    const/16 v0, 0x2c

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgnu/inet/nntp/FileNewsrc$RangeList;->addToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: nntp: bad newsrc format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private addToken(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v2, -0x1

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v1, v2, :cond_0

    if-le v0, v2, :cond_0

    invoke-virtual {p0, v1, v0}, Lgnu/inet/nntp/FileNewsrc$RangeList;->insert(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lgnu/inet/nntp/FileNewsrc$RangeList;->insert(I)V

    goto :goto_0
.end method


# virtual methods
.method indexOf(I)I
    .locals 5

    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Lgnu/inet/nntp/FileNewsrc$Range;

    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Lgnu/inet/nntp/FileNewsrc$Range;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    aget-object v3, v2, v0

    iget v3, v3, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    if-gt v3, p1, :cond_0

    aget-object v3, v2, v0

    iget v3, v3, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    add-int/lit8 v4, p1, -0x1

    if-eq v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method insert(I)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Lgnu/inet/nntp/FileNewsrc$RangeList;->insert(II)V

    return-void
.end method

.method insert(II)V
    .locals 8

    new-instance v3, Lgnu/inet/nntp/FileNewsrc$Range;

    invoke-direct {v3, p1, p2}, Lgnu/inet/nntp/FileNewsrc$Range;-><init>(II)V

    iget v0, v3, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    invoke-virtual {p0, v0}, Lgnu/inet/nntp/FileNewsrc$RangeList;->indexOf(I)I

    move-result v4

    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v4, v0, :cond_1

    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/inet/nntp/FileNewsrc$Range;

    iget v1, v3, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    iget v2, v0, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget v1, v0, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    iget v2, v3, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    if-gt v1, v2, :cond_3

    iget v1, v0, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    iget v2, v3, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    if-ge v1, v2, :cond_0

    :cond_3
    iget v1, v3, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    invoke-virtual {p0, v1}, Lgnu/inet/nntp/FileNewsrc$RangeList;->indexOf(I)I

    move-result v2

    iget-object v1, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/inet/nntp/FileNewsrc$Range;

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "r2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " i2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    if-lt v2, v4, :cond_4

    iget-object v5, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    iget v2, v3, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    iget v5, v0, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    if-ge v2, v5, :cond_5

    iget v0, v3, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    :goto_2
    iget v2, v3, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    iget v5, v1, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    if-le v2, v5, :cond_6

    iget v1, v3, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    :goto_3
    new-instance v2, Lgnu/inet/nntp/FileNewsrc$Range;

    invoke-direct {v2, v0, v1}, Lgnu/inet/nntp/FileNewsrc$Range;-><init>(II)V

    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget v0, v0, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    goto :goto_2

    :cond_6
    iget v1, v1, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    goto :goto_3
.end method

.method public isSeen(I)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Lgnu/inet/nntp/FileNewsrc$Range;

    iget-object v1, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v3, v1

    invoke-virtual {v4, p1}, Lgnu/inet/nntp/FileNewsrc$Range;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/inet/nntp/FileNewsrc$Range;

    if-lez v1, :cond_0

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Lgnu/inet/nntp/FileNewsrc$Range;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
