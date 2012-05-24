.class public Lcom/android/calendar/AgendaListView;
.super Landroid/widget/ListView;
.source "AgendaListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/calendar/AgendaInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaListView$SavedCheckState;
    }
.end annotation


# instance fields
.field private mAgendaActivity:Landroid/app/Activity;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mScaleBegan:Z

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AgendaListView;->mUpdateTZ:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/AgendaListView;->mScaleBegan:Z

    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/AgendaListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/AgendaListView;->mScaleBegan:Z

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/calendar/AgendaListView;->mAgendaActivity:Landroid/app/Activity;

    invoke-virtual {p0, p0}, Lcom/android/calendar/AgendaListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaListView;->setChoiceMode(I)V

    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaListView;->setFadingEdgeLength(I)V

    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaListView;->setCacheColorHint(I)V

    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0, p0}, Lcom/android/calendar/AgendaWindowAdapter;-><init>(Landroid/app/Activity;Lcom/android/calendar/AgendaListView;)V

    iput-object v1, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, v2}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/android/calendar/AgendaListView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/AgendaListView$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/AgendaListView$1;-><init>(Lcom/android/calendar/AgendaListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaListView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method private shiftPosition(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getFirstVisibleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    add-int v4, v1, p1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-lez v3, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    :goto_0
    invoke-virtual {p0, v4, v3}, Lcom/android/calendar/AgendaListView;->setSelectionFromTop(II)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lcom/android/calendar/AgendaListView;->setSelection(I)V

    goto :goto_1
.end method


# virtual methods
.method public getFirstVisibleTime()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v2, v1}, Lcom/android/calendar/AgendaWindowAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getFirstVisibleView()Landroid/view/View;
    .locals 5

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/calendar/AgendaListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSelectedTime()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v2, v1}, Lcom/android/calendar/AgendaWindowAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getWindowAdapter()Lcom/android/calendar/AgendaWindowAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    return-object v0
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->close()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v11, p0, Lcom/android/calendar/AgendaListView;->mAgendaActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v11, "android.intent.action.PICK"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    iget-object v11, p0, Lcom/android/calendar/AgendaListView;->mAgendaActivity:Landroid/app/Activity;

    instance-of v11, v11, Lcom/android/calendar/AgendaDeleteActivity;

    if-eqz v11, :cond_3

    :cond_1
    iget-object v11, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaListView;->isItemChecked(I)Z

    move-result v12

    move/from16 v0, p3

    invoke-virtual {v11, v0, v12}, Lcom/android/calendar/AgendaWindowAdapter;->setChecked(IZ)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v11, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/android/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v12, v7, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v8, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-wide v2, v7, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    iget-wide v5, v7, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->end:J

    const-wide/16 v11, 0x0

    cmp-long v11, v5, v11

    if-nez v11, :cond_4

    iget-object v11, v7, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->duration:Ljava/lang/String;

    if-eqz v11, :cond_5

    new-instance v9, Lcom/android/calendar/vcal/pim/vcalendar/Duration;

    invoke-direct {v9}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;-><init>()V

    :try_start_0
    iget-object v11, v7, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->duration:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v9, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->addTo(J)J

    move-result-wide v5

    :cond_4
    :goto_2
    const-string v11, "beginTime"

    invoke-virtual {v8, v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v11, "endTime"

    invoke-virtual {v8, v11, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/calendar/AgendaListView;->mAgendaActivity:Landroid/app/Activity;

    invoke-virtual {v11, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;->printStackTrace()V

    goto :goto_1

    :cond_5
    move-wide v5, v2

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, v2}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetInvalidated()V

    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->stopImageLoaderThread()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    move-object v0, p1

    check-cast v0, Lcom/android/calendar/AgendaListView$SavedCheckState;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaListView$SavedCheckState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v4, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    iget v1, v0, Lcom/android/calendar/AgendaListView$SavedCheckState;->allChecked:I

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, v4, Lcom/android/calendar/AgendaWindowAdapter;->mAllChecked:Z

    iget-object v1, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    iget v4, v0, Lcom/android/calendar/AgendaListView$SavedCheckState;->beforeTodayChecked:I

    if-ne v4, v2, :cond_2

    :goto_1
    iput-boolean v2, v1, Lcom/android/calendar/AgendaWindowAdapter;->mBeforeTodayChecked:Z

    iget-object v1, v0, Lcom/android/calendar/AgendaListView$SavedCheckState;->checkedIds:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    iget-object v2, v0, Lcom/android/calendar/AgendaListView$SavedCheckState;->checkedIds:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaWindowAdapter;->setCheckIds(Ljava/util/HashMap;)V

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    iget-object v6, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v6}, Lcom/android/calendar/AgendaWindowAdapter;->getAllChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    :goto_0
    iget-object v6, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v6}, Lcom/android/calendar/AgendaWindowAdapter;->getBeforeTodayChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    :goto_1
    iget-object v4, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Lcom/android/calendar/AgendaListView$SavedCheckState;

    invoke-direct {v4, v3, v0, v1, v2}, Lcom/android/calendar/AgendaListView$SavedCheckState;-><init>(Landroid/os/Parcelable;IILjava/util/HashMap;)V

    return-object v4

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public refresh(Z)V
    .locals 5

    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/AgendaListView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/calendar/AgendaListView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_0
    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-object v3, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v3, v2, p1}, Lcom/android/calendar/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;Z)V

    return-void
.end method

.method public setHideDeclinedEvents(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->setHideDeclinedEvents(Z)V

    return-void
.end method

.method public shiftSelection(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaListView;->shiftPosition(I)V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int v1, v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/AgendaListView;->setSelectionFromTop(II)V

    :cond_0
    return-void
.end method
