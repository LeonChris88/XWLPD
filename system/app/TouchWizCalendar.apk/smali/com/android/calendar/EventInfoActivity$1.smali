.class Lcom/android/calendar/EventInfoActivity$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "EventInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$1;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {}, Lcom/android/calendar/EventInfoActivity;->access$100()I

    move-result v4

    if-lt v0, v4, :cond_2

    if-ge v0, v1, :cond_3

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    cmpg-float v4, p3, v4

    if-gez v4, :cond_4

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity$1;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v3, v2}, Lcom/android/calendar/EventInfoActivity;->access$200(Lcom/android/calendar/EventInfoActivity;Z)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity$1;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v4, v3}, Lcom/android/calendar/EventInfoActivity;->access$200(Lcom/android/calendar/EventInfoActivity;Z)V

    goto :goto_0
.end method
