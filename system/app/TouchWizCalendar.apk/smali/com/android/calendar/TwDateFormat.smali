.class public Lcom/android/calendar/TwDateFormat;
.super Ljava/lang/Object;
.source "TwDateFormat.java"


# static fields
.field private static final sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/calendar/TwDateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final appendQuotedText(Landroid/text/SpannableStringBuilder;II)I
    .locals 4

    const/16 v3, 0x27

    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ge p1, p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_3

    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static final format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0, p3}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .locals 10

    const/16 v8, 0xa

    const/16 v9, 0x9

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v7, 0x27

    if-ne v0, v7, :cond_1

    invoke-static {v5, v2, v3}, Lcom/android/calendar/TwDateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;II)I

    move-result v1

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    :cond_0
    :goto_1
    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    :goto_2
    add-int v7, v2, v1

    if-ge v7, v3, :cond_2

    add-int v7, v2, v1

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    sparse-switch v0, :sswitch_data_0

    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_0

    add-int v7, v2, v1

    invoke-virtual {v5, v2, v7, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :sswitch_1
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :sswitch_2
    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Lcom/android/calendar/TwDateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :sswitch_3
    const/4 v7, 0x7

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x4

    if-ge v1, v7, :cond_3

    const/16 v7, 0x14

    :goto_4
    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move v7, v8

    goto :goto_4

    :sswitch_4
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_4

    const/16 v6, 0xc

    :cond_4
    invoke-static {v6, v1}, Lcom/android/calendar/TwDateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :sswitch_5
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Lcom/android/calendar/TwDateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :sswitch_6
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Lcom/android/calendar/TwDateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :sswitch_7
    invoke-static {p1, v1}, Lcom/android/calendar/TwDateFormat;->getMonthString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :sswitch_8
    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Lcom/android/calendar/TwDateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :sswitch_9
    invoke-static {p1, v1}, Lcom/android/calendar/TwDateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :sswitch_a
    invoke-static {p1, v1}, Lcom/android/calendar/TwDateFormat;->getYearString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_6

    new-instance v7, Landroid/text/SpannedString;

    invoke-direct {v7, v5}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    :goto_5
    return-object v7

    :cond_6
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_1
        0x45 -> :sswitch_3
        0x4d -> :sswitch_7
        0x61 -> :sswitch_0
        0x64 -> :sswitch_2
        0x68 -> :sswitch_4
        0x6b -> :sswitch_5
        0x6d -> :sswitch_6
        0x73 -> :sswitch_8
        0x79 -> :sswitch_a
        0x7a -> :sswitch_9
    .end sparse-switch
.end method

.method public static final format(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {p0, v0}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method private static final formatZoneOffset(II)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    div-int/lit16 p0, p0, 0x3e8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-gez p0, :cond_0

    const-string v3, "-"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    neg-int p0, p0

    :goto_0
    div-int/lit16 v0, p0, 0xe10

    rem-int/lit16 v3, p0, 0xe10

    div-int/lit8 v1, v3, 0x3c

    invoke-static {v0, v5}, Lcom/android/calendar/TwDateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Lcom/android/calendar/TwDateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const-string v3, "+"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static final getMonthString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1, p1}, Lcom/android/calendar/TwDateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static final getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    const/4 v3, 0x2

    if-ge p1, v3, :cond_0

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, p1}, Lcom/android/calendar/TwDateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private static final getYearString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-gt p1, v2, :cond_0

    rem-int/lit8 v1, v0, 0x64

    invoke-static {v1, v2}, Lcom/android/calendar/TwDateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static final zeroPad(II)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, p1, :cond_1

    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/16 v3, 0x30

    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v2, v3, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    :cond_1
    return-object v2
.end method
