.class public Lcom/seven/util/IntArrayMap;
.super Ljava/lang/Object;
.source "IntArrayMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected m_count:I

.field protected m_keys:[I

.field protected m_values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/seven/util/IntArrayMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/16 p1, 0xa

    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/seven/util/IntArrayMap;->m_keys:[I

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/seven/util/IntArrayMap;->m_values:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    return-void
.end method

.method public constructor <init>(Lcom/seven/util/IntArrayMap;)V
    .locals 1

    if-nez p1, :cond_1

    const/16 v0, 0xa

    :goto_0
    invoke-direct {p0, v0}, Lcom/seven/util/IntArrayMap;-><init>(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/seven/util/IntArrayMap;->uncheckedAddAll(Lcom/seven/util/IntArrayMap;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/seven/util/IntArrayMap;->size()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/seven/util/IntArrayMap;

    iget v1, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    invoke-direct {v0, v1}, Lcom/seven/util/IntArrayMap;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/seven/util/IntArrayMap;->uncheckedAddAll(Lcom/seven/util/IntArrayMap;)V

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/seven/util/IntArrayMap;->indexOfKey(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/seven/util/IntArrayMap;->m_values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public getBoolean(IZ)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/seven/util/IntArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    :goto_0
    return p2

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public getList(I)Ljava/util/List;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/seven/util/IntArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/seven/util/IntArrayMap;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/seven/util/IntArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    check-cast v0, Ljava/lang/String;

    move-object p2, v0

    goto :goto_0
.end method

.method protected growIfNeeded(I)V
    .locals 6

    const/4 v5, 0x0

    iget v2, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    add-int v0, v2, p1

    iget-object v2, p0, Lcom/seven/util/IntArrayMap;->m_keys:[I

    array-length v2, v2

    if-le v0, v2, :cond_1

    iget v2, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    mul-int/lit8 v2, v2, 0x3

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v2, 0x1

    if-ge v1, v0, :cond_0

    move v1, v0

    :cond_0
    iget-object v2, p0, Lcom/seven/util/IntArrayMap;->m_keys:[I

    new-array v3, v1, [I

    iput-object v3, p0, Lcom/seven/util/IntArrayMap;->m_keys:[I

    iget v4, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/seven/util/IntArrayMap;->m_values:[Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/seven/util/IntArrayMap;->m_values:[Ljava/lang/Object;

    iget v4, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method protected indexOfKey(I)I
    .locals 2

    iget v0, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/seven/util/IntArrayMap;->m_keys:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x22

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "{"

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    if-eqz v2, :cond_0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v4, p0, Lcom/seven/util/IntArrayMap;->m_keys:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/seven/util/IntArrayMap;->m_values:[Ljava/lang/Object;

    aget-object v3, v4, v2

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public uncheckedAdd(ILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/seven/util/IntArrayMap;->growIfNeeded(I)V

    iget-object v0, p0, Lcom/seven/util/IntArrayMap;->m_keys:[I

    iget v1, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/seven/util/IntArrayMap;->m_values:[Ljava/lang/Object;

    iget v1, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    aput-object p2, v0, v1

    return-void
.end method

.method public uncheckedAddAll(Lcom/seven/util/IntArrayMap;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p1, Lcom/seven/util/IntArrayMap;->m_count:I

    invoke-virtual {p0, v0}, Lcom/seven/util/IntArrayMap;->growIfNeeded(I)V

    iget-object v1, p1, Lcom/seven/util/IntArrayMap;->m_keys:[I

    iget-object v2, p0, Lcom/seven/util/IntArrayMap;->m_keys:[I

    iget v3, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/seven/util/IntArrayMap;->m_values:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/seven/util/IntArrayMap;->m_values:[Ljava/lang/Object;

    iget v3, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    return-void
.end method
