.class Lcom/android/calendar/MonthActivity$EventAdapter;
.super Landroid/widget/BaseAdapter;
.source "MonthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/MonthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/calendar/MonthActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/MonthActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/MonthActivity$EventAdapter;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/calendar/MonthActivity$EventAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthActivity$EventAdapter;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-static {v0}, Lcom/android/calendar/MonthActivity;->access$200(Lcom/android/calendar/MonthActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/MonthActivity$EventAdapter;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-static {v0}, Lcom/android/calendar/MonthActivity;->access$200(Lcom/android/calendar/MonthActivity;)Ljava/util/ArrayList;

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
    .locals 20

    move-object/from16 v16, p2

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthActivity$EventAdapter;->this$0:Lcom/android/calendar/MonthActivity;

    move-object/from16 v18, v0

    const-string v19, "layout_inflater"

    invoke-virtual/range {v18 .. v19}, Lcom/android/calendar/MonthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/LayoutInflater;

    const v18, 0x7f030023

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthActivity$EventAdapter;->this$0:Lcom/android/calendar/MonthActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/calendar/MonthActivity;->access$200(Lcom/android/calendar/MonthActivity;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/Event;

    if-eqz v6, :cond_1

    const v18, 0x7f0f00b7

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v18, 0x7f0f00b8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v18, 0x7f0f00b9

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v18, 0x7f0f00ba

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iget v0, v6, Lcom/android/calendar/Event;->color:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const v18, 0x7f0f00bb

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/android/calendar/Event;->isFacebook()Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-boolean v0, v6, Lcom/android/calendar/Event;->allDay:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, v6, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_2
    return-object v16

    :cond_2
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-wide v4, v6, Lcom/android/calendar/Event;->startMillis:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthActivity$EventAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/calendar/util/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_5

    const-string v7, "kk:mm"

    :goto_3
    invoke-virtual {v6}, Lcom/android/calendar/Event;->isFacebook()Z

    move-result v18

    if-eqz v18, :cond_6

    const-string v18, "UTC"

    move-object/from16 v0, v18

    invoke-static {v7, v4, v5, v0}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_4
    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v0, v14

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x1

    aget-object v18, v14, v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    const-string v18, "   "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const/16 v18, 0x0

    aget-object v18, v14, v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_4
    :goto_6
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    const-string v7, "h:mm aa"

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthActivity$EventAdapter;->this$0:Lcom/android/calendar/MonthActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7, v4, v5}, Lcom/android/calendar/Utils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_7
    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    const-string v18, "  "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const/16 v18, 0x0

    aget-object v18, v14, v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x1

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_a
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v6, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
