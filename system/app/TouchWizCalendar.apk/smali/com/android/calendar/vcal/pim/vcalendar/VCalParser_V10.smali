.class public Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;
.super Lcom/android/calendar/vcal/pim/VParser;
.source "VCalParser_V10.java"


# static fields
.field private static final mEscAllowedProps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEvtPropNameGroup1:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEvtPropNameGroup2:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSpecialValueSetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mValueCAT:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mValueCLASS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mValueRES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mValueSTAT:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x17

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ATTACH"

    aput-object v2, v1, v4

    const-string v2, "ATTENDEE"

    aput-object v2, v1, v5

    const-string v2, "DCREATED"

    aput-object v2, v1, v6

    const-string v2, "COMPLETED"

    aput-object v2, v1, v7

    const-string v2, "DESCRIPTION"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "DUE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "DTEND"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "EXRULE"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "LAST-MODIFIED"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "RNUM"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "PRIORITY"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "RELATED-TO"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "RRULE"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "SEQUENCE"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "DTSTART"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "SUMMARY"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "TRANSP"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "URL"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "UID"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "CLASS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "STATUS"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "TZ"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mEvtPropNameGroup1:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "AALARM"

    aput-object v2, v1, v4

    const-string v2, "CATEGORIES"

    aput-object v2, v1, v5

    const-string v2, "DALARM"

    aput-object v2, v1, v6

    const-string v2, "EXDATE"

    aput-object v2, v1, v7

    const-string v2, "MALARM"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "PALARM"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "RDATE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "RESOURCES"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mEvtPropNameGroup2:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "APPOINTMENT"

    aput-object v2, v1, v4

    const-string v2, "BUSINESS"

    aput-object v2, v1, v5

    const-string v2, "EDUCATION"

    aput-object v2, v1, v6

    const-string v2, "HOLIDAY"

    aput-object v2, v1, v7

    const-string v2, "MEETING"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "MISCELLANEOUS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "PERSONAL"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "PHONE CALL"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "SICK DAY"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "SPECIAL OCCASION"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "TRAVEL"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "VACATION"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mValueCAT:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "PUBLIC"

    aput-object v2, v1, v4

    const-string v2, "PRIVATE"

    aput-object v2, v1, v5

    const-string v2, "CONFIDENTIAL"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mValueCLASS:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CATERING"

    aput-object v2, v1, v4

    const-string v2, "CHAIRS"

    aput-object v2, v1, v5

    const-string v2, "EASEL"

    aput-object v2, v1, v6

    const-string v2, "PROJECTOR"

    aput-object v2, v1, v7

    const-string v2, "VCR"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "VEHICLE"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mValueRES:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ACCEPTED"

    aput-object v2, v1, v4

    const-string v2, "NEEDS ACTION"

    aput-object v2, v1, v5

    const-string v2, "SENT"

    aput-object v2, v1, v6

    const-string v2, "TENTATIVE"

    aput-object v2, v1, v7

    const-string v2, "CONFIRMED"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "DECLINED"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "COMPLETED"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "DELEGATED"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mValueSTAT:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DESCRIPTION"

    aput-object v2, v1, v4

    const-string v2, "SUMMARY"

    aput-object v2, v1, v5

    const-string v2, "AALARM"

    aput-object v2, v1, v6

    const-string v2, "DALARM"

    aput-object v2, v1, v7

    const-string v2, "MALARM"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "PALARM"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mEscAllowedProps:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "CATEGORIES"

    sget-object v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mValueCAT:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "CLASS"

    sget-object v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mValueCLASS:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "RESOURCES"

    sget-object v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mValueRES:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "STATUS"

    sget-object v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mValueSTAT:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/vcal/pim/VParser;-><init>()V

    return-void
.end method

.method private exportEntpropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string p2, ""

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mEscAllowedProps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\\\\"

    const-string v2, "\n\r\n"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\;"

    const-string v2, ";"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\:"

    const-string v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\,"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n\r\n"

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object p2, v0

    goto :goto_0
.end method

.method private parseCalentities(I)I
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalentity(I)I

    move-result v0

    if-ne v2, v0, :cond_0

    :goto_0
    return v2

    :cond_0
    add-int/2addr p1, v0

    add-int/2addr v1, v0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_1

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalentity(I)I

    move-result v0

    if-ne v2, v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    add-int/2addr p1, v0

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method private parseCalentity(I)I
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseEvententity(I)I

    move-result v0

    if-eq v1, v0, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseTodoentity(I)I

    move-result v0

    if-eq v1, v0, :cond_0

    move v1, v0

    goto :goto_0
.end method

