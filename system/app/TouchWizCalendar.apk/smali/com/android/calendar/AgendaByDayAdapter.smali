.class public Lcom/android/calendar/AgendaByDayAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;,
        Lcom/android/calendar/AgendaByDayAdapter$RowInfo;,
        Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAgendaActivity:Landroid/app/Activity;

.field private final mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

.field private final mContext:Landroid/content/Context;

.field private mFormatter:Ljava/util/Formatter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/AgendaByDayAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTodayJulianDay:I

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/calendar/AgendaAdapter;

    const v1, 0x7f030020

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/AgendaAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mFormatter:Ljava/util/Formatter;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public calculateDays(Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)V
    .locals 29

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, -0x1

    new-instance v24, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/AgendaByDayAdapter;->mTodayJulianDay:I

    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/calendar/AgendaDeleteActivity;

    move/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/calendar/AgendaDeleteActivity;

    invoke-virtual/range {v26 .. v26}, Lcom/android/calendar/AgendaDeleteActivity;->getDeleteType()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_a

    :cond_1
    const/4 v4, 0x1

    :goto_1
    const/16 v18, 0x0

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v26

    if-eqz v26, :cond_13

    const/16 v26, 0x3

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    if-eqz v26, :cond_b

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/calendar/AgendaDeleteActivity;

    move/from16 v26, v0

    if-nez v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/calendar/AgendaActivity;

    move/from16 v26, v0

    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/calendar/AgendaActivity;

    invoke-virtual/range {v26 .. v26}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v26

    if-nez v26, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/calendar/SearchResult;

    move/from16 v26, v0

    if-eqz v26, :cond_d

    :cond_3
    const/16 v26, 0x7

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    const-string v26, "facebook_schedule_id"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-nez v5, :cond_4

    if-eqz v12, :cond_c

    :cond_4
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    iget-object v0, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "UTC"

    move-object/from16 v0, v26

    iput-object v0, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, v25

    iput-object v0, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->normalize(Z)J

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    :cond_5
    :goto_4
    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v22

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v21

    :goto_5
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v26, v0

    move/from16 v0, v21

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v26, -0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    if-eqz v4, :cond_6

    new-instance v26, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_6
    move/from16 v19, v21

    :cond_7
    new-instance v26, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/calendar/AgendaDeleteActivity;

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/calendar/AgendaActivity;

    move/from16 v26, v0

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/calendar/AgendaActivity;

    invoke-virtual/range {v26 .. v26}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v26

    if-nez v26, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/calendar/SearchResult;

    move/from16 v26, v0

    if-nez v26, :cond_9

    const/16 v26, 0xe

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    move/from16 v0, v21

    if-le v10, v0, :cond_9

    new-instance v26, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-direct {v0, v1, v10}, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;-><init>(II)V

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_5

    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    iget-object v0, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v25, v0

    iput-object v11, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, v25

    iput-object v0, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->normalize(Z)J

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    goto/16 :goto_4

    :cond_d
    const/16 v26, 0xd

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    goto/16 :goto_5

    :cond_e
    const/4 v9, 0x0

    add-int/lit8 v7, v19, 0x1

    :goto_7
    move/from16 v0, v21

    if-gt v7, v0, :cond_12

    const/4 v9, 0x0

    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;

    iget v0, v13, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v0, v7, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_f
    if-nez v9, :cond_10

    if-eqz v4, :cond_10

    new-instance v26, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v0, v1, v7}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    :cond_10
    new-instance v26, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v27, 0x1

    iget v0, v13, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_12
    if-nez v9, :cond_6

    if-eqz v4, :cond_6

    new-instance v26, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_13
    if-lez v19, :cond_17

    add-int/lit8 v7, v19, 0x1

    :goto_9
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-gt v7, v0, :cond_17

    const/4 v9, 0x0

    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_16

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;

    iget v0, v13, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v0, v7, :cond_14

    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_14
    if-nez v9, :cond_15

    if-eqz v4, :cond_15

    new-instance v26, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v0, v1, v7}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    :cond_15
    new-instance v26, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v27, 0x1

    iget v0, v13, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_17
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public changeCursor(Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaByDayAdapter;->calculateDays(Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)V

    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    iget-object v1, p1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public findDayPositionNearestTime(Landroid/text/format/Time;)I
    .locals 11

    const/4 v1, 0x0

    iget-object v9, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iget-wide v9, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v9, v10}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    const/16 v6, 0x3e8

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    iget-object v9, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    iget v9, v8, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v9, :cond_2

    iget v9, v8, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    sub-int v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eqz v0, :cond_0

    if-ge v0, v6, :cond_2

    move v6, v0

    move v7, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v7

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCursorPosition(I)I
    .locals 4

    iget-object v2, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    iget v2, v1, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v0, p1, 0x1

    iget-object v2, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    if-ltz v0, :cond_1

    neg-int v2, v0

    goto :goto_0

    :cond_1
    const/high16 v2, -0x8000

    goto :goto_0
