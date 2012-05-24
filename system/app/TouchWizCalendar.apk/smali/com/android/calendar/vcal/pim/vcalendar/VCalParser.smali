.class public Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;
.super Ljava/lang/Object;
.source "VCalParser.java"


# instance fields
.field private mParser:Lcom/android/calendar/vcal/pim/VParser;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mParser:Lcom/android/calendar/vcal/pim/VParser;

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    return-void
.end method

.method private judgeVersion(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "\nVERSION:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v2, "vcalendar1.0"

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const-string v2, "\n"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "vcalendar2.0"

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcalendar1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;

    invoke-direct {v2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mParser:Lcom/android/calendar/vcal/pim/VParser;

    :cond_1
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcalendar2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;

    invoke-direct {v2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mParser:Lcom/android/calendar/vcal/pim/VParser;

    :cond_2
    return-void
.end method

.method private verifyVCal(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->judgeVersion(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Lcom/android/calendar/vcal/pim/VDataBuilder;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/vcal/pim/vcalendar/VCalException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->verifyVCal(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mParser:Lcom/android/calendar/vcal/pim/VParser;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "UTF-8"

    invoke-virtual {v2, v3, v4, p2}, Lcom/android/calendar/vcal/pim/VParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/android/calendar/vcal/pim/VBuilder;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcalendar1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "vcalendar2.0"

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->parse(Ljava/lang/String;Lcom/android/calendar/vcal/pim/VDataBuilder;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    new-instance v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalException;

    const-string v3, "parse failed.(even use 2.0 parser)"

    invoke-direct {v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