.method private parseCalprop(I)I
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x0

    const-string v2, "DAYLIGHT"

    invoke-direct {p0, p1, v2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "GEO"

    invoke-direct {p0, p1, v2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v2, "PRODID"

    invoke-direct {p0, p1, v2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    const-string v2, "TZ"

    invoke-direct {p0, p1, v2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop1(I)I

    move-result v0

    if-eq v1, v0, :cond_0

    move v1, v0

    goto :goto_0
.end method

.method private parseCalprop0(ILjava/lang/String;)I
    .locals 7

    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-ne v4, v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    add-int/2addr p1, v0

    add-int/2addr v2, v0

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v5, p2}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v0

    if-eq v4, v0, :cond_3

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    :cond_3
    const-string v5, ":"

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v4, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    move v1, p1

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseValue(I)I

    move-result v0

    if-eq v4, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v5, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v5, v3}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v4, v0, :cond_0

    add-int/2addr v2, v0

    move v4, v2

    goto :goto_0
.end method

.method private parseCalprop1(I)I
    .locals 7

    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v4, "VERSION"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-ne v3, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    add-int/2addr p1, v0

    add-int/2addr v1, v0

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    const-string v5, "VERSION"

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v0

    if-eq v3, v0, :cond_3

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    :cond_3
    const-string v4, ":"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v3, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    const-string v4, "1.0"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v3, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "1.0"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v4, v2}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v3, v0, :cond_0

    add-int/2addr v1, v0

    move v3, v1

    goto :goto_0
.end method

.method private parseCalprops(I)I
    .locals 4

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->startProperty()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop(I)I

    move-result v0

    if-ne v2, v0, :cond_1

    :goto_0
    return v2

    :cond_1
    add-int/2addr p1, v0

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->endProperty()V

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_3

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->startProperty()V

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop(I)I

    move-result v0

    if-ne v2, v0, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    add-int/2addr p1, v0

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->endProperty()V

    goto :goto_1
.end method

.method private parseEntprop(I)I
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseEntprop0(I)I

    move-result v0

    if-eq v1, v0, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseEntprop1(I)I

    move-result v0

    if-eq v1, v0, :cond_0

    move v1, v0

    goto :goto_0
.end method

.method private parseEntprop0(I)I
    .locals 8

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->getWord(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mEvtPropNameGroup1:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v6

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr v3, v1

    iget-object v6, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v6, v0}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v1

    if-eq v5, v1, :cond_3

    add-int/2addr p1, v1

    add-int/2addr v3, v1

    :cond_3
    const-string v6, ":"

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    if-eq v5, v1, :cond_0

    add-int/2addr p1, v1

    add-int/2addr v3, v1

    move v2, p1

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseValue(I)I

    move-result v1

    if-eq v5, v1, :cond_0

    add-int/2addr p1, v1

    add-int/2addr v3, v1

    iget-object v6, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v6, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v6, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->exportEntpropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v6, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    invoke-direct {p0, v0, v4}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->valueFilter(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v6

    if-eq v5, v6, :cond_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v1

    if-eq v5, v1, :cond_0

    add-int/2addr v3, v1

    move v5, v3

    goto :goto_0
.end method

.method private parseEntprop1(I)I
    .locals 13

    const/4 v10, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v5

    add-int/2addr p1, v5

    add-int/2addr v8, v5

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->getWord(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    sget-object v11, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mEvtPropNameGroup2:Ljava/util/HashSet;

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr p1, v5

    add-int/2addr v8, v5

    iget-object v11, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v11, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v5

    if-eq v10, v5, :cond_3

    add-int/2addr p1, v5

    add-int/2addr v8, v5

    :cond_3
    const-string v11, ":"

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, v12}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v5

    if-eq v10, v5, :cond_0

    add-int/2addr p1, v5

    add-int/2addr v8, v5

    move v7, p1

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseValue(I)I

    move-result v5

    if-eq v10, v5, :cond_0

    add-int/2addr p1, v5

    add-int/2addr v8, v5

    iget-object v11, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v11, :cond_6

    const/4 v0, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "([^;\\\\]*(\\\\[\\\\;:,])*[^;\\\\]*)(;?)"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iget-object v11, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v11, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    :cond_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v4, v11}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->exportEntpropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    add-int v11, v7, v0

    if-ne p1, v11, :cond_4

    const/4 v11, 0x3

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v11, ";"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v11, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v11, v9}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    invoke-direct {p0, v4, v9}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->valueFilter(Ljava/lang/String;Ljava/util/ArrayList;)I

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v5

    if-eq v10, v5, :cond_0

    add-int/2addr v8, v5

    move v10, v8

    goto/16 :goto_0
.end method

