.class Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
.super Lcom/sec/android/app/twlauncher/ItemInfo;
.source "SamsungAppWidgetInfo.java"


# instance fields
.field intent:Landroid/content/Intent;

.field mItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

.field state:I

.field widgetId:J

.field widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    return-void
.end method

.method static makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;J)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;JLcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method static makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;JLcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .locals 19

    const/4 v7, 0x0

    if-nez p4, :cond_3

    new-instance v7, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-direct {v7}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;-><init>()V

    move-wide/from16 v0, p2

    iput-wide v0, v7, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    :cond_0
    :goto_0
    const/4 v3, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    instance-of v15, v0, Landroid/app/ActivityGroup;

    if-eqz v15, :cond_2

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    if-eqz v15, :cond_2

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    if-eqz v15, :cond_2

    move-object/from16 v6, p0

    check-cast v6, Landroid/app/ActivityGroup;

    invoke-virtual {v6}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v11

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mThemeName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v13, 0x0

    :try_start_1
    iget-wide v15, v7, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15, v8}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    :goto_2
    if-eqz v13, :cond_4

    const v15, 0x1020002

    invoke-virtual {v13, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    :goto_3
    if-eqz v10, :cond_5

    move-object v15, v10

    check-cast v15, Landroid/view/ViewGroup;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_1

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mThemeName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v15, v0, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->setIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v14, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getWidth(I)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getHeight(I)I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v9, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0x11

    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz v3, :cond_6

    invoke-virtual {v14, v3, v9}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    iput-object v14, v7, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    move-object/from16 v0, p1

    iput-object v0, v7, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->mItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    return-object v7

    :cond_3
    move-object/from16 v7, p4

    iget-wide v15, v7, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-nez v15, :cond_0

    move-wide/from16 v0, p2

    iput-wide v0, v7, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v4

    const-string v15, "SamsungAppWidgetInfo"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed startActivity("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getErrorView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5
.end method


# virtual methods
.method public fireOnPause(Landroid/content/Context;)V
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/ActivityGroup;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/ActivityGroup;

    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/android/touchwiz/appwidget/IWidgetObserver;

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v0, v3, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "fireOnPause"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public fireOnResume(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/ActivityGroup;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/ActivityGroup;

    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/android/touchwiz/appwidget/IWidgetObserver;

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v0, v3, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "fireOnResume"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "intent"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final setIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    const-string v1, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
