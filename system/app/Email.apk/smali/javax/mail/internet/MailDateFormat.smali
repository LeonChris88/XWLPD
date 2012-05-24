.class public Ljavax/mail/internet/MailDateFormat;
.super Ljava/text/SimpleDateFormat;
.source "MailDateFormat.java"


# static fields
.field private static final DAYS_OF_WEEK:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v3

    const-string v1, "Sun"

    aput-object v1, v0, v4

    const-string v1, "Mon"

    aput-object v1, v0, v5

    const-string v1, "Tue"

    aput-object v1, v0, v6

    const-string v1, "Wed"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Thu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Sat"

    aput-object v2, v0, v1

    sput-object v0, Ljavax/mail/internet/MailDateFormat;->DAYS_OF_WEEK:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Jan"

    aput-object v1, v0, v3

    const-string v1, "Feb"

    aput-object v1, v0, v4

    const-string v1, "Mar"

    aput-object v1, v0, v5

    const-string v1, "Apr"

    aput-object v1, v0, v6

    const-string v1, "May"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    sput-object v0, Ljavax/mail/internet/MailDateFormat;->MONTHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/text/SimpleDateFormat;-><init>()V

    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MailDateFormat;->numberFormat:Ljava/text/NumberFormat;

    return-void
.end method

.method private skipNonWhitespace(Ljava/lang/String;II)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method private skipToColon(Ljava/lang/String;II)I
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method private skipWhitespace(Ljava/lang/String;II)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 8

    const/16 v7, 0x3a

    const/4 v6, 0x0

    const/16 v5, 0x30

    const/16 v4, 0x20

    const/16 v3, 0xa

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    sget-object v0, Ljavax/mail/internet/MailDateFormat;->DAYS_OF_WEEK:[Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v0, Ljavax/mail/internet/MailDateFormat;->MONTHS:[Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ge v0, v3, :cond_0

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    div-int/lit8 v1, v0, 0xa

    invoke-static {v1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    div-int/lit8 v1, v0, 0xa

    invoke-static {v1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    div-int/lit8 v1, v0, 0xa

    invoke-static {v1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0xea60

    div-int/2addr v0, v1

    if-gez v0, :cond_1

    neg-int v0, v0

    const/16 v1, 0x2d

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    div-int/lit8 v1, v0, 0x3c

    div-int/lit8 v2, v1, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v0, v0, 0x3c

    div-int/lit8 v1, v0, 0xa

    invoke-static {v1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    return-object p2

    :cond_1
    const/16 v1, 0x2b

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 10

    const/16 v9, 0xc

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v3, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, p1, v1, v5}, Ljavax/mail/internet/MailDateFormat;->skipNonWhitespace(Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    :try_start_1
    invoke-direct {p0, p1, v1, v5}, Ljavax/mail/internet/MailDateFormat;->skipWhitespace(Ljava/lang/String;II)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    :try_start_2
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    add-int/lit8 v1, v3, 0x1

    invoke-direct {p0, p1, v1, v5}, Ljavax/mail/internet/MailDateFormat;->skipNonWhitespace(Ljava/lang/String;II)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v1

    :try_start_3
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, p1, v4, v5}, Ljavax/mail/internet/MailDateFormat;->skipWhitespace(Ljava/lang/String;II)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, p1, v4, v5}, Ljavax/mail/internet/MailDateFormat;->skipNonWhitespace(Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move v4, v2

    :goto_1
    if-ge v4, v9, :cond_5

    sget-object v8, Ljavax/mail/internet/MailDateFormat;->MONTHS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_2
    if-ne v4, v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, p1, v0, v5}, Ljavax/mail/internet/MailDateFormat;->skipWhitespace(Ljava/lang/String;II)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, p1, v0, v5}, Ljavax/mail/internet/MailDateFormat;->skipNonWhitespace(Ljava/lang/String;II)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v0

    :try_start_4
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v7, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v7, 0x2

    invoke-virtual {v1, v7, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1, v5}, Ljavax/mail/internet/MailDateFormat;->skipWhitespace(Ljava/lang/String;II)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v1

    :try_start_5
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, p1, v3, v5}, Ljavax/mail/internet/MailDateFormat;->skipToColon(Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v6, 0xa

    invoke-virtual {v4, v6, v3}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, p1, v3, v5}, Ljavax/mail/internet/MailDateFormat;->skipToColon(Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v4, v6, v3}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, p1, v3, v5}, Ljavax/mail/internet/MailDateFormat;->skipNonWhitespace(Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v6, 0xd

    invoke-virtual {v4, v6, v3}, Ljava/util/Calendar;->set(II)V

    if-eq v0, v5, :cond_2

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, p1, v3, v5}, Ljavax/mail/internet/MailDateFormat;->skipWhitespace(Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v5, :cond_2

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, p1, v3, v5}, Ljavax/mail/internet/MailDateFormat;->skipNonWhitespace(Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    iget-object v3, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xf

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    :cond_2
    :goto_4
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    mul-int/lit16 v4, v4, 0x258

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v2, v4

    const v4, 0xea60

    mul-int/2addr v2, v4

    const/16 v4, 0x2d

    if-ne v4, v3, :cond_4

    neg-int v2, v2

    :cond_4
    iget-object v3, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xf

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_0
    move-exception v2

    :goto_5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :goto_6
    const/4 v0, 0x0

    goto/16 :goto_3

    :catch_1
    move-exception v1

    move v1, v2

    :goto_7
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_6

    :catch_2
    move-exception v2

    goto :goto_7

    :catch_3
    move-exception v1

    move v1, v3

    goto :goto_7

    :catch_4
    move-exception v0

    move v0, v1

    move v1, v3

    goto :goto_7

    :catch_5
    move-exception v1

    move v1, v2

    goto :goto_5

    :catch_6
    move-exception v1

    move v1, v3

    goto :goto_5

    :catch_7
    move-exception v0

    move v0, v1

    move v1, v3

    goto :goto_5

    :cond_5
    move v4, v0

    goto/16 :goto_2

    :cond_6
    move v1, v2

    goto/16 :goto_0
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNumberFormat(Ljava/text/NumberFormat;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
