.class public Lcom/android/calendarcommon/RecurrenceSet;
.super Ljava/lang/Object;
.source "RecurrenceSet.java"


# static fields
.field private static final FOLD_RE:Ljava/util/regex/Pattern;

.field private static final IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;


# instance fields
.field public exdates:[J

.field public exrules:[Lcom/android/calendarcommon/EventRecurrence;

.field public rdates:[J

.field public rrules:[Lcom/android/calendarcommon/EventRecurrence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:\\r\\n?|\\n)[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    const-string v0, ".{75}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendarcommon/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    new-array v5, v5, [Lcom/android/calendarcommon/EventRecurrence;

    iput-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    new-instance v3, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v3}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {p2}, Lcom/android/calendarcommon/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "\n"

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    new-array v5, v5, [Lcom/android/calendarcommon/EventRecurrence;

    iput-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    const/4 v2, 0x0

    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_3

    new-instance v0, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v0}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    invoke-virtual {v0, p3}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    aput-object v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p4}, Lcom/android/calendarcommon/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    :cond_4
    return-void
.end method

.method public static parseRecurrenceDates(Ljava/lang/String;)[J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    const/4 v10, 0x0

    const-string v6, "UTC"

    const-string v8, ";"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v3, v4

    new-array v0, v3, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    :try_start_0
    aget-object v8, v4, v2

    invoke-virtual {v5, v8}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    aput-wide v8, v0, v2

    iput-object v6, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v8, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TimeFormatException thrown when parsing time "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in recurrence "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    return-object v0
.end method


# virtual methods
.method public hasRecurrence()Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
