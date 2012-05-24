.class public Lcom/android/calendar/WeekActivity;
.super Lcom/android/calendar/CalendarActivity;
.source "WeekActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# static fields
.field static eventTitles:[Ljava/lang/CharSequence;


# instance fields
.field private nextBtn:Landroid/widget/Button;

.field private prevBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/CalendarActivity;-><init>()V

    return-void
.end method

.method private setBodyView()V
    .locals 7

    const v5, 0x7f0f0002

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/calendar/CalendarActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f0f0031

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/android/calendar/WeekActivity$1;

    invoke-direct {v5, p0}, Lcom/android/calendar/WeekActivity$1;-><init>(Lcom/android/calendar/WeekActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0f0030

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/calendar/WeekActivity;->prevBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/calendar/WeekActivity;->prevBtn:Landroid/widget/Button;

    new-instance v6, Lcom/android/calendar/WeekActivity$2;

    invoke-direct {v6, p0}, Lcom/android/calendar/WeekActivity$2;-><init>(Lcom/android/calendar/WeekActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0f0034

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/calendar/WeekActivity;->nextBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/calendar/WeekActivity;->nextBtn:Landroid/widget/Button;

    new-instance v6, Lcom/android/calendar/WeekActivity$3;

    invoke-direct {v6, p0}, Lcom/android/calendar/WeekActivity$3;-><init>(Lcom/android/calendar/WeekActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0f0006

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/WeekActivity$4;

    invoke-direct {v5, p0}, Lcom/android/calendar/WeekActivity$4;-><init>(Lcom/android/calendar/WeekActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0f0005

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/WeekActivity$5;

    invoke-direct {v5, p0}, Lcom/android/calendar/WeekActivity$5;-><init>(Lcom/android/calendar/WeekActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0f0003

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/WeekActivity$6;

    invoke-direct {v5, p0}, Lcom/android/calendar/WeekActivity$6;-><init>(Lcom/android/calendar/WeekActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0f0004

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setSelected(Z)V

    new-instance v5, Lcom/android/calendar/WeekActivity$7;

    invoke-direct {v5, p0}, Lcom/android/calendar/WeekActivity$7;-><init>(Lcom/android/calendar/WeekActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v5, 0x7f0f0001

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/calendar/CalendarActivity;->mBodyContainer:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Lcom/android/calendar/WeekView;

    invoke-direct {v0, p0}, Lcom/android/calendar/WeekView;-><init>(Lcom/android/calendar/CalendarActivity;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/WeekView;->setId(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/WeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/WeekView;->setSelectedDay(Landroid/text/format/Time;)V

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/calendar/WeekActivity;->prevBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/calendar/WeekActivity;->nextBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/calendar/WeekActivity;->prevBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/calendar/WeekActivity;->nextBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/calendar/CalendarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/calendar/WeekActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/calendar/CalendarView;->saveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {v4}, Lcom/android/calendar/CalendarView;->getEventList()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :cond_0
    const-string v5, "key_restore_time"

    invoke-virtual {p0}, Lcom/android/calendar/WeekActivity;->getSelectedTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v5, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    const v5, 0x7f03003b

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->setContentView(I)V

    const v5, 0x7f0f0035

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewSwitcher;

    iput-object v5, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v5, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    iget-object v5, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/android/calendar/WeekActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v4

    new-instance v3, Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const-string v5, "key_restore_time"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v4, v3}, Lcom/android/calendar/CalendarView;->setSelectedDay(Landroid/text/format/Time;)V

    invoke-virtual {v4, v2}, Lcom/android/calendar/CalendarView;->restoreInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/calendar/WeekActivity;->setBodyView()V

    invoke-virtual {v4, v0}, Lcom/android/calendar/CalendarView;->reloadEventAction(Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Lcom/android/calendar/CalendarView;->invalidate()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/calendar/CalendarActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f03003b

    invoke-virtual {p0, v3}, Lcom/android/calendar/WeekActivity;->setContentView(I)V

    if-eqz p1, :cond_0

    const-string v3, "key_restore_time"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-static {v3}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    const v3, 0x7f0f0035

    invoke-virtual {p0, v3}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewSwitcher;

    iput-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    invoke-direct {p0}, Lcom/android/calendar/WeekActivity;->setBodyView()V

    new-instance v2, Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/WeekActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/calendar/CalendarActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/calendar/WeekActivity;->eventTitles:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/calendar/WeekActivity$8;

    invoke-direct {v2, p0}, Lcom/android/calendar/WeekActivity$8;-><init>(Lcom/android/calendar/WeekActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    new-instance v0, Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {p0, v0, v5, v5}, Lcom/android/calendar/WeekActivity;->goTo(Landroid/text/format/Time;ZZ)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/calendar/CalendarActivity;->onPause()V

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    return-void
.end method

.method protected onResume()V
    .locals 8

    invoke-super {p0}, Lcom/android/calendar/CalendarActivity;->onResume()V

    iget-object v6, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/CalendarView;

    iget-object v6, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/CalendarView;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v6, "preferredDetailedView"

    sget-object v7, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "preferences_day_view"

    sget-object v7, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v1, v6, v7

    invoke-virtual {v4, v1}, Lcom/android/calendar/CalendarView;->setDetailedView(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/android/calendar/CalendarView;->setDetailedView(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v4, v6}, Lcom/android/calendar/CalendarView;->setSelectedDay(Landroid/text/format/Time;)V

    return-void
.end method
