.class public Lcom/android/calendar/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreateOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)Z
    .locals 8

    const/16 v7, 0xe

    const/16 v6, 0xd

    const/4 v3, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x4

    const v2, 0x7f0a0073

    invoke-interface {p1, v1, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020137

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v1, 0x6e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/16 v1, 0xc

    const v2, 0x7f0a0096

    invoke-interface {p1, v6, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020152

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v1, 0x67

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const v1, 0x7f0a002c

    invoke-interface {p1, v3, v5, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020173

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v1, 0x74

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/16 v1, 0x10

    const/16 v2, 0x12

    const v3, 0x104000c

    invoke-interface {p1, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020169

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const v1, 0x7f0a002b

    invoke-interface {p1, v7, v6, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x202014a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/16 v1, 0xf

    const v2, 0x7f0a002e

    invoke-interface {p1, v1, v7, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020162

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v1, 0x70

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    return v5
.end method

.method public static onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/android/calendar/Navigator;)Z
    .locals 8

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    invoke-interface {p2}, Lcom/android/calendar/Navigator;->goToToday()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const-class v0, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preferences_day_view"

    sget-object v2, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v0, v1, v0

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    const-class v0, Lcom/android/calendar/MonthActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_6
    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v2, v0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/android/calendar/EditEvent;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "beginTime"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "endTime"

    invoke-virtual {v4, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "allDay"

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getAllDay()Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, v4, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_7
    const-class v0, Lcom/android/calendar/CalendarSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_8
    instance-of v0, p0, Lcom/android/calendar/DayActivity;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/android/calendar/DayEventListActivity;

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v1

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v3

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getFirstJulianDay()I

    move-result v5

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getFirstJulianDay()I

    move-result v6

    const/4 v7, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/calendar/Utils;->startActivityForDelete(Landroid/content/Context;JJIII)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, Lcom/android/calendar/MonthActivity;

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getStartMillis()J

    move-result-wide v1

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getEndMillis()J

    move-result-wide v3

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getFirstJulianDay()I

    move-result v5

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getLastJulianDay()I

    move-result v6

    move-object v0, p0

    check-cast v0, Lcom/android/calendar/MonthActivity;

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->getMode()I

    move-result v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/calendar/Utils;->startActivityForDelete(Landroid/content/Context;JJIII)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_2
    instance-of v0, p0, Lcom/android/calendar/WeekActivity;

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getStartMillis()J

    move-result-wide v1

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getEndMillis()J

    move-result-wide v3

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getFirstJulianDay()I

    move-result v5

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getLastJulianDay()I

    move-result v6

    const/4 v7, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/calendar/Utils;->startActivityForDelete(Landroid/content/Context;JJIII)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    instance-of v0, p0, Lcom/android/calendar/AgendaActivity;

    if-eqz v0, :cond_4

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getStartMillis()J

    move-result-wide v1

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getEndMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/calendar/Utils;->startActivityForDelete(Landroid/content/Context;JJIII)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_9
    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    const/4 v0, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public static onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    instance-of v0, p0, Lcom/android/calendar/AgendaActivity;

    if-eqz v0, :cond_1

    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    :goto_0
    instance-of v0, p0, Lcom/android/calendar/DayActivity;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/android/calendar/DayEventListActivity;

    if-eqz v0, :cond_2

    :cond_0
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    :goto_1
    instance-of v0, p0, Lcom/android/calendar/MonthActivity;

    if-eqz v0, :cond_3

    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    :goto_2
    instance-of v0, p0, Lcom/android/calendar/EventInfoActivity;

    if-eqz v0, :cond_4

    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    :goto_3
    return-void

    :cond_1
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v3, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v3, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_1

    :cond_3
    invoke-interface {p1, v4, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v4, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_2

    :cond_4
    invoke-interface {p1, v5, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v5, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_3
.end method
