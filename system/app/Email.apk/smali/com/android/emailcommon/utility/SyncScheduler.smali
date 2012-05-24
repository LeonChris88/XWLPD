.class public Lcom/android/emailcommon/utility/SyncScheduler;
.super Ljava/lang/Object;
.source "SyncScheduler.java"


# static fields
.field private static final sCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIsPeakAndNextAlarm(Lcom/android/emailcommon/utility/SyncScheduleData;)Landroid/util/Pair;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/utility/SyncScheduleData;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    const-wide/16 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v15

    move/from16 v0, v19

    invoke-static {v1, v0}, Lcom/android/emailcommon/utility/SyncScheduler;->getMinuteInMillis(Ljava/util/Date;I)J

    move-result-wide v20

    invoke-static {v1, v15}, Lcom/android/emailcommon/utility/SyncScheduler;->getMinuteInMillis(Ljava/util/Date;I)J

    move-result-wide v16

    sub-long v9, v20, v13

    sub-long v7, v16, v13

    const-wide/16 v5, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/emailcommon/utility/SyncScheduler;->getPeakDays(Lcom/android/emailcommon/utility/SyncScheduleData;)Ljava/util/ArrayList;

    move-result-object v18

    sget-object v22, Lcom/android/emailcommon/utility/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v22

    sget-object v23, Lcom/android/emailcommon/utility/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v24, 0x7

    invoke-virtual/range {v23 .. v24}, Ljava/util/Calendar;->get(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v22

    if-gez v22, :cond_0

    const/4 v3, 0x0

    :cond_0
    sget-object v22, Lcom/android/emailcommon/utility/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v23, 0x5

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v22

    sget-object v23, Lcom/android/emailcommon/utility/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v24, 0x7

    invoke-virtual/range {v23 .. v24}, Ljava/util/Calendar;->get(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v22

    if-gez v22, :cond_1

    const/4 v4, 0x0

    :cond_1
    cmp-long v22, v9, v7

    if-nez v22, :cond_5

    const-wide/16 v22, 0x0

    cmp-long v22, v7, v22

    if-lez v22, :cond_3

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    move-wide v5, v7

    :goto_0
    move-wide v11, v5

    new-instance v22, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v22

    :cond_3
    if-eqz v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    const-wide/32 v22, 0x5265c00

    add-long v5, v9, v22

    goto :goto_0

    :cond_5
    const-wide/16 v22, 0x0

    cmp-long v22, v9, v22

    if-gtz v22, :cond_9

    cmp-long v22, v7, v9

    if-gez v22, :cond_6

    const-wide/32 v22, 0x5265c00

    add-long v7, v7, v22

    :cond_6
    const-wide/16 v22, 0x0

    cmp-long v22, v7, v22

    if-lez v22, :cond_8

    if-eqz v3, :cond_7

    const/4 v2, 0x1

    :cond_7
    move-wide v5, v7

    goto :goto_0

    :cond_8
    const-wide/32 v22, 0x5265c00

    add-long v5, v9, v22

    goto :goto_0

    :cond_9
    const-wide/16 v22, 0x0

    cmp-long v22, v7, v22

    if-lez v22, :cond_b

    cmp-long v22, v7, v9

    if-gez v22, :cond_b

    if-eqz v4, :cond_a

    const/4 v2, 0x1

    :cond_a
    move-wide v5, v7

    goto :goto_0

    :cond_b
    move-wide v5, v9

    goto :goto_0
.end method

.method private static getMinuteInMillis(Ljava/util/Date;I)J
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/android/emailcommon/utility/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 v1, p1, 0x3c

    sget-object v2, Lcom/android/emailcommon/utility/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    sget-object v2, Lcom/android/emailcommon/utility/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    sget-object v2, Lcom/android/emailcommon/utility/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    sget-object v2, Lcom/android/emailcommon/utility/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    sget-object v2, Lcom/android/emailcommon/utility/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private static getPeakDays(Lcom/android/emailcommon/utility/SyncScheduleData;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/utility/SyncScheduleData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x7

    invoke-virtual {p0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_1

    and-int v7, v5, v3

    if-eqz v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    :goto_1
    if-ge v0, v8, :cond_2

    and-int v7, v5, v3

    if-eqz v7, :cond_3

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_2
    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    return-object v6

    :cond_3
    move v1, v2

    goto :goto_2
.end method
