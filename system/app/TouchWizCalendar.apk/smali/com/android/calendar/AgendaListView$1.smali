.class Lcom/android/calendar/AgendaListView$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "AgendaListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaListView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaListView;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaListView$1;->this$0:Lcom/android/calendar/AgendaListView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/calendar/AgendaListView$1;->this$0:Lcom/android/calendar/AgendaListView;

    invoke-static {v1, v0}, Lcom/android/calendar/AgendaListView;->access$002(Lcom/android/calendar/AgendaListView;Z)Z

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/AgendaListView$1;->this$0:Lcom/android/calendar/AgendaListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/AgendaListView;->access$002(Lcom/android/calendar/AgendaListView;Z)Z

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method
