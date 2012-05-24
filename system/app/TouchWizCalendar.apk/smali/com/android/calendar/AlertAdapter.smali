.class public Lcom/android/calendar/AlertAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AlertAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AlertAdapter$AlertItem;
    }
.end annotation


# instance fields
.field public alertActivity:Lcom/android/calendar/AlertActivity;

.field public itemId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/AlertAdapter$AlertItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/calendar/AlertActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object p3, p0, Lcom/android/calendar/AlertAdapter;->alertActivity:Lcom/android/calendar/AlertActivity;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    return-void
.end method

.method private updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;JJZJ)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const v2, 0x7f0a0024

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_1
    const v2, 0x7f0f0013

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p8, :cond_3

    const/16 v12, 0x2012

    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit16 v12, v12, 0x80

    :cond_2
    const v2, 0x7f0f0099

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p8

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v2 .. v9}, Lcom/android/calendar/Utils;->formatDateTimeString(Landroid/content/Context;ZJJZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0f001b

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    new-instance v2, Lcom/android/calendar/AlertAdapter$1;

    move-wide/from16 v0, p9

    invoke-direct {v2, p0, v0, v1}, Lcom/android/calendar/AlertAdapter$1;-><init>(Lcom/android/calendar/AlertAdapter;J)V

    invoke-virtual {v10, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AlertAdapter$AlertItem;

    iget-boolean v11, v2, Lcom/android/calendar/AlertAdapter$AlertItem;->checked:Z

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_3
    const/16 v12, 0x11

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18

    const v1, 0x7f0f0015

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/4 v1, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundColor(I)V

    const v1, 0x7f0f0013

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const v1, 0x7f0f0093

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v1, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v15, :cond_0

    const v1, 0x7f0f009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0f007e

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f020026

    invoke-virtual {v13, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    const/4 v1, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v10, v1

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v1, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v1, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v9, 0x1

    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/calendar/AlertAdapter;->updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;JJZJ)V

    return-void

    :cond_0
    const v1, 0x7f0f009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-le v2, v3, :cond_3

    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lcom/android/calendar/AlertAdapter$AlertItem;

    invoke-direct {v4, p0}, Lcom/android/calendar/AlertAdapter$AlertItem;-><init>(Lcom/android/calendar/AlertAdapter;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/calendar/AlertAdapter;->alertActivity:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v2}, Lcom/android/calendar/AlertActivity;->updateAllCheckState()V

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->onContentChanged()V

    iget-object v0, p0, Lcom/android/calendar/AlertAdapter;->alertActivity:Lcom/android/calendar/AlertActivity;

    iget-object v0, v0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/calendar/AlertAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method
