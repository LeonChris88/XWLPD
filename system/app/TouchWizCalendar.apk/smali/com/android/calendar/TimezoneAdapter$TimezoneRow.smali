.class public Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
.super Ljava/lang/Object;
.source "TimezoneAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/TimezoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimezoneRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/calendar/TimezoneAdapter$TimezoneRow;",
        ">;"
    }
.end annotation


# instance fields
.field public final mDisplayName:Ljava/lang/String;

.field private final mGmtDisplayName:Ljava/lang/String;

.field public final mId:Ljava/lang/String;

.field public final mOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GMT"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v2, :cond_1

    const/16 v5, 0x2d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    int-to-long v5, v3

    const-wide/32 v7, 0x36ee80

    div-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v5, 0xea60

    div-int v0, v3, v5

    rem-int/lit8 v0, v0, 0x3c

    const/16 v5, 0xa

    if-ge v0, v5, :cond_0

    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const-string v6, "("

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mGmtDisplayName:Ljava/lang/String;

    return-void

    :cond_1
    const/16 v5, 0x2b

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/calendar/TimezoneAdapter$TimezoneRow;)I
    .locals 2

    iget v0, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v1, p1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v1, p1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    invoke-virtual {p0, p1}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->compareTo(Lcom/android/calendar/TimezoneAdapter$TimezoneRow;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    :cond_7
    iget v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v4, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    const/4 v3, 0x0

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    add-int v1, v2, v3

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mGmtDisplayName:Ljava/lang/String;

    return-object v0
.end method