.method private parseEntprops(I)I
    .locals 4

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->startProperty()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseEntprop(I)I

    move-result v0

    if-ne v2, v0, :cond_1

    :goto_0
    return v2

    :cond_1
    add-int/2addr p1, v0

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->endProperty()V

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_3

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->startProperty()V

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseEntprop(I)I

    move-result v0

    if-ne v2, v0, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    add-int/2addr p1, v0

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->endProperty()V

    goto :goto_1
.end method

.method private parseEvententity(I)I
    .locals 6

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v3, "BEGIN"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    const-string v3, "VEVENT"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    const-string v4, "VEVENT"

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->startRecord(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_3

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseEntprops(I)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_4

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    goto :goto_2

    :cond_4
    const-string v3, "END"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    const-string v3, "VEVENT"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->endRecord()V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_6

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    goto :goto_3

    :cond_6
    move v2, v1

    goto/16 :goto_0
.end method

.method private parseKnownType(I)I
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    const-string v2, "WAVE"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v1, v0, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "PCM"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v1, v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v2, "VCARD"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v1, v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    if-eq v1, v0, :cond_0

    move v1, v0

    goto :goto_0
.end method

.method private parseParam(I)I
    .locals 4

    const/4 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam0(I)I

    move-result v0

    if-eq v2, v0, :cond_1

    move v2, v0

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam1(I)I

    move-result v0

    if-eq v2, v0, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam2(I)I

    move-result v0

    if-eq v2, v0, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam3(I)I

    move-result v0

    if-eq v2, v0, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam4(I)I

    move-result v0

    if-eq v2, v0, :cond_5

    move v2, v0

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam5(I)I

    move-result v0

    if-eq v2, v0, :cond_6

    move v2, v0

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam6(I)I

    move-result v0

    if-eq v2, v0, :cond_7

    move v2, v0

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam7(I)I

    move-result v0

    if-eq v2, v0, :cond_8

    move v2, v0

    goto :goto_0

    :cond_8
    move v1, p1

    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseKnownType(I)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_9
    move v2, v0

    goto :goto_0
.end method

.method private parseParam0(I)I
    .locals 6

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v1, p1

    const-string v4, "TYPE"

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-ne v3, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    add-int/2addr p1, v0

    add-int/2addr v2, v0

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    const-string v4, "="

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v3, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    move v1, p1

    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parsePtypeval(I)I

    move-result v0

    if-eq v3, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    goto :goto_0
.end method

.method private parseParam1(I)I
    .locals 8

    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v2, p1

    const/4 v0, 0x0

    const-string v5, "VALUE"

    invoke-virtual {p0, p1, v5, v7}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    if-eq v4, v1, :cond_0

    add-int/2addr p1, v1

    add-int/2addr v3, v1

    const/4 v0, 0x1

    :cond_0
    if-ne v0, v7, :cond_1

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v6, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v6, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr v3, v1

    const-string v5, "="

    invoke-virtual {p0, p1, v5, v7}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    if-eq v4, v1, :cond_6

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return v4

    :cond_3
    add-int/2addr p1, v1

    add-int/2addr v3, v1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr v3, v1

    move v2, p1

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parsePValueVal(I)I

    move-result v1

    if-eq v4, v1, :cond_2

    add-int/2addr p1, v1

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_5
    move v4, v3

    goto :goto_0

    :cond_6
    if-ne v0, v7, :cond_4

    goto :goto_0
.end method

.method private parseParam2(I)I
    .locals 8

    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v2, p1

    const/4 v0, 0x0

    const-string v5, "ENCODING"

    invoke-virtual {p0, p1, v5, v7}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    if-eq v4, v1, :cond_0

    add-int/2addr p1, v1

    add-int/2addr v3, v1

    const/4 v0, 0x1

    :cond_0
    if-ne v0, v7, :cond_1

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v6, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v6, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr v3, v1

    const-string v5, "="

    invoke-virtual {p0, p1, v5, v7}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    if-eq v4, v1, :cond_6

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return v4

    :cond_3
    add-int/2addr p1, v1

    add-int/2addr v3, v1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr v3, v1

    move v2, p1

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parsePEncodingVal(I)I

    move-result v1

    if-eq v4, v1, :cond_2

    add-int/2addr p1, v1

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_5
    move v4, v3

    goto :goto_0

    :cond_6
    if-ne v0, v7, :cond_4

    goto :goto_0
.end method

.method private parseParam3(I)I
    .locals 7

    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v1, p1

    const-string v4, "CHARSET"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-ne v3, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    add-int/2addr p1, v0

    add-int/2addr v2, v0

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    const-string v4, "="

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v3, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    move v1, p1

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCharsetVal(I)I

    move-result v0

    if-eq v3, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    goto :goto_0
.end method

.method private parseParam4(I)I
    .locals 7

    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v1, p1

    const-string v4, "LANGUAGE"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-ne v3, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    add-int/2addr p1, v0

    add-int/2addr v2, v0

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    const-string v4, "="

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v3, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    move v1, p1

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseLangVal(I)I

    move-result v0

    if-eq v3, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    goto :goto_0
.end method

.method private parseParam5(I)I
    .locals 7

    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v1, p1

    const-string v4, "ROLE"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-ne v3, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    add-int/2addr p1, v0

    add-int/2addr v2, v0

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    const-string v4, "="

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v3, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    move v1, p1

    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseRoleVal(I)I

    move-result v0

    if-eq v3, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    goto :goto_0
.end method

.method private parseParam6(I)I
    .locals 7

    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v1, p1

    const-string v4, "STATUS"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-ne v3, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    add-int/2addr p1, v0

    add-int/2addr v2, v0

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    const-string v4, "="

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v3, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    move v1, p1

    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseStatuVal(I)I

    move-result v0

    if-eq v3, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    goto :goto_0
.end method

.method private parseParam7(I)I
    .locals 6

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v1, p1

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    if-ne v3, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    add-int/2addr p1, v0

    add-int/2addr v2, v0

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    const-string v4, "="

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v3, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    move v1, p1

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseWord(I)I

    move-result v0

    if-eq v3, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    goto :goto_0
.end method

.method private parseParamlist(I)I
    .locals 7

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam(I)I

    move-result v1

    if-ne v4, v1, :cond_0

    :goto_0
    return v4

    :cond_0
    add-int/2addr p1, v1

    add-int/2addr v2, v1

    move v0, p1

    move v3, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v1

    const-string v5, ";"

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    if-ne v4, v1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    add-int/2addr v0, v1

    add-int/2addr v3, v1

    invoke-virtual {p0, v0}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v1

    invoke-direct {p0, v0}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam(I)I

    move-result v1

    if-ne v4, v1, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    add-int/2addr v0, v1

    add-int/2addr v3, v1

    move v2, v3

    goto :goto_1
.end method

.method private parseParams(I)I
    .locals 5

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v3, ";"

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParamlist(I)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0
.end method

.method private parsePtypeval(I)I
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseKnownType(I)I

    move-result v0

    if-eq v1, v0, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    if-eq v1, v0, :cond_0

    move v1, v0

    goto :goto_0
.end method

.method private parseRoleVal(I)I
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    const-string v2, "ATTENDEE"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v1, v0, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "ORGANIZER"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v1, v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v2, "OWNER"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v1, v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    if-eq v1, v0, :cond_0

    move v1, v0

    goto :goto_0
.end method

.method private parseStatuVal(I)I
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    const-string v2, "ACCEPTED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v1, v0, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "NEED ACTION"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v1, v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v2, "TENTATIVE"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v1, v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    const-string v2, "CONFIRMED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v1, v0, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    const-string v2, "DECLINED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v1, v0, :cond_5

    move v1, v0

    goto :goto_0

    :cond_5
    const-string v2, "COMPLETED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v1, v0, :cond_6

    move v1, v0

    goto :goto_0

    :cond_6
    const-string v2, "DELEGATED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v1, v0, :cond_7

    move v1, v0

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    if-eq v1, v0, :cond_0

    move v1, v0

    goto :goto_0
.end method

.method private parseTodoentity(I)I
    .locals 6

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v3, "BEGIN"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    const-string v3, "VTODO"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    const-string v4, "VTODO"

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->startRecord(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_3

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseEntprops(I)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_4

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    goto :goto_2

    :cond_4
    const-string v3, "END"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    const-string v3, "VTODO"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->endRecord()V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_6

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    goto :goto_3

    :cond_6
    move v2, v1

    goto/16 :goto_0
.end method

.method private parseVCal(I)I
    .locals 6

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v3, "BEGIN"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    const-string v3, "VCALENDAR"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    const-string v4, "VCALENDAR"

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->startRecord(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_3

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalprops(I)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalentities(I)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_4

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    goto :goto_2

    :cond_4
    const-string v3, "END"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    const-string v3, "VCALENDAR"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->endRecord()V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_6

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    goto :goto_3

    :cond_6
    move v2, v1

    goto/16 :goto_0
.end method

.method private parseVCalFile(I)I
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseWsls(I)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseVCal(I)I

    move-result v0

    if-eq v2, v0, :cond_2

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseWsls(I)I

    move-result v0

    if-eq v2, v0, :cond_1

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :cond_2
    return v2
.end method

.method private valueFilter(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    sget-object v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "X-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method protected parseVFile(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseVCalFile(I)I

    move-result v0

    return v0
.end method
