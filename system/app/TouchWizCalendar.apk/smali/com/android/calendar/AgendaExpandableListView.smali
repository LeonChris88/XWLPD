.class public Lcom/android/calendar/AgendaExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "AgendaExpandableListView.java"

# interfaces
.implements Lcom/android/calendar/AgendaInterface;


# instance fields
.field private mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

.field private mAgendaActivity:Landroid/app/Activity;

.field private mAllCollapsed:Z

.field private mAllExpanded:Z

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mUpdateTZ:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllExpanded:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllCollapsed:Z

    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaExpandableListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/AgendaExpandableListView;)Lcom/android/calendar/AgendaExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/AgendaExpandableListView;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAgendaActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/AgendaExpandableListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllExpanded:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/calendar/AgendaExpandableListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllCollapsed:Z

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAgendaActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/calendar/AgendaExpandableListAdapter;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, p0}, Lcom/android/calendar/AgendaExpandableListAdapter;-><init>(Landroid/app/Activity;Lcom/android/calendar/AgendaExpandableListView;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {p0, v3}, Lcom/android/calendar/AgendaExpandableListView;->setFadingEdgeLength(I)V

    invoke-virtual {p0, v3}, Lcom/android/calendar/AgendaExpandableListView;->setCacheColorHint(I)V

    new-instance v0, Lcom/android/calendar/AgendaExpandableListView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/AgendaExpandableListView$1;-><init>(Lcom/android/calendar/AgendaExpandableListView;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    new-instance v0, Lcom/android/calendar/AgendaExpandableListView$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/AgendaExpandableListView$2;-><init>(Lcom/android/calendar/AgendaExpandableListView;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/AgendaExpandableListView$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/AgendaExpandableListView$3;-><init>(Lcom/android/calendar/AgendaExpandableListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllExpanded:Z

    iput-boolean v3, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllCollapsed:Z

    return-void
.end method

.method private shiftPosition(I)V
    .locals 7

    const-string v4, "AgendaExpandableListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shifting position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getFirstVisibleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaExpandableListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    :goto_0
    invoke-virtual {p0, v1, v4}, Lcom/android/calendar/AgendaExpandableListView;->setSelectionFromTop(II)V

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    const-string v4, "AgendaExpandableListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shifting from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Title "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;

    const-string v4, "AgendaExpandableListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shifting from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Date  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const-string v4, "AgendaExpandableListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shifting: Looking at header here. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getSelectedItemPosition()I

    move-result v4

    if-ltz v4, :cond_0

    const-string v4, "AgendaExpandableListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shifting selection from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getSelectedItemPosition()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {p0, v4}, Lcom/android/calendar/AgendaExpandableListView;->setSelection(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public collapseList()V
    .locals 3

    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/AgendaExpandableListAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/calendar/AgendaExpandableListView;->collapseGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllExpanded:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllCollapsed:Z

    return-void
.end method

.method public expandList()V
    .locals 3

    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/AgendaExpandableListAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/calendar/AgendaExpandableListView;->expandGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllExpanded:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllCollapsed:Z

    return-void
.end method

.method public getAllCollapsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllCollapsed:Z

    return v0
.end method

.method public getAllExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllExpanded:Z

    return v0
.end method

.method public bridge synthetic getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getExpandableListAdapter()Lcom/android/calendar/AgendaExpandableListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Lcom/android/calendar/AgendaExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    return-object v0
.end method

.method public getFirstVisibleTime()J
    .locals 5

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    const-string v2, "AgendaExpandableListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFirstVisiblePosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v2, v1}, Lcom/android/calendar/AgendaExpandableListAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

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

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/calendar/AgendaExpandableListView;->getChildAt(I)Landroid/view/View;

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

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v2, v1}, Lcom/android/calendar/AgendaExpandableListAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getFirstVisibleTime()J

    move-result-wide v2

    goto :goto_0
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/AgendaExpandableListAdapter;->refresh(Landroid/text/format/Time;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ExpandableListView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaExpandableListAdapter;->close()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, v2}, Landroid/widget/ExpandableListView;->setHeaderDividersEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ExpandableListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ExpandableListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaExpandableListAdapter;->notifyDataSetInvalidated()V

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaExpandableListAdapter;->stopImageLoaderThread()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public refresh(Z)V
    .locals 5

    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/AgendaExpandableListView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getFirstVisibleTime()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_0
    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-object v3, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v3, v2, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->refresh(Landroid/text/format/Time;Z)V

    return-void
.end method

.method public setHideDeclinedEvents(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->setHideDeclinedEvents(Z)V

    return-void
.end method

.method public shiftSelection(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaExpandableListView;->shiftPosition(I)V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int v1, v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/AgendaExpandableListView;->setSelectionFromTop(II)V

    :cond_0
    return-void
.end method
