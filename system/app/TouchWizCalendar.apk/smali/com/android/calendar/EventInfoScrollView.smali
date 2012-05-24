.class public Lcom/android/calendar/EventInfoScrollView;
.super Landroid/widget/ScrollView;
.source "EventInfoScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/EventInfoScrollView$OnFlingListener;
    }
.end annotation


# static fields
.field private static HORIZONTAL_FLING_THRESHOLD:I


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mOnFlingListener:Lcom/android/calendar/EventInfoScrollView$OnFlingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x32

    sput v0, Lcom/android/calendar/EventInfoScrollView;->HORIZONTAL_FLING_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/EventInfoScrollView;->mOnFlingListener:Lcom/android/calendar/EventInfoScrollView$OnFlingListener;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calendar/EventInfoScrollView$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoScrollView$1;-><init>(Lcom/android/calendar/EventInfoScrollView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/android/calendar/EventInfoScrollView;->HORIZONTAL_FLING_THRESHOLD:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/EventInfoScrollView;)Lcom/android/calendar/EventInfoScrollView$OnFlingListener;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventInfoScrollView;->mOnFlingListener:Lcom/android/calendar/EventInfoScrollView$OnFlingListener;

    return-object v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventInfoScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventInfoScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnFlingListener(Lcom/android/calendar/EventInfoScrollView$OnFlingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EventInfoScrollView;->mOnFlingListener:Lcom/android/calendar/EventInfoScrollView$OnFlingListener;

    return-void
.end method
