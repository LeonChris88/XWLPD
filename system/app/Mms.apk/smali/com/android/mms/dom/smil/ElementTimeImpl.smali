.class public abstract Lcom/android/mms/dom/smil/ElementTimeImpl;
.super Ljava/lang/Object;
.source "ElementTimeImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/ElementTime;


# instance fields
.field final mSmilElement:Lorg/w3c/dom/smil/SMILElement;


# direct methods
.method constructor <init>(Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    return-void
.end method


# virtual methods
.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .locals 6

    iget-object v3, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v4, "begin"

    invoke-interface {v3, v4}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    :try_start_0
    new-instance v3, Lcom/android/mms/dom/smil/TimeImpl;

    aget-object v4, v1, v2

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getBeginConstraints()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/android/mms/dom/smil/TimeImpl;

    const-string v4, "0"

    const/16 v5, 0xff

    invoke-direct {v3, v4, v5}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Lcom/android/mms/dom/smil/TimeListImpl;

    invoke-direct {v3, v0}, Lcom/android/mms/dom/smil/TimeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v3

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method getBeginConstraints()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public getDur()F
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v3, "dur"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/mms/dom/smil/TimeImpl;->parseClockValue(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/high16 v3, 0x447a

    div-float v0, v2, v3

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getEnd()Lorg/w3c/dom/smil/TimeList;
    .locals 13

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v8, "end"

    invoke-interface {v7, v8}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    :try_start_0
    new-instance v7, Lcom/android/mms/dom/smil/TimeImpl;

    aget-object v8, v4, v5

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getEndConstraints()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v7, "Mms/ElementTimeImpl"

    const-string v8, "Malformed time value."

    invoke-static {v7, v8, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getDur()F

    move-result v1

    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-gez v7, :cond_3

    new-instance v7, Lcom/android/mms/dom/smil/TimeImpl;

    const-string v8, "indefinite"

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getEndConstraints()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v7, Lcom/android/mms/dom/smil/TimeListImpl;

    invoke-direct {v7, v3}, Lcom/android/mms/dom/smil/TimeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v7

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v7

    if-ge v5, v7, :cond_2

    new-instance v7, Lcom/android/mms/dom/smil/TimeImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v9

    float-to-double v11, v1

    add-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getEndConstraints()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method getEndConstraints()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public getFill()S
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v5, "fill"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "freeze"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v4, "remove"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    const-string v4, "hold"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    const-string v4, "transition"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    const-string v4, "auto"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getFillDefault()S

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    :cond_5
    iget-object v4, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v5, "dur"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v5, "end"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v5, "repeatCount"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v5, "repeatDur"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_0
.end method

.method public getFillDefault()S
    .locals 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v5, "fillDefault"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "remove"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v4, "freeze"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "auto"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const-string v4, "hold"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "transition"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getParentElementTime()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    if-nez v1, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    check-cast v1, Lcom/android/mms/dom/smil/ElementTimeImpl;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getFillDefault()S

    move-result v2

    goto :goto_0
.end method

.method abstract getParentElementTime()Lorg/w3c/dom/smil/ElementTime;
.end method

.method public setDur(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "dur"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x447a

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
