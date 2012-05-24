.class public Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;
.super Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;
.source "VCalParser_V20.java"


# static fields
.field private static final acceptableComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final acceptableV20Props:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hasTZ:Z

.field private index:I

.field private lines:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "VEVENT"

    aput-object v2, v1, v3

    const-string v2, "VTODO"

    aput-object v2, v1, v4

    const-string v2, "VALARM"

    aput-object v2, v1, v5

    const-string v2, "VTIMEZONE"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->acceptableComponents:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DESCRIPTION"

    aput-object v2, v1, v3

    const-string v2, "DTEND"

    aput-object v2, v1, v4

    const-string v2, "DTSTART"

    aput-object v2, v1, v5

    const-string v2, "DUE"

    aput-object v2, v1, v6

    const-string v2, "COMPLETED"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "RRULE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "STATUS"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "SUMMARY"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "LOCATION"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->acceptableV20Props:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->hasTZ:Z

    return-void
.end method

.method private parseV20Calbody([Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    const-string v6, "VERSION:2.0"

    iget v7, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v7, p1, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    return v4

    :cond_1
    const-string v6, "VERSION:1.0\r\n"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    :goto_2
    iget v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_3

    iget v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v6, p1, v6

    const-string v7, ":"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aget-object v1, v2, v6

    const/4 v6, 0x1

    aget-object v3, v2, v6

    const-string v6, "BEGIN"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    invoke-direct {p0, v3, p2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->parseV20Component(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_2
    iget v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private parseV20Component(Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "END:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->acceptableComponents:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "VEVENT"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "VTODO"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BEGIN:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v7, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v7, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v6, v6, v7

    const-string v7, ":"

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    aget-object v6, v1, v4

    const-string v7, ";"

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    aget-object v2, v6, v4

    aget-object v3, v1, v5

    iget-object v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v7, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v6, v6, v7

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v7, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    const-string v6, "\r\n"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    iget v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->acceptableV20Props:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v6, "BEGIN"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "VALARM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "AALARM:default\r\n"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v6, "END:VALARM"

    iget-object v7, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v8, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    move v4, v5

    :cond_7
    return v4

    :cond_8
    const-string v6, "VALARM"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "VTIMEZONE"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_9
    iget-boolean v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->hasTZ:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v7, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v6, v6, v7

    const-string v7, ":"

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    aget-object v6, v1, v4

    const-string v7, ";"

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    aget-object v2, v6, v4

    const-string v6, "TZOFFSETFROM"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    aget-object v3, v1, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TZ:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v5, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->hasTZ:Z

    :cond_a
    iget v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    iget-object v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v7, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_3

    :cond_b
    :goto_4
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    goto :goto_4
.end method

.method private splitProperty(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n\t"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/android/calendar/vcal/pim/VBuilder;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v0, v4, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->splitProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iput v3, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    const-string v4, "BEGIN:VCALENDAR"

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "BEGIN:VCALENDAR\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->parseV20Calbody([Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    if-ne v4, v5, :cond_0

    const-string v4, "END:VCALENDAR"

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v6, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "END:VCALENDAR\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-super {p0, v3, p2, p3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/android/calendar/vcal/pim/VBuilder;)Z

    move-result v3

    goto :goto_0
.end method
