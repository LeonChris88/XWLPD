.class Lcom/android/calendar/VCalListActivity$ICSEventAdapter;
.super Landroid/widget/BaseAdapter;
.source "VCalListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/VCalListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ICSEventAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mFormatter:Ljava/util/Formatter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNoTitleLabel:Ljava/lang/String;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/calendar/VCalListActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/VCalListActivity;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mNoTitleLabel:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mFormatter:Ljava/util/Formatter;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-static {v0}, Lcom/android/calendar/VCalListActivity;->access$500(Lcom/android/calendar/VCalListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 27

    const/16 v25, 0x0

    const/16 v17, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v2, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;

    if-eqz v2, :cond_0

    move-object/from16 v25, p2

    move-object/from16 v17, v19

    check-cast v17, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;

    :cond_0
    if-nez v17, :cond_1

    new-instance v17, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;-><init>(Lcom/android/calendar/VCalListActivity$ICSEventAdapter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030020

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    const v2, 0x7f0f0013

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v2, 0x7f0f0099

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;->when:Landroid/widget/TextView;

    const v2, 0x7f0f0015

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;->calendar:Landroid/view/View;

    const v2, 0x7f0f0096

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;->calendar:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-static {v2}, Lcom/android/calendar/VCalListActivity;->access$500(Lcom/android/calendar/VCalListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/calendarcommon/ICalendar$Component;

    const v2, -0xfb4a01

    invoke-virtual {v10, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v2, "SUMMARY"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v21

    const/16 v22, 0x0

    if-eqz v21, :cond_2

    invoke-static/range {v21 .. v21}, Lcom/android/calendar/Utils;->decodePropertyValue(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v22

    :cond_2
    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v22, v0

    :cond_4
    const-string v2, "=0D"

    const-string v8, "\r"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "=0A"

    const-string v9, "\n"

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v2, "UTC"

    move-object/from16 v0, v18

    iput-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const-string v2, "UTC"

    iput-object v2, v15, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v11, 0x0

    const-string v2, "DTSTART"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "TZID"

    invoke-virtual {v14, v2}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v24

    if-eqz v24, :cond_5

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    :cond_5
    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-object/from16 v0, v18

    iget-boolean v2, v0, Landroid/text/format/Time;->allDay:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_6
    :goto_0
    const-string v2, "DTEND"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    :try_start_1
    invoke-virtual {v15, v11}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    iget-boolean v2, v15, Landroid/text/format/Time;->allDay:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, v23

    iput-object v0, v15, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/text/format/Time;->normalize(Z)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    :goto_1
    move-object/from16 v0, v18

    iget-boolean v3, v0, Landroid/text/format/Time;->allDay:Z

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    if-eqz v3, :cond_8

    iget v2, v15, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_8

    iget v2, v15, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_8

    iget v2, v15, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v15, Landroid/text/format/Time;->monthDay:I

    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/text/format/Time;->normalize(Z)J

    :cond_8
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/calendar/Utils;->formatDateTimeString(Landroid/content/Context;ZJJZZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0f0095

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f0093

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f009a

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f007e

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f0016

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    return-object v25

    :catch_0
    move-exception v2

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method
