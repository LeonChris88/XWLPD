.class Lcom/android/calendar/VCalListActivity$VCSEventAdapter;
.super Landroid/widget/BaseAdapter;
.source "VCalListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/VCalListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCSEventAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/VCalListActivity$VCSEventAdapter$ViewHolder;
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

    iput-object p1, p0, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;->mNoTitleLabel:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;->mFormatter:Ljava/util/Formatter;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-static {v0}, Lcom/android/calendar/VCalListActivity;->access$100(Lcom/android/calendar/VCalListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-static {v0}, Lcom/android/calendar/VCalListActivity;->access$100(Lcom/android/calendar/VCalListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
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
    .locals 21

    const/16 v19, 0x0

    const/4 v12, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    instance-of v1, v15, Lcom/android/calendar/VCalListActivity$VCSEventAdapter$ViewHolder;

    if-eqz v1, :cond_0

    move-object/from16 v19, p2

    move-object v12, v15

    check-cast v12, Lcom/android/calendar/VCalListActivity$VCSEventAdapter$ViewHolder;

    :cond_0
    if-nez v12, :cond_1

    new-instance v12, Lcom/android/calendar/VCalListActivity$VCSEventAdapter$ViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/calendar/VCalListActivity$VCSEventAdapter$ViewHolder;-><init>(Lcom/android/calendar/VCalListActivity$VCSEventAdapter;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030020

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    const v1, 0x7f0f0013

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/android/calendar/VCalListActivity$VCSEventAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f0f0099

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/android/calendar/VCalListActivity$VCSEventAdapter$ViewHolder;->when:Landroid/widget/TextView;

    const v1, 0x7f0f0015

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v12, Lcom/android/calendar/VCalListActivity$VCSEventAdapter$ViewHolder;->calendar:Landroid/view/View;

    const v1, 0x7f0f0096

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lcom/android/calendar/VCalListActivity$VCSEventAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v12, Lcom/android/calendar/VCalListActivity$VCSEventAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v16, v0

    iget-object v0, v12, Lcom/android/calendar/VCalListActivity$VCSEventAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v20, v0

    iget-object v9, v12, Lcom/android/calendar/VCalListActivity$VCSEventAdapter$ViewHolder;->calendar:Landroid/view/View;

    const v1, -0xfb4a01

    invoke-virtual {v9, v1}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-static {v1}, Lcom/android/calendar/VCalListActivity;->access$400(Lcom/android/calendar/VCalListActivity;)Lcom/android/calendar/vcal/VCalManager;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/calendar/vcal/VCalManager;->getTitle(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    :cond_3
    const-string v1, "=0D"

    const-string v3, "\r"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "=0A"

    const-string v4, "\n"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-static {v1}, Lcom/android/calendar/VCalListActivity;->access$400(Lcom/android/calendar/VCalListActivity;)Lcom/android/calendar/vcal/VCalManager;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/calendar/vcal/VCalManager;->getStartTime(I)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-static {v1}, Lcom/android/calendar/VCalListActivity;->access$400(Lcom/android/calendar/VCalListActivity;)Lcom/android/calendar/vcal/VCalManager;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/calendar/vcal/VCalManager;->getEndTime(I)Ljava/lang/Long;

    move-result-object v10

    if-nez v13, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    :cond_4
    if-nez v10, :cond_5

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-static {v1}, Lcom/android/calendar/VCalListActivity;->access$400(Lcom/android/calendar/VCalListActivity;)Lcom/android/calendar/vcal/VCalManager;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/calendar/vcal/VCalManager;->getAllday(I)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    iget-object v0, v14, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v1, "UTC"

    iput-object v1, v14, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, v18

    iput-object v0, v14, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/text/format/Time;->normalize(Z)J

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v1, "UTC"

    iput-object v1, v11, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v11, v3, v4}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, v18

    iput-object v0, v11, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/text/format/Time;->normalize(Z)J

    iget v1, v11, Landroid/text/format/Time;->hour:I

    if-nez v1, :cond_6

    iget v1, v11, Landroid/text/format/Time;->minute:I

    if-nez v1, :cond_6

    iget v1, v11, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v11, Landroid/text/format/Time;->monthDay:I

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/text/format/Time;->normalize(Z)J

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/calendar/Utils;->formatDateTimeString(Landroid/content/Context;ZJJZZ)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0f0095

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0f0093

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0f009a

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0f007e

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0f0016

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-object v19
.end method
