.class public Lorg/apache/commons/io/FilenameUtils;
.super Ljava/lang/Object;
.source "FilenameUtils.java"


# static fields
.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String;

.field private static final OTHER_SEPARATOR:C

.field private static final SYSTEM_SEPARATOR:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;

    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x5c

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static indexOfExtension(Ljava/lang/String;)I
    .locals 4

    const/4 v2, -0x1

    if-nez p0, :cond_0

    :goto_0
    return v2

    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    if-le v1, v0, :cond_1

    move v0, v2

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method public static indexOfLastSeparator(Ljava/lang/String;)I
    .locals 3

    if-nez p0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method static isSystemWindows()Z
    .locals 2

    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/16 v7, 0x3f

    const/4 v6, 0x0

    const/4 v5, -0x1

    const-string v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_0

    const-string v4, "*"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v6

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_7

    aget-char v4, v0, v2

    if-eq v4, v7, :cond_1

    aget-char v4, v0, v2

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_6

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_2
    aget-char v4, v0, v2

    if-ne v4, v7, :cond_4

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_5

    if-lez v2, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_5
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    aget-char v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v7, v8

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    :cond_4
    invoke-virtual {p2, p0}, Lorg/apache/commons/io/IOCase;->convertCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1}, Lorg/apache/commons/io/IOCase;->convertCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    :cond_5
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v9

    if-lez v9, :cond_6

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v6, v1, v8

    aget v4, v1, v7

    const/4 v0, 0x1

    :cond_6
    :goto_1
    array-length v9, v5

    if-ge v6, v9, :cond_a

    aget-object v9, v5, v6

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x0

    :cond_7
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    aget-object v9, v5, v6

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v0, 0x1

    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    if-ne v6, v9, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_e

    aget-object v9, v5, v6

    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_c

    :cond_a
    :goto_3
    array-length v9, v5

    if-ne v6, v9, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v4, v9, :cond_0

    :cond_b
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v9

    if-gtz v9, :cond_5

    move v7, v8

    goto :goto_0

    :cond_c
    aget-object v9, v5, v6

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_d

    const/4 v9, 0x2

    new-array v9, v9, [I

    aput v6, v9, v8

    aput v3, v9, v7

    invoke-virtual {v2, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    aget-object v9, v5, v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v4, v9

    const/4 v0, 0x0

    goto :goto_2

    :cond_e
    aget-object v9, v5, v6

    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_3
.end method
