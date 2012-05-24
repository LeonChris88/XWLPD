.class Lcom/android/calendar/MonthView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthView;->init(Lcom/android/calendar/MonthActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthView;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$200(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$300(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget-object v1, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v3, v4}, Lcom/android/calendar/MonthView;->playSoundEffect(I)V

    iget-object v3, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v3, v4}, Lcom/android/calendar/MonthView;->access$602(Lcom/android/calendar/MonthView;Z)Z

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v3}, Lcom/android/calendar/MonthView;->access$1300(Lcom/android/calendar/MonthView;)[[I

    move-result-object v3

    aget-object v0, v3, v0

    aget v0, v0, v4

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v3}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$1400(Lcom/android/calendar/MonthView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "beginTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "startDayfromWhere"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/MonthActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->finish()V

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v2, v1}, Lcom/android/calendar/MonthView;->getPressedRow(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v2, v0}, Lcom/android/calendar/MonthView;->getPressedColumn(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v2}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v2}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->getSelectedTime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v2, v0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v5}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/android/calendar/EditEvent;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "beginTime"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "endTime"

    invoke-virtual {v4, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v0

    invoke-virtual {v0, v4, v7}, Lcom/android/calendar/MonthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$602(Lcom/android/calendar/MonthView;Z)Z

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$702(Lcom/android/calendar/MonthView;I)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4, v3}, Lcom/android/calendar/MonthView;->getPressedRow(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4, v2}, Lcom/android/calendar/MonthView;->getPressedColumn(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isSelected(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4, v6}, Lcom/android/calendar/MonthView;->access$602(Lcom/android/calendar/MonthView;Z)Z

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4, v6}, Lcom/android/calendar/MonthView;->access$702(Lcom/android/calendar/MonthView;I)I

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedRow()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$902(Lcom/android/calendar/MonthView;I)I

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedColumn()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$1002(Lcom/android/calendar/MonthView;I)I

    :cond_2
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->setSelectedRowColumn(II)V

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4, v6}, Lcom/android/calendar/MonthView;->access$702(Lcom/android/calendar/MonthView;I)I

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4, v6}, Lcom/android/calendar/MonthView;->access$1102(Lcom/android/calendar/MonthView;Z)Z

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->invalidate()V

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->requestFocus()Z

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    sub-int v0, v8, v9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    sub-int v1, v8, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    :try_start_0
    iget-object v8, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v8}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v8}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v8

    if-ge v2, v3, :cond_2

    move v6, v7

    :cond_2
    iput-boolean v6, v8, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    sget v6, Lcom/android/calendar/Utils;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-lt v3, v6, :cond_3

    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-nez v6, :cond_5

    :cond_3
    sget v6, Lcom/android/calendar/Utils;->VERTICAL_SCROLL_THRESHOLD:I

    if-lt v2, v6, :cond_4

    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/calendar/MonthActivity;->animateUpDown:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_4

    :cond_4
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v6

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$1500(Lcom/android/calendar/MonthView;)Z

    move-result v6

    if-nez v6, :cond_4

    if-lez v1, :cond_6

    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-nez v6, :cond_7

    :cond_6
    if-lez v0, :cond_8

    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-nez v6, :cond_8

    :cond_7
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/calendar/MonthActivity;->getPrevMonthButtonStatus()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/android/calendar/MonthView;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v6, "INFO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    if-gez v1, :cond_9

    :try_start_2
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-nez v6, :cond_a

    :cond_9
    if-gez v0, :cond_4

    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-nez v6, :cond_4

    :cond_a
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/calendar/MonthActivity;->getNextMonthButtonStatus()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/calendar/MonthView;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$602(Lcom/android/calendar/MonthView;Z)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4, v3}, Lcom/android/calendar/MonthView;->getPressedRow(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4, v2}, Lcom/android/calendar/MonthView;->getPressedColumn(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isValid(II)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedColumn()I

    move-result v0

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedRow()I

    move-result v1

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$702(Lcom/android/calendar/MonthView;I)I

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$1102(Lcom/android/calendar/MonthView;Z)Z

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->invalidate()V

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->showQuickAddDialog()V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    const/4 v8, 0x5

    const/4 v7, -0x1

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$602(Lcom/android/calendar/MonthView;Z)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4, v3}, Lcom/android/calendar/MonthView;->getPressedRow(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4, v2}, Lcom/android/calendar/MonthView;->getPressedColumn(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$1200(Lcom/android/calendar/MonthView;)I

    move-result v4

    if-ne v4, v8, :cond_1

    if-ne v1, v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4, v7}, Lcom/android/calendar/MonthView;->access$902(Lcom/android/calendar/MonthView;I)I

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4, v7}, Lcom/android/calendar/MonthView;->access$1002(Lcom/android/calendar/MonthView;I)I

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->setSelectedRowColumn(II)V

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4, v6}, Lcom/android/calendar/MonthView;->access$702(Lcom/android/calendar/MonthView;I)I

    :cond_3
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4, v6}, Lcom/android/calendar/MonthView;->access$1102(Lcom/android/calendar/MonthView;Z)Z

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->invalidate()V

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->requestFocus()Z

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$900(Lcom/android/calendar/MonthView;)I

    move-result v4

    if-ne v4, v7, :cond_2

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedRow()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$902(Lcom/android/calendar/MonthView;I)I

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedColumn()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$1002(Lcom/android/calendar/MonthView;I)I

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v2}, Lcom/android/calendar/MonthView;->access$600(Lcom/android/calendar/MonthView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v2}, Lcom/android/calendar/MonthView;->access$200(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v3}, Lcom/android/calendar/MonthView;->access$300(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    iget-object v3, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v3}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v3

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v5, v1}, Lcom/android/calendar/MonthView;->playSoundEffect(I)V

    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v5, v1}, Lcom/android/calendar/MonthView;->access$602(Lcom/android/calendar/MonthView;Z)Z

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, -0x1

    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$1300(Lcom/android/calendar/MonthView;)[[I

    move-result-object v5

    aget-object v2, v5, v2

    aget v1, v2, v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v2}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$1400(Lcom/android/calendar/MonthView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "beginTime"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "startDayfromWhere"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x2002

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v2}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/calendar/MonthActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/MonthActivity;->finish()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/MonthActivity;->getSelectedTime()J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    add-long/2addr v3, v1

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v6}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/calendar/EditEvent;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "beginTime"

    invoke-virtual {v5, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "endTime"

    invoke-virtual {v5, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lcom/android/calendar/MonthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
