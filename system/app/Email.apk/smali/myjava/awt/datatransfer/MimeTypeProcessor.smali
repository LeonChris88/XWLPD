.class final Lmyjava/awt/datatransfer/MimeTypeProcessor;
.super Ljava/lang/Object;
.source "MimeTypeProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;,
        Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;
    }
.end annotation


# static fields
.field private static instance:Lmyjava/awt/datatransfer/MimeTypeProcessor;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assemble(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$0(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$0(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "; "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static getNextMeaningfulIndex(Ljava/lang/String;I)I
    .locals 1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->isMeaningfulChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static isMeaningfulChar(C)Z
    .locals 1

    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTSpecialChar(C)Z
    .locals 1

    const/16 v0, 0x28

    if-eq p0, v0, :cond_0

    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static parse(Ljava/lang/String;)Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;
    .locals 3

    sget-object v2, Lmyjava/awt/datatransfer/MimeTypeProcessor;->instance:Lmyjava/awt/datatransfer/MimeTypeProcessor;

    if-nez v2, :cond_0

    new-instance v2, Lmyjava/awt/datatransfer/MimeTypeProcessor;

    invoke-direct {v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;-><init>()V

    sput-object v2, Lmyjava/awt/datatransfer/MimeTypeProcessor;->instance:Lmyjava/awt/datatransfer/MimeTypeProcessor;

    :cond_0
    new-instance v1, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-direct {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;-><init>()V

    if-eqz p0, :cond_1

    new-instance v0, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;-><init>(Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V

    invoke-static {p0, v1, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveType(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V

    invoke-static {p0, v1, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveParams(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V

    :cond_1
    return-object v1
.end method

.method private static retrieveParam(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V
    .locals 4

    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveToken(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget v2, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-static {p0, v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->getNextMeaningfulIndex(Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    iget v2, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget v2, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    iget v2, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    iget v2, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-static {p0, v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->getNextMeaningfulIndex(Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    iget v2, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_2
    iget v2, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_3

    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveQuoted(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {p1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$0(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveToken(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static retrieveParams(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-static {p1, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$3(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Ljava/util/Hashtable;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-static {p1, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$4(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Ljava/util/Hashtable;)V

    :goto_0
    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->getNextMeaningfulIndex(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-static {p0, p1, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveParam(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V

    goto :goto_0
.end method

.method private static retrieveQuoted(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    iget v3, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    :cond_0
    iget v3, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    if-eqz v2, :cond_1

    iget v3, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    iget v3, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget v3, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_4
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static retrieveToken(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->getNextMeaningfulIndex(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->isTSpecialChar(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->isMeaningfulChar(C)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->isTSpecialChar(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static retrieveType(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V
    .locals 2

    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveToken(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$1(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Ljava/lang/String;)V

    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->getNextMeaningfulIndex(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveToken(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$2(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Ljava/lang/String;)V

    return-void
.end method