.end method

.method public getDayCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    iget v3, v2, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getDayPosition(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    iget v3, v2, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    iget v1, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    iget v2, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    iget v1, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    neg-int v1, p1

    int-to-long v1, v1

    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    iget v2, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMeetingCountPerOneDay(I)I
    .locals 7

    iget-object v5, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaByDayAdapter;->getDayPosition(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v5, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    iget v5, v3, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, p1

    move/from16 v1, v24

    if-le v0, v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    move/from16 v24, v0

    if-nez v24, :cond_7

    const/16 v16, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v6, p2

    move-object/from16 v16, v20

    check-cast v16, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;

    :cond_2
    if-nez v16, :cond_3

    new-instance v16, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;

    invoke-direct/range {v16 .. v16}, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v24, v0

    const v25, 0x7f030001

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, p3

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v24, 0x7f0f000a

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    new-instance v10, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v10, v0}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "date_format"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a00e1

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v11, :cond_4

    const-string v24, "MM-dd-yyyy"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a00e2

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    :cond_4
    :goto_1
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mTodayJulianDay:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0a002c

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v17

    invoke-static {v0, v15, v1, v2}, Lcom/android/calendar/Utils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const-string v24, "yyyy-MM-dd"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a00e3

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v17

    invoke-static {v0, v15, v1, v2}, Lcom/android/calendar/Utils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_7
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v24, "android.intent.action.PICK"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/calendar/AgendaDeleteActivity;

    move/from16 v24, v0

    if-eqz v24, :cond_d

    :cond_a
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    if-eqz v4, :cond_e

    const-string v24, "android.intent.action.PICK"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/calendar/AgendaActivity;

    invoke-virtual/range {v24 .. v24}, Lcom/android/calendar/AgendaActivity;->getAgendaAdapter()Lcom/android/calendar/AgendaWindowAdapter;

    move-result-object v5

    :cond_b
    :goto_3
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/calendar/AgendaWindowAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v14

    :cond_c
    if-eqz v7, :cond_d

    if-eqz v14, :cond_d

    iget-wide v0, v14, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/calendar/Utils;->getTodayMillis(Landroid/content/Context;)J

    move-result-wide v17

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_d
    :goto_4
    move-object/from16 v6, v22

    goto/16 :goto_0

    :catch_0
    move-exception v13

    new-instance v6, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/calendar/AgendaDeleteActivity;

    move/from16 v24, v0

    if-eqz v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/calendar/AgendaDeleteActivity;

    invoke-virtual/range {v24 .. v24}, Lcom/android/calendar/AgendaDeleteActivity;->getAgendaAdapter()Lcom/android/calendar/AgendaWindowAdapter;

    move-result-object v5

    goto :goto_3

    :cond_f
    invoke-virtual {v5}, Lcom/android/calendar/AgendaWindowAdapter;->getAllChecked()Z

    move-result v24

    if-eqz v24, :cond_10

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    :cond_10
    invoke-virtual {v5}, Lcom/android/calendar/AgendaWindowAdapter;->getBeforeTodayChecked()Z

    move-result v24

    if-eqz v24, :cond_11

    iget-wide v0, v14, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    move-wide/from16 v24, v0

    cmp-long v24, v24, v17

    if-gez v24, :cond_11

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    :cond_11
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    :cond_12
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unknown event type:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    iget v2, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setChecked(IZ)V
    .locals 2

    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    iput-boolean p2, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mChecked:Z

    goto :goto_0
.end method

.method public stopImageLoaderThread()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter;->mImageLoader:Lcom/android/calendar/ImageLoader;

    invoke-virtual {v0}, Lcom/android/calendar/ImageLoader;->stopThread()V

    return-void
.end method
