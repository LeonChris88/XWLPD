.class public Lcom/android/calendar/vcal/pim/vcalendar/Duration;
.super Ljava/lang/Object;
.source "Duration.java"


# instance fields
.field public days:I

.field public hours:I

.field public minutes:I

.field public seconds:I

.field public sign:I

.field public weeks:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->sign:I

    return-void
.end method


# virtual methods
.method public addTo(J)J
    .locals 2

    invoke-virtual {p0}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->getMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public getMillis()J
    .locals 5

    iget v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->sign:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    const v2, 0x93a80

    iget v3, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->weeks:I

    mul-int/2addr v2, v3

    const v3, 0x15180

    iget v4, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->days:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->hours:I

    mul-int/lit16 v3, v3, 0xe10

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->minutes:I

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->seconds:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public parse(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/vcal/pim/vcalendar/DateException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput v5, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->sign:I

    iput v4, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->weeks:I

    iput v4, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->days:I

    iput v4, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->hours:I

    iput v4, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->minutes:I

    iput v4, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->seconds:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    if-ge v2, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_3

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->sign:I

    add-int/lit8 v1, v1, 0x1

    :cond_2
    :goto_0
    if-lt v2, v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x50

    if-eq v0, v4, :cond_4

    new-instance v4, Lcom/android/calendar/vcal/pim/vcalendar/DateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duration.parse(str=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\') expected \'P\' at index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-lt v0, v4, :cond_5

    const/16 v4, 0x39

    if-gt v0, v4, :cond_5

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v0, -0x30

    add-int/2addr v3, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/16 v4, 0x57

    if-ne v0, v4, :cond_6

    iput v3, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->weeks:I

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    const/16 v4, 0x48

    if-ne v0, v4, :cond_7

    iput v3, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->hours:I

    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    const/16 v4, 0x4d

    if-ne v0, v4, :cond_8

    iput v3, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->minutes:I

    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    const/16 v4, 0x53

    if-ne v0, v4, :cond_9

    iput v3, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->seconds:I

    const/4 v3, 0x0

    goto :goto_2

    :cond_9
    const/16 v4, 0x44

    if-ne v0, v4, :cond_a

    iput v3, p0, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->days:I

    const/4 v3, 0x0

    goto :goto_2

    :cond_a
    new-instance v4, Lcom/android/calendar/vcal/pim/vcalendar/DateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duration.parse(str=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\') unexpected char \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' at index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
