.class Lcom/android/calendar/CalendarsListActivity$CalendarsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "CalendarsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarsListActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/CalendarsListActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    iput-object p1, p0, Lcom/android/calendar/CalendarsListActivity$CalendarsAdapter;->this$0:Lcom/android/calendar/CalendarsListActivity;

    const v0, 0x7f03000f

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    invoke-virtual {p1}, Lcom/android/calendar/CalendarsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/CalendarsListActivity;->access$302(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/calendar/CalendarsListActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "googlemail.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/calendar/CalendarsListActivity;->access$402(Lcom/android/calendar/CalendarsListActivity;Z)Z

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 17

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v15, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v15, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "gmail"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/CalendarsListActivity$CalendarsAdapter;->this$0:Lcom/android/calendar/CalendarsListActivity;

    invoke-static {v15}, Lcom/android/calendar/CalendarsListActivity;->access$400(Lcom/android/calendar/CalendarsListActivity;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "gmail"

    const-string v16, "googlemail"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v15, "gmail"

    const-string v16, "googlemail"

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const v15, 0x7f0f001a

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v15, 0x7f0f0015

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0f001f

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v15, 0x7f0f0020

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v15, 0x7f0f001e

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v15, 0x7f0f0021

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RadioButton;

    if-eqz v7, :cond_2

    if-nez v6, :cond_1

    const v6, -0x222223

    :cond_1
    const v15, -0x44000001

    and-int/2addr v6, v15

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    if-eqz v14, :cond_4

    const-string v15, "My calendar"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/CalendarsListActivity$CalendarsAdapter;->this$0:Lcom/android/calendar/CalendarsListActivity;

    invoke-virtual {v15}, Lcom/android/calendar/CalendarsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a00c0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const/4 v15, 0x1

    if-eq v3, v15, :cond_7

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    sget-object v15, Lcom/android/calendar/Utils;->CALENDAR_TYPE_IMAGE_SMALL:[I

    invoke-static {v2, v1}, Lcom/android/calendar/Utils;->getCalendarType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    aget v5, v15, v16

    if-lez v5, :cond_6

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v12, :cond_5

    move v10, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/CalendarsListActivity$CalendarsAdapter;->this$0:Lcom/android/calendar/CalendarsListActivity;

    invoke-static {v15}, Lcom/android/calendar/CalendarsListActivity;->access$100(Lcom/android/calendar/CalendarsListActivity;)Landroid/widget/ListView;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v12}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v15

    if-nez v15, :cond_5

    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    const/16 v15, 0x8

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_7
    const/16 v15, 0x8

    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {v12}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2
.end method
