.class public Lcom/android/calendar/ImportVCalListActivity$EventAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImportVCalListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ImportVCalListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventAdapter"
.end annotation


# instance fields
.field private events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFormatter:Ljava/util/Formatter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNoTitleLabel:Ljava/lang/String;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/calendar/ImportVCalListActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/ImportVCalListActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->mFormatter:Ljava/util/Formatter;

    iput-object p4, p0, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->events:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v0}, Lcom/android/calendar/ImportVCalListActivity;->access$1000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/calendar/Event;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->getItem(I)Lcom/android/calendar/Event;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22

    const/16 v19, 0x0

    const/4 v13, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v1, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    if-eqz v1, :cond_0

    move-object/from16 v19, p2

    move-object/from16 v13, v16

    check-cast v13, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    :cond_0
    if-nez v13, :cond_1

    new-instance v13, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    invoke-direct {v13}, Lcom/android/calendar/AgendaAdapter$ViewHolder;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030020

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    const v1, 0x7f0f0013

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v13, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f0f0099

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v13, Lcom/android/calendar/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    const v1, 0x7f0f0015

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v13, Lcom/android/calendar/AgendaAdapter$ViewHolder;->calendar:Landroid/view/View;

    const v1, 0x7f0f001b

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v13, Lcom/android/calendar/AgendaAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v13, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    iget-object v0, v13, Lcom/android/calendar/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v20, v0

    iget-object v10, v13, Lcom/android/calendar/AgendaAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-object v9, v13, Lcom/android/calendar/AgendaAdapter$ViewHolder;->calendar:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v1}, Lcom/android/calendar/ImportVCalListActivity;->access$1000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/calendar/Event;

    const v1, -0xfb4a01

    invoke-virtual {v9, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v12, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v18, v0

    :cond_3
    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v15, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v15, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-wide v1, v12, Lcom/android/calendar/Event;->startMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iget-wide v1, v12, Lcom/android/calendar/Event;->endMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    if-nez v14, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    :cond_4
    if-nez v11, :cond_5

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :cond_5
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v15, v1, v2}, Landroid/text/format/Time;->set(J)V

    iget-boolean v8, v12, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v8, :cond_7

    const/16 v7, 0x14

    :cond_6
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static/range {v1 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    check-cast p3, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v1}, Lcom/android/calendar/ImportVCalListActivity;->access$500(Lcom/android/calendar/ImportVCalListActivity;)I

    move-result v1

    add-int v1, v1, p1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v1, 0x7f0f0095

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0f0093

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0f009a

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0f007e

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0f0016

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-object v19

    :cond_7
    const v7, 0x10015

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit16 v7, v7, 0x80

    goto/16 :goto_0
.end method
